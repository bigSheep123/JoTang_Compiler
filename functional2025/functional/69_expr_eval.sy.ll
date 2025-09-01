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
@.G.TOKEN_NUM = global i32 zeroinitializer
@.G.TOKEN_OTHER = global i32 zeroinitializer
@.G.last_char = global i32 32
@.G.num = global i32 zeroinitializer
@.G.other = global i32 zeroinitializer
@.G.cur_token = global i32 zeroinitializer
@.C..267 = constant [256 x i32] zeroinitializer
@.C..275 = constant [256 x i32] zeroinitializer
define i32 @_user_next_char(){
.9:
  %.11at0 = call i32 @getch()
  store i32 %.11at0, i32* @.G.last_char
  %.13 = load i32, i32* @.G.last_char
  ret i32 %.13 
}
define i32 @_user_is_space(i32 %.16){
.15:
  %.17 = alloca i32
  store i32 %.16, i32* %.17
  %.22 = load i32, i32* %.17
  %.23 = icmp eq i32 %.22, 32
  br i1 %.23, label %.19, label %.21
.19:
  ret i32 1 
.20:
  ret i32 0 
.21:
  %.25 = load i32, i32* %.17
  %.27 = icmp eq i32 %.25, 10
  br i1 %.27, label %.19, label %.20
}
define i32 @_user_is_num(i32 %.32){
.31:
  %.33 = alloca i32
  store i32 %.32, i32* %.33
  %.37 = load i32, i32* %.33
  %.39 = icmp sge i32 %.37, 48
  br i1 %.39, label %.40, label %.36
.35:
  ret i32 1 
.36:
  ret i32 0 
.40:
  %.42 = load i32, i32* %.33
  %.44 = icmp sle i32 %.42, 57
  br i1 %.44, label %.35, label %.36
}
define i32 @_user_next_token(){
.48:
  br label %.49wc 
.49wc:
  %.53 = load i32, i32* @.G.last_char
  %.54at1 = call i32 @_user_is_space(i32 %.53)
  %.55 = icmp ne i32 %.54at1, 0
  br i1 %.55, label %.50wloop., label %.51wn
.50wloop.:
  %.57at2 = call i32 @_user_next_char()
  br label %.49wc 
.51wn:
  %.61 = load i32, i32* @.G.last_char
  %.62at3 = call i32 @_user_is_num(i32 %.61)
  %.63 = icmp ne i32 %.62at3, 0
  br i1 %.63, label %.59, label %.60
.59:
  %.65 = load i32, i32* @.G.last_char
  %.66 = sub i32 %.65, 48
  store i32 %.66, i32* @.G.num
  br label %.68wc 
.60:
  %.86 = load i32, i32* @.G.last_char
  store i32 %.86, i32* @.G.other
  %.88at6 = call i32 @_user_next_char()
  store i32 1, i32* @.G.cur_token
  br label %.84 
.68wc:
  %.72at4 = call i32 @_user_next_char()
  %.73at5 = call i32 @_user_is_num(i32 %.72at4)
  %.74 = icmp ne i32 %.73at5, 0
  br i1 %.74, label %.69wloop., label %.70wn
.69wloop.:
  %.76 = load i32, i32* @.G.num
  %.77 = mul i32 %.76, 10
  %.78 = load i32, i32* @.G.last_char
  %.79 = add i32 %.77, %.78
  %.80 = sub i32 %.79, 48
  store i32 %.80, i32* @.G.num
  br label %.68wc 
.70wn:
  store i32 0, i32* @.G.cur_token
  br label %.84 
.84:
  %.91 = load i32, i32* @.G.cur_token
  ret i32 %.91 
}
define i32 @_user_panic(){
.93:
  call void @putch(i32 112)
  call void @putch(i32 97)
  call void @putch(i32 110)
  call void @putch(i32 105)
  call void @putch(i32 99)
  call void @putch(i32 33)
  call void @putch(i32 10)
  ret i32 -1 
}
define i32 @_user_get_op_prec(i32 %.111){
.110:
  %.112 = alloca i32
  store i32 %.111, i32* %.112
  %.117 = load i32, i32* %.112
  %.119 = icmp eq i32 %.117, 43
  br i1 %.119, label %.114, label %.116
.114:
  ret i32 10 
.115:
  %.129 = load i32, i32* %.112
  %.131 = icmp eq i32 %.129, 42
  br i1 %.131, label %.126, label %.128
.116:
  %.121 = load i32, i32* %.112
  %.123 = icmp eq i32 %.121, 45
  br i1 %.123, label %.114, label %.115
.126:
  ret i32 20 
.127:
  ret i32 0 
.128:
  %.134 = load i32, i32* %.112
  %.136 = icmp eq i32 %.134, 47
  br i1 %.136, label %.126, label %.133
.133:
  %.138 = load i32, i32* %.112
  %.140 = icmp eq i32 %.138, 37
  br i1 %.140, label %.126, label %.127
}
define void @_user_stack_push(i32* %.146, i32 %.149){
.145:
  %.150 = alloca i32
  %.147 = alloca i32*
  store i32* %.146, i32** %.147
  store i32 %.149, i32* %.150
  %.152 = load i32*, i32** %.147
  %.153 = getelementptr inbounds i32, i32* %.152, i32 0
  %.154 = load i32, i32* %.153
  %.155 = add i32 %.154, 1
  %.156 = load i32*, i32** %.147
  %.157 = getelementptr inbounds i32, i32* %.156, i32 0
  store i32 %.155, i32* %.157
  %.159 = load i32, i32* %.150
  %.160 = load i32*, i32** %.147
  %.161 = getelementptr inbounds i32, i32* %.160, i32 0
  %.162 = load i32, i32* %.161
  %.163 = load i32*, i32** %.147
  %.164 = getelementptr inbounds i32, i32* %.163, i32 %.162
  store i32 %.159, i32* %.164
  ret void
}
define i32 @_user_stack_pop(i32* %.168){
.167:
  %.171 = alloca i32
  %.169 = alloca i32*
  store i32* %.168, i32** %.169
  %.172 = load i32*, i32** %.169
  %.173 = getelementptr inbounds i32, i32* %.172, i32 0
  %.174 = load i32, i32* %.173
  %.175 = load i32*, i32** %.169
  %.176 = getelementptr inbounds i32, i32* %.175, i32 %.174
  %.177 = load i32, i32* %.176
  store i32 %.177, i32* %.171
  %.179 = load i32*, i32** %.169
  %.180 = getelementptr inbounds i32, i32* %.179, i32 0
  %.181 = load i32, i32* %.180
  %.182 = sub i32 %.181, 1
  %.183 = load i32*, i32** %.169
  %.184 = getelementptr inbounds i32, i32* %.183, i32 0
  store i32 %.182, i32* %.184
  %.186 = load i32, i32* %.171
  ret i32 %.186 
}
define i32 @_user_stack_peek(i32* %.189){
.188:
  %.190 = alloca i32*
  store i32* %.189, i32** %.190
  %.192 = load i32*, i32** %.190
  %.193 = getelementptr inbounds i32, i32* %.192, i32 0
  %.194 = load i32, i32* %.193
  %.195 = load i32*, i32** %.190
  %.196 = getelementptr inbounds i32, i32* %.195, i32 %.194
  %.197 = load i32, i32* %.196
  ret i32 %.197 
}
define i32 @_user_stack_size(i32* %.200){
.199:
  %.201 = alloca i32*
  store i32* %.200, i32** %.201
  %.203 = load i32*, i32** %.201
  %.204 = getelementptr inbounds i32, i32* %.203, i32 0
  %.205 = load i32, i32* %.204
  ret i32 %.205 
}
define i32 @_user_eval_op(i32 %.208, i32 %.211, i32 %.214){
.207:
  %.215 = alloca i32
  %.212 = alloca i32
  %.209 = alloca i32
  store i32 %.208, i32* %.209
  store i32 %.211, i32* %.212
  store i32 %.214, i32* %.215
  %.219 = load i32, i32* %.209
  %.220 = icmp eq i32 %.219, 43
  br i1 %.220, label %.217, label %.218
.217:
  %.222 = load i32, i32* %.212
  %.223 = load i32, i32* %.215
  %.224 = add i32 %.222, %.223
  ret i32 %.224 
.218:
  %.228 = load i32, i32* %.209
  %.229 = icmp eq i32 %.228, 45
  br i1 %.229, label %.226, label %.227
.226:
  %.231 = load i32, i32* %.212
  %.232 = load i32, i32* %.215
  %.233 = sub i32 %.231, %.232
  ret i32 %.233 
.227:
  %.237 = load i32, i32* %.209
  %.238 = icmp eq i32 %.237, 42
  br i1 %.238, label %.235, label %.236
.235:
  %.240 = load i32, i32* %.212
  %.241 = load i32, i32* %.215
  %.242 = mul i32 %.240, %.241
  ret i32 %.242 
.236:
  %.246 = load i32, i32* %.209
  %.247 = icmp eq i32 %.246, 47
  br i1 %.247, label %.244, label %.245
.244:
  %.249 = load i32, i32* %.212
  %.250 = load i32, i32* %.215
  %.251 = sdiv i32 %.249, %.250
  ret i32 %.251 
.245:
  %.255 = load i32, i32* %.209
  %.256 = icmp eq i32 %.255, 37
  br i1 %.256, label %.253, label %.254
.253:
  %.258 = load i32, i32* %.212
  %.259 = load i32, i32* %.215
  %.260 = srem i32 %.258, %.259
  ret i32 %.260 
.254:
  ret i32 0 
}
define i32 @_user_eval(){
.263:
  %.373 = alloca i32
  %.369 = alloca i32
  %.365 = alloca i32
  %.330 = alloca i32
  %.326 = alloca i32
  %.322 = alloca i32
  %.295 = alloca i32
  %.273 = alloca [256 x i32]
  %.265 = alloca [256 x i32]
  call void @llvm.memcpy.p0.p0.i32([256 x i32]* %.265, [256 x i32]* @.C..267, i32 1024, i1 false)
  call void @llvm.memcpy.p0.p0.i32([256 x i32]* %.273, [256 x i32]* @.C..275, i32 1024, i1 false)
  %.279 = load i32, i32* @.G.cur_token
  %.280 = icmp ne i32 %.279, 0
  br i1 %.280, label %.277, label %.278
.277:
  %.282at14 = call i32 @_user_panic()
  ret i32 %.282at14 
.278:
  %.284 = getelementptr inbounds [256 x i32], [256 x i32]* %.265, i32 0, i32 0
  %.285 = load i32, i32* @.G.num
  call void @_user_stack_push(i32* %.284, i32 %.285)
  %.287at16 = call i32 @_user_next_token()
  br label %.288wc 
.288wc:
  %.292 = load i32, i32* @.G.cur_token
  %.293 = icmp eq i32 %.292, 1
  br i1 %.293, label %.289wloop., label %.290wn
.289wloop.:
  %.296 = load i32, i32* @.G.other
  store i32 %.296, i32* %.295
  %.300 = load i32, i32* %.295
  %.301at17 = call i32 @_user_get_op_prec(i32 %.300)
  %.302 = icmp eq i32 %.301at17, 0
  br i1 %.302, label %.298, label %.299
.290wn:
  %.356at32 = call i32 @_user_next_token()
  br label %.357wc 
.298:
  br label %.290wn 
.299:
  %.305at18 = call i32 @_user_next_token()
  br label %.306wc 
.306wc:
  %.310 = getelementptr inbounds [256 x i32], [256 x i32]* %.273, i32 0, i32 0
  %.311at19 = call i32 @_user_stack_size(i32* %.310)
  %.312 = icmp ne i32 %.311at19, 0
  br i1 %.312, label %.313, label %.308wn
.307wloop.:
  %.323 = getelementptr inbounds [256 x i32], [256 x i32]* %.273, i32 0, i32 0
  %.324at23 = call i32 @_user_stack_pop(i32* %.323)
  store i32 %.324at23, i32* %.322
  %.327 = getelementptr inbounds [256 x i32], [256 x i32]* %.265, i32 0, i32 0
  %.328at24 = call i32 @_user_stack_pop(i32* %.327)
  store i32 %.328at24, i32* %.326
  %.331 = getelementptr inbounds [256 x i32], [256 x i32]* %.265, i32 0, i32 0
  %.332at25 = call i32 @_user_stack_pop(i32* %.331)
  store i32 %.332at25, i32* %.330
  %.334 = getelementptr inbounds [256 x i32], [256 x i32]* %.265, i32 0, i32 0
  %.335 = load i32, i32* %.322
  %.336 = load i32, i32* %.330
  %.337 = load i32, i32* %.326
  %.338at26 = call i32 @_user_eval_op(i32 %.335, i32 %.336, i32 %.337)
  call void @_user_stack_push(i32* %.334, i32 %.338at26)
  br label %.306wc 
.308wn:
  %.341 = getelementptr inbounds [256 x i32], [256 x i32]* %.273, i32 0, i32 0
  %.342 = load i32, i32* %.295
  call void @_user_stack_push(i32* %.341, i32 %.342)
  %.346 = load i32, i32* @.G.cur_token
  %.347 = icmp ne i32 %.346, 0
  br i1 %.347, label %.344, label %.345
.313:
  %.315 = getelementptr inbounds [256 x i32], [256 x i32]* %.273, i32 0, i32 0
  %.316at20 = call i32 @_user_stack_peek(i32* %.315)
  %.317at21 = call i32 @_user_get_op_prec(i32 %.316at20)
  %.318 = load i32, i32* %.295
  %.319at22 = call i32 @_user_get_op_prec(i32 %.318)
  %.320 = icmp sge i32 %.317at21, %.319at22
  br i1 %.320, label %.307wloop., label %.308wn
.344:
  %.349at29 = call i32 @_user_panic()
  ret i32 %.349at29 
.345:
  %.351 = getelementptr inbounds [256 x i32], [256 x i32]* %.265, i32 0, i32 0
  %.352 = load i32, i32* @.G.num
  call void @_user_stack_push(i32* %.351, i32 %.352)
  %.354at31 = call i32 @_user_next_token()
  br label %.288wc 
.357wc:
  %.361 = getelementptr inbounds [256 x i32], [256 x i32]* %.273, i32 0, i32 0
  %.362at33 = call i32 @_user_stack_size(i32* %.361)
  %.363 = icmp ne i32 %.362at33, 0
  br i1 %.363, label %.358wloop., label %.359wn
.358wloop.:
  %.366 = getelementptr inbounds [256 x i32], [256 x i32]* %.273, i32 0, i32 0
  %.367at34 = call i32 @_user_stack_pop(i32* %.366)
  store i32 %.367at34, i32* %.365
  %.370 = getelementptr inbounds [256 x i32], [256 x i32]* %.265, i32 0, i32 0
  %.371at35 = call i32 @_user_stack_pop(i32* %.370)
  store i32 %.371at35, i32* %.369
  %.374 = getelementptr inbounds [256 x i32], [256 x i32]* %.265, i32 0, i32 0
  %.375at36 = call i32 @_user_stack_pop(i32* %.374)
  store i32 %.375at36, i32* %.373
  %.377 = getelementptr inbounds [256 x i32], [256 x i32]* %.265, i32 0, i32 0
  %.378 = load i32, i32* %.365
  %.379 = load i32, i32* %.373
  %.380 = load i32, i32* %.369
  %.381at37 = call i32 @_user_eval_op(i32 %.378, i32 %.379, i32 %.380)
  call void @_user_stack_push(i32* %.377, i32 %.381at37)
  br label %.357wc 
.359wn:
  %.384 = getelementptr inbounds [256 x i32], [256 x i32]* %.265, i32 0, i32 0
  %.385at39 = call i32 @_user_stack_peek(i32* %.384)
  ret i32 %.385at39 
}
define i32 @main(){
.387:
  %.388 = alloca i32
  %.390at40 = call i32 @getint()
  store i32 %.390at40, i32* %.388
  %.392at41 = call i32 @getch()
  %.393at42 = call i32 @_user_next_token()
  br label %.394wc 
.394wc:
  %.398 = load i32, i32* %.388
  %.399 = icmp ne i32 %.398, 0
  br i1 %.399, label %.395wloop., label %.396wn
.395wloop.:
  %.401at43 = call i32 @_user_eval()
  call void @putint(i32 %.401at43)
  call void @putch(i32 10)
  %.405 = load i32, i32* %.388
  %.406 = sub i32 %.405, 1
  store i32 %.406, i32* %.388
  br label %.394wc 
.396wn:
  ret i32 0 
}
