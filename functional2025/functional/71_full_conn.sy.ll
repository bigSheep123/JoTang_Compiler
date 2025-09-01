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
define i32 @_user_relu_reg(i32 %.1){
.0:
  %.2 = alloca i32
  store i32 %.1, i32* %.2
  %.6 = load i32, i32* %.2
  %.8 = icmp sgt i32 %.6, 127
  br i1 %.8, label %.4, label %.5
.4:
  ret i32 127 
.5:
  %.13 = load i32, i32* %.2
  %.15 = icmp slt i32 %.13, 0
  br i1 %.15, label %.11, label %.12
.11:
  ret i32 0 
.12:
  %.18 = load i32, i32* %.2
  ret i32 %.18 
}
define i32 @_user_model([5 x i32]* %.22){
.20:
  %.23 = alloca [5 x i32]*
  store [5 x i32]* %.22, [5 x i32]** %.23
  %.27 = load [5 x i32]*, [5 x i32]** %.23
  %.28 = getelementptr inbounds [5 x i32], [5 x i32]* %.27, i32 0, i32 0
  %.29 = load i32, i32* %.28
  %.31 = mul i32 %.29, 85
  %.33 = load [5 x i32]*, [5 x i32]** %.23
  %.34 = getelementptr inbounds [5 x i32], [5 x i32]* %.33, i32 0, i32 1
  %.35 = load i32, i32* %.34
  %.37 = mul i32 %.35, 23
  %.38 = add i32 %.31, %.37
  %.40 = load [5 x i32]*, [5 x i32]** %.23
  %.41 = getelementptr inbounds [5 x i32], [5 x i32]* %.40, i32 0, i32 2
  %.42 = load i32, i32* %.41
  %.45 = mul i32 %.42, -82
  %.46 = add i32 %.38, %.45
  %.48 = load [5 x i32]*, [5 x i32]** %.23
  %.49 = getelementptr inbounds [5 x i32], [5 x i32]* %.48, i32 0, i32 3
  %.50 = load i32, i32* %.49
  %.53 = mul i32 %.50, -103
  %.54 = add i32 %.46, %.53
  %.56 = load [5 x i32]*, [5 x i32]** %.23
  %.57 = getelementptr inbounds [5 x i32], [5 x i32]* %.56, i32 0, i32 4
  %.58 = load i32, i32* %.57
  %.61 = mul i32 %.58, -123
  %.62 = add i32 %.54, %.61
  %.63 = load [5 x i32]*, [5 x i32]** %.23
  %.64 = getelementptr inbounds [5 x i32], [5 x i32]* %.63, i32 1, i32 0
  %.65 = load i32, i32* %.64
  %.67 = mul i32 %.65, 64
  %.68 = add i32 %.62, %.67
  %.69 = load [5 x i32]*, [5 x i32]** %.23
  %.70 = getelementptr inbounds [5 x i32], [5 x i32]* %.69, i32 1, i32 1
  %.71 = load i32, i32* %.70
  %.74 = mul i32 %.71, -120
  %.75 = add i32 %.68, %.74
  %.76 = load [5 x i32]*, [5 x i32]** %.23
  %.77 = getelementptr inbounds [5 x i32], [5 x i32]* %.76, i32 1, i32 2
  %.78 = load i32, i32* %.77
  %.80 = mul i32 %.78, 50
  %.81 = add i32 %.75, %.80
  %.82 = load [5 x i32]*, [5 x i32]** %.23
  %.83 = getelementptr inbounds [5 x i32], [5 x i32]* %.82, i32 1, i32 3
  %.84 = load i32, i32* %.83
  %.87 = mul i32 %.84, -59
  %.88 = add i32 %.81, %.87
  %.89 = load [5 x i32]*, [5 x i32]** %.23
  %.90 = getelementptr inbounds [5 x i32], [5 x i32]* %.89, i32 1, i32 4
  %.91 = load i32, i32* %.90
  %.93 = mul i32 %.91, 47
  %.94 = add i32 %.88, %.93
  %.95 = load [5 x i32]*, [5 x i32]** %.23
  %.96 = getelementptr inbounds [5 x i32], [5 x i32]* %.95, i32 2, i32 0
  %.97 = load i32, i32* %.96
  %.100 = mul i32 %.97, -111
  %.101 = add i32 %.94, %.100
  %.102 = load [5 x i32]*, [5 x i32]** %.23
  %.103 = getelementptr inbounds [5 x i32], [5 x i32]* %.102, i32 2, i32 1
  %.104 = load i32, i32* %.103
  %.107 = mul i32 %.104, -67
  %.108 = add i32 %.101, %.107
  %.109 = load [5 x i32]*, [5 x i32]** %.23
  %.110 = getelementptr inbounds [5 x i32], [5 x i32]* %.109, i32 2, i32 2
  %.111 = load i32, i32* %.110
  %.114 = mul i32 %.111, -106
  %.115 = add i32 %.108, %.114
  %.116 = load [5 x i32]*, [5 x i32]** %.23
  %.117 = getelementptr inbounds [5 x i32], [5 x i32]* %.116, i32 2, i32 3
  %.118 = load i32, i32* %.117
  %.121 = mul i32 %.118, -75
  %.122 = add i32 %.115, %.121
  %.123 = load [5 x i32]*, [5 x i32]** %.23
  %.124 = getelementptr inbounds [5 x i32], [5 x i32]* %.123, i32 2, i32 4
  %.125 = load i32, i32* %.124
  %.128 = mul i32 %.125, -102
  %.129 = add i32 %.122, %.128
  %.130 = load [5 x i32]*, [5 x i32]** %.23
  %.131 = getelementptr inbounds [5 x i32], [5 x i32]* %.130, i32 3, i32 0
  %.132 = load i32, i32* %.131
  %.134 = mul i32 %.132, 34
  %.135 = add i32 %.129, %.134
  %.136 = load [5 x i32]*, [5 x i32]** %.23
  %.137 = getelementptr inbounds [5 x i32], [5 x i32]* %.136, i32 3, i32 1
  %.138 = load i32, i32* %.137
  %.141 = mul i32 %.138, -39
  %.142 = add i32 %.135, %.141
  %.143 = load [5 x i32]*, [5 x i32]** %.23
  %.144 = getelementptr inbounds [5 x i32], [5 x i32]* %.143, i32 3, i32 2
  %.145 = load i32, i32* %.144
  %.147 = mul i32 %.145, 65
  %.148 = add i32 %.142, %.147
  %.149 = load [5 x i32]*, [5 x i32]** %.23
  %.150 = getelementptr inbounds [5 x i32], [5 x i32]* %.149, i32 3, i32 3
  %.151 = load i32, i32* %.150
  %.152 = mul i32 %.151, 47
  %.153 = add i32 %.148, %.152
  %.154 = load [5 x i32]*, [5 x i32]** %.23
  %.155 = getelementptr inbounds [5 x i32], [5 x i32]* %.154, i32 3, i32 4
  %.156 = load i32, i32* %.155
  %.158 = mul i32 %.156, 113
  %.159 = add i32 %.153, %.158
  %.160 = load [5 x i32]*, [5 x i32]** %.23
  %.161 = getelementptr inbounds [5 x i32], [5 x i32]* %.160, i32 4, i32 0
  %.162 = load i32, i32* %.161
  %.164 = mul i32 %.162, 110
  %.165 = add i32 %.159, %.164
  %.166 = load [5 x i32]*, [5 x i32]** %.23
  %.167 = getelementptr inbounds [5 x i32], [5 x i32]* %.166, i32 4, i32 1
  %.168 = load i32, i32* %.167
  %.169 = mul i32 %.168, 47
  %.170 = add i32 %.165, %.169
  %.171 = load [5 x i32]*, [5 x i32]** %.23
  %.172 = getelementptr inbounds [5 x i32], [5 x i32]* %.171, i32 4, i32 2
  %.173 = load i32, i32* %.172
  %.175 = mul i32 %.173, -4
  %.176 = add i32 %.170, %.175
  %.177 = load [5 x i32]*, [5 x i32]** %.23
  %.178 = getelementptr inbounds [5 x i32], [5 x i32]* %.177, i32 4, i32 3
  %.179 = load i32, i32* %.178
  %.181 = mul i32 %.179, 80
  %.182 = add i32 %.176, %.181
  %.183 = load [5 x i32]*, [5 x i32]** %.23
  %.184 = getelementptr inbounds [5 x i32], [5 x i32]* %.183, i32 4, i32 4
  %.185 = load i32, i32* %.184
  %.187 = mul i32 %.185, 46
  %.188 = add i32 %.182, %.187
  %.189at0 = call i32 @_user_relu_reg(i32 %.188)
  %.190 = mul i32 %.189at0, 39
  %.191 = load [5 x i32]*, [5 x i32]** %.23
  %.192 = getelementptr inbounds [5 x i32], [5 x i32]* %.191, i32 0, i32 0
  %.193 = load i32, i32* %.192
  %.194 = mul i32 %.193, -106
  %.195 = load [5 x i32]*, [5 x i32]** %.23
  %.196 = getelementptr inbounds [5 x i32], [5 x i32]* %.195, i32 0, i32 1
  %.197 = load i32, i32* %.196
  %.199 = mul i32 %.197, 126
  %.200 = add i32 %.194, %.199
  %.201 = load [5 x i32]*, [5 x i32]** %.23
  %.202 = getelementptr inbounds [5 x i32], [5 x i32]* %.201, i32 0, i32 2
  %.203 = load i32, i32* %.202
  %.206 = mul i32 %.203, -18
  %.207 = add i32 %.200, %.206
  %.208 = load [5 x i32]*, [5 x i32]** %.23
  %.209 = getelementptr inbounds [5 x i32], [5 x i32]* %.208, i32 0, i32 3
  %.210 = load i32, i32* %.209
  %.213 = mul i32 %.210, -31
  %.214 = add i32 %.207, %.213
  %.215 = load [5 x i32]*, [5 x i32]** %.23
  %.216 = getelementptr inbounds [5 x i32], [5 x i32]* %.215, i32 0, i32 4
  %.217 = load i32, i32* %.216
  %.220 = mul i32 %.217, -8
  %.221 = add i32 %.214, %.220
  %.222 = load [5 x i32]*, [5 x i32]** %.23
  %.223 = getelementptr inbounds [5 x i32], [5 x i32]* %.222, i32 1, i32 0
  %.224 = load i32, i32* %.223
  %.225 = mul i32 %.224, 47
  %.226 = add i32 %.221, %.225
  %.227 = load [5 x i32]*, [5 x i32]** %.23
  %.228 = getelementptr inbounds [5 x i32], [5 x i32]* %.227, i32 1, i32 1
  %.229 = load i32, i32* %.228
  %.230 = mul i32 %.229, -4
  %.231 = add i32 %.226, %.230
  %.232 = load [5 x i32]*, [5 x i32]** %.23
  %.233 = getelementptr inbounds [5 x i32], [5 x i32]* %.232, i32 1, i32 2
  %.234 = load i32, i32* %.233
  %.235 = mul i32 %.234, 67
  %.236 = add i32 %.231, %.235
  %.237 = load [5 x i32]*, [5 x i32]** %.23
  %.238 = getelementptr inbounds [5 x i32], [5 x i32]* %.237, i32 1, i32 3
  %.239 = load i32, i32* %.238
  %.242 = mul i32 %.239, -94
  %.243 = add i32 %.236, %.242
  %.244 = load [5 x i32]*, [5 x i32]** %.23
  %.245 = getelementptr inbounds [5 x i32], [5 x i32]* %.244, i32 1, i32 4
  %.246 = load i32, i32* %.245
  %.249 = mul i32 %.246, -121
  %.250 = add i32 %.243, %.249
  %.251 = load [5 x i32]*, [5 x i32]** %.23
  %.252 = getelementptr inbounds [5 x i32], [5 x i32]* %.251, i32 2, i32 0
  %.253 = load i32, i32* %.252
  %.255 = mul i32 %.253, 7
  %.256 = add i32 %.250, %.255
  %.257 = load [5 x i32]*, [5 x i32]** %.23
  %.258 = getelementptr inbounds [5 x i32], [5 x i32]* %.257, i32 2, i32 1
  %.259 = load i32, i32* %.258
  %.262 = mul i32 %.259, -21
  %.263 = add i32 %.256, %.262
  %.264 = load [5 x i32]*, [5 x i32]** %.23
  %.265 = getelementptr inbounds [5 x i32], [5 x i32]* %.264, i32 2, i32 2
  %.266 = load i32, i32* %.265
  %.269 = mul i32 %.266, -60
  %.270 = add i32 %.263, %.269
  %.271 = load [5 x i32]*, [5 x i32]** %.23
  %.272 = getelementptr inbounds [5 x i32], [5 x i32]* %.271, i32 2, i32 3
  %.273 = load i32, i32* %.272
  %.276 = mul i32 %.273, -43
  %.277 = add i32 %.270, %.276
  %.278 = load [5 x i32]*, [5 x i32]** %.23
  %.279 = getelementptr inbounds [5 x i32], [5 x i32]* %.278, i32 2, i32 4
  %.280 = load i32, i32* %.279
  %.282 = mul i32 %.280, 105
  %.283 = add i32 %.277, %.282
  %.284 = load [5 x i32]*, [5 x i32]** %.23
  %.285 = getelementptr inbounds [5 x i32], [5 x i32]* %.284, i32 3, i32 0
  %.286 = load i32, i32* %.285
  %.289 = mul i32 %.286, -42
  %.290 = add i32 %.283, %.289
  %.291 = load [5 x i32]*, [5 x i32]** %.23
  %.292 = getelementptr inbounds [5 x i32], [5 x i32]* %.291, i32 3, i32 1
  %.293 = load i32, i32* %.292
  %.295 = mul i32 %.293, 87
  %.296 = add i32 %.290, %.295
  %.297 = load [5 x i32]*, [5 x i32]** %.23
  %.298 = getelementptr inbounds [5 x i32], [5 x i32]* %.297, i32 3, i32 2
  %.299 = load i32, i32* %.298
  %.301 = mul i32 %.299, 29
  %.302 = add i32 %.296, %.301
  %.303 = load [5 x i32]*, [5 x i32]** %.23
  %.304 = getelementptr inbounds [5 x i32], [5 x i32]* %.303, i32 3, i32 3
  %.305 = load i32, i32* %.304
  %.306 = mul i32 %.305, -106
  %.307 = add i32 %.302, %.306
  %.308 = load [5 x i32]*, [5 x i32]** %.23
  %.309 = getelementptr inbounds [5 x i32], [5 x i32]* %.308, i32 3, i32 4
  %.310 = load i32, i32* %.309
  %.311 = mul i32 %.310, -31
  %.312 = add i32 %.307, %.311
  %.313 = load [5 x i32]*, [5 x i32]** %.23
  %.314 = getelementptr inbounds [5 x i32], [5 x i32]* %.313, i32 4, i32 0
  %.315 = load i32, i32* %.314
  %.317 = mul i32 %.315, -110
  %.318 = add i32 %.312, %.317
  %.319 = load [5 x i32]*, [5 x i32]** %.23
  %.320 = getelementptr inbounds [5 x i32], [5 x i32]* %.319, i32 4, i32 1
  %.321 = load i32, i32* %.320
  %.324 = mul i32 %.321, -100
  %.325 = add i32 %.318, %.324
  %.326 = load [5 x i32]*, [5 x i32]** %.23
  %.327 = getelementptr inbounds [5 x i32], [5 x i32]* %.326, i32 4, i32 2
  %.328 = load i32, i32* %.327
  %.331 = mul i32 %.328, -22
  %.332 = add i32 %.325, %.331
  %.333 = load [5 x i32]*, [5 x i32]** %.23
  %.334 = getelementptr inbounds [5 x i32], [5 x i32]* %.333, i32 4, i32 3
  %.335 = load i32, i32* %.334
  %.336 = mul i32 %.335, -75
  %.337 = add i32 %.332, %.336
  %.338 = load [5 x i32]*, [5 x i32]** %.23
  %.339 = getelementptr inbounds [5 x i32], [5 x i32]* %.338, i32 4, i32 4
  %.340 = load i32, i32* %.339
  %.343 = mul i32 %.340, -125
  %.344 = add i32 %.337, %.343
  %.345at1 = call i32 @_user_relu_reg(i32 %.344)
  %.347 = mul i32 %.345at1, 77
  %.348 = add i32 %.190, %.347
  %.349 = load [5 x i32]*, [5 x i32]** %.23
  %.350 = getelementptr inbounds [5 x i32], [5 x i32]* %.349, i32 0, i32 0
  %.351 = load i32, i32* %.350
  %.353 = mul i32 %.351, 26
  %.354 = load [5 x i32]*, [5 x i32]** %.23
  %.355 = getelementptr inbounds [5 x i32], [5 x i32]* %.354, i32 0, i32 1
  %.356 = load i32, i32* %.355
  %.358 = mul i32 %.356, 76
  %.359 = add i32 %.353, %.358
  %.360 = load [5 x i32]*, [5 x i32]** %.23
  %.361 = getelementptr inbounds [5 x i32], [5 x i32]* %.360, i32 0, i32 2
  %.362 = load i32, i32* %.361
  %.365 = mul i32 %.362, -70
  %.366 = add i32 %.359, %.365
  %.367 = load [5 x i32]*, [5 x i32]** %.23
  %.368 = getelementptr inbounds [5 x i32], [5 x i32]* %.367, i32 0, i32 3
  %.369 = load i32, i32* %.368
  %.370 = mul i32 %.369, 29
  %.371 = add i32 %.366, %.370
  %.372 = load [5 x i32]*, [5 x i32]** %.23
  %.373 = getelementptr inbounds [5 x i32], [5 x i32]* %.372, i32 0, i32 4
  %.374 = load i32, i32* %.373
  %.377 = mul i32 %.374, -95
  %.378 = add i32 %.371, %.377
  %.379 = load [5 x i32]*, [5 x i32]** %.23
  %.380 = getelementptr inbounds [5 x i32], [5 x i32]* %.379, i32 1, i32 0
  %.381 = load i32, i32* %.380
  %.383 = mul i32 %.381, 96
  %.384 = add i32 %.378, %.383
  %.385 = load [5 x i32]*, [5 x i32]** %.23
  %.386 = getelementptr inbounds [5 x i32], [5 x i32]* %.385, i32 1, i32 1
  %.387 = load i32, i32* %.386
  %.389 = mul i32 %.387, 52
  %.390 = add i32 %.384, %.389
  %.391 = load [5 x i32]*, [5 x i32]** %.23
  %.392 = getelementptr inbounds [5 x i32], [5 x i32]* %.391, i32 1, i32 2
  %.393 = load i32, i32* %.392
  %.396 = mul i32 %.393, -68
  %.397 = add i32 %.390, %.396
  %.398 = load [5 x i32]*, [5 x i32]** %.23
  %.399 = getelementptr inbounds [5 x i32], [5 x i32]* %.398, i32 1, i32 3
  %.400 = load i32, i32* %.399
  %.402 = mul i32 %.400, -5
  %.403 = add i32 %.397, %.402
  %.404 = load [5 x i32]*, [5 x i32]** %.23
  %.405 = getelementptr inbounds [5 x i32], [5 x i32]* %.404, i32 1, i32 4
  %.406 = load i32, i32* %.405
  %.407 = mul i32 %.406, 34
  %.408 = add i32 %.403, %.407
  %.409 = load [5 x i32]*, [5 x i32]** %.23
  %.410 = getelementptr inbounds [5 x i32], [5 x i32]* %.409, i32 2, i32 0
  %.411 = load i32, i32* %.410
  %.413 = mul i32 %.411, -34
  %.414 = add i32 %.408, %.413
  %.415 = load [5 x i32]*, [5 x i32]** %.23
  %.416 = getelementptr inbounds [5 x i32], [5 x i32]* %.415, i32 2, i32 1
  %.417 = load i32, i32* %.416
  %.418 = mul i32 %.417, 102
  %.419 = add i32 %.414, %.418
  %.420 = load [5 x i32]*, [5 x i32]** %.23
  %.421 = getelementptr inbounds [5 x i32], [5 x i32]* %.420, i32 2, i32 2
  %.422 = load i32, i32* %.421
  %.424 = mul i32 %.422, 6
  %.425 = add i32 %.419, %.424
  %.426 = load [5 x i32]*, [5 x i32]** %.23
  %.427 = getelementptr inbounds [5 x i32], [5 x i32]* %.426, i32 2, i32 3
  %.428 = load i32, i32* %.427
  %.431 = mul i32 %.428, -38
  %.432 = add i32 %.425, %.431
  %.433 = load [5 x i32]*, [5 x i32]** %.23
  %.434 = getelementptr inbounds [5 x i32], [5 x i32]* %.433, i32 2, i32 4
  %.435 = load i32, i32* %.434
  %.437 = mul i32 %.435, 27
  %.438 = add i32 %.432, %.437
  %.439 = load [5 x i32]*, [5 x i32]** %.23
  %.440 = getelementptr inbounds [5 x i32], [5 x i32]* %.439, i32 3, i32 0
  %.441 = load i32, i32* %.440
  %.442 = mul i32 %.441, 110
  %.443 = add i32 %.438, %.442
  %.444 = load [5 x i32]*, [5 x i32]** %.23
  %.445 = getelementptr inbounds [5 x i32], [5 x i32]* %.444, i32 3, i32 1
  %.446 = load i32, i32* %.445
  %.448 = mul i32 %.446, 116
  %.449 = add i32 %.443, %.448
  %.450 = load [5 x i32]*, [5 x i32]** %.23
  %.451 = getelementptr inbounds [5 x i32], [5 x i32]* %.450, i32 3, i32 2
  %.452 = load i32, i32* %.451
  %.453 = mul i32 %.452, 39
  %.454 = add i32 %.449, %.453
  %.455 = load [5 x i32]*, [5 x i32]** %.23
  %.456 = getelementptr inbounds [5 x i32], [5 x i32]* %.455, i32 3, i32 3
  %.457 = load i32, i32* %.456
  %.460 = mul i32 %.457, -63
  %.461 = add i32 %.454, %.460
  %.462 = load [5 x i32]*, [5 x i32]** %.23
  %.463 = getelementptr inbounds [5 x i32], [5 x i32]* %.462, i32 3, i32 4
  %.464 = load i32, i32* %.463
  %.467 = mul i32 %.464, -99
  %.468 = add i32 %.461, %.467
  %.469 = load [5 x i32]*, [5 x i32]** %.23
  %.470 = getelementptr inbounds [5 x i32], [5 x i32]* %.469, i32 4, i32 0
  %.471 = load i32, i32* %.470
  %.472 = mul i32 %.471, 65
  %.473 = add i32 %.468, %.472
  %.474 = load [5 x i32]*, [5 x i32]** %.23
  %.475 = getelementptr inbounds [5 x i32], [5 x i32]* %.474, i32 4, i32 1
  %.476 = load i32, i32* %.475
  %.477 = mul i32 %.476, 120
  %.478 = add i32 %.473, %.477
  %.479 = load [5 x i32]*, [5 x i32]** %.23
  %.480 = getelementptr inbounds [5 x i32], [5 x i32]* %.479, i32 4, i32 2
  %.481 = load i32, i32* %.480
  %.482 = mul i32 %.481, -39
  %.483 = add i32 %.478, %.482
  %.484 = load [5 x i32]*, [5 x i32]** %.23
  %.485 = getelementptr inbounds [5 x i32], [5 x i32]* %.484, i32 4, i32 3
  %.486 = load i32, i32* %.485
  %.488 = mul i32 %.486, -6
  %.489 = add i32 %.483, %.488
  %.490 = load [5 x i32]*, [5 x i32]** %.23
  %.491 = getelementptr inbounds [5 x i32], [5 x i32]* %.490, i32 4, i32 4
  %.492 = load i32, i32* %.491
  %.493 = mul i32 %.492, 94
  %.494 = add i32 %.489, %.493
  %.495at2 = call i32 @_user_relu_reg(i32 %.494)
  %.496 = mul i32 %.495at2, 127
  %.497 = add i32 %.348, %.496
  %.498 = load [5 x i32]*, [5 x i32]** %.23
  %.499 = getelementptr inbounds [5 x i32], [5 x i32]* %.498, i32 0, i32 0
  %.500 = load i32, i32* %.499
  %.502 = mul i32 %.500, -23
  %.503 = load [5 x i32]*, [5 x i32]** %.23
  %.504 = getelementptr inbounds [5 x i32], [5 x i32]* %.503, i32 0, i32 1
  %.505 = load i32, i32* %.504
  %.506 = mul i32 %.505, -63
  %.507 = add i32 %.502, %.506
  %.508 = load [5 x i32]*, [5 x i32]** %.23
  %.509 = getelementptr inbounds [5 x i32], [5 x i32]* %.508, i32 0, i32 2
  %.510 = load i32, i32* %.509
  %.512 = mul i32 %.510, 49
  %.513 = add i32 %.507, %.512
  %.514 = load [5 x i32]*, [5 x i32]** %.23
  %.515 = getelementptr inbounds [5 x i32], [5 x i32]* %.514, i32 0, i32 3
  %.516 = load i32, i32* %.515
  %.517 = mul i32 %.516, 50
  %.518 = add i32 %.513, %.517
  %.519 = load [5 x i32]*, [5 x i32]** %.23
  %.520 = getelementptr inbounds [5 x i32], [5 x i32]* %.519, i32 0, i32 4
  %.521 = load i32, i32* %.520
  %.523 = mul i32 %.521, 72
  %.524 = add i32 %.518, %.523
  %.525 = load [5 x i32]*, [5 x i32]** %.23
  %.526 = getelementptr inbounds [5 x i32], [5 x i32]* %.525, i32 1, i32 0
  %.527 = load i32, i32* %.526
  %.528 = mul i32 %.527, 85
  %.529 = add i32 %.524, %.528
  %.530 = load [5 x i32]*, [5 x i32]** %.23
  %.531 = getelementptr inbounds [5 x i32], [5 x i32]* %.530, i32 1, i32 1
  %.532 = load i32, i32* %.531
  %.535 = mul i32 %.532, -30
  %.536 = add i32 %.529, %.535
  %.537 = load [5 x i32]*, [5 x i32]** %.23
  %.538 = getelementptr inbounds [5 x i32], [5 x i32]* %.537, i32 1, i32 2
  %.539 = load i32, i32* %.538
  %.541 = mul i32 %.539, 12
  %.542 = add i32 %.536, %.541
  %.543 = load [5 x i32]*, [5 x i32]** %.23
  %.544 = getelementptr inbounds [5 x i32], [5 x i32]* %.543, i32 1, i32 3
  %.545 = load i32, i32* %.544
  %.546 = mul i32 %.545, 125
  %.547 = add i32 %.542, %.546
  %.548 = load [5 x i32]*, [5 x i32]** %.23
  %.549 = getelementptr inbounds [5 x i32], [5 x i32]* %.548, i32 1, i32 4
  %.550 = load i32, i32* %.549
  %.553 = mul i32 %.550, -117
  %.554 = add i32 %.547, %.553
  %.555 = load [5 x i32]*, [5 x i32]** %.23
  %.556 = getelementptr inbounds [5 x i32], [5 x i32]* %.555, i32 2, i32 0
  %.557 = load i32, i32* %.556
  %.559 = mul i32 %.557, -65
  %.560 = add i32 %.554, %.559
  %.561 = load [5 x i32]*, [5 x i32]** %.23
  %.562 = getelementptr inbounds [5 x i32], [5 x i32]* %.561, i32 2, i32 1
  %.563 = load i32, i32* %.562
  %.564 = mul i32 %.563, -67
  %.565 = add i32 %.560, %.564
  %.566 = load [5 x i32]*, [5 x i32]** %.23
  %.567 = getelementptr inbounds [5 x i32], [5 x i32]* %.566, i32 2, i32 2
  %.568 = load i32, i32* %.567
  %.569 = mul i32 %.568, 125
  %.570 = add i32 %.565, %.569
  %.571 = load [5 x i32]*, [5 x i32]** %.23
  %.572 = getelementptr inbounds [5 x i32], [5 x i32]* %.571, i32 2, i32 3
  %.573 = load i32, i32* %.572
  %.574 = mul i32 %.573, 110
  %.575 = add i32 %.570, %.574
  %.576 = load [5 x i32]*, [5 x i32]** %.23
  %.577 = getelementptr inbounds [5 x i32], [5 x i32]* %.576, i32 2, i32 4
  %.578 = load i32, i32* %.577
  %.579 = mul i32 %.578, -31
  %.580 = add i32 %.575, %.579
  %.581 = load [5 x i32]*, [5 x i32]** %.23
  %.582 = getelementptr inbounds [5 x i32], [5 x i32]* %.581, i32 3, i32 0
  %.583 = load i32, i32* %.582
  %.584 = mul i32 %.583, -123
  %.585 = add i32 %.580, %.584
  %.586 = load [5 x i32]*, [5 x i32]** %.23
  %.587 = getelementptr inbounds [5 x i32], [5 x i32]* %.586, i32 3, i32 1
  %.588 = load i32, i32* %.587
  %.590 = mul i32 %.588, 83
  %.591 = add i32 %.585, %.590
  %.592 = load [5 x i32]*, [5 x i32]** %.23
  %.593 = getelementptr inbounds [5 x i32], [5 x i32]* %.592, i32 3, i32 2
  %.594 = load i32, i32* %.593
  %.596 = mul i32 %.594, 122
  %.597 = add i32 %.591, %.596
  %.598 = load [5 x i32]*, [5 x i32]** %.23
  %.599 = getelementptr inbounds [5 x i32], [5 x i32]* %.598, i32 3, i32 3
  %.600 = load i32, i32* %.599
  %.602 = mul i32 %.600, 11
  %.603 = add i32 %.597, %.602
  %.604 = load [5 x i32]*, [5 x i32]** %.23
  %.605 = getelementptr inbounds [5 x i32], [5 x i32]* %.604, i32 3, i32 4
  %.606 = load i32, i32* %.605
  %.607 = mul i32 %.606, -23
  %.608 = add i32 %.603, %.607
  %.609 = load [5 x i32]*, [5 x i32]** %.23
  %.610 = getelementptr inbounds [5 x i32], [5 x i32]* %.609, i32 4, i32 0
  %.611 = load i32, i32* %.610
  %.613 = mul i32 %.611, -47
  %.614 = add i32 %.608, %.613
  %.615 = load [5 x i32]*, [5 x i32]** %.23
  %.616 = getelementptr inbounds [5 x i32], [5 x i32]* %.615, i32 4, i32 1
  %.617 = load i32, i32* %.616
  %.620 = mul i32 %.617, -32
  %.621 = add i32 %.614, %.620
  %.622 = load [5 x i32]*, [5 x i32]** %.23
  %.623 = getelementptr inbounds [5 x i32], [5 x i32]* %.622, i32 4, i32 2
  %.624 = load i32, i32* %.623
  %.625 = mul i32 %.624, -117
  %.626 = add i32 %.621, %.625
  %.627 = load [5 x i32]*, [5 x i32]** %.23
  %.628 = getelementptr inbounds [5 x i32], [5 x i32]* %.627, i32 4, i32 3
  %.629 = load i32, i32* %.628
  %.630 = mul i32 %.629, 95
  %.631 = add i32 %.626, %.630
  %.632 = load [5 x i32]*, [5 x i32]** %.23
  %.633 = getelementptr inbounds [5 x i32], [5 x i32]* %.632, i32 4, i32 4
  %.634 = load i32, i32* %.633
  %.636 = mul i32 %.634, 118
  %.637 = add i32 %.631, %.636
  %.638at3 = call i32 @_user_relu_reg(i32 %.637)
  %.639 = mul i32 %.638at3, -106
  %.640 = add i32 %.497, %.639
  %.641 = load [5 x i32]*, [5 x i32]** %.23
  %.642 = getelementptr inbounds [5 x i32], [5 x i32]* %.641, i32 0, i32 0
  %.643 = load i32, i32* %.642
  %.644 = mul i32 %.643, 8
  %.645 = load [5 x i32]*, [5 x i32]** %.23
  %.646 = getelementptr inbounds [5 x i32], [5 x i32]* %.645, i32 0, i32 1
  %.647 = load i32, i32* %.646
  %.648 = mul i32 %.647, 82
  %.649 = add i32 %.644, %.648
  %.650 = load [5 x i32]*, [5 x i32]** %.23
  %.651 = getelementptr inbounds [5 x i32], [5 x i32]* %.650, i32 0, i32 2
  %.652 = load i32, i32* %.651
  %.655 = mul i32 %.652, -104
  %.656 = add i32 %.649, %.655
  %.657 = load [5 x i32]*, [5 x i32]** %.23
  %.658 = getelementptr inbounds [5 x i32], [5 x i32]* %.657, i32 0, i32 3
  %.659 = load i32, i32* %.658
  %.661 = mul i32 %.659, 101
  %.662 = add i32 %.656, %.661
  %.663 = load [5 x i32]*, [5 x i32]** %.23
  %.664 = getelementptr inbounds [5 x i32], [5 x i32]* %.663, i32 0, i32 4
  %.665 = load i32, i32* %.664
  %.667 = mul i32 %.665, -116
  %.668 = add i32 %.662, %.667
  %.669 = load [5 x i32]*, [5 x i32]** %.23
  %.670 = getelementptr inbounds [5 x i32], [5 x i32]* %.669, i32 1, i32 0
  %.671 = load i32, i32* %.670
  %.672 = mul i32 %.671, -63
  %.673 = add i32 %.668, %.672
  %.674 = load [5 x i32]*, [5 x i32]** %.23
  %.675 = getelementptr inbounds [5 x i32], [5 x i32]* %.674, i32 1, i32 1
  %.676 = load i32, i32* %.675
  %.679 = mul i32 %.676, -16
  %.680 = add i32 %.673, %.679
  %.681 = load [5 x i32]*, [5 x i32]** %.23
  %.682 = getelementptr inbounds [5 x i32], [5 x i32]* %.681, i32 1, i32 2
  %.683 = load i32, i32* %.682
  %.684 = mul i32 %.683, -70
  %.685 = add i32 %.680, %.684
  %.686 = load [5 x i32]*, [5 x i32]** %.23
  %.687 = getelementptr inbounds [5 x i32], [5 x i32]* %.686, i32 1, i32 3
  %.688 = load i32, i32* %.687
  %.689 = mul i32 %.688, 125
  %.690 = add i32 %.685, %.689
  %.691 = load [5 x i32]*, [5 x i32]** %.23
  %.692 = getelementptr inbounds [5 x i32], [5 x i32]* %.691, i32 1, i32 4
  %.693 = load i32, i32* %.692
  %.694 = mul i32 %.693, 75
  %.695 = add i32 %.690, %.694
  %.696 = load [5 x i32]*, [5 x i32]** %.23
  %.697 = getelementptr inbounds [5 x i32], [5 x i32]* %.696, i32 2, i32 0
  %.698 = load i32, i32* %.697
  %.700 = mul i32 %.698, 66
  %.701 = add i32 %.695, %.700
  %.702 = load [5 x i32]*, [5 x i32]** %.23
  %.703 = getelementptr inbounds [5 x i32], [5 x i32]* %.702, i32 2, i32 1
  %.704 = load i32, i32* %.703
  %.706 = mul i32 %.704, -96
  %.707 = add i32 %.701, %.706
  %.708 = load [5 x i32]*, [5 x i32]** %.23
  %.709 = getelementptr inbounds [5 x i32], [5 x i32]* %.708, i32 2, i32 2
  %.710 = load i32, i32* %.709
  %.712 = mul i32 %.710, -101
  %.713 = add i32 %.707, %.712
  %.714 = load [5 x i32]*, [5 x i32]** %.23
  %.715 = getelementptr inbounds [5 x i32], [5 x i32]* %.714, i32 2, i32 3
  %.716 = load i32, i32* %.715
  %.719 = mul i32 %.716, -114
  %.720 = add i32 %.713, %.719
  %.721 = load [5 x i32]*, [5 x i32]** %.23
  %.722 = getelementptr inbounds [5 x i32], [5 x i32]* %.721, i32 2, i32 4
  %.723 = load i32, i32* %.722
  %.724 = mul i32 %.723, 59
  %.725 = add i32 %.720, %.724
  %.726 = load [5 x i32]*, [5 x i32]** %.23
  %.727 = getelementptr inbounds [5 x i32], [5 x i32]* %.726, i32 3, i32 0
  %.728 = load i32, i32* %.727
  %.729 = mul i32 %.728, 12
  %.730 = add i32 %.725, %.729
  %.731 = load [5 x i32]*, [5 x i32]** %.23
  %.732 = getelementptr inbounds [5 x i32], [5 x i32]* %.731, i32 3, i32 1
  %.733 = load i32, i32* %.732
  %.734 = mul i32 %.733, 5
  %.735 = add i32 %.730, %.734
  %.736 = load [5 x i32]*, [5 x i32]** %.23
  %.737 = getelementptr inbounds [5 x i32], [5 x i32]* %.736, i32 3, i32 2
  %.738 = load i32, i32* %.737
  %.739 = mul i32 %.738, -95
  %.740 = add i32 %.735, %.739
  %.741 = load [5 x i32]*, [5 x i32]** %.23
  %.742 = getelementptr inbounds [5 x i32], [5 x i32]* %.741, i32 3, i32 3
  %.743 = load i32, i32* %.742
  %.744 = mul i32 %.743, 116
  %.745 = add i32 %.740, %.744
  %.746 = load [5 x i32]*, [5 x i32]** %.23
  %.747 = getelementptr inbounds [5 x i32], [5 x i32]* %.746, i32 3, i32 4
  %.748 = load i32, i32* %.747
  %.751 = mul i32 %.748, -93
  %.752 = add i32 %.745, %.751
  %.753 = load [5 x i32]*, [5 x i32]** %.23
  %.754 = getelementptr inbounds [5 x i32], [5 x i32]* %.753, i32 4, i32 0
  %.755 = load i32, i32* %.754
  %.757 = mul i32 %.755, 15
  %.758 = add i32 %.752, %.757
  %.759 = load [5 x i32]*, [5 x i32]** %.23
  %.760 = getelementptr inbounds [5 x i32], [5 x i32]* %.759, i32 4, i32 1
  %.761 = load i32, i32* %.760
  %.763 = mul i32 %.761, 79
  %.764 = add i32 %.758, %.763
  %.765 = load [5 x i32]*, [5 x i32]** %.23
  %.766 = getelementptr inbounds [5 x i32], [5 x i32]* %.765, i32 4, i32 2
  %.767 = load i32, i32* %.766
  %.768 = mul i32 %.767, 3
  %.769 = add i32 %.764, %.768
  %.770 = load [5 x i32]*, [5 x i32]** %.23
  %.771 = getelementptr inbounds [5 x i32], [5 x i32]* %.770, i32 4, i32 3
  %.772 = load i32, i32* %.771
  %.773 = mul i32 %.772, 49
  %.774 = add i32 %.769, %.773
  %.775 = load [5 x i32]*, [5 x i32]** %.23
  %.776 = getelementptr inbounds [5 x i32], [5 x i32]* %.775, i32 4, i32 4
  %.777 = load i32, i32* %.776
  %.780 = mul i32 %.777, -124
  %.781 = add i32 %.774, %.780
  %.782at4 = call i32 @_user_relu_reg(i32 %.781)
  %.784 = mul i32 %.782at4, -3
  %.785 = add i32 %.640, %.784
  %.786 = load [5 x i32]*, [5 x i32]** %.23
  %.787 = getelementptr inbounds [5 x i32], [5 x i32]* %.786, i32 0, i32 0
  %.788 = load i32, i32* %.787
  %.790 = mul i32 %.788, 81
  %.791 = load [5 x i32]*, [5 x i32]** %.23
  %.792 = getelementptr inbounds [5 x i32], [5 x i32]* %.791, i32 0, i32 1
  %.793 = load i32, i32* %.792
  %.794 = mul i32 %.793, 68
  %.795 = add i32 %.790, %.794
  %.796 = load [5 x i32]*, [5 x i32]** %.23
  %.797 = getelementptr inbounds [5 x i32], [5 x i32]* %.796, i32 0, i32 2
  %.798 = load i32, i32* %.797
  %.799 = mul i32 %.798, -102
  %.800 = add i32 %.795, %.799
  %.801 = load [5 x i32]*, [5 x i32]** %.23
  %.802 = getelementptr inbounds [5 x i32], [5 x i32]* %.801, i32 0, i32 3
  %.803 = load i32, i32* %.802
  %.806 = mul i32 %.803, -74
  %.807 = add i32 %.800, %.806
  %.808 = load [5 x i32]*, [5 x i32]** %.23
  %.809 = getelementptr inbounds [5 x i32], [5 x i32]* %.808, i32 0, i32 4
  %.810 = load i32, i32* %.809
  %.811 = mul i32 %.810, 121
  %.812 = add i32 %.807, %.811
  %.813 = load [5 x i32]*, [5 x i32]** %.23
  %.814 = getelementptr inbounds [5 x i32], [5 x i32]* %.813, i32 1, i32 0
  %.815 = load i32, i32* %.814
  %.817 = mul i32 %.815, -15
  %.818 = add i32 %.812, %.817
  %.819 = load [5 x i32]*, [5 x i32]** %.23
  %.820 = getelementptr inbounds [5 x i32], [5 x i32]* %.819, i32 1, i32 1
  %.821 = load i32, i32* %.820
  %.823 = mul i32 %.821, 55
  %.824 = add i32 %.818, %.823
  %.825 = load [5 x i32]*, [5 x i32]** %.23
  %.826 = getelementptr inbounds [5 x i32], [5 x i32]* %.825, i32 1, i32 2
  %.827 = load i32, i32* %.826
  %.828 = mul i32 %.827, 101
  %.829 = add i32 %.824, %.828
  %.830 = load [5 x i32]*, [5 x i32]** %.23
  %.831 = getelementptr inbounds [5 x i32], [5 x i32]* %.830, i32 1, i32 3
  %.832 = load i32, i32* %.831
  %.835 = mul i32 %.832, -13
  %.836 = add i32 %.829, %.835
  %.837 = load [5 x i32]*, [5 x i32]** %.23
  %.838 = getelementptr inbounds [5 x i32], [5 x i32]* %.837, i32 1, i32 4
  %.839 = load i32, i32* %.838
  %.842 = mul i32 %.839, -62
  %.843 = add i32 %.836, %.842
  %.844 = load [5 x i32]*, [5 x i32]** %.23
  %.845 = getelementptr inbounds [5 x i32], [5 x i32]* %.844, i32 2, i32 0
  %.846 = load i32, i32* %.845
  %.847 = mul i32 %.846, 64
  %.848 = add i32 %.843, %.847
  %.849 = load [5 x i32]*, [5 x i32]** %.23
  %.850 = getelementptr inbounds [5 x i32], [5 x i32]* %.849, i32 2, i32 1
  %.851 = load i32, i32* %.850
  %.852 = mul i32 %.851, 114
  %.853 = add i32 %.848, %.852
  %.854 = load [5 x i32]*, [5 x i32]** %.23
  %.855 = getelementptr inbounds [5 x i32], [5 x i32]* %.854, i32 2, i32 2
  %.856 = load i32, i32* %.855
  %.857 = mul i32 %.856, 38
  %.858 = add i32 %.853, %.857
  %.859 = load [5 x i32]*, [5 x i32]** %.23
  %.860 = getelementptr inbounds [5 x i32], [5 x i32]* %.859, i32 2, i32 3
  %.861 = load i32, i32* %.860
  %.862 = mul i32 %.861, -21
  %.863 = add i32 %.858, %.862
  %.864 = load [5 x i32]*, [5 x i32]** %.23
  %.865 = getelementptr inbounds [5 x i32], [5 x i32]* %.864, i32 2, i32 4
  %.866 = load i32, i32* %.865
  %.868 = mul i32 %.866, 112
  %.869 = add i32 %.863, %.868
  %.870 = load [5 x i32]*, [5 x i32]** %.23
  %.871 = getelementptr inbounds [5 x i32], [5 x i32]* %.870, i32 3, i32 0
  %.872 = load i32, i32* %.871
  %.873 = mul i32 %.872, 114
  %.874 = add i32 %.869, %.873
  %.875 = load [5 x i32]*, [5 x i32]** %.23
  %.876 = getelementptr inbounds [5 x i32], [5 x i32]* %.875, i32 3, i32 1
  %.877 = load i32, i32* %.876
  %.878 = mul i32 %.877, 112
  %.879 = add i32 %.874, %.878
  %.880 = load [5 x i32]*, [5 x i32]** %.23
  %.881 = getelementptr inbounds [5 x i32], [5 x i32]* %.880, i32 3, i32 2
  %.882 = load i32, i32* %.881
  %.885 = mul i32 %.882, -10
  %.886 = add i32 %.879, %.885
  %.887 = load [5 x i32]*, [5 x i32]** %.23
  %.888 = getelementptr inbounds [5 x i32], [5 x i32]* %.887, i32 3, i32 3
  %.889 = load i32, i32* %.888
  %.890 = mul i32 %.889, -16
  %.891 = add i32 %.886, %.890
  %.892 = load [5 x i32]*, [5 x i32]** %.23
  %.893 = getelementptr inbounds [5 x i32], [5 x i32]* %.892, i32 3, i32 4
  %.894 = load i32, i32* %.893
  %.896 = mul i32 %.894, -50
  %.897 = add i32 %.891, %.896
  %.898 = load [5 x i32]*, [5 x i32]** %.23
  %.899 = getelementptr inbounds [5 x i32], [5 x i32]* %.898, i32 4, i32 0
  %.900 = load i32, i32* %.899
  %.902 = mul i32 %.900, -112
  %.903 = add i32 %.897, %.902
  %.904 = load [5 x i32]*, [5 x i32]** %.23
  %.905 = getelementptr inbounds [5 x i32], [5 x i32]* %.904, i32 4, i32 1
  %.906 = load i32, i32* %.905
  %.907 = mul i32 %.906, -116
  %.908 = add i32 %.903, %.907
  %.909 = load [5 x i32]*, [5 x i32]** %.23
  %.910 = getelementptr inbounds [5 x i32], [5 x i32]* %.909, i32 4, i32 2
  %.911 = load i32, i32* %.910
  %.914 = mul i32 %.911, -54
  %.915 = add i32 %.908, %.914
  %.916 = load [5 x i32]*, [5 x i32]** %.23
  %.917 = getelementptr inbounds [5 x i32], [5 x i32]* %.916, i32 4, i32 3
  %.918 = load i32, i32* %.917
  %.919 = mul i32 %.918, 82
  %.920 = add i32 %.915, %.919
  %.921 = load [5 x i32]*, [5 x i32]** %.23
  %.922 = getelementptr inbounds [5 x i32], [5 x i32]* %.921, i32 4, i32 4
  %.923 = load i32, i32* %.922
  %.925 = mul i32 %.923, -72
  %.926 = add i32 %.920, %.925
  %.927at5 = call i32 @_user_relu_reg(i32 %.926)
  %.928 = mul i32 %.927at5, 32
  %.929 = add i32 %.785, %.928
  %.930 = load [5 x i32]*, [5 x i32]** %.23
  %.931 = getelementptr inbounds [5 x i32], [5 x i32]* %.930, i32 0, i32 0
  %.932 = load i32, i32* %.931
  %.933 = mul i32 %.932, 15
  %.934 = load [5 x i32]*, [5 x i32]** %.23
  %.935 = getelementptr inbounds [5 x i32], [5 x i32]* %.934, i32 0, i32 1
  %.936 = load i32, i32* %.935
  %.938 = mul i32 %.936, -77
  %.939 = add i32 %.933, %.938
  %.940 = load [5 x i32]*, [5 x i32]** %.23
  %.941 = getelementptr inbounds [5 x i32], [5 x i32]* %.940, i32 0, i32 2
  %.942 = load i32, i32* %.941
  %.943 = mul i32 %.942, 66
  %.944 = add i32 %.939, %.943
  %.945 = load [5 x i32]*, [5 x i32]** %.23
  %.946 = getelementptr inbounds [5 x i32], [5 x i32]* %.945, i32 0, i32 3
  %.947 = load i32, i32* %.946
  %.950 = mul i32 %.947, -90
  %.951 = add i32 %.944, %.950
  %.952 = load [5 x i32]*, [5 x i32]** %.23
  %.953 = getelementptr inbounds [5 x i32], [5 x i32]* %.952, i32 0, i32 4
  %.954 = load i32, i32* %.953
  %.955 = mul i32 %.954, -6
  %.956 = add i32 %.951, %.955
  %.957 = load [5 x i32]*, [5 x i32]** %.23
  %.958 = getelementptr inbounds [5 x i32], [5 x i32]* %.957, i32 1, i32 0
  %.959 = load i32, i32* %.958
  %.960 = mul i32 %.959, -30
  %.961 = add i32 %.956, %.960
  %.962 = load [5 x i32]*, [5 x i32]** %.23
  %.963 = getelementptr inbounds [5 x i32], [5 x i32]* %.962, i32 1, i32 1
  %.964 = load i32, i32* %.963
  %.965 = mul i32 %.964, -8
  %.966 = add i32 %.961, %.965
  %.967 = load [5 x i32]*, [5 x i32]** %.23
  %.968 = getelementptr inbounds [5 x i32], [5 x i32]* %.967, i32 1, i32 2
  %.969 = load i32, i32* %.968
  %.970 = mul i32 %.969, 81
  %.971 = add i32 %.966, %.970
  %.972 = load [5 x i32]*, [5 x i32]** %.23
  %.973 = getelementptr inbounds [5 x i32], [5 x i32]* %.972, i32 1, i32 3
  %.974 = load i32, i32* %.973
  %.975 = mul i32 %.974, 2
  %.976 = add i32 %.971, %.975
  %.977 = load [5 x i32]*, [5 x i32]** %.23
  %.978 = getelementptr inbounds [5 x i32], [5 x i32]* %.977, i32 1, i32 4
  %.979 = load i32, i32* %.978
  %.980 = mul i32 %.979, -110
  %.981 = add i32 %.976, %.980
  %.982 = load [5 x i32]*, [5 x i32]** %.23
  %.983 = getelementptr inbounds [5 x i32], [5 x i32]* %.982, i32 2, i32 0
  %.984 = load i32, i32* %.983
  %.985 = mul i32 %.984, -95
  %.986 = add i32 %.981, %.985
  %.987 = load [5 x i32]*, [5 x i32]** %.23
  %.988 = getelementptr inbounds [5 x i32], [5 x i32]* %.987, i32 2, i32 1
  %.989 = load i32, i32* %.988
  %.990 = mul i32 %.989, 59
  %.991 = add i32 %.986, %.990
  %.992 = load [5 x i32]*, [5 x i32]** %.23
  %.993 = getelementptr inbounds [5 x i32], [5 x i32]* %.992, i32 2, i32 2
  %.994 = load i32, i32* %.993
  %.995 = mul i32 %.994, 52
  %.996 = add i32 %.991, %.995
  %.997 = load [5 x i32]*, [5 x i32]** %.23
  %.998 = getelementptr inbounds [5 x i32], [5 x i32]* %.997, i32 2, i32 3
  %.999 = load i32, i32* %.998
  %.1000 = mul i32 %.999, 15
  %.1001 = add i32 %.996, %.1000
  %.1002 = load [5 x i32]*, [5 x i32]** %.23
  %.1003 = getelementptr inbounds [5 x i32], [5 x i32]* %.1002, i32 2, i32 4
  %.1004 = load i32, i32* %.1003
  %.1005 = mul i32 %.1004, 55
  %.1006 = add i32 %.1001, %.1005
  %.1007 = load [5 x i32]*, [5 x i32]** %.23
  %.1008 = getelementptr inbounds [5 x i32], [5 x i32]* %.1007, i32 3, i32 0
  %.1009 = load i32, i32* %.1008
  %.1012 = mul i32 %.1009, -33
  %.1013 = add i32 %.1006, %.1012
  %.1014 = load [5 x i32]*, [5 x i32]** %.23
  %.1015 = getelementptr inbounds [5 x i32], [5 x i32]* %.1014, i32 3, i32 1
  %.1016 = load i32, i32* %.1015
  %.1018 = mul i32 %.1016, 14
  %.1019 = add i32 %.1013, %.1018
  %.1020 = load [5 x i32]*, [5 x i32]** %.23
  %.1021 = getelementptr inbounds [5 x i32], [5 x i32]* %.1020, i32 3, i32 2
  %.1022 = load i32, i32* %.1021
  %.1024 = mul i32 %.1022, 58
  %.1025 = add i32 %.1019, %.1024
  %.1026 = load [5 x i32]*, [5 x i32]** %.23
  %.1027 = getelementptr inbounds [5 x i32], [5 x i32]* %.1026, i32 3, i32 3
  %.1028 = load i32, i32* %.1027
  %.1029 = mul i32 %.1028, 67
  %.1030 = add i32 %.1025, %.1029
  %.1031 = load [5 x i32]*, [5 x i32]** %.23
  %.1032 = getelementptr inbounds [5 x i32], [5 x i32]* %.1031, i32 3, i32 4
  %.1033 = load i32, i32* %.1032
  %.1035 = mul i32 %.1033, 86
  %.1036 = add i32 %.1030, %.1035
  %.1037 = load [5 x i32]*, [5 x i32]** %.23
  %.1038 = getelementptr inbounds [5 x i32], [5 x i32]* %.1037, i32 4, i32 0
  %.1039 = load i32, i32* %.1038
  %.1041 = mul i32 %.1039, -79
  %.1042 = add i32 %.1036, %.1041
  %.1043 = load [5 x i32]*, [5 x i32]** %.23
  %.1044 = getelementptr inbounds [5 x i32], [5 x i32]* %.1043, i32 4, i32 1
  %.1045 = load i32, i32* %.1044
  %.1047 = mul i32 %.1045, 48
  %.1048 = add i32 %.1042, %.1047
  %.1049 = load [5 x i32]*, [5 x i32]** %.23
  %.1050 = getelementptr inbounds [5 x i32], [5 x i32]* %.1049, i32 4, i32 2
  %.1051 = load i32, i32* %.1050
  %.1052 = mul i32 %.1051, -13
  %.1053 = add i32 %.1048, %.1052
  %.1054 = load [5 x i32]*, [5 x i32]** %.23
  %.1055 = getelementptr inbounds [5 x i32], [5 x i32]* %.1054, i32 4, i32 3
  %.1056 = load i32, i32* %.1055
  %.1057 = mul i32 %.1056, -15
  %.1058 = add i32 %.1053, %.1057
  %.1059 = load [5 x i32]*, [5 x i32]** %.23
  %.1060 = getelementptr inbounds [5 x i32], [5 x i32]* %.1059, i32 4, i32 4
  %.1061 = load i32, i32* %.1060
  %.1062 = mul i32 %.1061, 66
  %.1063 = add i32 %.1058, %.1062
  %.1064at6 = call i32 @_user_relu_reg(i32 %.1063)
  %.1065 = mul i32 %.1064at6, -95
  %.1066 = add i32 %.929, %.1065
  %.1067 = load [5 x i32]*, [5 x i32]** %.23
  %.1068 = getelementptr inbounds [5 x i32], [5 x i32]* %.1067, i32 0, i32 0
  %.1069 = load i32, i32* %.1068
  %.1070 = mul i32 %.1069, 33
  %.1071 = load [5 x i32]*, [5 x i32]** %.23
  %.1072 = getelementptr inbounds [5 x i32], [5 x i32]* %.1071, i32 0, i32 1
  %.1073 = load i32, i32* %.1072
  %.1074 = mul i32 %.1073, 82
  %.1075 = add i32 %.1070, %.1074
  %.1076 = load [5 x i32]*, [5 x i32]** %.23
  %.1077 = getelementptr inbounds [5 x i32], [5 x i32]* %.1076, i32 0, i32 2
  %.1078 = load i32, i32* %.1077
  %.1079 = mul i32 %.1078, 67
  %.1080 = add i32 %.1075, %.1079
  %.1081 = load [5 x i32]*, [5 x i32]** %.23
  %.1082 = getelementptr inbounds [5 x i32], [5 x i32]* %.1081, i32 0, i32 3
  %.1083 = load i32, i32* %.1082
  %.1084 = mul i32 %.1083, 30
  %.1085 = add i32 %.1080, %.1084
  %.1086 = load [5 x i32]*, [5 x i32]** %.23
  %.1087 = getelementptr inbounds [5 x i32], [5 x i32]* %.1086, i32 0, i32 4
  %.1088 = load i32, i32* %.1087
  %.1090 = mul i32 %.1088, -2
  %.1091 = add i32 %.1085, %.1090
  %.1092 = load [5 x i32]*, [5 x i32]** %.23
  %.1093 = getelementptr inbounds [5 x i32], [5 x i32]* %.1092, i32 1, i32 0
  %.1094 = load i32, i32* %.1093
  %.1095 = mul i32 %.1094, 65
  %.1096 = add i32 %.1091, %.1095
  %.1097 = load [5 x i32]*, [5 x i32]** %.23
  %.1098 = getelementptr inbounds [5 x i32], [5 x i32]* %.1097, i32 1, i32 1
  %.1099 = load i32, i32* %.1098
  %.1100 = mul i32 %.1099, 120
  %.1101 = add i32 %.1096, %.1100
  %.1102 = load [5 x i32]*, [5 x i32]** %.23
  %.1103 = getelementptr inbounds [5 x i32], [5 x i32]* %.1102, i32 1, i32 2
  %.1104 = load i32, i32* %.1103
  %.1105 = mul i32 %.1104, -13
  %.1106 = add i32 %.1101, %.1105
  %.1107 = load [5 x i32]*, [5 x i32]** %.23
  %.1108 = getelementptr inbounds [5 x i32], [5 x i32]* %.1107, i32 1, i32 3
  %.1109 = load i32, i32* %.1108
  %.1110 = mul i32 %.1109, 18
  %.1111 = add i32 %.1106, %.1110
  %.1112 = load [5 x i32]*, [5 x i32]** %.23
  %.1113 = getelementptr inbounds [5 x i32], [5 x i32]* %.1112, i32 1, i32 4
  %.1114 = load i32, i32* %.1113
  %.1115 = mul i32 %.1114, 5
  %.1116 = add i32 %.1111, %.1115
  %.1117 = load [5 x i32]*, [5 x i32]** %.23
  %.1118 = getelementptr inbounds [5 x i32], [5 x i32]* %.1117, i32 2, i32 0
  %.1119 = load i32, i32* %.1118
  %.1120 = mul i32 %.1119, 104
  %.1121 = add i32 %.1116, %.1120
  %.1122 = load [5 x i32]*, [5 x i32]** %.23
  %.1123 = getelementptr inbounds [5 x i32], [5 x i32]* %.1122, i32 2, i32 1
  %.1124 = load i32, i32* %.1123
  %.1127 = mul i32 %.1124, -119
  %.1128 = add i32 %.1121, %.1127
  %.1129 = load [5 x i32]*, [5 x i32]** %.23
  %.1130 = getelementptr inbounds [5 x i32], [5 x i32]* %.1129, i32 2, i32 2
  %.1131 = load i32, i32* %.1130
  %.1133 = mul i32 %.1131, -7
  %.1134 = add i32 %.1128, %.1133
  %.1135 = load [5 x i32]*, [5 x i32]** %.23
  %.1136 = getelementptr inbounds [5 x i32], [5 x i32]* %.1135, i32 2, i32 3
  %.1137 = load i32, i32* %.1136
  %.1139 = mul i32 %.1137, 71
  %.1140 = add i32 %.1134, %.1139
  %.1141 = load [5 x i32]*, [5 x i32]** %.23
  %.1142 = getelementptr inbounds [5 x i32], [5 x i32]* %.1141, i32 2, i32 4
  %.1143 = load i32, i32* %.1142
  %.1145 = mul i32 %.1143, 107
  %.1146 = add i32 %.1140, %.1145
  %.1147 = load [5 x i32]*, [5 x i32]** %.23
  %.1148 = getelementptr inbounds [5 x i32], [5 x i32]* %.1147, i32 3, i32 0
  %.1149 = load i32, i32* %.1148
  %.1151 = mul i32 %.1149, 24
  %.1152 = add i32 %.1146, %.1151
  %.1153 = load [5 x i32]*, [5 x i32]** %.23
  %.1154 = getelementptr inbounds [5 x i32], [5 x i32]* %.1153, i32 3, i32 1
  %.1155 = load i32, i32* %.1154
  %.1156 = mul i32 %.1155, 82
  %.1157 = add i32 %.1152, %.1156
  %.1158 = load [5 x i32]*, [5 x i32]** %.23
  %.1159 = getelementptr inbounds [5 x i32], [5 x i32]* %.1158, i32 3, i32 2
  %.1160 = load i32, i32* %.1159
  %.1161 = mul i32 %.1160, -96
  %.1162 = add i32 %.1157, %.1161
  %.1163 = load [5 x i32]*, [5 x i32]** %.23
  %.1164 = getelementptr inbounds [5 x i32], [5 x i32]* %.1163, i32 3, i32 3
  %.1165 = load i32, i32* %.1164
  %.1166 = mul i32 %.1165, -104
  %.1167 = add i32 %.1162, %.1166
  %.1168 = load [5 x i32]*, [5 x i32]** %.23
  %.1169 = getelementptr inbounds [5 x i32], [5 x i32]* %.1168, i32 3, i32 4
  %.1170 = load i32, i32* %.1169
  %.1171 = mul i32 %.1170, -121
  %.1172 = add i32 %.1167, %.1171
  %.1173 = load [5 x i32]*, [5 x i32]** %.23
  %.1174 = getelementptr inbounds [5 x i32], [5 x i32]* %.1173, i32 4, i32 0
  %.1175 = load i32, i32* %.1174
  %.1176 = mul i32 %.1175, 65
  %.1177 = add i32 %.1172, %.1176
  %.1178 = load [5 x i32]*, [5 x i32]** %.23
  %.1179 = getelementptr inbounds [5 x i32], [5 x i32]* %.1178, i32 4, i32 1
  %.1180 = load i32, i32* %.1179
  %.1182 = mul i32 %.1180, 97
  %.1183 = add i32 %.1177, %.1182
  %.1184 = load [5 x i32]*, [5 x i32]** %.23
  %.1185 = getelementptr inbounds [5 x i32], [5 x i32]* %.1184, i32 4, i32 2
  %.1186 = load i32, i32* %.1185
  %.1187 = mul i32 %.1186, 83
  %.1188 = add i32 %.1183, %.1187
  %.1189 = load [5 x i32]*, [5 x i32]** %.23
  %.1190 = getelementptr inbounds [5 x i32], [5 x i32]* %.1189, i32 4, i32 3
  %.1191 = load i32, i32* %.1190
  %.1192 = mul i32 %.1191, 46
  %.1193 = add i32 %.1188, %.1192
  %.1194 = load [5 x i32]*, [5 x i32]** %.23
  %.1195 = getelementptr inbounds [5 x i32], [5 x i32]* %.1194, i32 4, i32 4
  %.1196 = load i32, i32* %.1195
  %.1199 = mul i32 %.1196, -84
  %.1200 = add i32 %.1193, %.1199
  %.1201at7 = call i32 @_user_relu_reg(i32 %.1200)
  %.1202 = mul i32 %.1201at7, -50
  %.1203 = add i32 %.1066, %.1202
  %.1204 = load [5 x i32]*, [5 x i32]** %.23
  %.1205 = getelementptr inbounds [5 x i32], [5 x i32]* %.1204, i32 0, i32 0
  %.1206 = load i32, i32* %.1205
  %.1208 = mul i32 %.1206, -29
  %.1209 = load [5 x i32]*, [5 x i32]** %.23
  %.1210 = getelementptr inbounds [5 x i32], [5 x i32]* %.1209, i32 0, i32 1
  %.1211 = load i32, i32* %.1210
  %.1212 = mul i32 %.1211, 7
  %.1213 = add i32 %.1208, %.1212
  %.1214 = load [5 x i32]*, [5 x i32]** %.23
  %.1215 = getelementptr inbounds [5 x i32], [5 x i32]* %.1214, i32 0, i32 2
  %.1216 = load i32, i32* %.1215
  %.1217 = mul i32 %.1216, -70
  %.1218 = add i32 %.1213, %.1217
  %.1219 = load [5 x i32]*, [5 x i32]** %.23
  %.1220 = getelementptr inbounds [5 x i32], [5 x i32]* %.1219, i32 0, i32 3
  %.1221 = load i32, i32* %.1220
  %.1222 = mul i32 %.1221, 38
  %.1223 = add i32 %.1218, %.1222
  %.1224 = load [5 x i32]*, [5 x i32]** %.23
  %.1225 = getelementptr inbounds [5 x i32], [5 x i32]* %.1224, i32 0, i32 4
  %.1226 = load i32, i32* %.1225
  %.1227 = mul i32 %.1226, -90
  %.1228 = add i32 %.1223, %.1227
  %.1229 = load [5 x i32]*, [5 x i32]** %.23
  %.1230 = getelementptr inbounds [5 x i32], [5 x i32]* %.1229, i32 1, i32 0
  %.1231 = load i32, i32* %.1230
  %.1232 = mul i32 %.1231, -15
  %.1233 = add i32 %.1228, %.1232
  %.1234 = load [5 x i32]*, [5 x i32]** %.23
  %.1235 = getelementptr inbounds [5 x i32], [5 x i32]* %.1234, i32 1, i32 1
  %.1236 = load i32, i32* %.1235
  %.1237 = mul i32 %.1236, -32
  %.1238 = add i32 %.1233, %.1237
  %.1239 = load [5 x i32]*, [5 x i32]** %.23
  %.1240 = getelementptr inbounds [5 x i32], [5 x i32]* %.1239, i32 1, i32 2
  %.1241 = load i32, i32* %.1240
  %.1243 = mul i32 %.1241, 37
  %.1244 = add i32 %.1238, %.1243
  %.1245 = load [5 x i32]*, [5 x i32]** %.23
  %.1246 = getelementptr inbounds [5 x i32], [5 x i32]* %.1245, i32 1, i32 3
  %.1247 = load i32, i32* %.1246
  %.1249 = mul i32 %.1247, 36
  %.1250 = add i32 %.1244, %.1249
  %.1251 = load [5 x i32]*, [5 x i32]** %.23
  %.1252 = getelementptr inbounds [5 x i32], [5 x i32]* %.1251, i32 1, i32 4
  %.1253 = load i32, i32* %.1252
  %.1254 = mul i32 %.1253, -62
  %.1255 = add i32 %.1250, %.1254
  %.1256 = load [5 x i32]*, [5 x i32]** %.23
  %.1257 = getelementptr inbounds [5 x i32], [5 x i32]* %.1256, i32 2, i32 0
  %.1258 = load i32, i32* %.1257
  %.1259 = mul i32 %.1258, -125
  %.1260 = add i32 %.1255, %.1259
  %.1261 = load [5 x i32]*, [5 x i32]** %.23
  %.1262 = getelementptr inbounds [5 x i32], [5 x i32]* %.1261, i32 2, i32 1
  %.1263 = load i32, i32* %.1262
  %.1265 = mul i32 %.1263, -46
  %.1266 = add i32 %.1260, %.1265
  %.1267 = load [5 x i32]*, [5 x i32]** %.23
  %.1268 = getelementptr inbounds [5 x i32], [5 x i32]* %.1267, i32 2, i32 2
  %.1269 = load i32, i32* %.1268
  %.1270 = mul i32 %.1269, -70
  %.1271 = add i32 %.1266, %.1270
  %.1272 = load [5 x i32]*, [5 x i32]** %.23
  %.1273 = getelementptr inbounds [5 x i32], [5 x i32]* %.1272, i32 2, i32 3
  %.1274 = load i32, i32* %.1273
  %.1275 = mul i32 %.1274, 37
  %.1276 = add i32 %.1271, %.1275
  %.1277 = load [5 x i32]*, [5 x i32]** %.23
  %.1278 = getelementptr inbounds [5 x i32], [5 x i32]* %.1277, i32 2, i32 4
  %.1279 = load i32, i32* %.1278
  %.1282 = mul i32 %.1279, -73
  %.1283 = add i32 %.1276, %.1282
  %.1284 = load [5 x i32]*, [5 x i32]** %.23
  %.1285 = getelementptr inbounds [5 x i32], [5 x i32]* %.1284, i32 3, i32 0
  %.1286 = load i32, i32* %.1285
  %.1287 = mul i32 %.1286, -34
  %.1288 = add i32 %.1283, %.1287
  %.1289 = load [5 x i32]*, [5 x i32]** %.23
  %.1290 = getelementptr inbounds [5 x i32], [5 x i32]* %.1289, i32 3, i32 1
  %.1291 = load i32, i32* %.1290
  %.1293 = mul i32 %.1291, -87
  %.1294 = add i32 %.1288, %.1293
  %.1295 = load [5 x i32]*, [5 x i32]** %.23
  %.1296 = getelementptr inbounds [5 x i32], [5 x i32]* %.1295, i32 3, i32 2
  %.1297 = load i32, i32* %.1296
  %.1298 = mul i32 %.1297, -75
  %.1299 = add i32 %.1294, %.1298
  %.1300 = load [5 x i32]*, [5 x i32]** %.23
  %.1301 = getelementptr inbounds [5 x i32], [5 x i32]* %.1300, i32 3, i32 3
  %.1302 = load i32, i32* %.1301
  %.1303 = mul i32 %.1302, 71
  %.1304 = add i32 %.1299, %.1303
  %.1305 = load [5 x i32]*, [5 x i32]** %.23
  %.1306 = getelementptr inbounds [5 x i32], [5 x i32]* %.1305, i32 3, i32 4
  %.1307 = load i32, i32* %.1306
  %.1308 = mul i32 %.1307, -77
  %.1309 = add i32 %.1304, %.1308
  %.1310 = load [5 x i32]*, [5 x i32]** %.23
  %.1311 = getelementptr inbounds [5 x i32], [5 x i32]* %.1310, i32 4, i32 0
  %.1312 = load i32, i32* %.1311
  %.1314 = mul i32 %.1312, 53
  %.1315 = add i32 %.1309, %.1314
  %.1316 = load [5 x i32]*, [5 x i32]** %.23
  %.1317 = getelementptr inbounds [5 x i32], [5 x i32]* %.1316, i32 4, i32 1
  %.1318 = load i32, i32* %.1317
  %.1319 = mul i32 %.1318, 37
  %.1320 = add i32 %.1315, %.1319
  %.1321 = load [5 x i32]*, [5 x i32]** %.23
  %.1322 = getelementptr inbounds [5 x i32], [5 x i32]* %.1321, i32 4, i32 2
  %.1323 = load i32, i32* %.1322
  %.1324 = mul i32 %.1323, -103
  %.1325 = add i32 %.1320, %.1324
  %.1326 = load [5 x i32]*, [5 x i32]** %.23
  %.1327 = getelementptr inbounds [5 x i32], [5 x i32]* %.1326, i32 4, i32 3
  %.1328 = load i32, i32* %.1327
  %.1329 = mul i32 %.1328, -13
  %.1330 = add i32 %.1325, %.1329
  %.1331 = load [5 x i32]*, [5 x i32]** %.23
  %.1332 = getelementptr inbounds [5 x i32], [5 x i32]* %.1331, i32 4, i32 4
  %.1333 = load i32, i32* %.1332
  %.1334 = mul i32 %.1333, -114
  %.1335 = add i32 %.1330, %.1334
  %.1336at8 = call i32 @_user_relu_reg(i32 %.1335)
  %.1337 = mul i32 %.1336at8, -23
  %.1338 = add i32 %.1203, %.1337
  %.1339 = load [5 x i32]*, [5 x i32]** %.23
  %.1340 = getelementptr inbounds [5 x i32], [5 x i32]* %.1339, i32 0, i32 0
  %.1341 = load i32, i32* %.1340
  %.1342 = mul i32 %.1341, 67
  %.1343 = load [5 x i32]*, [5 x i32]** %.23
  %.1344 = getelementptr inbounds [5 x i32], [5 x i32]* %.1343, i32 0, i32 1
  %.1345 = load i32, i32* %.1344
  %.1346 = mul i32 %.1345, 42
  %.1347 = add i32 %.1342, %.1346
  %.1348 = load [5 x i32]*, [5 x i32]** %.23
  %.1349 = getelementptr inbounds [5 x i32], [5 x i32]* %.1348, i32 0, i32 2
  %.1350 = load i32, i32* %.1349
  %.1352 = mul i32 %.1350, 41
  %.1353 = add i32 %.1347, %.1352
  %.1354 = load [5 x i32]*, [5 x i32]** %.23
  %.1355 = getelementptr inbounds [5 x i32], [5 x i32]* %.1354, i32 0, i32 3
  %.1356 = load i32, i32* %.1355
  %.1357 = mul i32 %.1356, -123
  %.1358 = add i32 %.1353, %.1357
  %.1359 = load [5 x i32]*, [5 x i32]** %.23
  %.1360 = getelementptr inbounds [5 x i32], [5 x i32]* %.1359, i32 0, i32 4
  %.1361 = load i32, i32* %.1360
  %.1364 = mul i32 %.1361, -92
  %.1365 = add i32 %.1358, %.1364
  %.1366 = load [5 x i32]*, [5 x i32]** %.23
  %.1367 = getelementptr inbounds [5 x i32], [5 x i32]* %.1366, i32 1, i32 0
  %.1368 = load i32, i32* %.1367
  %.1369 = mul i32 %.1368, 10
  %.1370 = add i32 %.1365, %.1369
  %.1371 = load [5 x i32]*, [5 x i32]** %.23
  %.1372 = getelementptr inbounds [5 x i32], [5 x i32]* %.1371, i32 1, i32 1
  %.1373 = load i32, i32* %.1372
  %.1374 = mul i32 %.1373, -77
  %.1375 = add i32 %.1370, %.1374
  %.1376 = load [5 x i32]*, [5 x i32]** %.23
  %.1377 = getelementptr inbounds [5 x i32], [5 x i32]* %.1376, i32 1, i32 2
  %.1378 = load i32, i32* %.1377
  %.1379 = mul i32 %.1378, 75
  %.1380 = add i32 %.1375, %.1379
  %.1381 = load [5 x i32]*, [5 x i32]** %.23
  %.1382 = getelementptr inbounds [5 x i32], [5 x i32]* %.1381, i32 1, i32 3
  %.1383 = load i32, i32* %.1382
  %.1384 = mul i32 %.1383, 96
  %.1385 = add i32 %.1380, %.1384
  %.1386 = load [5 x i32]*, [5 x i32]** %.23
  %.1387 = getelementptr inbounds [5 x i32], [5 x i32]* %.1386, i32 1, i32 4
  %.1388 = load i32, i32* %.1387
  %.1391 = mul i32 %.1388, -51
  %.1392 = add i32 %.1385, %.1391
  %.1393 = load [5 x i32]*, [5 x i32]** %.23
  %.1394 = getelementptr inbounds [5 x i32], [5 x i32]* %.1393, i32 2, i32 0
  %.1395 = load i32, i32* %.1394
  %.1397 = mul i32 %.1395, 109
  %.1398 = add i32 %.1392, %.1397
  %.1399 = load [5 x i32]*, [5 x i32]** %.23
  %.1400 = getelementptr inbounds [5 x i32], [5 x i32]* %.1399, i32 2, i32 1
  %.1401 = load i32, i32* %.1400
  %.1402 = mul i32 %.1401, -74
  %.1403 = add i32 %.1398, %.1402
  %.1404 = load [5 x i32]*, [5 x i32]** %.23
  %.1405 = getelementptr inbounds [5 x i32], [5 x i32]* %.1404, i32 2, i32 2
  %.1406 = load i32, i32* %.1405
  %.1407 = mul i32 %.1406, -7
  %.1408 = add i32 %.1403, %.1407
  %.1409 = load [5 x i32]*, [5 x i32]** %.23
  %.1410 = getelementptr inbounds [5 x i32], [5 x i32]* %.1409, i32 2, i32 3
  %.1411 = load i32, i32* %.1410
  %.1413 = mul i32 %.1411, -122
  %.1414 = add i32 %.1408, %.1413
  %.1415 = load [5 x i32]*, [5 x i32]** %.23
  %.1416 = getelementptr inbounds [5 x i32], [5 x i32]* %.1415, i32 2, i32 4
  %.1417 = load i32, i32* %.1416
  %.1418 = mul i32 %.1417, 67
  %.1419 = add i32 %.1414, %.1418
  %.1420 = load [5 x i32]*, [5 x i32]** %.23
  %.1421 = getelementptr inbounds [5 x i32], [5 x i32]* %.1420, i32 3, i32 0
  %.1422 = load i32, i32* %.1421
  %.1423 = mul i32 %.1422, 47
  %.1424 = add i32 %.1419, %.1423
  %.1425 = load [5 x i32]*, [5 x i32]** %.23
  %.1426 = getelementptr inbounds [5 x i32], [5 x i32]* %.1425, i32 3, i32 1
  %.1427 = load i32, i32* %.1426
  %.1428 = mul i32 %.1427, 22
  %.1429 = add i32 %.1424, %.1428
  %.1430 = load [5 x i32]*, [5 x i32]** %.23
  %.1431 = getelementptr inbounds [5 x i32], [5 x i32]* %.1430, i32 3, i32 2
  %.1432 = load i32, i32* %.1431
  %.1433 = mul i32 %.1432, -68
  %.1434 = add i32 %.1429, %.1433
  %.1435 = load [5 x i32]*, [5 x i32]** %.23
  %.1436 = getelementptr inbounds [5 x i32], [5 x i32]* %.1435, i32 3, i32 3
  %.1437 = load i32, i32* %.1436
  %.1438 = mul i32 %.1437, 38
  %.1439 = add i32 %.1434, %.1438
  %.1440 = load [5 x i32]*, [5 x i32]** %.23
  %.1441 = getelementptr inbounds [5 x i32], [5 x i32]* %.1440, i32 3, i32 4
  %.1442 = load i32, i32* %.1441
  %.1443 = mul i32 %.1442, 29
  %.1444 = add i32 %.1439, %.1443
  %.1445 = load [5 x i32]*, [5 x i32]** %.23
  %.1446 = getelementptr inbounds [5 x i32], [5 x i32]* %.1445, i32 4, i32 0
  %.1447 = load i32, i32* %.1446
  %.1449 = mul i32 %.1447, 115
  %.1450 = add i32 %.1444, %.1449
  %.1451 = load [5 x i32]*, [5 x i32]** %.23
  %.1452 = getelementptr inbounds [5 x i32], [5 x i32]* %.1451, i32 4, i32 1
  %.1453 = load i32, i32* %.1452
  %.1454 = mul i32 %.1453, -121
  %.1455 = add i32 %.1450, %.1454
  %.1456 = load [5 x i32]*, [5 x i32]** %.23
  %.1457 = getelementptr inbounds [5 x i32], [5 x i32]* %.1456, i32 4, i32 2
  %.1458 = load i32, i32* %.1457
  %.1459 = mul i32 %.1458, 36
  %.1460 = add i32 %.1455, %.1459
  %.1461 = load [5 x i32]*, [5 x i32]** %.23
  %.1462 = getelementptr inbounds [5 x i32], [5 x i32]* %.1461, i32 4, i32 3
  %.1463 = load i32, i32* %.1462
  %.1465 = mul i32 %.1463, -49
  %.1466 = add i32 %.1460, %.1465
  %.1467 = load [5 x i32]*, [5 x i32]** %.23
  %.1468 = getelementptr inbounds [5 x i32], [5 x i32]* %.1467, i32 4, i32 4
  %.1469 = load i32, i32* %.1468
  %.1470 = mul i32 %.1469, 85
  %.1471 = add i32 %.1466, %.1470
  %.1472at9 = call i32 @_user_relu_reg(i32 %.1471)
  %.1473 = mul i32 %.1472at9, 46
  %.1474 = add i32 %.1338, %.1473
  %.1475 = icmp sgt i32 %.1474, 0
  br i1 %.1475, label %.25, label %.26
.25:
  ret i32 1 
.26:
  ret i32 0 
}
define i32 @main(){
.1479:
  %.1501 = alloca i32
  %.1492 = alloca i32
  %.1484 = alloca [5 x [5 x i32]]
  %.1480 = alloca i32
  %.1482at10 = call i32 @getint()
  store i32 %.1482at10, i32* %.1480
  br label %.1485wc 
.1485wc:
  %.1489 = load i32, i32* %.1480
  %.1490 = icmp sgt i32 %.1489, 0
  br i1 %.1490, label %.1486wloop., label %.1487wn
.1486wloop.:
  store i32 0, i32* %.1492
  br label %.1494wc 
.1487wn:
  ret i32 0 
.1494wc:
  %.1498 = load i32, i32* %.1492
  %.1499 = icmp slt i32 %.1498, 5
  br i1 %.1499, label %.1495wloop., label %.1496wn
.1495wloop.:
  store i32 0, i32* %.1501
  br label %.1503wc 
.1496wn:
  %.1525 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %.1484, i32 0, i32 0
  %.1526at12 = call i32 @_user_model([5 x i32]* %.1525)
  %.1527 = icmp ne i32 %.1526at12, 0
  br i1 %.1527, label %.1523, label %.1524
.1503wc:
  %.1507 = load i32, i32* %.1501
  %.1508 = icmp slt i32 %.1507, 5
  br i1 %.1508, label %.1504wloop., label %.1505wn
.1504wloop.:
  %.1510at11 = call i32 @getint()
  %.1511 = load i32, i32* %.1492
  %.1512 = load i32, i32* %.1501
  %.1513 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %.1484, i32 0, i32 %.1511, i32 %.1512
  store i32 %.1510at11, i32* %.1513
  %.1515 = load i32, i32* %.1501
  %.1516 = add i32 %.1515, 1
  store i32 %.1516, i32* %.1501
  br label %.1503wc 
.1505wn:
  %.1519 = load i32, i32* %.1492
  %.1520 = add i32 %.1519, 1
  store i32 %.1520, i32* %.1492
  br label %.1494wc 
.1523:
  call void @putch(i32 99)
  call void @putch(i32 97)
  call void @putch(i32 116)
  call void @putch(i32 10)
  br label %.1534 
.1524:
  call void @putch(i32 100)
  call void @putch(i32 111)
  call void @putch(i32 103)
  call void @putch(i32 10)
  br label %.1534 
.1534:
  %.1541 = load i32, i32* %.1480
  %.1542 = sub i32 %.1541, 1
  store i32 %.1542, i32* %.1480
  br label %.1485wc 
}
