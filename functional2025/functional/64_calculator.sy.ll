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
@.G.ints = global [10000 x i32] zeroinitializer
@.G.intt = global i32 zeroinitializer
@.G.chas = global [10000 x i32] zeroinitializer
@.G.chat = global i32 zeroinitializer
@.G.i = global i32 0
@.G.ii = global i32 1
@.G.c = global i32 zeroinitializer
@.G.get = global [10000 x i32] zeroinitializer
@.G.get2 = global [10000 x i32] zeroinitializer
define i32 @_user_isdigit(i32 %.13){
.12:
  %.20 = icmp sge i32 %.13, 48
  br i1 %.20, label %.21, label %.17
.16:
  ret i32 1 
.17:
  ret i32 0 
.21:
  %.25 = icmp sle i32 %.13, 57
  br i1 %.25, label %.16, label %.17
}
define i32 @_user_power(i32 %.30, i32 %.33){
.29:
  br label %.38wc 
.38wc:
  %.726 = phi i32 [%.33, %.29], [%.50, %.39wloop.]
  %.725 = phi i32 [1, %.29], [%.47, %.39wloop.]
  %.43 = icmp ne i32 %.726, 0
  br i1 %.43, label %.39wloop., label %.40wn
.39wloop.:
  %.47 = mul i32 %.725, %.30
  %.50 = sub i32 %.726, 1
  br label %.38wc 
.40wn:
  ret i32 %.725 
}
define i32 @_user_getstr(i32* %.56){
.55:
  %.61at0 = call i32 @getch()
  br label %.65wc 
.65wc:
  %.729 = phi i32 [%.61at0, %.55], [%.86at1, %.66wloop.]
  %.728 = phi i32 [0, %.55], [%.84, %.66wloop.]
  %.71 = icmp ne i32 %.729, 13
  br i1 %.71, label %.72, label %.67wn
.66wloop.:
  %.81 = getelementptr inbounds i32, i32* %.56, i32 %.728
  store i32 %.729, i32* %.81
  %.84 = add i32 %.728, 1
  %.86at1 = call i32 @getch()
  br label %.65wc 
.67wn:
  ret i32 %.728 
.72:
  %.76 = icmp ne i32 %.729, 10
  br i1 %.76, label %.66wloop., label %.67wn
}
define void @_user_intpush(i32 %.92){
.91:
  %.95 = load i32, i32* @.G.intt
  %.96 = add i32 %.95, 1
  store i32 %.96, i32* @.G.intt
  %.99 = load i32, i32* @.G.intt
  %.100 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.ints, i32 0, i32 %.99
  store i32 %.92, i32* %.100
  ret void
}
define void @_user_chapush(i32 %.104){
.103:
  %.107 = load i32, i32* @.G.chat
  %.108 = add i32 %.107, 1
  store i32 %.108, i32* @.G.chat
  %.111 = load i32, i32* @.G.chat
  %.112 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.111
  store i32 %.104, i32* %.112
  ret void
}
define i32 @_user_intpop(){
.115:
  %.116 = load i32, i32* @.G.intt
  %.117 = sub i32 %.116, 1
  store i32 %.117, i32* @.G.intt
  %.119 = load i32, i32* @.G.intt
  %.120 = add i32 %.119, 1
  %.121 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.ints, i32 0, i32 %.120
  %.122 = load i32, i32* %.121
  ret i32 %.122 
}
define i32 @_user_chapop(){
.124:
  %.125 = load i32, i32* @.G.chat
  %.126 = sub i32 %.125, 1
  store i32 %.126, i32* @.G.chat
  %.128 = load i32, i32* @.G.chat
  %.129 = add i32 %.128, 1
  %.130 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.129
  %.131 = load i32, i32* %.130
  ret i32 %.131 
}
define void @_user_intadd(i32 %.134){
.133:
  %.137 = load i32, i32* @.G.intt
  %.138 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.ints, i32 0, i32 %.137
  %.139 = load i32, i32* %.138
  %.140 = mul i32 %.139, 10
  %.141 = load i32, i32* @.G.intt
  %.142 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.ints, i32 0, i32 %.141
  store i32 %.140, i32* %.142
  %.144 = load i32, i32* @.G.intt
  %.145 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.ints, i32 0, i32 %.144
  %.146 = load i32, i32* %.145
  %.148 = add i32 %.146, %.134
  %.149 = load i32, i32* @.G.intt
  %.150 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.ints, i32 0, i32 %.149
  store i32 %.148, i32* %.150
  ret void
}
define i32 @_user_find(){
.153:
  %.154at2 = call i32 @_user_chapop()
  store i32 %.154at2, i32* @.G.c
  %.157 = load i32, i32* @.G.ii
  %.158 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.157
  store i32 32, i32* %.158
  %.160 = load i32, i32* @.G.c
  %.161 = load i32, i32* @.G.ii
  %.162 = add i32 %.161, 1
  %.163 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.162
  store i32 %.160, i32* %.163
  %.165 = load i32, i32* @.G.ii
  %.167 = add i32 %.165, 2
  store i32 %.167, i32* @.G.ii
  %.171 = load i32, i32* @.G.chat
  %.172 = icmp eq i32 %.171, 0
  br i1 %.172, label %.169, label %.170
.169:
  ret i32 0 
.170:
  ret i32 1 
}
define i32 @main(){
.176:
  store i32 0, i32* @.G.intt
  store i32 0, i32* @.G.chat
  %.180 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get, i32 0, i32 0
  %.181at3 = call i32 @_user_getstr(i32* %.180)
  br label %.183wc 
.183wc:
  %.187 = load i32, i32* @.G.i
  %.189 = icmp slt i32 %.187, %.181at3
  br i1 %.189, label %.184wloop., label %.185wn
.184wloop.:
  %.193 = load i32, i32* @.G.i
  %.194 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get, i32 0, i32 %.193
  %.195 = load i32, i32* %.194
  %.196at4 = call i32 @_user_isdigit(i32 %.195)
  %.197 = icmp eq i32 %.196at4, 1
  br i1 %.197, label %.191, label %.192
.185wn:
  br label %.517wc 
.191:
  %.199 = load i32, i32* @.G.i
  %.200 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get, i32 0, i32 %.199
  %.201 = load i32, i32* %.200
  %.202 = load i32, i32* @.G.ii
  %.203 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.202
  store i32 %.201, i32* %.203
  %.205 = load i32, i32* @.G.ii
  %.206 = add i32 %.205, 1
  store i32 %.206, i32* @.G.ii
  br label %.208 
.192:
  %.212 = load i32, i32* @.G.i
  %.213 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get, i32 0, i32 %.212
  %.214 = load i32, i32* %.213
  %.216 = icmp eq i32 %.214, 40
  br i1 %.216, label %.210, label %.211
.208:
  %.513 = load i32, i32* @.G.i
  %.514 = add i32 %.513, 1
  store i32 %.514, i32* @.G.i
  br label %.183wc 
.210:
  call void @_user_chapush(i32 40)
  br label %.211 
.211:
  %.222 = load i32, i32* @.G.i
  %.223 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get, i32 0, i32 %.222
  %.224 = load i32, i32* %.223
  %.226 = icmp eq i32 %.224, 94
  br i1 %.226, label %.220, label %.221
.220:
  call void @_user_chapush(i32 94)
  br label %.221 
.221:
  %.232 = load i32, i32* @.G.i
  %.233 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get, i32 0, i32 %.232
  %.234 = load i32, i32* %.233
  %.236 = icmp eq i32 %.234, 41
  br i1 %.236, label %.230, label %.231
.230:
  %.238at7 = call i32 @_user_chapop()
  store i32 %.238at7, i32* @.G.c
  br label %.240wc 
.231:
  %.264 = load i32, i32* @.G.i
  %.265 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get, i32 0, i32 %.264
  %.266 = load i32, i32* %.265
  %.268 = icmp eq i32 %.266, 43
  br i1 %.268, label %.262, label %.263
.240wc:
  %.244 = load i32, i32* @.G.c
  %.245 = icmp ne i32 %.244, 40
  br i1 %.245, label %.241wloop., label %.242wn
.241wloop.:
  %.247 = load i32, i32* @.G.ii
  %.248 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.247
  store i32 32, i32* %.248
  %.250 = load i32, i32* @.G.c
  %.251 = load i32, i32* @.G.ii
  %.252 = add i32 %.251, 1
  %.253 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.252
  store i32 %.250, i32* %.253
  %.255 = load i32, i32* @.G.ii
  %.256 = add i32 %.255, 2
  store i32 %.256, i32* @.G.ii
  %.258at8 = call i32 @_user_chapop()
  store i32 %.258at8, i32* @.G.c
  br label %.240wc 
.242wn:
  br label %.231 
.262:
  br label %.270wc 
.263:
  %.324 = load i32, i32* @.G.i
  %.325 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get, i32 0, i32 %.324
  %.326 = load i32, i32* %.325
  %.327 = icmp eq i32 %.326, 45
  br i1 %.327, label %.322, label %.323
.270wc:
  %.275 = load i32, i32* @.G.chat
  %.276 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.275
  %.277 = load i32, i32* %.276
  %.278 = icmp eq i32 %.277, 43
  br i1 %.278, label %.271wloop., label %.274
.271wloop.:
  %.315at9 = call i32 @_user_find()
  %.316 = icmp eq i32 %.315at9, 0
  br i1 %.316, label %.313, label %.314
.272wn:
  call void @_user_chapush(i32 43)
  br label %.263 
.274:
  %.281 = load i32, i32* @.G.chat
  %.282 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.281
  %.283 = load i32, i32* %.282
  %.285 = icmp eq i32 %.283, 45
  br i1 %.285, label %.271wloop., label %.280
.280:
  %.288 = load i32, i32* @.G.chat
  %.289 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.288
  %.290 = load i32, i32* %.289
  %.292 = icmp eq i32 %.290, 42
  br i1 %.292, label %.271wloop., label %.287
.287:
  %.295 = load i32, i32* @.G.chat
  %.296 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.295
  %.297 = load i32, i32* %.296
  %.299 = icmp eq i32 %.297, 47
  br i1 %.299, label %.271wloop., label %.294
.294:
  %.302 = load i32, i32* @.G.chat
  %.303 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.302
  %.304 = load i32, i32* %.303
  %.306 = icmp eq i32 %.304, 37
  br i1 %.306, label %.271wloop., label %.301
.301:
  %.308 = load i32, i32* @.G.chat
  %.309 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.308
  %.310 = load i32, i32* %.309
  %.311 = icmp eq i32 %.310, 94
  br i1 %.311, label %.271wloop., label %.272wn
.313:
  br label %.272wn 
.314:
  br label %.270wc 
.322:
  br label %.329wc 
.323:
  %.379 = load i32, i32* @.G.i
  %.380 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get, i32 0, i32 %.379
  %.381 = load i32, i32* %.380
  %.382 = icmp eq i32 %.381, 42
  br i1 %.382, label %.377, label %.378
.329wc:
  %.334 = load i32, i32* @.G.chat
  %.335 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.334
  %.336 = load i32, i32* %.335
  %.337 = icmp eq i32 %.336, 43
  br i1 %.337, label %.330wloop., label %.333
.330wloop.:
  %.370at11 = call i32 @_user_find()
  %.371 = icmp eq i32 %.370at11, 0
  br i1 %.371, label %.368, label %.369
.331wn:
  call void @_user_chapush(i32 45)
  br label %.323 
.333:
  %.340 = load i32, i32* @.G.chat
  %.341 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.340
  %.342 = load i32, i32* %.341
  %.343 = icmp eq i32 %.342, 45
  br i1 %.343, label %.330wloop., label %.339
.339:
  %.346 = load i32, i32* @.G.chat
  %.347 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.346
  %.348 = load i32, i32* %.347
  %.349 = icmp eq i32 %.348, 42
  br i1 %.349, label %.330wloop., label %.345
.345:
  %.352 = load i32, i32* @.G.chat
  %.353 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.352
  %.354 = load i32, i32* %.353
  %.355 = icmp eq i32 %.354, 47
  br i1 %.355, label %.330wloop., label %.351
.351:
  %.358 = load i32, i32* @.G.chat
  %.359 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.358
  %.360 = load i32, i32* %.359
  %.361 = icmp eq i32 %.360, 37
  br i1 %.361, label %.330wloop., label %.357
.357:
  %.363 = load i32, i32* @.G.chat
  %.364 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.363
  %.365 = load i32, i32* %.364
  %.366 = icmp eq i32 %.365, 94
  br i1 %.366, label %.330wloop., label %.331wn
.368:
  br label %.331wn 
.369:
  br label %.329wc 
.377:
  br label %.384wc 
.378:
  %.422 = load i32, i32* @.G.i
  %.423 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get, i32 0, i32 %.422
  %.424 = load i32, i32* %.423
  %.425 = icmp eq i32 %.424, 47
  br i1 %.425, label %.420, label %.421
.384wc:
  %.389 = load i32, i32* @.G.chat
  %.390 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.389
  %.391 = load i32, i32* %.390
  %.392 = icmp eq i32 %.391, 42
  br i1 %.392, label %.385wloop., label %.388
.385wloop.:
  %.413at13 = call i32 @_user_find()
  %.414 = icmp eq i32 %.413at13, 0
  br i1 %.414, label %.411, label %.412
.386wn:
  call void @_user_chapush(i32 42)
  br label %.378 
.388:
  %.395 = load i32, i32* @.G.chat
  %.396 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.395
  %.397 = load i32, i32* %.396
  %.398 = icmp eq i32 %.397, 47
  br i1 %.398, label %.385wloop., label %.394
.394:
  %.401 = load i32, i32* @.G.chat
  %.402 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.401
  %.403 = load i32, i32* %.402
  %.404 = icmp eq i32 %.403, 37
  br i1 %.404, label %.385wloop., label %.400
.400:
  %.406 = load i32, i32* @.G.chat
  %.407 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.406
  %.408 = load i32, i32* %.407
  %.409 = icmp eq i32 %.408, 94
  br i1 %.409, label %.385wloop., label %.386wn
.411:
  br label %.386wn 
.412:
  br label %.384wc 
.420:
  br label %.427wc 
.421:
  %.465 = load i32, i32* @.G.i
  %.466 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get, i32 0, i32 %.465
  %.467 = load i32, i32* %.466
  %.468 = icmp eq i32 %.467, 37
  br i1 %.468, label %.463, label %.464
.427wc:
  %.432 = load i32, i32* @.G.chat
  %.433 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.432
  %.434 = load i32, i32* %.433
  %.435 = icmp eq i32 %.434, 42
  br i1 %.435, label %.428wloop., label %.431
.428wloop.:
  %.456at15 = call i32 @_user_find()
  %.457 = icmp eq i32 %.456at15, 0
  br i1 %.457, label %.454, label %.455
.429wn:
  call void @_user_chapush(i32 47)
  br label %.421 
.431:
  %.438 = load i32, i32* @.G.chat
  %.439 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.438
  %.440 = load i32, i32* %.439
  %.441 = icmp eq i32 %.440, 47
  br i1 %.441, label %.428wloop., label %.437
.437:
  %.444 = load i32, i32* @.G.chat
  %.445 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.444
  %.446 = load i32, i32* %.445
  %.447 = icmp eq i32 %.446, 37
  br i1 %.447, label %.428wloop., label %.443
.443:
  %.449 = load i32, i32* @.G.chat
  %.450 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.449
  %.451 = load i32, i32* %.450
  %.452 = icmp eq i32 %.451, 94
  br i1 %.452, label %.428wloop., label %.429wn
.454:
  br label %.429wn 
.455:
  br label %.427wc 
.463:
  br label %.470wc 
.464:
  %.506 = load i32, i32* @.G.ii
  %.507 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.506
  store i32 32, i32* %.507
  %.509 = load i32, i32* @.G.ii
  %.510 = add i32 %.509, 1
  store i32 %.510, i32* @.G.ii
  br label %.208 
.470wc:
  %.475 = load i32, i32* @.G.chat
  %.476 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.475
  %.477 = load i32, i32* %.476
  %.478 = icmp eq i32 %.477, 42
  br i1 %.478, label %.471wloop., label %.474
.471wloop.:
  %.499at17 = call i32 @_user_find()
  %.500 = icmp eq i32 %.499at17, 0
  br i1 %.500, label %.497, label %.498
.472wn:
  call void @_user_chapush(i32 37)
  br label %.464 
.474:
  %.481 = load i32, i32* @.G.chat
  %.482 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.481
  %.483 = load i32, i32* %.482
  %.484 = icmp eq i32 %.483, 47
  br i1 %.484, label %.471wloop., label %.480
.480:
  %.487 = load i32, i32* @.G.chat
  %.488 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.487
  %.489 = load i32, i32* %.488
  %.490 = icmp eq i32 %.489, 37
  br i1 %.490, label %.471wloop., label %.486
.486:
  %.492 = load i32, i32* @.G.chat
  %.493 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.chas, i32 0, i32 %.492
  %.494 = load i32, i32* %.493
  %.495 = icmp eq i32 %.494, 94
  br i1 %.495, label %.471wloop., label %.472wn
.497:
  br label %.472wn 
.498:
  br label %.470wc 
.517wc:
  %.521 = load i32, i32* @.G.chat
  %.522 = icmp sgt i32 %.521, 0
  br i1 %.522, label %.518wloop., label %.519wn
.518wloop.:
  %.525at19 = call i32 @_user_chapop()
  %.527 = load i32, i32* @.G.ii
  %.528 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.527
  store i32 32, i32* %.528
  %.531 = load i32, i32* @.G.ii
  %.532 = add i32 %.531, 1
  %.533 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.532
  store i32 %.525at19, i32* %.533
  %.535 = load i32, i32* @.G.ii
  %.536 = add i32 %.535, 2
  store i32 %.536, i32* @.G.ii
  br label %.517wc 
.519wn:
  %.540 = load i32, i32* @.G.ii
  %.541 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.540
  store i32 64, i32* %.541
  store i32 1, i32* @.G.i
  br label %.544wc 
.544wc:
  %.548 = load i32, i32* @.G.i
  %.549 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.548
  %.550 = load i32, i32* %.549
  %.551 = icmp ne i32 %.550, 64
  br i1 %.551, label %.545wloop., label %.546wn
.545wloop.:
  %.556 = load i32, i32* @.G.i
  %.557 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.556
  %.558 = load i32, i32* %.557
  %.559 = icmp eq i32 %.558, 43
  br i1 %.559, label %.553, label %.555
.546wn:
  %.720 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.ints, i32 0, i32 1
  %.721 = load i32, i32* %.720
  call void @putint(i32 %.721)
  ret i32 0 
.553:
  %.591at20 = call i32 @_user_intpop()
  %.594at21 = call i32 @_user_intpop()
  %.600 = load i32, i32* @.G.i
  %.601 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.600
  %.602 = load i32, i32* %.601
  %.603 = icmp eq i32 %.602, 43
  br i1 %.603, label %.598, label %.599
.554:
  %.676 = load i32, i32* @.G.i
  %.677 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.676
  %.678 = load i32, i32* %.677
  %.679 = icmp ne i32 %.678, 32
  br i1 %.679, label %.674, label %.675
.555:
  %.562 = load i32, i32* @.G.i
  %.563 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.562
  %.564 = load i32, i32* %.563
  %.565 = icmp eq i32 %.564, 45
  br i1 %.565, label %.553, label %.561
.561:
  %.568 = load i32, i32* @.G.i
  %.569 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.568
  %.570 = load i32, i32* %.569
  %.571 = icmp eq i32 %.570, 42
  br i1 %.571, label %.553, label %.567
.567:
  %.574 = load i32, i32* @.G.i
  %.575 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.574
  %.576 = load i32, i32* %.575
  %.577 = icmp eq i32 %.576, 47
  br i1 %.577, label %.553, label %.573
.573:
  %.580 = load i32, i32* @.G.i
  %.581 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.580
  %.582 = load i32, i32* %.581
  %.583 = icmp eq i32 %.582, 37
  br i1 %.583, label %.553, label %.579
.579:
  %.585 = load i32, i32* @.G.i
  %.586 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.585
  %.587 = load i32, i32* %.586
  %.588 = icmp eq i32 %.587, 94
  br i1 %.588, label %.553, label %.554
.598:
  %.607 = add i32 %.591at20, %.594at21
  br label %.599 
.599:
  %.731 = phi i32 [0, %.553], [%.607, %.598]
  %.612 = load i32, i32* @.G.i
  %.613 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.612
  %.614 = load i32, i32* %.613
  %.615 = icmp eq i32 %.614, 45
  br i1 %.615, label %.610, label %.611
.610:
  %.619 = sub i32 %.594at21, %.591at20
  br label %.611 
.611:
  %.732 = phi i32 [%.731, %.599], [%.619, %.610]
  %.624 = load i32, i32* @.G.i
  %.625 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.624
  %.626 = load i32, i32* %.625
  %.627 = icmp eq i32 %.626, 42
  br i1 %.627, label %.622, label %.623
.622:
  %.631 = mul i32 %.591at20, %.594at21
  br label %.623 
.623:
  %.733 = phi i32 [%.732, %.611], [%.631, %.622]
  %.636 = load i32, i32* @.G.i
  %.637 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.636
  %.638 = load i32, i32* %.637
  %.639 = icmp eq i32 %.638, 47
  br i1 %.639, label %.634, label %.635
.634:
  %.643 = sdiv i32 %.594at21, %.591at20
  br label %.635 
.635:
  %.734 = phi i32 [%.733, %.623], [%.643, %.634]
  %.648 = load i32, i32* @.G.i
  %.649 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.648
  %.650 = load i32, i32* %.649
  %.651 = icmp eq i32 %.650, 37
  br i1 %.651, label %.646, label %.647
.646:
  %.655 = srem i32 %.594at21, %.591at20
  br label %.647 
.647:
  %.735 = phi i32 [%.734, %.635], [%.655, %.646]
  %.660 = load i32, i32* @.G.i
  %.661 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.660
  %.662 = load i32, i32* %.661
  %.663 = icmp eq i32 %.662, 94
  br i1 %.663, label %.658, label %.659
.658:
  %.667at22 = call i32 @_user_power(i32 %.594at21, i32 %.591at20)
  br label %.659 
.659:
  %.736 = phi i32 [%.735, %.647], [%.667at22, %.658]
  call void @_user_intpush(i32 %.736)
  br label %.672 
.672:
  %.716 = load i32, i32* @.G.i
  %.717 = add i32 %.716, 1
  store i32 %.717, i32* @.G.i
  br label %.544wc 
.674:
  %.681 = load i32, i32* @.G.i
  %.682 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.681
  %.683 = load i32, i32* %.682
  %.684 = sub i32 %.683, 48
  call void @_user_intpush(i32 %.684)
  store i32 1, i32* @.G.ii
  br label %.687wc 
.675:
  br label %.672 
.687wc:
  %.691 = load i32, i32* @.G.i
  %.692 = load i32, i32* @.G.ii
  %.693 = add i32 %.691, %.692
  %.694 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.693
  %.695 = load i32, i32* %.694
  %.696 = icmp ne i32 %.695, 32
  br i1 %.696, label %.688wloop., label %.689wn
.688wloop.:
  %.698 = load i32, i32* @.G.i
  %.699 = load i32, i32* @.G.ii
  %.700 = add i32 %.698, %.699
  %.701 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.get2, i32 0, i32 %.700
  %.702 = load i32, i32* %.701
  %.703 = sub i32 %.702, 48
  call void @_user_intadd(i32 %.703)
  %.705 = load i32, i32* @.G.ii
  %.706 = add i32 %.705, 1
  store i32 %.706, i32* @.G.ii
  br label %.687wc 
.689wn:
  %.709 = load i32, i32* @.G.i
  %.710 = load i32, i32* @.G.ii
  %.711 = add i32 %.709, %.710
  %.712 = sub i32 %.711, 1
  store i32 %.712, i32* @.G.i
  br label %.675 
}
