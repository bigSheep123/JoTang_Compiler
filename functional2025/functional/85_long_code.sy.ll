%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %a\00", align 1
@_sysy_us = common dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 16
@_sysy_s = common dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 16
@_sysy_m = common dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 16
@_sysy_h = common dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 16
@_sysy_idx = common dso_local local_unnamed_addr global i32 0, align 4
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"Timer@%04d-%04d: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_l1 = common dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 16
@_sysy_l2 = common dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [25 x i8] c"TOTAL: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_start = common dso_local global %struct.timeval zeroinitializer, align 8
@_sysy_end = common dso_local global %struct.timeval zeroinitializer, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @before_main, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @after_main, i8* null }]

define dso_local i32 @getint() local_unnamed_addr #0 {
entry:
  %t = alloca i32, align 4
  %0 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* nonnull %t)
  %1 = load i32, i32* %t, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %1
}

declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @__isoc99_scanf(i8* nocapture readonly, ...) local_unnamed_addr #2

declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

define dso_local i32 @getch() local_unnamed_addr #0 {
entry:
  %c = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #6
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* nonnull %c)
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #6
  ret i32 %conv
}

define dso_local float @getfloat() local_unnamed_addr #0 {
entry:
  %n = alloca float, align 4
  %0 = bitcast float* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* nonnull %n)
  %1 = load float, float* %n, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret float %1
}

define dso_local i32 @getarray(i32* %a) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* nonnull %n)
  %1 = load i32, i32* %n, align 4
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:
  %.lcssa = phi i32 [ %1, %entry ], [ %2, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %.lcssa

for.body:
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, i32* %n, align 4
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

define dso_local i32 @getfarray(float* %a) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* nonnull %n)
  %1 = load i32, i32* %n, align 4
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:
  %.lcssa = phi i32 [ %1, %entry ], [ %2, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %.lcssa

for.body:
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %a, i64 %indvars.iv
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, i32* %n, align 4
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

define dso_local void @putint(i32 %a) local_unnamed_addr #3 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %a)
  ret void
}

declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

define dso_local void @putch(i32 %a) local_unnamed_addr #3 {
entry:
  %putchar = tail call i32 @putchar(i32 %a)
  ret void
}

define dso_local void @putarray(i32 %n, i32* nocapture readonly %a) local_unnamed_addr #3 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %n)
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:
  %wide.trip.count = zext i32 %n to i64
  br label %for.body

for.cond.cleanup:
  %putchar = tail call i32 @putchar(i32 10)
  ret void

for.body:
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %call1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

define dso_local void @putfloat(float %a) local_unnamed_addr #3 {
entry:
  %conv = fpext float %a to double
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %conv)
  ret void
}

define dso_local void @putfarray(i32 %n, float* nocapture readonly %a) local_unnamed_addr #3 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %n)
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:
  %wide.trip.count = zext i32 %n to i64
  br label %for.body

for.cond.cleanup:
  %putchar = tail call i32 @putchar(i32 10)
  ret void

for.body:
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds float, float* %a, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4
  %conv = fpext float %0 to double
  %call1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

define dso_local void @before_main() #4 {
entry:
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(4096) bitcast ([1024 x i32]* @_sysy_us to i8*), i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(4096) bitcast ([1024 x i32]* @_sysy_s to i8*), i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(4096) bitcast ([1024 x i32]* @_sysy_m to i8*), i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(4096) bitcast ([1024 x i32]* @_sysy_h to i8*), i8 0, i64 4096, i1 false)
  store i32 1, i32* @_sysy_idx, align 4
  ret void
}

define dso_local void @after_main() #3 {
entry:
  %0 = load i32, i32* @_sysy_idx, align 4
  %cmp37 = icmp sgt i32 %0, 1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br i1 %cmp37, label %for.body, label %entry.for.cond.cleanup_crit_edge

entry.for.cond.cleanup_crit_edge:
  %.pre = load i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_h, i64 0, i64 0), align 16
  %.pre40 = load i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_m, i64 0, i64 0), align 16
  %.pre41 = load i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_s, i64 0, i64 0), align 16
  %.pre42 = load i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_us, i64 0, i64 0), align 16
  br label %for.cond.cleanup

for.cond.cleanup:
  %2 = phi i32 [ %.pre42, %entry.for.cond.cleanup_crit_edge ], [ %rem, %for.body ]
  %3 = phi i32 [ %.pre41, %entry.for.cond.cleanup_crit_edge ], [ %rem19, %for.body ]
  %4 = phi i32 [ %.pre40, %entry.for.cond.cleanup_crit_edge ], [ %rem23, %for.body ]
  %5 = phi i32 [ %.pre, %entry.for.cond.cleanup_crit_edge ], [ %add22, %for.body ]
  %.lcssa = phi %struct._IO_FILE* [ %1, %entry.for.cond.cleanup_crit_edge ], [ %23, %for.body ]
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.lcssa, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %5, i32 %4, i32 %3, i32 %2) #7
  ret void

for.body:
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %6 = phi %struct._IO_FILE* [ %23, %for.body ], [ %1, %entry ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_l1, i64 0, i64 %indvars.iv
  %7 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_l2, i64 0, i64 %indvars.iv
  %8 = load i32, i32* %arrayidx2, align 4
  %arrayidx4 = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_h, i64 0, i64 %indvars.iv
  %9 = load i32, i32* %arrayidx4, align 4
  %arrayidx6 = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_m, i64 0, i64 %indvars.iv
  %10 = load i32, i32* %arrayidx6, align 4
  %arrayidx8 = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_s, i64 0, i64 %indvars.iv
  %11 = load i32, i32* %arrayidx8, align 4
  %arrayidx10 = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_us, i64 0, i64 %indvars.iv
  %12 = load i32, i32* %arrayidx10, align 4
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #7
  %13 = load i32, i32* %arrayidx10, align 4
  %14 = load i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_us, i64 0, i64 0), align 16
  %add = add nsw i32 %14, %13
  %15 = load i32, i32* %arrayidx8, align 4
  %16 = load i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_s, i64 0, i64 0), align 16
  %add15 = add nsw i32 %16, %15
  %rem = srem i32 %add, 1000000
  store i32 %rem, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_us, i64 0, i64 0), align 16
  %17 = load i32, i32* %arrayidx6, align 4
  %18 = load i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_m, i64 0, i64 0), align 16
  %add18 = add nsw i32 %18, %17
  %rem19 = srem i32 %add15, 60
  store i32 %rem19, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_s, i64 0, i64 0), align 16
  %19 = load i32, i32* %arrayidx4, align 4
  %20 = load i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_h, i64 0, i64 0), align 16
  %add22 = add nsw i32 %20, %19
  store i32 %add22, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_h, i64 0, i64 0), align 16
  %rem23 = srem i32 %add18, 60
  store i32 %rem23, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @_sysy_m, i64 0, i64 0), align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %21 = load i32, i32* @_sysy_idx, align 4
  %22 = sext i32 %21 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %22
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

define dso_local void @_sysy_starttime(i32 %lineno) local_unnamed_addr #3 {
entry:
  %0 = load i32, i32* @_sysy_idx, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_l1, i64 0, i64 %idxprom
  store i32 %lineno, i32* %arrayidx, align 4
  %call = tail call i32 @gettimeofday(%struct.timeval* nonnull @_sysy_start, i8* null) #6
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval* nocapture, i8* nocapture) local_unnamed_addr #2

define dso_local void @_sysy_stoptime(i32 %lineno) local_unnamed_addr #3 {
entry:
  %call = tail call i32 @gettimeofday(%struct.timeval* nonnull @_sysy_end, i8* null) #6
  %0 = load i32, i32* @_sysy_idx, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_l2, i64 0, i64 %idxprom
  store i32 %lineno, i32* %arrayidx, align 4
  %1 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @_sysy_end, i64 0, i32 0), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @_sysy_start, i64 0, i32 0), align 8
  %sub = sub nsw i64 %1, %2
  %mul = mul nsw i64 %sub, 1000000
  %3 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @_sysy_end, i64 0, i32 1), align 8
  %add = add nsw i64 %mul, %3
  %4 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @_sysy_start, i64 0, i32 1), align 8
  %sub1 = sub i64 %add, %4
  %arrayidx3 = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_us, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx3, align 4
  %6 = trunc i64 %sub1 to i32
  %conv5 = add i32 %5, %6
  %div = sdiv i32 %conv5, 1000000
  %arrayidx9 = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_s, i64 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx9, align 4
  %add10 = add nsw i32 %div, %7
  %rem = srem i32 %conv5, 1000000
  store i32 %rem, i32* %arrayidx3, align 4
  %div15 = sdiv i32 %add10, 60
  %arrayidx17 = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_m, i64 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %div15, %8
  %rem21 = srem i32 %add10, 60
  store i32 %rem21, i32* %arrayidx9, align 4
  %div24 = sdiv i32 %add18, 60
  %arrayidx26 = getelementptr inbounds [1024 x i32], [1024 x i32]* @_sysy_h, i64 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx26, align 4
  %add27 = add nsw i32 %9, %div24
  store i32 %add27, i32* %arrayidx26, align 4
  %rem30 = srem i32 %add18, 60
  store i32 %rem30, i32* %arrayidx17, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @_sysy_idx, align 4
  ret void
}

define i32 @min(i32, i32) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, %1
  %4 = select i1 %3, i32 %1, i32 %0
  ret i32 %4
}

define i32 @max(i32, i32) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, %1
  %4 = select i1 %3, i32 %1, i32 %0
  ret i32 %4
}

define float @fmax(float, float) local_unnamed_addr #0 {
  %3 = fcmp oge float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

define float @fmin(float, float) local_unnamed_addr #0 {
  %3 = fcmp ole float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

declare i32 @putchar(i32) local_unnamed_addr #5

declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg)
attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree norecurse nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold }
@.G.n = global i32 zeroinitializer
define i32 @_user_bubblesort(i32* %.2){
.1:
  br label %.9wc 
.9wc:
  %.927 = phi i32 [0, %.1], [%.71, %.22wn]
  %.14 = load i32, i32* @.G.n
  %.16 = sub i32 %.14, 1
  %.17 = icmp slt i32 %.927, %.16
  br i1 %.17, label %.10wloop., label %.11wn
.10wloop.:
  br label %.20wc 
.11wn:
  ret i32 0 
.20wc:
  %.926 = phi i32 [0, %.10wloop.], [%.67, %.32]
  %.25 = load i32, i32* @.G.n
  %.27 = sub i32 %.25, %.927
  %.28 = sub i32 %.27, 1
  %.29 = icmp slt i32 %.926, %.28
  br i1 %.29, label %.21wloop., label %.22wn
.21wloop.:
  %.35 = getelementptr inbounds i32, i32* %.2, i32 %.926
  %.36 = load i32, i32* %.35
  %.38 = add i32 %.926, 1
  %.40 = getelementptr inbounds i32, i32* %.2, i32 %.38
  %.41 = load i32, i32* %.40
  %.42 = icmp sgt i32 %.36, %.41
  br i1 %.42, label %.31, label %.32
.22wn:
  %.71 = add i32 %.927, 1
  br label %.9wc 
.31:
  %.46 = add i32 %.926, 1
  %.48 = getelementptr inbounds i32, i32* %.2, i32 %.46
  %.49 = load i32, i32* %.48
  %.53 = getelementptr inbounds i32, i32* %.2, i32 %.926
  %.54 = load i32, i32* %.53
  %.56 = add i32 %.926, 1
  %.58 = getelementptr inbounds i32, i32* %.2, i32 %.56
  store i32 %.54, i32* %.58
  %.63 = getelementptr inbounds i32, i32* %.2, i32 %.926
  store i32 %.49, i32* %.63
  br label %.32 
.32:
  %.67 = add i32 %.926, 1
  br label %.20wc 
}
define i32 @_user_insertsort(i32* %.76){
.75:
  br label %.81wc 
.81wc:
  %.931 = phi i32 [1, %.75], [%.135, %.101wn]
  %.86 = load i32, i32* @.G.n
  %.87 = icmp slt i32 %.931, %.86
  br i1 %.87, label %.82wloop., label %.83wn
.82wloop.:
  %.92 = getelementptr inbounds i32, i32* %.76, i32 %.931
  %.93 = load i32, i32* %.92
  %.97 = sub i32 %.931, 1
  br label %.99wc 
.83wn:
  ret i32 0 
.99wc:
  %.930 = phi i32 [%.97, %.82wloop.], [%.125, %.100wloop.]
  %.105 = icmp sgt i32 %.930, -1
  br i1 %.105, label %.106, label %.101wn
.100wloop.:
  %.117 = getelementptr inbounds i32, i32* %.76, i32 %.930
  %.118 = load i32, i32* %.117
  %.120 = add i32 %.930, 1
  %.122 = getelementptr inbounds i32, i32* %.76, i32 %.120
  store i32 %.118, i32* %.122
  %.125 = sub i32 %.930, 1
  br label %.99wc 
.101wn:
  %.130 = add i32 %.930, 1
  %.132 = getelementptr inbounds i32, i32* %.76, i32 %.130
  store i32 %.93, i32* %.132
  %.135 = add i32 %.931, 1
  br label %.81wc 
.106:
  %.111 = getelementptr inbounds i32, i32* %.76, i32 %.930
  %.112 = load i32, i32* %.111
  %.113 = icmp slt i32 %.93, %.112
  br i1 %.113, label %.100wloop., label %.101wn
}
define i32 @_user_QuickSort(i32* %.140, i32 %.143, i32 %.146){
.139:
  %.153 = icmp slt i32 %.143, %.146
  br i1 %.153, label %.149, label %.150
.149:
  %.164 = getelementptr inbounds i32, i32* %.140, i32 %.143
  %.165 = load i32, i32* %.164
  br label %.167wc 
.150:
  ret i32 0 
.167wc:
  %.935 = phi i32 [%.143, %.149], [%.937, %.235]
  %.932 = phi i32 [%.146, %.149], [%.934, %.235]
  %.173 = icmp slt i32 %.935, %.932
  br i1 %.173, label %.168wloop., label %.169wn
.168wloop.:
  br label %.175wc 
.169wn:
  %.256 = getelementptr inbounds i32, i32* %.140, i32 %.935
  store i32 %.165, i32* %.256
  %.260 = sub i32 %.935, 1
  %.265at0 = call i32 @_user_QuickSort(i32* %.140, i32 %.143, i32 %.260)
  %.268 = add i32 %.935, 1
  %.273at1 = call i32 @_user_QuickSort(i32* %.140, i32 %.268, i32 %.146)
  br label %.150 
.175wc:
  %.933 = phi i32 [%.932, %.168wloop.], [%.193, %.176wloop.]
  %.181 = icmp slt i32 %.935, %.933
  br i1 %.181, label %.182, label %.177wn
.176wloop.:
  %.193 = sub i32 %.933, 1
  br label %.175wc 
.177wn:
  %.200 = icmp slt i32 %.935, %.933
  br i1 %.200, label %.196, label %.197
.182:
  %.186 = getelementptr inbounds i32, i32* %.140, i32 %.933
  %.187 = load i32, i32* %.186
  %.189 = sub i32 %.165, 1
  %.190 = icmp sgt i32 %.187, %.189
  br i1 %.190, label %.176wloop., label %.177wn
.196:
  %.204 = getelementptr inbounds i32, i32* %.140, i32 %.933
  %.205 = load i32, i32* %.204
  %.208 = getelementptr inbounds i32, i32* %.140, i32 %.935
  store i32 %.205, i32* %.208
  %.211 = add i32 %.935, 1
  br label %.197 
.197:
  %.936 = phi i32 [%.935, %.177wn], [%.211, %.196]
  br label %.214wc 
.214wc:
  %.937 = phi i32 [%.936, %.197], [%.231, %.215wloop.]
  %.220 = icmp slt i32 %.937, %.933
  br i1 %.220, label %.221, label %.216wn
.215wloop.:
  %.231 = add i32 %.937, 1
  br label %.214wc 
.216wn:
  %.238 = icmp slt i32 %.937, %.933
  br i1 %.238, label %.234, label %.235
.221:
  %.225 = getelementptr inbounds i32, i32* %.140, i32 %.937
  %.226 = load i32, i32* %.225
  %.228 = icmp slt i32 %.226, %.165
  br i1 %.228, label %.215wloop., label %.216wn
.234:
  %.242 = getelementptr inbounds i32, i32* %.140, i32 %.937
  %.243 = load i32, i32* %.242
  %.246 = getelementptr inbounds i32, i32* %.140, i32 %.933
  store i32 %.243, i32* %.246
  %.249 = sub i32 %.933, 1
  br label %.235 
.235:
  %.934 = phi i32 [%.933, %.216wn], [%.249, %.234]
  br label %.167wc 
}
define i32 @_user_getMid(i32* %.278){
.277:
  %.284 = load i32, i32* @.G.n
  %.286 = srem i32 %.284, 2
  %.287 = icmp eq i32 %.286, 0
  br i1 %.287, label %.282, label %.283
.282:
  %.289 = load i32, i32* @.G.n
  %.290 = sdiv i32 %.289, 2
  %.294 = getelementptr inbounds i32, i32* %.278, i32 %.290
  %.295 = load i32, i32* %.294
  %.297 = sub i32 %.290, 1
  %.299 = getelementptr inbounds i32, i32* %.278, i32 %.297
  %.300 = load i32, i32* %.299
  %.301 = add i32 %.295, %.300
  %.302 = sdiv i32 %.301, 2
  ret i32 %.302 
.283:
  %.304 = load i32, i32* @.G.n
  %.305 = sdiv i32 %.304, 2
  %.309 = getelementptr inbounds i32, i32* %.278, i32 %.305
  %.310 = load i32, i32* %.309
  ret i32 %.310 
}
define i32 @_user_getMost(i32* %.313){
.312:
  %.317 = alloca [1000 x i32]
  br label %.320wc 
.320wc:
  %.942 = phi i32 [0, %.312], [%.331, %.321wloop.]
  %.325 = icmp slt i32 %.942, 1000
  br i1 %.325, label %.321wloop., label %.322wn
.321wloop.:
  %.328 = getelementptr inbounds [1000 x i32], [1000 x i32]* %.317, i32 0, i32 %.942
  store i32 0, i32* %.328
  %.331 = add i32 %.942, 1
  br label %.320wc 
.322wn:
  br label %.338wc 
.338wc:
  %.943 = phi i32 [0, %.322wn], [%.375, %.360]
  %.940 = phi i32 [0, %.322wn], [%.941, %.360]
  %.938 = phi i32 [undef, %.322wn], [%.939, %.360]
  %.343 = load i32, i32* @.G.n
  %.344 = icmp slt i32 %.943, %.343
  br i1 %.344, label %.339wloop., label %.340wn
.339wloop.:
  %.349 = getelementptr inbounds i32, i32* %.313, i32 %.943
  %.350 = load i32, i32* %.349
  %.353 = getelementptr inbounds [1000 x i32], [1000 x i32]* %.317, i32 0, i32 %.350
  %.354 = load i32, i32* %.353
  %.355 = add i32 %.354, 1
  %.357 = getelementptr inbounds [1000 x i32], [1000 x i32]* %.317, i32 0, i32 %.350
  store i32 %.355, i32* %.357
  %.362 = getelementptr inbounds [1000 x i32], [1000 x i32]* %.317, i32 0, i32 %.350
  %.363 = load i32, i32* %.362
  %.365 = icmp sgt i32 %.363, %.940
  br i1 %.365, label %.359, label %.360
.340wn:
  ret i32 %.938 
.359:
  %.368 = getelementptr inbounds [1000 x i32], [1000 x i32]* %.317, i32 0, i32 %.350
  %.369 = load i32, i32* %.368
  br label %.360 
.360:
  %.941 = phi i32 [%.940, %.339wloop.], [%.369, %.359]
  %.939 = phi i32 [%.938, %.339wloop.], [%.350, %.359]
  %.375 = add i32 %.943, 1
  br label %.338wc 
}
define i32 @_user_revert(i32* %.381){
.380:
  br label %.389wc 
.389wc:
  %.945 = phi i32 [0, %.380], [%.416, %.390wloop.]
  %.944 = phi i32 [0, %.380], [%.419, %.390wloop.]
  %.395 = icmp slt i32 %.945, %.944
  br i1 %.395, label %.390wloop., label %.391wn
.390wloop.:
  %.399 = getelementptr inbounds i32, i32* %.381, i32 %.945
  %.400 = load i32, i32* %.399
  %.404 = getelementptr inbounds i32, i32* %.381, i32 %.944
  %.405 = load i32, i32* %.404
  %.408 = getelementptr inbounds i32, i32* %.381, i32 %.945
  store i32 %.405, i32* %.408
  %.413 = getelementptr inbounds i32, i32* %.381, i32 %.944
  store i32 %.400, i32* %.413
  %.416 = add i32 %.945, 1
  %.419 = sub i32 %.944, 1
  br label %.389wc 
.391wn:
  ret i32 0 
}
define i32 @_user_arrCopy(i32* %.424, i32* %.427){
.423:
  br label %.432wc 
.432wc:
  %.946 = phi i32 [0, %.423], [%.449, %.433wloop.]
  %.437 = load i32, i32* @.G.n
  %.438 = icmp slt i32 %.946, %.437
  br i1 %.438, label %.433wloop., label %.434wn
.433wloop.:
  %.442 = getelementptr inbounds i32, i32* %.424, i32 %.946
  %.443 = load i32, i32* %.442
  %.446 = getelementptr inbounds i32, i32* %.427, i32 %.946
  store i32 %.443, i32* %.446
  %.449 = add i32 %.946, 1
  br label %.432wc 
.434wn:
  ret i32 0 
}
define i32 @_user_calSum(i32* %.454, i32 %.457){
.453:
  br label %.464wc 
.464wc:
  %.948 = phi i32 [0, %.453], [%.949, %.492]
  %.947 = phi i32 [0, %.453], [%.502, %.492]
  %.469 = load i32, i32* @.G.n
  %.470 = icmp slt i32 %.947, %.469
  br i1 %.470, label %.465wloop., label %.466wn
.465wloop.:
  %.475 = getelementptr inbounds i32, i32* %.454, i32 %.947
  %.476 = load i32, i32* %.475
  %.477 = add i32 %.948, %.476
  %.483 = srem i32 %.947, %.457
  %.485 = sub i32 %.457, 1
  %.486 = icmp ne i32 %.483, %.485
  br i1 %.486, label %.479, label %.480
.466wn:
  ret i32 0 
.479:
  %.490 = getelementptr inbounds i32, i32* %.454, i32 %.947
  store i32 0, i32* %.490
  br label %.492 
.480:
  %.497 = getelementptr inbounds i32, i32* %.454, i32 %.947
  store i32 %.477, i32* %.497
  br label %.492 
.492:
  %.949 = phi i32 [0, %.480], [%.477, %.479]
  %.502 = add i32 %.947, 1
  br label %.464wc 
}
define i32 @_user_avgPooling(i32* %.507, i32 %.510){
.506:
  br label %.518wc 
.518wc:
  %.955 = phi i32 [0, %.506], [%.956, %.540]
  %.953 = phi i32 [0, %.506], [%.591, %.540]
  %.950 = phi i32 [undef, %.506], [%.951, %.540]
  %.523 = load i32, i32* @.G.n
  %.524 = icmp slt i32 %.953, %.523
  br i1 %.524, label %.519wloop., label %.520wn
.519wloop.:
  %.530 = sub i32 %.510, 1
  %.531 = icmp slt i32 %.953, %.530
  br i1 %.531, label %.526, label %.527
.520wn:
  %.594 = load i32, i32* @.G.n
  %.596 = sub i32 %.594, %.510
  %.597 = add i32 %.596, 1
  br label %.599wc 
.526:
  %.536 = getelementptr inbounds i32, i32* %.507, i32 %.953
  %.537 = load i32, i32* %.536
  %.538 = add i32 %.955, %.537
  br label %.540 
.527:
  %.546 = sub i32 %.510, 1
  %.547 = icmp eq i32 %.953, %.546
  br i1 %.547, label %.542, label %.543
.540:
  %.956 = phi i32 [%.957, %.559], [%.538, %.526]
  %.951 = phi i32 [%.952, %.559], [%.950, %.526]
  %.591 = add i32 %.953, 1
  br label %.518wc 
.542:
  %.550 = getelementptr inbounds i32, i32* %.507, i32 0
  %.551 = load i32, i32* %.550
  %.555 = sdiv i32 %.955, %.510
  %.557 = getelementptr inbounds i32, i32* %.507, i32 0
  store i32 %.555, i32* %.557
  br label %.559 
.543:
  %.564 = getelementptr inbounds i32, i32* %.507, i32 %.953
  %.565 = load i32, i32* %.564
  %.566 = add i32 %.955, %.565
  %.568 = sub i32 %.566, %.950
  %.572 = sub i32 %.953, %.510
  %.573 = add i32 %.572, 1
  %.575 = getelementptr inbounds i32, i32* %.507, i32 %.573
  %.576 = load i32, i32* %.575
  %.580 = sdiv i32 %.568, %.510
  %.583 = sub i32 %.953, %.510
  %.584 = add i32 %.583, 1
  %.586 = getelementptr inbounds i32, i32* %.507, i32 %.584
  store i32 %.580, i32* %.586
  br label %.559 
.559:
  %.957 = phi i32 [%.568, %.543], [%.955, %.542]
  %.952 = phi i32 [%.576, %.543], [%.551, %.542]
  br label %.540 
.599wc:
  %.954 = phi i32 [%.597, %.520wn], [%.612, %.600wloop.]
  %.604 = load i32, i32* @.G.n
  %.605 = icmp slt i32 %.954, %.604
  br i1 %.605, label %.600wloop., label %.601wn
.600wloop.:
  %.609 = getelementptr inbounds i32, i32* %.507, i32 %.954
  store i32 0, i32* %.609
  %.612 = add i32 %.954, 1
  br label %.599wc 
.601wn:
  ret i32 0 
}
define i32 @main(){
.616:
  %.620 = alloca [32 x i32]
  %.619 = alloca [32 x i32]
  store i32 32, i32* @.G.n
  %.622 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  store i32 7, i32* %.622
  %.625 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 1
  store i32 23, i32* %.625
  %.628 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 2
  store i32 89, i32* %.628
  %.632 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 3
  store i32 26, i32* %.632
  %.636 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 4
  store i32 282, i32* %.636
  %.640 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 5
  store i32 254, i32* %.640
  %.644 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 6
  store i32 27, i32* %.644
  %.646 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 7
  store i32 5, i32* %.646
  %.650 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 8
  store i32 83, i32* %.650
  %.654 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 9
  store i32 273, i32* %.654
  %.658 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 10
  store i32 574, i32* %.658
  %.662 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 11
  store i32 905, i32* %.662
  %.666 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 12
  store i32 354, i32* %.666
  %.670 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 13
  store i32 657, i32* %.670
  %.674 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 14
  store i32 935, i32* %.674
  %.678 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 15
  store i32 264, i32* %.678
  %.682 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 16
  store i32 639, i32* %.682
  %.686 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 17
  store i32 459, i32* %.686
  %.690 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 18
  store i32 29, i32* %.690
  %.694 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 19
  store i32 68, i32* %.694
  %.698 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 20
  store i32 929, i32* %.698
  %.702 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 21
  store i32 756, i32* %.702
  %.706 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 22
  store i32 452, i32* %.706
  %.709 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 23
  store i32 279, i32* %.709
  %.713 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 24
  store i32 58, i32* %.713
  %.717 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 25
  store i32 87, i32* %.717
  %.720 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 26
  store i32 96, i32* %.720
  %.723 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 27
  store i32 36, i32* %.723
  %.727 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 28
  store i32 39, i32* %.727
  %.729 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 29
  store i32 28, i32* %.729
  %.732 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 30
  store i32 1, i32* %.732
  %.736 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 31
  store i32 290, i32* %.736
  %.739 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  %.740 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.741at2 = call i32 @_user_arrCopy(i32* %.739, i32* %.740)
  %.743 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.744at3 = call i32 @_user_revert(i32* %.743)
  br label %.748wc 
.748wc:
  %.958 = phi i32 [0, %.616], [%.763, %.749wloop.]
  %.753 = icmp slt i32 %.958, 32
  br i1 %.753, label %.749wloop., label %.750wn
.749wloop.:
  %.756 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.958
  %.757 = load i32, i32* %.756
  call void @putint(i32 %.757)
  %.763 = add i32 %.958, 1
  br label %.748wc 
.750wn:
  %.766 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.767at5 = call i32 @_user_bubblesort(i32* %.766)
  br label %.770wc 
.770wc:
  %.959 = phi i32 [0, %.750wn], [%.784, %.771wloop.]
  %.775 = icmp slt i32 %.959, 32
  br i1 %.775, label %.771wloop., label %.772wn
.771wloop.:
  %.778 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.959
  %.779 = load i32, i32* %.778
  call void @putint(i32 %.779)
  %.784 = add i32 %.959, 1
  br label %.770wc 
.772wn:
  %.787 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.788at7 = call i32 @_user_getMid(i32* %.787)
  call void @putint(i32 %.788at7)
  %.792 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.793at9 = call i32 @_user_getMost(i32* %.792)
  call void @putint(i32 %.793at9)
  %.797 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  %.798 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.799at11 = call i32 @_user_arrCopy(i32* %.797, i32* %.798)
  %.801 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.802at12 = call i32 @_user_bubblesort(i32* %.801)
  br label %.805wc 
.805wc:
  %.960 = phi i32 [0, %.772wn], [%.819, %.806wloop.]
  %.810 = icmp slt i32 %.960, 32
  br i1 %.810, label %.806wloop., label %.807wn
.806wloop.:
  %.813 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.960
  %.814 = load i32, i32* %.813
  call void @putint(i32 %.814)
  %.819 = add i32 %.960, 1
  br label %.805wc 
.807wn:
  %.822 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  %.823 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.824at14 = call i32 @_user_arrCopy(i32* %.822, i32* %.823)
  %.826 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.827at15 = call i32 @_user_insertsort(i32* %.826)
  br label %.830wc 
.830wc:
  %.961 = phi i32 [0, %.807wn], [%.844, %.831wloop.]
  %.835 = icmp slt i32 %.961, 32
  br i1 %.835, label %.831wloop., label %.832wn
.831wloop.:
  %.838 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.961
  %.839 = load i32, i32* %.838
  call void @putint(i32 %.839)
  %.844 = add i32 %.961, 1
  br label %.830wc 
.832wn:
  %.847 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  %.848 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.849at17 = call i32 @_user_arrCopy(i32* %.847, i32* %.848)
  %.853 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.856at18 = call i32 @_user_QuickSort(i32* %.853, i32 0, i32 31)
  br label %.858wc 
.858wc:
  %.962 = phi i32 [0, %.832wn], [%.872, %.859wloop.]
  %.863 = icmp slt i32 %.962, 32
  br i1 %.863, label %.859wloop., label %.860wn
.859wloop.:
  %.866 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.962
  %.867 = load i32, i32* %.866
  call void @putint(i32 %.867)
  %.872 = add i32 %.962, 1
  br label %.858wc 
.860wn:
  %.875 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  %.876 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.877at20 = call i32 @_user_arrCopy(i32* %.875, i32* %.876)
  %.879 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.880at21 = call i32 @_user_calSum(i32* %.879, i32 4)
  br label %.883wc 
.883wc:
  %.963 = phi i32 [0, %.860wn], [%.897, %.884wloop.]
  %.888 = icmp slt i32 %.963, 32
  br i1 %.888, label %.884wloop., label %.885wn
.884wloop.:
  %.891 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.963
  %.892 = load i32, i32* %.891
  call void @putint(i32 %.892)
  %.897 = add i32 %.963, 1
  br label %.883wc 
.885wn:
  %.900 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  %.901 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.902at23 = call i32 @_user_arrCopy(i32* %.900, i32* %.901)
  %.904 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.905at24 = call i32 @_user_avgPooling(i32* %.904, i32 3)
  br label %.908wc 
.908wc:
  %.964 = phi i32 [0, %.885wn], [%.922, %.909wloop.]
  %.913 = icmp slt i32 %.964, 32
  br i1 %.913, label %.909wloop., label %.910wn
.909wloop.:
  %.916 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.964
  %.917 = load i32, i32* %.916
  call void @putint(i32 %.917)
  %.922 = add i32 %.964, 1
  br label %.908wc 
.910wn:
  ret i32 0 
}
