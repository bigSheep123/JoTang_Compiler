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
@.G.INF = global i32 zeroinitializer
@.G.size = global [10 x i32] zeroinitializer
@.G.to = global [10 x [10 x i32]] zeroinitializer
@.G.cap = global [10 x [10 x i32]] zeroinitializer
@.G.rev = global [10 x [10 x i32]] zeroinitializer
@.G.used = global [10 x i32] zeroinitializer
define void @_user_my_memset(i32* %.9, i32 %.12, i32 %.15){
.8:
  %.18 = alloca i32
  %.16 = alloca i32
  %.13 = alloca i32
  %.10 = alloca i32*
  store i32* %.9, i32** %.10
  store i32 %.12, i32* %.13
  store i32 %.15, i32* %.16
  store i32 0, i32* %.18
  br label %.21wc 
.21wc:
  %.25 = load i32, i32* %.18
  %.26 = load i32, i32* %.16
  %.27 = icmp slt i32 %.25, %.26
  br i1 %.27, label %.22wloop., label %.23wn
.22wloop.:
  %.29 = load i32, i32* %.13
  %.30 = load i32, i32* %.18
  %.31 = load i32*, i32** %.10
  %.32 = getelementptr inbounds i32, i32* %.31, i32 %.30
  store i32 %.29, i32* %.32
  %.34 = load i32, i32* %.18
  %.36 = add i32 %.34, 1
  store i32 %.36, i32* %.18
  br label %.21wc 
.23wn:
  ret void
}
define void @_user_add_node(i32 %.41, i32 %.44, i32 %.47){
.40:
  %.48 = alloca i32
  %.45 = alloca i32
  %.42 = alloca i32
  store i32 %.41, i32* %.42
  store i32 %.44, i32* %.45
  store i32 %.47, i32* %.48
  %.50 = load i32, i32* %.45
  %.51 = load i32, i32* %.42
  %.52 = load i32, i32* %.42
  %.53 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.52
  %.54 = load i32, i32* %.53
  %.55 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.to, i32 0, i32 %.51, i32 %.54
  store i32 %.50, i32* %.55
  %.57 = load i32, i32* %.48
  %.58 = load i32, i32* %.42
  %.59 = load i32, i32* %.42
  %.60 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.59
  %.61 = load i32, i32* %.60
  %.62 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.cap, i32 0, i32 %.58, i32 %.61
  store i32 %.57, i32* %.62
  %.64 = load i32, i32* %.45
  %.65 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.64
  %.66 = load i32, i32* %.65
  %.67 = load i32, i32* %.42
  %.68 = load i32, i32* %.42
  %.69 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.68
  %.70 = load i32, i32* %.69
  %.71 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.rev, i32 0, i32 %.67, i32 %.70
  store i32 %.66, i32* %.71
  %.73 = load i32, i32* %.42
  %.74 = load i32, i32* %.45
  %.75 = load i32, i32* %.45
  %.76 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.75
  %.77 = load i32, i32* %.76
  %.78 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.to, i32 0, i32 %.74, i32 %.77
  store i32 %.73, i32* %.78
  %.80 = load i32, i32* %.45
  %.81 = load i32, i32* %.45
  %.82 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.81
  %.83 = load i32, i32* %.82
  %.84 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.cap, i32 0, i32 %.80, i32 %.83
  store i32 0, i32* %.84
  %.86 = load i32, i32* %.42
  %.87 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.86
  %.88 = load i32, i32* %.87
  %.89 = load i32, i32* %.45
  %.90 = load i32, i32* %.45
  %.91 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.90
  %.92 = load i32, i32* %.91
  %.93 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.rev, i32 0, i32 %.89, i32 %.92
  store i32 %.88, i32* %.93
  %.95 = load i32, i32* %.42
  %.96 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.95
  %.97 = load i32, i32* %.96
  %.98 = add i32 %.97, 1
  %.99 = load i32, i32* %.42
  %.100 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.99
  store i32 %.98, i32* %.100
  %.102 = load i32, i32* %.45
  %.103 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.102
  %.104 = load i32, i32* %.103
  %.105 = add i32 %.104, 1
  %.106 = load i32, i32* %.45
  %.107 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.106
  store i32 %.105, i32* %.107
  ret void
}
define i32 @_user_dfs(i32 %.111, i32 %.114, i32 %.117){
.110:
  %.189 = alloca i32
  %.169 = alloca i32
  %.131 = alloca i32
  %.118 = alloca i32
  %.115 = alloca i32
  %.112 = alloca i32
  store i32 %.111, i32* %.112
  store i32 %.114, i32* %.115
  store i32 %.117, i32* %.118
  %.122 = load i32, i32* %.112
  %.123 = load i32, i32* %.115
  %.124 = icmp eq i32 %.122, %.123
  br i1 %.124, label %.120, label %.121
.120:
  %.126 = load i32, i32* %.118
  ret i32 %.126 
.121:
  %.128 = load i32, i32* %.112
  %.129 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.used, i32 0, i32 %.128
  store i32 1, i32* %.129
  store i32 0, i32* %.131
  br label %.133wc 
.133wc:
  %.137 = load i32, i32* %.131
  %.138 = load i32, i32* %.112
  %.139 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 %.138
  %.140 = load i32, i32* %.139
  %.141 = icmp slt i32 %.137, %.140
  br i1 %.141, label %.134wloop., label %.135wn
.134wloop.:
  %.145 = load i32, i32* %.112
  %.146 = load i32, i32* %.131
  %.147 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.to, i32 0, i32 %.145, i32 %.146
  %.148 = load i32, i32* %.147
  %.149 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.used, i32 0, i32 %.148
  %.150 = load i32, i32* %.149
  %.151 = icmp ne i32 %.150, 0
  br i1 %.151, label %.143, label %.144
.135wn:
  ret i32 0 
.143:
  %.153 = load i32, i32* %.131
  %.154 = add i32 %.153, 1
  store i32 %.154, i32* %.131
  br label %.133wc 
.144:
  %.159 = load i32, i32* %.112
  %.160 = load i32, i32* %.131
  %.161 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.cap, i32 0, i32 %.159, i32 %.160
  %.162 = load i32, i32* %.161
  %.163 = icmp sle i32 %.162, 0
  br i1 %.163, label %.157, label %.158
.157:
  %.165 = load i32, i32* %.131
  %.166 = add i32 %.165, 1
  store i32 %.166, i32* %.131
  br label %.133wc 
.158:
  %.172 = load i32, i32* %.118
  %.173 = load i32, i32* %.112
  %.174 = load i32, i32* %.131
  %.175 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.cap, i32 0, i32 %.173, i32 %.174
  %.176 = load i32, i32* %.175
  %.177 = icmp slt i32 %.172, %.176
  br i1 %.177, label %.170, label %.171
.170:
  %.179 = load i32, i32* %.118
  store i32 %.179, i32* %.169
  br label %.181 
.171:
  %.183 = load i32, i32* %.112
  %.184 = load i32, i32* %.131
  %.185 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.cap, i32 0, i32 %.183, i32 %.184
  %.186 = load i32, i32* %.185
  store i32 %.186, i32* %.169
  br label %.181 
.181:
  %.190 = load i32, i32* %.112
  %.191 = load i32, i32* %.131
  %.192 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.to, i32 0, i32 %.190, i32 %.191
  %.193 = load i32, i32* %.192
  %.194 = load i32, i32* %.115
  %.195 = load i32, i32* %.169
  %.196at0 = call i32 @_user_dfs(i32 %.193, i32 %.194, i32 %.195)
  store i32 %.196at0, i32* %.189
  %.200 = load i32, i32* %.189
  %.201 = icmp sgt i32 %.200, 0
  br i1 %.201, label %.198, label %.199
.198:
  %.203 = load i32, i32* %.112
  %.204 = load i32, i32* %.131
  %.205 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.cap, i32 0, i32 %.203, i32 %.204
  %.206 = load i32, i32* %.205
  %.207 = load i32, i32* %.189
  %.208 = sub i32 %.206, %.207
  %.209 = load i32, i32* %.112
  %.210 = load i32, i32* %.131
  %.211 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.cap, i32 0, i32 %.209, i32 %.210
  store i32 %.208, i32* %.211
  %.213 = load i32, i32* %.112
  %.214 = load i32, i32* %.131
  %.215 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.to, i32 0, i32 %.213, i32 %.214
  %.216 = load i32, i32* %.215
  %.217 = load i32, i32* %.112
  %.218 = load i32, i32* %.131
  %.219 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.rev, i32 0, i32 %.217, i32 %.218
  %.220 = load i32, i32* %.219
  %.221 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.cap, i32 0, i32 %.216, i32 %.220
  %.222 = load i32, i32* %.221
  %.223 = load i32, i32* %.189
  %.224 = add i32 %.222, %.223
  %.225 = load i32, i32* %.112
  %.226 = load i32, i32* %.131
  %.227 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.to, i32 0, i32 %.225, i32 %.226
  %.228 = load i32, i32* %.227
  %.229 = load i32, i32* %.112
  %.230 = load i32, i32* %.131
  %.231 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.rev, i32 0, i32 %.229, i32 %.230
  %.232 = load i32, i32* %.231
  %.233 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @.G.cap, i32 0, i32 %.228, i32 %.232
  store i32 %.224, i32* %.233
  %.235 = load i32, i32* %.189
  ret i32 %.235 
.199:
  %.237 = load i32, i32* %.131
  %.238 = add i32 %.237, 1
  store i32 %.238, i32* %.131
  br label %.133wc 
}
define i32 @_user_max_flow(i32 %.243, i32 %.246){
.242:
  %.259 = alloca i32
  %.249 = alloca i32
  %.247 = alloca i32
  %.244 = alloca i32
  store i32 %.243, i32* %.244
  store i32 %.246, i32* %.247
  store i32 0, i32* %.249
  br label %.251wc 
.251wc:
  %.255 = icmp ne i32 1, 0
  br i1 %.255, label %.252wloop., label %.253wn
.252wloop.:
  %.257 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.used, i32 0, i32 0
  call void @_user_my_memset(i32* %.257, i32 0, i32 10)
  %.260 = load i32, i32* %.244
  %.261 = load i32, i32* %.247
  %.262at2 = call i32 @_user_dfs(i32 %.260, i32 %.261, i32 1879048192)
  store i32 %.262at2, i32* %.259
  %.266 = load i32, i32* %.259
  %.267 = icmp eq i32 %.266, 0
  br i1 %.267, label %.264, label %.265
.253wn:
  ret i32 undef 
.264:
  %.269 = load i32, i32* %.249
  ret i32 %.269 
.265:
  %.271 = load i32, i32* %.249
  %.272 = load i32, i32* %.259
  %.273 = add i32 %.271, %.272
  store i32 %.273, i32* %.249
  br label %.251wc 
}
define i32 @main(){
.278:
  %.301 = alloca i32
  %.296 = alloca i32
  %.295 = alloca i32
  %.280 = alloca i32
  %.279 = alloca i32
  %.282at3 = call i32 @getint()
  store i32 %.282at3, i32* %.279
  %.284at4 = call i32 @getint()
  store i32 %.284at4, i32* %.280
  %.286 = getelementptr inbounds [10 x i32], [10 x i32]* @.G.size, i32 0, i32 0
  call void @_user_my_memset(i32* %.286, i32 0, i32 10)
  br label %.288wc 
.288wc:
  %.292 = load i32, i32* %.280
  %.293 = icmp sgt i32 %.292, 0
  br i1 %.293, label %.289wloop., label %.290wn
.289wloop.:
  %.297at6 = call i32 @getint()
  store i32 %.297at6, i32* %.295
  %.299at7 = call i32 @getint()
  store i32 %.299at7, i32* %.296
  %.302at8 = call i32 @getint()
  store i32 %.302at8, i32* %.301
  %.304 = load i32, i32* %.295
  %.305 = load i32, i32* %.296
  %.306 = load i32, i32* %.301
  call void @_user_add_node(i32 %.304, i32 %.305, i32 %.306)
  %.308 = load i32, i32* %.280
  %.309 = sub i32 %.308, 1
  store i32 %.309, i32* %.280
  br label %.288wc 
.290wn:
  %.312 = load i32, i32* %.279
  %.313at10 = call i32 @_user_max_flow(i32 1, i32 %.312)
  call void @putint(i32 %.313at10)
  call void @putch(i32 10)
  ret i32 0 
}
