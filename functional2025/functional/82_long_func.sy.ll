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
@.G.SHIFT_TABLE = global [16 x i32]  [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768]
define i32 @_user_long_func(){
.18:
  br label %.31wc 
.31wc:
  %.4541 = phi i32 [2, %.18], [%.4526, %.1079]
  %.4540 = phi i32 [0, %.18], [%.4771, %.1079]
  %.4538 = phi i32 [1, %.18], [%.4539, %.1079]
  %.36 = icmp sgt i32 %.4540, 0
  br i1 %.36, label %.32wloop., label %.33wn
.32wloop.:
  br label %.43wc 
.33wn:
  call void @putint(i32 %.4538)
  call void @putch(i32 10)
  br label %.1138wc 
.43wc:
  %.4724 = phi i32 [0, %.32wloop.], [%.4725, %.51]
  %.4664 = phi i32 [0, %.32wloop.], [%.76, %.51]
  %.4604 = phi i32 [%.4540, %.32wloop.], [%.70, %.51]
  %.4544 = phi i32 [1, %.32wloop.], [%.73, %.51]
  %.48 = icmp slt i32 %.4664, 16
  br i1 %.48, label %.44wloop., label %.45wn
.44wloop.:
  %.53 = srem i32 %.4604, 2
  %.54 = icmp ne i32 %.53, 0
  br i1 %.54, label %.55, label %.51
.45wn:
  %.82 = icmp ne i32 %.4724, 0
  br i1 %.82, label %.79, label %.80
.50:
  %.63 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4664
  %.64 = load i32, i32* %.63
  %.65 = mul i32 1, %.64
  %.66 = add i32 %.4724, %.65
  br label %.51 
.51:
  %.4725 = phi i32 [%.4724, %.44wloop.], [%.4724, %.55], [%.66, %.50]
  %.70 = sdiv i32 %.4604, 2
  %.73 = sdiv i32 %.4544, 2
  %.76 = add i32 %.4664, 1
  br label %.43wc 
.55:
  %.58 = srem i32 %.4544, 2
  %.59 = icmp ne i32 %.58, 0
  br i1 %.59, label %.50, label %.51
.79:
  br label %.92wc 
.80:
  %.4539 = phi i32 [%.4538, %.45wn], [%.4534, %.94wn]
  br label %.584wc 
.92wc:
  %.4537 = phi i32 [%.4538, %.79], [%.4531, %.524]
  %.4536 = phi i32 [%.4541, %.79], [%.4745, %.524]
  %.4534 = phi i32 [0, %.79], [%.4535, %.524]
  %.97 = icmp ne i32 %.4536, 0
  br i1 %.97, label %.93wloop., label %.94wn
.93wloop.:
  br label %.104wc 
.94wn:
  br label %.80 
.104wc:
  %.4726 = phi i32 [0, %.93wloop.], [%.4727, %.112]
  %.4665 = phi i32 [0, %.93wloop.], [%.137, %.112]
  %.4605 = phi i32 [%.4536, %.93wloop.], [%.131, %.112]
  %.4545 = phi i32 [1, %.93wloop.], [%.134, %.112]
  %.109 = icmp slt i32 %.4665, 16
  br i1 %.109, label %.105wloop., label %.106wn
.105wloop.:
  %.114 = srem i32 %.4605, 2
  %.115 = icmp ne i32 %.114, 0
  br i1 %.115, label %.116, label %.112
.106wn:
  %.143 = icmp ne i32 %.4726, 0
  br i1 %.143, label %.140, label %.141
.111:
  %.124 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4665
  %.125 = load i32, i32* %.124
  %.126 = mul i32 1, %.125
  %.127 = add i32 %.4726, %.126
  br label %.112 
.112:
  %.4727 = phi i32 [%.4726, %.105wloop.], [%.4726, %.116], [%.127, %.111]
  %.131 = sdiv i32 %.4605, 2
  %.134 = sdiv i32 %.4545, 2
  %.137 = add i32 %.4665, 1
  br label %.104wc 
.116:
  %.119 = srem i32 %.4545, 2
  %.120 = icmp ne i32 %.119, 0
  br i1 %.120, label %.111, label %.112
.140:
  br label %.152wc 
.141:
  %.4535 = phi i32 [%.4534, %.106wn], [%.4533, %.154wn]
  br label %.335wc 
.152wc:
  %.4533 = phi i32 [%.4534, %.140], [%.4728, %.316]
  %.4532 = phi i32 [%.4537, %.140], [%.4734, %.316]
  %.157 = icmp ne i32 %.4532, 0
  br i1 %.157, label %.153wloop., label %.154wn
.153wloop.:
  br label %.165wc 
.154wn:
  br label %.141 
.165wc:
  %.4728 = phi i32 [0, %.153wloop.], [%.4730, %.192]
  %.4666 = phi i32 [0, %.153wloop.], [%.216, %.192]
  %.4606 = phi i32 [%.4533, %.153wloop.], [%.210, %.192]
  %.4546 = phi i32 [%.4532, %.153wloop.], [%.213, %.192]
  %.170 = icmp slt i32 %.4666, 16
  br i1 %.170, label %.166wloop., label %.167wn
.166wloop.:
  %.175 = srem i32 %.4606, 2
  %.176 = icmp ne i32 %.175, 0
  br i1 %.176, label %.172, label %.173
.167wn:
  br label %.227wc 
.172:
  %.181 = srem i32 %.4546, 2
  %.182 = icmp eq i32 %.181, 0
  br i1 %.182, label %.178, label %.179
.173:
  %.197 = srem i32 %.4546, 2
  %.198 = icmp ne i32 %.197, 0
  br i1 %.198, label %.194, label %.195
.178:
  %.186 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4666
  %.187 = load i32, i32* %.186
  %.188 = mul i32 1, %.187
  %.189 = add i32 %.4728, %.188
  br label %.179 
.179:
  %.4729 = phi i32 [%.4728, %.172], [%.189, %.178]
  br label %.192 
.192:
  %.4730 = phi i32 [%.4731, %.195], [%.4729, %.179]
  %.210 = sdiv i32 %.4606, 2
  %.213 = sdiv i32 %.4546, 2
  %.216 = add i32 %.4666, 1
  br label %.165wc 
.194:
  %.202 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4666
  %.203 = load i32, i32* %.202
  %.204 = mul i32 1, %.203
  %.205 = add i32 %.4728, %.204
  br label %.195 
.195:
  %.4731 = phi i32 [%.4728, %.173], [%.205, %.194]
  br label %.192 
.227wc:
  %.4732 = phi i32 [0, %.167wn], [%.4733, %.235]
  %.4667 = phi i32 [0, %.167wn], [%.260, %.235]
  %.4607 = phi i32 [%.4533, %.167wn], [%.254, %.235]
  %.4547 = phi i32 [%.4532, %.167wn], [%.257, %.235]
  %.232 = icmp slt i32 %.4667, 16
  br i1 %.232, label %.228wloop., label %.229wn
.228wloop.:
  %.237 = srem i32 %.4607, 2
  %.238 = icmp ne i32 %.237, 0
  br i1 %.238, label %.239, label %.235
.229wn:
  br label %.266 
.234:
  %.247 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4667
  %.248 = load i32, i32* %.247
  %.249 = mul i32 1, %.248
  %.250 = add i32 %.4732, %.249
  br label %.235 
.235:
  %.4733 = phi i32 [%.4732, %.228wloop.], [%.4732, %.239], [%.250, %.234]
  %.254 = sdiv i32 %.4607, 2
  %.257 = sdiv i32 %.4547, 2
  %.260 = add i32 %.4667, 1
  br label %.227wc 
.239:
  %.242 = srem i32 %.4547, 2
  %.243 = icmp ne i32 %.242, 0
  br i1 %.243, label %.234, label %.235
.266:
  %.274 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.275 = load i32, i32* %.274
  %.276 = mul i32 %.4732, %.275
  br label %.280wc 
.280wc:
  %.4734 = phi i32 [0, %.266], [%.4735, %.288]
  %.4668 = phi i32 [0, %.266], [%.313, %.288]
  %.4608 = phi i32 [%.276, %.266], [%.307, %.288]
  %.4548 = phi i32 [65535, %.266], [%.310, %.288]
  %.285 = icmp slt i32 %.4668, 16
  br i1 %.285, label %.281wloop., label %.282wn
.281wloop.:
  %.290 = srem i32 %.4608, 2
  %.291 = icmp ne i32 %.290, 0
  br i1 %.291, label %.292, label %.288
.282wn:
  br label %.316 
.287:
  %.300 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4668
  %.301 = load i32, i32* %.300
  %.302 = mul i32 1, %.301
  %.303 = add i32 %.4734, %.302
  br label %.288 
.288:
  %.4735 = phi i32 [%.4734, %.281wloop.], [%.4734, %.292], [%.303, %.287]
  %.307 = sdiv i32 %.4608, 2
  %.310 = sdiv i32 %.4548, 2
  %.313 = add i32 %.4668, 1
  br label %.280wc 
.292:
  %.295 = srem i32 %.4548, 2
  %.296 = icmp ne i32 %.295, 0
  br i1 %.296, label %.287, label %.288
.316:
  br label %.152wc 
.335wc:
  %.4531 = phi i32 [%.4537, %.141], [%.4736, %.495]
  %.4530 = phi i32 [%.4537, %.141], [%.4742, %.495]
  %.340 = icmp ne i32 %.4530, 0
  br i1 %.340, label %.336wloop., label %.337wn
.336wloop.:
  br label %.348wc 
.337wn:
  br i1 false, label %.509, label %.510
.348wc:
  %.4736 = phi i32 [0, %.336wloop.], [%.4738, %.375]
  %.4669 = phi i32 [0, %.336wloop.], [%.399, %.375]
  %.4609 = phi i32 [%.4531, %.336wloop.], [%.393, %.375]
  %.4549 = phi i32 [%.4530, %.336wloop.], [%.396, %.375]
  %.353 = icmp slt i32 %.4669, 16
  br i1 %.353, label %.349wloop., label %.350wn
.349wloop.:
  %.358 = srem i32 %.4609, 2
  %.359 = icmp ne i32 %.358, 0
  br i1 %.359, label %.355, label %.356
.350wn:
  br label %.410wc 
.355:
  %.364 = srem i32 %.4549, 2
  %.365 = icmp eq i32 %.364, 0
  br i1 %.365, label %.361, label %.362
.356:
  %.380 = srem i32 %.4549, 2
  %.381 = icmp ne i32 %.380, 0
  br i1 %.381, label %.377, label %.378
.361:
  %.369 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4669
  %.370 = load i32, i32* %.369
  %.371 = mul i32 1, %.370
  %.372 = add i32 %.4736, %.371
  br label %.362 
.362:
  %.4737 = phi i32 [%.4736, %.355], [%.372, %.361]
  br label %.375 
.375:
  %.4738 = phi i32 [%.4739, %.378], [%.4737, %.362]
  %.393 = sdiv i32 %.4609, 2
  %.396 = sdiv i32 %.4549, 2
  %.399 = add i32 %.4669, 1
  br label %.348wc 
.377:
  %.385 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4669
  %.386 = load i32, i32* %.385
  %.387 = mul i32 1, %.386
  %.388 = add i32 %.4736, %.387
  br label %.378 
.378:
  %.4739 = phi i32 [%.4736, %.356], [%.388, %.377]
  br label %.375 
.410wc:
  %.4740 = phi i32 [0, %.350wn], [%.4741, %.418]
  %.4670 = phi i32 [0, %.350wn], [%.443, %.418]
  %.4610 = phi i32 [%.4531, %.350wn], [%.437, %.418]
  %.4550 = phi i32 [%.4530, %.350wn], [%.440, %.418]
  %.415 = icmp slt i32 %.4670, 16
  br i1 %.415, label %.411wloop., label %.412wn
.411wloop.:
  %.420 = srem i32 %.4610, 2
  %.421 = icmp ne i32 %.420, 0
  br i1 %.421, label %.422, label %.418
.412wn:
  br label %.449 
.417:
  %.430 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4670
  %.431 = load i32, i32* %.430
  %.432 = mul i32 1, %.431
  %.433 = add i32 %.4740, %.432
  br label %.418 
.418:
  %.4741 = phi i32 [%.4740, %.411wloop.], [%.4740, %.422], [%.433, %.417]
  %.437 = sdiv i32 %.4610, 2
  %.440 = sdiv i32 %.4550, 2
  %.443 = add i32 %.4670, 1
  br label %.410wc 
.422:
  %.425 = srem i32 %.4550, 2
  %.426 = icmp ne i32 %.425, 0
  br i1 %.426, label %.417, label %.418
.449:
  %.454 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.455 = load i32, i32* %.454
  %.456 = mul i32 %.4740, %.455
  br label %.459wc 
.459wc:
  %.4742 = phi i32 [0, %.449], [%.4743, %.467]
  %.4671 = phi i32 [0, %.449], [%.492, %.467]
  %.4611 = phi i32 [%.456, %.449], [%.486, %.467]
  %.4551 = phi i32 [65535, %.449], [%.489, %.467]
  %.464 = icmp slt i32 %.4671, 16
  br i1 %.464, label %.460wloop., label %.461wn
.460wloop.:
  %.469 = srem i32 %.4611, 2
  %.470 = icmp ne i32 %.469, 0
  br i1 %.470, label %.471, label %.467
.461wn:
  br label %.495 
.466:
  %.479 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4671
  %.480 = load i32, i32* %.479
  %.481 = mul i32 1, %.480
  %.482 = add i32 %.4742, %.481
  br label %.467 
.467:
  %.4743 = phi i32 [%.4742, %.460wloop.], [%.4742, %.471], [%.482, %.466]
  %.486 = sdiv i32 %.4611, 2
  %.489 = sdiv i32 %.4551, 2
  %.492 = add i32 %.4671, 1
  br label %.459wc 
.471:
  %.474 = srem i32 %.4551, 2
  %.475 = icmp ne i32 %.474, 0
  br i1 %.475, label %.466, label %.467
.495:
  br label %.335wc 
.509:
  %.517 = icmp slt i32 %.4536, 0
  br i1 %.517, label %.514, label %.515
.510:
  br i1 true, label %.526, label %.527
.514:
  br label %.520 
.515:
  br label %.520 
.520:
  %.4744 = phi i32 [0, %.515], [65535, %.514]
  br label %.524 
.524:
  %.4745 = phi i32 [%.4747, %.562], [%.4744, %.520]
  br label %.92wc 
.526:
  %.535 = icmp sgt i32 %.4536, 32767
  br i1 %.535, label %.531, label %.532
.527:
  br label %.562 
.531:
  %.539 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.540 = load i32, i32* %.539
  %.541 = sdiv i32 %.4536, %.540
  %.545 = add i32 %.541, 65536
  %.549 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.550 = load i32, i32* %.549
  %.551 = sub i32 %.545, %.550
  br label %.553 
.532:
  %.557 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.558 = load i32, i32* %.557
  %.559 = sdiv i32 %.4536, %.558
  br label %.553 
.553:
  %.4746 = phi i32 [%.559, %.532], [%.551, %.531]
  br label %.562 
.562:
  %.4747 = phi i32 [%.4536, %.527], [%.4746, %.553]
  br label %.524 
.584wc:
  %.4529 = phi i32 [%.4541, %.80], [%.4523, %.1012]
  %.4528 = phi i32 [%.4541, %.80], [%.4767, %.1012]
  %.4526 = phi i32 [0, %.80], [%.4527, %.1012]
  %.589 = icmp ne i32 %.4528, 0
  br i1 %.589, label %.585wloop., label %.586wn
.585wloop.:
  br label %.596wc 
.586wn:
  br i1 false, label %.1064, label %.1065
.596wc:
  %.4748 = phi i32 [0, %.585wloop.], [%.4749, %.604]
  %.4672 = phi i32 [0, %.585wloop.], [%.629, %.604]
  %.4612 = phi i32 [%.4528, %.585wloop.], [%.623, %.604]
  %.4552 = phi i32 [1, %.585wloop.], [%.626, %.604]
  %.601 = icmp slt i32 %.4672, 16
  br i1 %.601, label %.597wloop., label %.598wn
.597wloop.:
  %.606 = srem i32 %.4612, 2
  %.607 = icmp ne i32 %.606, 0
  br i1 %.607, label %.608, label %.604
.598wn:
  %.635 = icmp ne i32 %.4748, 0
  br i1 %.635, label %.632, label %.633
.603:
  %.616 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4672
  %.617 = load i32, i32* %.616
  %.618 = mul i32 1, %.617
  %.619 = add i32 %.4748, %.618
  br label %.604 
.604:
  %.4749 = phi i32 [%.4748, %.597wloop.], [%.4748, %.608], [%.619, %.603]
  %.623 = sdiv i32 %.4612, 2
  %.626 = sdiv i32 %.4552, 2
  %.629 = add i32 %.4672, 1
  br label %.596wc 
.608:
  %.611 = srem i32 %.4552, 2
  %.612 = icmp ne i32 %.611, 0
  br i1 %.612, label %.603, label %.604
.632:
  br label %.644wc 
.633:
  %.4527 = phi i32 [%.4526, %.598wn], [%.4525, %.646wn]
  br label %.823wc 
.644wc:
  %.4525 = phi i32 [%.4526, %.632], [%.4750, %.804]
  %.4524 = phi i32 [%.4529, %.632], [%.4756, %.804]
  %.649 = icmp ne i32 %.4524, 0
  br i1 %.649, label %.645wloop., label %.646wn
.645wloop.:
  br label %.657wc 
.646wn:
  br label %.633 
.657wc:
  %.4750 = phi i32 [0, %.645wloop.], [%.4752, %.684]
  %.4673 = phi i32 [0, %.645wloop.], [%.708, %.684]
  %.4613 = phi i32 [%.4525, %.645wloop.], [%.702, %.684]
  %.4553 = phi i32 [%.4524, %.645wloop.], [%.705, %.684]
  %.662 = icmp slt i32 %.4673, 16
  br i1 %.662, label %.658wloop., label %.659wn
.658wloop.:
  %.667 = srem i32 %.4613, 2
  %.668 = icmp ne i32 %.667, 0
  br i1 %.668, label %.664, label %.665
.659wn:
  br label %.719wc 
.664:
  %.673 = srem i32 %.4553, 2
  %.674 = icmp eq i32 %.673, 0
  br i1 %.674, label %.670, label %.671
.665:
  %.689 = srem i32 %.4553, 2
  %.690 = icmp ne i32 %.689, 0
  br i1 %.690, label %.686, label %.687
.670:
  %.678 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4673
  %.679 = load i32, i32* %.678
  %.680 = mul i32 1, %.679
  %.681 = add i32 %.4750, %.680
  br label %.671 
.671:
  %.4751 = phi i32 [%.4750, %.664], [%.681, %.670]
  br label %.684 
.684:
  %.4752 = phi i32 [%.4753, %.687], [%.4751, %.671]
  %.702 = sdiv i32 %.4613, 2
  %.705 = sdiv i32 %.4553, 2
  %.708 = add i32 %.4673, 1
  br label %.657wc 
.686:
  %.694 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4673
  %.695 = load i32, i32* %.694
  %.696 = mul i32 1, %.695
  %.697 = add i32 %.4750, %.696
  br label %.687 
.687:
  %.4753 = phi i32 [%.4750, %.665], [%.697, %.686]
  br label %.684 
.719wc:
  %.4754 = phi i32 [0, %.659wn], [%.4755, %.727]
  %.4674 = phi i32 [0, %.659wn], [%.752, %.727]
  %.4614 = phi i32 [%.4525, %.659wn], [%.746, %.727]
  %.4554 = phi i32 [%.4524, %.659wn], [%.749, %.727]
  %.724 = icmp slt i32 %.4674, 16
  br i1 %.724, label %.720wloop., label %.721wn
.720wloop.:
  %.729 = srem i32 %.4614, 2
  %.730 = icmp ne i32 %.729, 0
  br i1 %.730, label %.731, label %.727
.721wn:
  br label %.758 
.726:
  %.739 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4674
  %.740 = load i32, i32* %.739
  %.741 = mul i32 1, %.740
  %.742 = add i32 %.4754, %.741
  br label %.727 
.727:
  %.4755 = phi i32 [%.4754, %.720wloop.], [%.4754, %.731], [%.742, %.726]
  %.746 = sdiv i32 %.4614, 2
  %.749 = sdiv i32 %.4554, 2
  %.752 = add i32 %.4674, 1
  br label %.719wc 
.731:
  %.734 = srem i32 %.4554, 2
  %.735 = icmp ne i32 %.734, 0
  br i1 %.735, label %.726, label %.727
.758:
  %.763 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.764 = load i32, i32* %.763
  %.765 = mul i32 %.4754, %.764
  br label %.768wc 
.768wc:
  %.4756 = phi i32 [0, %.758], [%.4757, %.776]
  %.4675 = phi i32 [0, %.758], [%.801, %.776]
  %.4615 = phi i32 [%.765, %.758], [%.795, %.776]
  %.4555 = phi i32 [65535, %.758], [%.798, %.776]
  %.773 = icmp slt i32 %.4675, 16
  br i1 %.773, label %.769wloop., label %.770wn
.769wloop.:
  %.778 = srem i32 %.4615, 2
  %.779 = icmp ne i32 %.778, 0
  br i1 %.779, label %.780, label %.776
.770wn:
  br label %.804 
.775:
  %.788 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4675
  %.789 = load i32, i32* %.788
  %.790 = mul i32 1, %.789
  %.791 = add i32 %.4756, %.790
  br label %.776 
.776:
  %.4757 = phi i32 [%.4756, %.769wloop.], [%.4756, %.780], [%.791, %.775]
  %.795 = sdiv i32 %.4615, 2
  %.798 = sdiv i32 %.4555, 2
  %.801 = add i32 %.4675, 1
  br label %.768wc 
.780:
  %.783 = srem i32 %.4555, 2
  %.784 = icmp ne i32 %.783, 0
  br i1 %.784, label %.775, label %.776
.804:
  br label %.644wc 
.823wc:
  %.4523 = phi i32 [%.4529, %.633], [%.4758, %.983]
  %.4522 = phi i32 [%.4529, %.633], [%.4764, %.983]
  %.828 = icmp ne i32 %.4522, 0
  br i1 %.828, label %.824wloop., label %.825wn
.824wloop.:
  br label %.836wc 
.825wn:
  br i1 false, label %.997, label %.998
.836wc:
  %.4758 = phi i32 [0, %.824wloop.], [%.4760, %.863]
  %.4676 = phi i32 [0, %.824wloop.], [%.887, %.863]
  %.4616 = phi i32 [%.4523, %.824wloop.], [%.881, %.863]
  %.4556 = phi i32 [%.4522, %.824wloop.], [%.884, %.863]
  %.841 = icmp slt i32 %.4676, 16
  br i1 %.841, label %.837wloop., label %.838wn
.837wloop.:
  %.846 = srem i32 %.4616, 2
  %.847 = icmp ne i32 %.846, 0
  br i1 %.847, label %.843, label %.844
.838wn:
  br label %.898wc 
.843:
  %.852 = srem i32 %.4556, 2
  %.853 = icmp eq i32 %.852, 0
  br i1 %.853, label %.849, label %.850
.844:
  %.868 = srem i32 %.4556, 2
  %.869 = icmp ne i32 %.868, 0
  br i1 %.869, label %.865, label %.866
.849:
  %.857 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4676
  %.858 = load i32, i32* %.857
  %.859 = mul i32 1, %.858
  %.860 = add i32 %.4758, %.859
  br label %.850 
.850:
  %.4759 = phi i32 [%.4758, %.843], [%.860, %.849]
  br label %.863 
.863:
  %.4760 = phi i32 [%.4761, %.866], [%.4759, %.850]
  %.881 = sdiv i32 %.4616, 2
  %.884 = sdiv i32 %.4556, 2
  %.887 = add i32 %.4676, 1
  br label %.836wc 
.865:
  %.873 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4676
  %.874 = load i32, i32* %.873
  %.875 = mul i32 1, %.874
  %.876 = add i32 %.4758, %.875
  br label %.866 
.866:
  %.4761 = phi i32 [%.4758, %.844], [%.876, %.865]
  br label %.863 
.898wc:
  %.4762 = phi i32 [0, %.838wn], [%.4763, %.906]
  %.4677 = phi i32 [0, %.838wn], [%.931, %.906]
  %.4617 = phi i32 [%.4523, %.838wn], [%.925, %.906]
  %.4557 = phi i32 [%.4522, %.838wn], [%.928, %.906]
  %.903 = icmp slt i32 %.4677, 16
  br i1 %.903, label %.899wloop., label %.900wn
.899wloop.:
  %.908 = srem i32 %.4617, 2
  %.909 = icmp ne i32 %.908, 0
  br i1 %.909, label %.910, label %.906
.900wn:
  br label %.937 
.905:
  %.918 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4677
  %.919 = load i32, i32* %.918
  %.920 = mul i32 1, %.919
  %.921 = add i32 %.4762, %.920
  br label %.906 
.906:
  %.4763 = phi i32 [%.4762, %.899wloop.], [%.4762, %.910], [%.921, %.905]
  %.925 = sdiv i32 %.4617, 2
  %.928 = sdiv i32 %.4557, 2
  %.931 = add i32 %.4677, 1
  br label %.898wc 
.910:
  %.913 = srem i32 %.4557, 2
  %.914 = icmp ne i32 %.913, 0
  br i1 %.914, label %.905, label %.906
.937:
  %.942 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.943 = load i32, i32* %.942
  %.944 = mul i32 %.4762, %.943
  br label %.947wc 
.947wc:
  %.4764 = phi i32 [0, %.937], [%.4765, %.955]
  %.4678 = phi i32 [0, %.937], [%.980, %.955]
  %.4618 = phi i32 [%.944, %.937], [%.974, %.955]
  %.4558 = phi i32 [65535, %.937], [%.977, %.955]
  %.952 = icmp slt i32 %.4678, 16
  br i1 %.952, label %.948wloop., label %.949wn
.948wloop.:
  %.957 = srem i32 %.4618, 2
  %.958 = icmp ne i32 %.957, 0
  br i1 %.958, label %.959, label %.955
.949wn:
  br label %.983 
.954:
  %.967 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4678
  %.968 = load i32, i32* %.967
  %.969 = mul i32 1, %.968
  %.970 = add i32 %.4764, %.969
  br label %.955 
.955:
  %.4765 = phi i32 [%.4764, %.948wloop.], [%.4764, %.959], [%.970, %.954]
  %.974 = sdiv i32 %.4618, 2
  %.977 = sdiv i32 %.4558, 2
  %.980 = add i32 %.4678, 1
  br label %.947wc 
.959:
  %.962 = srem i32 %.4558, 2
  %.963 = icmp ne i32 %.962, 0
  br i1 %.963, label %.954, label %.955
.983:
  br label %.823wc 
.997:
  %.1005 = icmp slt i32 %.4528, 0
  br i1 %.1005, label %.1002, label %.1003
.998:
  br i1 true, label %.1014, label %.1015
.1002:
  br label %.1008 
.1003:
  br label %.1008 
.1008:
  %.4766 = phi i32 [0, %.1003], [65535, %.1002]
  br label %.1012 
.1012:
  %.4767 = phi i32 [%.4769, %.1048], [%.4766, %.1008]
  br label %.584wc 
.1014:
  %.1022 = icmp sgt i32 %.4528, 32767
  br i1 %.1022, label %.1019, label %.1020
.1015:
  br label %.1048 
.1019:
  %.1026 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1027 = load i32, i32* %.1026
  %.1028 = sdiv i32 %.4528, %.1027
  %.1031 = add i32 %.1028, 65536
  %.1035 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.1036 = load i32, i32* %.1035
  %.1037 = sub i32 %.1031, %.1036
  br label %.1039 
.1020:
  %.1043 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1044 = load i32, i32* %.1043
  %.1045 = sdiv i32 %.4528, %.1044
  br label %.1039 
.1039:
  %.4768 = phi i32 [%.1045, %.1020], [%.1037, %.1019]
  br label %.1048 
.1048:
  %.4769 = phi i32 [%.4528, %.1015], [%.4768, %.1039]
  br label %.1012 
.1064:
  %.1072 = icmp slt i32 %.4540, 0
  br i1 %.1072, label %.1069, label %.1070
.1065:
  br i1 true, label %.1081, label %.1082
.1069:
  br label %.1075 
.1070:
  br label %.1075 
.1075:
  %.4770 = phi i32 [0, %.1070], [65535, %.1069]
  br label %.1079 
.1079:
  %.4771 = phi i32 [%.4773, %.1115], [%.4770, %.1075]
  br label %.31wc 
.1081:
  %.1089 = icmp sgt i32 %.4540, 32767
  br i1 %.1089, label %.1086, label %.1087
.1082:
  br label %.1115 
.1086:
  %.1093 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1094 = load i32, i32* %.1093
  %.1095 = sdiv i32 %.4540, %.1094
  %.1098 = add i32 %.1095, 65536
  %.1102 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.1103 = load i32, i32* %.1102
  %.1104 = sub i32 %.1098, %.1103
  br label %.1106 
.1087:
  %.1110 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1111 = load i32, i32* %.1110
  %.1112 = sdiv i32 %.4540, %.1111
  br label %.1106 
.1106:
  %.4772 = phi i32 [%.1112, %.1087], [%.1104, %.1086]
  br label %.1115 
.1115:
  %.4773 = phi i32 [%.4540, %.1082], [%.4772, %.1106]
  br label %.1079 
.1138wc:
  %.4521 = phi i32 [2, %.33wn], [%.4506, %.2180]
  %.4520 = phi i32 [1, %.33wn], [%.4821, %.2180]
  %.4518 = phi i32 [1, %.33wn], [%.4519, %.2180]
  %.1143 = icmp sgt i32 %.4520, 0
  br i1 %.1143, label %.1139wloop., label %.1140wn
.1139wloop.:
  br label %.1150wc 
.1140wn:
  call void @putint(i32 %.4518)
  call void @putch(i32 10)
  br label %.2231wc 
.1150wc:
  %.4774 = phi i32 [0, %.1139wloop.], [%.4775, %.1158]
  %.4679 = phi i32 [0, %.1139wloop.], [%.1183, %.1158]
  %.4619 = phi i32 [%.4520, %.1139wloop.], [%.1177, %.1158]
  %.4559 = phi i32 [1, %.1139wloop.], [%.1180, %.1158]
  %.1155 = icmp slt i32 %.4679, 16
  br i1 %.1155, label %.1151wloop., label %.1152wn
.1151wloop.:
  %.1160 = srem i32 %.4619, 2
  %.1161 = icmp ne i32 %.1160, 0
  br i1 %.1161, label %.1162, label %.1158
.1152wn:
  %.1189 = icmp ne i32 %.4774, 0
  br i1 %.1189, label %.1186, label %.1187
.1157:
  %.1170 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4679
  %.1171 = load i32, i32* %.1170
  %.1172 = mul i32 1, %.1171
  %.1173 = add i32 %.4774, %.1172
  br label %.1158 
.1158:
  %.4775 = phi i32 [%.4774, %.1151wloop.], [%.4774, %.1162], [%.1173, %.1157]
  %.1177 = sdiv i32 %.4619, 2
  %.1180 = sdiv i32 %.4559, 2
  %.1183 = add i32 %.4679, 1
  br label %.1150wc 
.1162:
  %.1165 = srem i32 %.4559, 2
  %.1166 = icmp ne i32 %.1165, 0
  br i1 %.1166, label %.1157, label %.1158
.1186:
  br label %.1199wc 
.1187:
  %.4519 = phi i32 [%.4518, %.1152wn], [%.4514, %.1201wn]
  br label %.1685wc 
.1199wc:
  %.4517 = phi i32 [%.4518, %.1186], [%.4511, %.1627]
  %.4516 = phi i32 [%.4521, %.1186], [%.4795, %.1627]
  %.4514 = phi i32 [0, %.1186], [%.4515, %.1627]
  %.1204 = icmp ne i32 %.4516, 0
  br i1 %.1204, label %.1200wloop., label %.1201wn
.1200wloop.:
  br label %.1211wc 
.1201wn:
  br label %.1187 
.1211wc:
  %.4776 = phi i32 [0, %.1200wloop.], [%.4777, %.1219]
  %.4680 = phi i32 [0, %.1200wloop.], [%.1244, %.1219]
  %.4620 = phi i32 [%.4516, %.1200wloop.], [%.1238, %.1219]
  %.4560 = phi i32 [1, %.1200wloop.], [%.1241, %.1219]
  %.1216 = icmp slt i32 %.4680, 16
  br i1 %.1216, label %.1212wloop., label %.1213wn
.1212wloop.:
  %.1221 = srem i32 %.4620, 2
  %.1222 = icmp ne i32 %.1221, 0
  br i1 %.1222, label %.1223, label %.1219
.1213wn:
  %.1250 = icmp ne i32 %.4776, 0
  br i1 %.1250, label %.1247, label %.1248
.1218:
  %.1231 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4680
  %.1232 = load i32, i32* %.1231
  %.1233 = mul i32 1, %.1232
  %.1234 = add i32 %.4776, %.1233
  br label %.1219 
.1219:
  %.4777 = phi i32 [%.4776, %.1212wloop.], [%.4776, %.1223], [%.1234, %.1218]
  %.1238 = sdiv i32 %.4620, 2
  %.1241 = sdiv i32 %.4560, 2
  %.1244 = add i32 %.4680, 1
  br label %.1211wc 
.1223:
  %.1226 = srem i32 %.4560, 2
  %.1227 = icmp ne i32 %.1226, 0
  br i1 %.1227, label %.1218, label %.1219
.1247:
  br label %.1259wc 
.1248:
  %.4515 = phi i32 [%.4514, %.1213wn], [%.4513, %.1261wn]
  br label %.1438wc 
.1259wc:
  %.4513 = phi i32 [%.4514, %.1247], [%.4778, %.1419]
  %.4512 = phi i32 [%.4517, %.1247], [%.4784, %.1419]
  %.1264 = icmp ne i32 %.4512, 0
  br i1 %.1264, label %.1260wloop., label %.1261wn
.1260wloop.:
  br label %.1272wc 
.1261wn:
  br label %.1248 
.1272wc:
  %.4778 = phi i32 [0, %.1260wloop.], [%.4780, %.1299]
  %.4681 = phi i32 [0, %.1260wloop.], [%.1323, %.1299]
  %.4621 = phi i32 [%.4513, %.1260wloop.], [%.1317, %.1299]
  %.4561 = phi i32 [%.4512, %.1260wloop.], [%.1320, %.1299]
  %.1277 = icmp slt i32 %.4681, 16
  br i1 %.1277, label %.1273wloop., label %.1274wn
.1273wloop.:
  %.1282 = srem i32 %.4621, 2
  %.1283 = icmp ne i32 %.1282, 0
  br i1 %.1283, label %.1279, label %.1280
.1274wn:
  br label %.1334wc 
.1279:
  %.1288 = srem i32 %.4561, 2
  %.1289 = icmp eq i32 %.1288, 0
  br i1 %.1289, label %.1285, label %.1286
.1280:
  %.1304 = srem i32 %.4561, 2
  %.1305 = icmp ne i32 %.1304, 0
  br i1 %.1305, label %.1301, label %.1302
.1285:
  %.1293 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4681
  %.1294 = load i32, i32* %.1293
  %.1295 = mul i32 1, %.1294
  %.1296 = add i32 %.4778, %.1295
  br label %.1286 
.1286:
  %.4779 = phi i32 [%.4778, %.1279], [%.1296, %.1285]
  br label %.1299 
.1299:
  %.4780 = phi i32 [%.4781, %.1302], [%.4779, %.1286]
  %.1317 = sdiv i32 %.4621, 2
  %.1320 = sdiv i32 %.4561, 2
  %.1323 = add i32 %.4681, 1
  br label %.1272wc 
.1301:
  %.1309 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4681
  %.1310 = load i32, i32* %.1309
  %.1311 = mul i32 1, %.1310
  %.1312 = add i32 %.4778, %.1311
  br label %.1302 
.1302:
  %.4781 = phi i32 [%.4778, %.1280], [%.1312, %.1301]
  br label %.1299 
.1334wc:
  %.4782 = phi i32 [0, %.1274wn], [%.4783, %.1342]
  %.4682 = phi i32 [0, %.1274wn], [%.1367, %.1342]
  %.4622 = phi i32 [%.4513, %.1274wn], [%.1361, %.1342]
  %.4562 = phi i32 [%.4512, %.1274wn], [%.1364, %.1342]
  %.1339 = icmp slt i32 %.4682, 16
  br i1 %.1339, label %.1335wloop., label %.1336wn
.1335wloop.:
  %.1344 = srem i32 %.4622, 2
  %.1345 = icmp ne i32 %.1344, 0
  br i1 %.1345, label %.1346, label %.1342
.1336wn:
  br label %.1373 
.1341:
  %.1354 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4682
  %.1355 = load i32, i32* %.1354
  %.1356 = mul i32 1, %.1355
  %.1357 = add i32 %.4782, %.1356
  br label %.1342 
.1342:
  %.4783 = phi i32 [%.4782, %.1335wloop.], [%.4782, %.1346], [%.1357, %.1341]
  %.1361 = sdiv i32 %.4622, 2
  %.1364 = sdiv i32 %.4562, 2
  %.1367 = add i32 %.4682, 1
  br label %.1334wc 
.1346:
  %.1349 = srem i32 %.4562, 2
  %.1350 = icmp ne i32 %.1349, 0
  br i1 %.1350, label %.1341, label %.1342
.1373:
  %.1378 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1379 = load i32, i32* %.1378
  %.1380 = mul i32 %.4782, %.1379
  br label %.1383wc 
.1383wc:
  %.4784 = phi i32 [0, %.1373], [%.4785, %.1391]
  %.4683 = phi i32 [0, %.1373], [%.1416, %.1391]
  %.4623 = phi i32 [%.1380, %.1373], [%.1410, %.1391]
  %.4563 = phi i32 [65535, %.1373], [%.1413, %.1391]
  %.1388 = icmp slt i32 %.4683, 16
  br i1 %.1388, label %.1384wloop., label %.1385wn
.1384wloop.:
  %.1393 = srem i32 %.4623, 2
  %.1394 = icmp ne i32 %.1393, 0
  br i1 %.1394, label %.1395, label %.1391
.1385wn:
  br label %.1419 
.1390:
  %.1403 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4683
  %.1404 = load i32, i32* %.1403
  %.1405 = mul i32 1, %.1404
  %.1406 = add i32 %.4784, %.1405
  br label %.1391 
.1391:
  %.4785 = phi i32 [%.4784, %.1384wloop.], [%.4784, %.1395], [%.1406, %.1390]
  %.1410 = sdiv i32 %.4623, 2
  %.1413 = sdiv i32 %.4563, 2
  %.1416 = add i32 %.4683, 1
  br label %.1383wc 
.1395:
  %.1398 = srem i32 %.4563, 2
  %.1399 = icmp ne i32 %.1398, 0
  br i1 %.1399, label %.1390, label %.1391
.1419:
  br label %.1259wc 
.1438wc:
  %.4511 = phi i32 [%.4517, %.1248], [%.4786, %.1598]
  %.4510 = phi i32 [%.4517, %.1248], [%.4792, %.1598]
  %.1443 = icmp ne i32 %.4510, 0
  br i1 %.1443, label %.1439wloop., label %.1440wn
.1439wloop.:
  br label %.1451wc 
.1440wn:
  br i1 false, label %.1612, label %.1613
.1451wc:
  %.4786 = phi i32 [0, %.1439wloop.], [%.4788, %.1478]
  %.4684 = phi i32 [0, %.1439wloop.], [%.1502, %.1478]
  %.4624 = phi i32 [%.4511, %.1439wloop.], [%.1496, %.1478]
  %.4564 = phi i32 [%.4510, %.1439wloop.], [%.1499, %.1478]
  %.1456 = icmp slt i32 %.4684, 16
  br i1 %.1456, label %.1452wloop., label %.1453wn
.1452wloop.:
  %.1461 = srem i32 %.4624, 2
  %.1462 = icmp ne i32 %.1461, 0
  br i1 %.1462, label %.1458, label %.1459
.1453wn:
  br label %.1513wc 
.1458:
  %.1467 = srem i32 %.4564, 2
  %.1468 = icmp eq i32 %.1467, 0
  br i1 %.1468, label %.1464, label %.1465
.1459:
  %.1483 = srem i32 %.4564, 2
  %.1484 = icmp ne i32 %.1483, 0
  br i1 %.1484, label %.1480, label %.1481
.1464:
  %.1472 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4684
  %.1473 = load i32, i32* %.1472
  %.1474 = mul i32 1, %.1473
  %.1475 = add i32 %.4786, %.1474
  br label %.1465 
.1465:
  %.4787 = phi i32 [%.4786, %.1458], [%.1475, %.1464]
  br label %.1478 
.1478:
  %.4788 = phi i32 [%.4789, %.1481], [%.4787, %.1465]
  %.1496 = sdiv i32 %.4624, 2
  %.1499 = sdiv i32 %.4564, 2
  %.1502 = add i32 %.4684, 1
  br label %.1451wc 
.1480:
  %.1488 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4684
  %.1489 = load i32, i32* %.1488
  %.1490 = mul i32 1, %.1489
  %.1491 = add i32 %.4786, %.1490
  br label %.1481 
.1481:
  %.4789 = phi i32 [%.4786, %.1459], [%.1491, %.1480]
  br label %.1478 
.1513wc:
  %.4790 = phi i32 [0, %.1453wn], [%.4791, %.1521]
  %.4685 = phi i32 [0, %.1453wn], [%.1546, %.1521]
  %.4625 = phi i32 [%.4511, %.1453wn], [%.1540, %.1521]
  %.4565 = phi i32 [%.4510, %.1453wn], [%.1543, %.1521]
  %.1518 = icmp slt i32 %.4685, 16
  br i1 %.1518, label %.1514wloop., label %.1515wn
.1514wloop.:
  %.1523 = srem i32 %.4625, 2
  %.1524 = icmp ne i32 %.1523, 0
  br i1 %.1524, label %.1525, label %.1521
.1515wn:
  br label %.1552 
.1520:
  %.1533 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4685
  %.1534 = load i32, i32* %.1533
  %.1535 = mul i32 1, %.1534
  %.1536 = add i32 %.4790, %.1535
  br label %.1521 
.1521:
  %.4791 = phi i32 [%.4790, %.1514wloop.], [%.4790, %.1525], [%.1536, %.1520]
  %.1540 = sdiv i32 %.4625, 2
  %.1543 = sdiv i32 %.4565, 2
  %.1546 = add i32 %.4685, 1
  br label %.1513wc 
.1525:
  %.1528 = srem i32 %.4565, 2
  %.1529 = icmp ne i32 %.1528, 0
  br i1 %.1529, label %.1520, label %.1521
.1552:
  %.1557 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1558 = load i32, i32* %.1557
  %.1559 = mul i32 %.4790, %.1558
  br label %.1562wc 
.1562wc:
  %.4792 = phi i32 [0, %.1552], [%.4793, %.1570]
  %.4686 = phi i32 [0, %.1552], [%.1595, %.1570]
  %.4626 = phi i32 [%.1559, %.1552], [%.1589, %.1570]
  %.4566 = phi i32 [65535, %.1552], [%.1592, %.1570]
  %.1567 = icmp slt i32 %.4686, 16
  br i1 %.1567, label %.1563wloop., label %.1564wn
.1563wloop.:
  %.1572 = srem i32 %.4626, 2
  %.1573 = icmp ne i32 %.1572, 0
  br i1 %.1573, label %.1574, label %.1570
.1564wn:
  br label %.1598 
.1569:
  %.1582 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4686
  %.1583 = load i32, i32* %.1582
  %.1584 = mul i32 1, %.1583
  %.1585 = add i32 %.4792, %.1584
  br label %.1570 
.1570:
  %.4793 = phi i32 [%.4792, %.1563wloop.], [%.4792, %.1574], [%.1585, %.1569]
  %.1589 = sdiv i32 %.4626, 2
  %.1592 = sdiv i32 %.4566, 2
  %.1595 = add i32 %.4686, 1
  br label %.1562wc 
.1574:
  %.1577 = srem i32 %.4566, 2
  %.1578 = icmp ne i32 %.1577, 0
  br i1 %.1578, label %.1569, label %.1570
.1598:
  br label %.1438wc 
.1612:
  %.1620 = icmp slt i32 %.4516, 0
  br i1 %.1620, label %.1617, label %.1618
.1613:
  br i1 true, label %.1629, label %.1630
.1617:
  br label %.1623 
.1618:
  br label %.1623 
.1623:
  %.4794 = phi i32 [0, %.1618], [65535, %.1617]
  br label %.1627 
.1627:
  %.4795 = phi i32 [%.4797, %.1663], [%.4794, %.1623]
  br label %.1199wc 
.1629:
  %.1637 = icmp sgt i32 %.4516, 32767
  br i1 %.1637, label %.1634, label %.1635
.1630:
  br label %.1663 
.1634:
  %.1641 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1642 = load i32, i32* %.1641
  %.1643 = sdiv i32 %.4516, %.1642
  %.1646 = add i32 %.1643, 65536
  %.1650 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.1651 = load i32, i32* %.1650
  %.1652 = sub i32 %.1646, %.1651
  br label %.1654 
.1635:
  %.1658 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1659 = load i32, i32* %.1658
  %.1660 = sdiv i32 %.4516, %.1659
  br label %.1654 
.1654:
  %.4796 = phi i32 [%.1660, %.1635], [%.1652, %.1634]
  br label %.1663 
.1663:
  %.4797 = phi i32 [%.4516, %.1630], [%.4796, %.1654]
  br label %.1627 
.1685wc:
  %.4509 = phi i32 [%.4521, %.1187], [%.4503, %.2113]
  %.4508 = phi i32 [%.4521, %.1187], [%.4817, %.2113]
  %.4506 = phi i32 [0, %.1187], [%.4507, %.2113]
  %.1690 = icmp ne i32 %.4508, 0
  br i1 %.1690, label %.1686wloop., label %.1687wn
.1686wloop.:
  br label %.1697wc 
.1687wn:
  br i1 false, label %.2165, label %.2166
.1697wc:
  %.4798 = phi i32 [0, %.1686wloop.], [%.4799, %.1705]
  %.4687 = phi i32 [0, %.1686wloop.], [%.1730, %.1705]
  %.4627 = phi i32 [%.4508, %.1686wloop.], [%.1724, %.1705]
  %.4567 = phi i32 [1, %.1686wloop.], [%.1727, %.1705]
  %.1702 = icmp slt i32 %.4687, 16
  br i1 %.1702, label %.1698wloop., label %.1699wn
.1698wloop.:
  %.1707 = srem i32 %.4627, 2
  %.1708 = icmp ne i32 %.1707, 0
  br i1 %.1708, label %.1709, label %.1705
.1699wn:
  %.1736 = icmp ne i32 %.4798, 0
  br i1 %.1736, label %.1733, label %.1734
.1704:
  %.1717 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4687
  %.1718 = load i32, i32* %.1717
  %.1719 = mul i32 1, %.1718
  %.1720 = add i32 %.4798, %.1719
  br label %.1705 
.1705:
  %.4799 = phi i32 [%.4798, %.1698wloop.], [%.4798, %.1709], [%.1720, %.1704]
  %.1724 = sdiv i32 %.4627, 2
  %.1727 = sdiv i32 %.4567, 2
  %.1730 = add i32 %.4687, 1
  br label %.1697wc 
.1709:
  %.1712 = srem i32 %.4567, 2
  %.1713 = icmp ne i32 %.1712, 0
  br i1 %.1713, label %.1704, label %.1705
.1733:
  br label %.1745wc 
.1734:
  %.4507 = phi i32 [%.4506, %.1699wn], [%.4505, %.1747wn]
  br label %.1924wc 
.1745wc:
  %.4505 = phi i32 [%.4506, %.1733], [%.4800, %.1905]
  %.4504 = phi i32 [%.4509, %.1733], [%.4806, %.1905]
  %.1750 = icmp ne i32 %.4504, 0
  br i1 %.1750, label %.1746wloop., label %.1747wn
.1746wloop.:
  br label %.1758wc 
.1747wn:
  br label %.1734 
.1758wc:
  %.4800 = phi i32 [0, %.1746wloop.], [%.4802, %.1785]
  %.4688 = phi i32 [0, %.1746wloop.], [%.1809, %.1785]
  %.4628 = phi i32 [%.4505, %.1746wloop.], [%.1803, %.1785]
  %.4568 = phi i32 [%.4504, %.1746wloop.], [%.1806, %.1785]
  %.1763 = icmp slt i32 %.4688, 16
  br i1 %.1763, label %.1759wloop., label %.1760wn
.1759wloop.:
  %.1768 = srem i32 %.4628, 2
  %.1769 = icmp ne i32 %.1768, 0
  br i1 %.1769, label %.1765, label %.1766
.1760wn:
  br label %.1820wc 
.1765:
  %.1774 = srem i32 %.4568, 2
  %.1775 = icmp eq i32 %.1774, 0
  br i1 %.1775, label %.1771, label %.1772
.1766:
  %.1790 = srem i32 %.4568, 2
  %.1791 = icmp ne i32 %.1790, 0
  br i1 %.1791, label %.1787, label %.1788
.1771:
  %.1779 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4688
  %.1780 = load i32, i32* %.1779
  %.1781 = mul i32 1, %.1780
  %.1782 = add i32 %.4800, %.1781
  br label %.1772 
.1772:
  %.4801 = phi i32 [%.4800, %.1765], [%.1782, %.1771]
  br label %.1785 
.1785:
  %.4802 = phi i32 [%.4803, %.1788], [%.4801, %.1772]
  %.1803 = sdiv i32 %.4628, 2
  %.1806 = sdiv i32 %.4568, 2
  %.1809 = add i32 %.4688, 1
  br label %.1758wc 
.1787:
  %.1795 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4688
  %.1796 = load i32, i32* %.1795
  %.1797 = mul i32 1, %.1796
  %.1798 = add i32 %.4800, %.1797
  br label %.1788 
.1788:
  %.4803 = phi i32 [%.4800, %.1766], [%.1798, %.1787]
  br label %.1785 
.1820wc:
  %.4804 = phi i32 [0, %.1760wn], [%.4805, %.1828]
  %.4689 = phi i32 [0, %.1760wn], [%.1853, %.1828]
  %.4629 = phi i32 [%.4505, %.1760wn], [%.1847, %.1828]
  %.4569 = phi i32 [%.4504, %.1760wn], [%.1850, %.1828]
  %.1825 = icmp slt i32 %.4689, 16
  br i1 %.1825, label %.1821wloop., label %.1822wn
.1821wloop.:
  %.1830 = srem i32 %.4629, 2
  %.1831 = icmp ne i32 %.1830, 0
  br i1 %.1831, label %.1832, label %.1828
.1822wn:
  br label %.1859 
.1827:
  %.1840 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4689
  %.1841 = load i32, i32* %.1840
  %.1842 = mul i32 1, %.1841
  %.1843 = add i32 %.4804, %.1842
  br label %.1828 
.1828:
  %.4805 = phi i32 [%.4804, %.1821wloop.], [%.4804, %.1832], [%.1843, %.1827]
  %.1847 = sdiv i32 %.4629, 2
  %.1850 = sdiv i32 %.4569, 2
  %.1853 = add i32 %.4689, 1
  br label %.1820wc 
.1832:
  %.1835 = srem i32 %.4569, 2
  %.1836 = icmp ne i32 %.1835, 0
  br i1 %.1836, label %.1827, label %.1828
.1859:
  %.1864 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1865 = load i32, i32* %.1864
  %.1866 = mul i32 %.4804, %.1865
  br label %.1869wc 
.1869wc:
  %.4806 = phi i32 [0, %.1859], [%.4807, %.1877]
  %.4690 = phi i32 [0, %.1859], [%.1902, %.1877]
  %.4630 = phi i32 [%.1866, %.1859], [%.1896, %.1877]
  %.4570 = phi i32 [65535, %.1859], [%.1899, %.1877]
  %.1874 = icmp slt i32 %.4690, 16
  br i1 %.1874, label %.1870wloop., label %.1871wn
.1870wloop.:
  %.1879 = srem i32 %.4630, 2
  %.1880 = icmp ne i32 %.1879, 0
  br i1 %.1880, label %.1881, label %.1877
.1871wn:
  br label %.1905 
.1876:
  %.1889 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4690
  %.1890 = load i32, i32* %.1889
  %.1891 = mul i32 1, %.1890
  %.1892 = add i32 %.4806, %.1891
  br label %.1877 
.1877:
  %.4807 = phi i32 [%.4806, %.1870wloop.], [%.4806, %.1881], [%.1892, %.1876]
  %.1896 = sdiv i32 %.4630, 2
  %.1899 = sdiv i32 %.4570, 2
  %.1902 = add i32 %.4690, 1
  br label %.1869wc 
.1881:
  %.1884 = srem i32 %.4570, 2
  %.1885 = icmp ne i32 %.1884, 0
  br i1 %.1885, label %.1876, label %.1877
.1905:
  br label %.1745wc 
.1924wc:
  %.4503 = phi i32 [%.4509, %.1734], [%.4808, %.2084]
  %.4502 = phi i32 [%.4509, %.1734], [%.4814, %.2084]
  %.1929 = icmp ne i32 %.4502, 0
  br i1 %.1929, label %.1925wloop., label %.1926wn
.1925wloop.:
  br label %.1937wc 
.1926wn:
  br i1 false, label %.2098, label %.2099
.1937wc:
  %.4808 = phi i32 [0, %.1925wloop.], [%.4810, %.1964]
  %.4691 = phi i32 [0, %.1925wloop.], [%.1988, %.1964]
  %.4631 = phi i32 [%.4503, %.1925wloop.], [%.1982, %.1964]
  %.4571 = phi i32 [%.4502, %.1925wloop.], [%.1985, %.1964]
  %.1942 = icmp slt i32 %.4691, 16
  br i1 %.1942, label %.1938wloop., label %.1939wn
.1938wloop.:
  %.1947 = srem i32 %.4631, 2
  %.1948 = icmp ne i32 %.1947, 0
  br i1 %.1948, label %.1944, label %.1945
.1939wn:
  br label %.1999wc 
.1944:
  %.1953 = srem i32 %.4571, 2
  %.1954 = icmp eq i32 %.1953, 0
  br i1 %.1954, label %.1950, label %.1951
.1945:
  %.1969 = srem i32 %.4571, 2
  %.1970 = icmp ne i32 %.1969, 0
  br i1 %.1970, label %.1966, label %.1967
.1950:
  %.1958 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4691
  %.1959 = load i32, i32* %.1958
  %.1960 = mul i32 1, %.1959
  %.1961 = add i32 %.4808, %.1960
  br label %.1951 
.1951:
  %.4809 = phi i32 [%.4808, %.1944], [%.1961, %.1950]
  br label %.1964 
.1964:
  %.4810 = phi i32 [%.4811, %.1967], [%.4809, %.1951]
  %.1982 = sdiv i32 %.4631, 2
  %.1985 = sdiv i32 %.4571, 2
  %.1988 = add i32 %.4691, 1
  br label %.1937wc 
.1966:
  %.1974 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4691
  %.1975 = load i32, i32* %.1974
  %.1976 = mul i32 1, %.1975
  %.1977 = add i32 %.4808, %.1976
  br label %.1967 
.1967:
  %.4811 = phi i32 [%.4808, %.1945], [%.1977, %.1966]
  br label %.1964 
.1999wc:
  %.4812 = phi i32 [0, %.1939wn], [%.4813, %.2007]
  %.4692 = phi i32 [0, %.1939wn], [%.2032, %.2007]
  %.4632 = phi i32 [%.4503, %.1939wn], [%.2026, %.2007]
  %.4572 = phi i32 [%.4502, %.1939wn], [%.2029, %.2007]
  %.2004 = icmp slt i32 %.4692, 16
  br i1 %.2004, label %.2000wloop., label %.2001wn
.2000wloop.:
  %.2009 = srem i32 %.4632, 2
  %.2010 = icmp ne i32 %.2009, 0
  br i1 %.2010, label %.2011, label %.2007
.2001wn:
  br label %.2038 
.2006:
  %.2019 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4692
  %.2020 = load i32, i32* %.2019
  %.2021 = mul i32 1, %.2020
  %.2022 = add i32 %.4812, %.2021
  br label %.2007 
.2007:
  %.4813 = phi i32 [%.4812, %.2000wloop.], [%.4812, %.2011], [%.2022, %.2006]
  %.2026 = sdiv i32 %.4632, 2
  %.2029 = sdiv i32 %.4572, 2
  %.2032 = add i32 %.4692, 1
  br label %.1999wc 
.2011:
  %.2014 = srem i32 %.4572, 2
  %.2015 = icmp ne i32 %.2014, 0
  br i1 %.2015, label %.2006, label %.2007
.2038:
  %.2043 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2044 = load i32, i32* %.2043
  %.2045 = mul i32 %.4812, %.2044
  br label %.2048wc 
.2048wc:
  %.4814 = phi i32 [0, %.2038], [%.4815, %.2056]
  %.4693 = phi i32 [0, %.2038], [%.2081, %.2056]
  %.4633 = phi i32 [%.2045, %.2038], [%.2075, %.2056]
  %.4573 = phi i32 [65535, %.2038], [%.2078, %.2056]
  %.2053 = icmp slt i32 %.4693, 16
  br i1 %.2053, label %.2049wloop., label %.2050wn
.2049wloop.:
  %.2058 = srem i32 %.4633, 2
  %.2059 = icmp ne i32 %.2058, 0
  br i1 %.2059, label %.2060, label %.2056
.2050wn:
  br label %.2084 
.2055:
  %.2068 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4693
  %.2069 = load i32, i32* %.2068
  %.2070 = mul i32 1, %.2069
  %.2071 = add i32 %.4814, %.2070
  br label %.2056 
.2056:
  %.4815 = phi i32 [%.4814, %.2049wloop.], [%.4814, %.2060], [%.2071, %.2055]
  %.2075 = sdiv i32 %.4633, 2
  %.2078 = sdiv i32 %.4573, 2
  %.2081 = add i32 %.4693, 1
  br label %.2048wc 
.2060:
  %.2063 = srem i32 %.4573, 2
  %.2064 = icmp ne i32 %.2063, 0
  br i1 %.2064, label %.2055, label %.2056
.2084:
  br label %.1924wc 
.2098:
  %.2106 = icmp slt i32 %.4508, 0
  br i1 %.2106, label %.2103, label %.2104
.2099:
  br i1 true, label %.2115, label %.2116
.2103:
  br label %.2109 
.2104:
  br label %.2109 
.2109:
  %.4816 = phi i32 [0, %.2104], [65535, %.2103]
  br label %.2113 
.2113:
  %.4817 = phi i32 [%.4819, %.2149], [%.4816, %.2109]
  br label %.1685wc 
.2115:
  %.2123 = icmp sgt i32 %.4508, 32767
  br i1 %.2123, label %.2120, label %.2121
.2116:
  br label %.2149 
.2120:
  %.2127 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2128 = load i32, i32* %.2127
  %.2129 = sdiv i32 %.4508, %.2128
  %.2132 = add i32 %.2129, 65536
  %.2136 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.2137 = load i32, i32* %.2136
  %.2138 = sub i32 %.2132, %.2137
  br label %.2140 
.2121:
  %.2144 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2145 = load i32, i32* %.2144
  %.2146 = sdiv i32 %.4508, %.2145
  br label %.2140 
.2140:
  %.4818 = phi i32 [%.2146, %.2121], [%.2138, %.2120]
  br label %.2149 
.2149:
  %.4819 = phi i32 [%.4508, %.2116], [%.4818, %.2140]
  br label %.2113 
.2165:
  %.2173 = icmp slt i32 %.4520, 0
  br i1 %.2173, label %.2170, label %.2171
.2166:
  br i1 true, label %.2182, label %.2183
.2170:
  br label %.2176 
.2171:
  br label %.2176 
.2176:
  %.4820 = phi i32 [0, %.2171], [65535, %.2170]
  br label %.2180 
.2180:
  %.4821 = phi i32 [%.4823, %.2216], [%.4820, %.2176]
  br label %.1138wc 
.2182:
  %.2190 = icmp sgt i32 %.4520, 32767
  br i1 %.2190, label %.2187, label %.2188
.2183:
  br label %.2216 
.2187:
  %.2194 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2195 = load i32, i32* %.2194
  %.2196 = sdiv i32 %.4520, %.2195
  %.2199 = add i32 %.2196, 65536
  %.2203 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.2204 = load i32, i32* %.2203
  %.2205 = sub i32 %.2199, %.2204
  br label %.2207 
.2188:
  %.2211 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2212 = load i32, i32* %.2211
  %.2213 = sdiv i32 %.4520, %.2212
  br label %.2207 
.2207:
  %.4822 = phi i32 [%.2213, %.2188], [%.2205, %.2187]
  br label %.2216 
.2216:
  %.4823 = phi i32 [%.4520, %.2183], [%.4822, %.2207]
  br label %.2180 
.2231wc:
  %.4542 = phi i32 [2, %.1140wn], [%.3338, %.2247wn]
  %.2236 = icmp slt i32 %.4542, 16
  br i1 %.2236, label %.2232wloop., label %.2233wn
.2232wloop.:
  br label %.2245wc 
.2233wn:
  br label %.3342wc 
.2245wc:
  %.4501 = phi i32 [2, %.2232wloop.], [%.4486, %.3287]
  %.4500 = phi i32 [%.4542, %.2232wloop.], [%.4871, %.3287]
  %.4498 = phi i32 [1, %.2232wloop.], [%.4499, %.3287]
  %.2250 = icmp sgt i32 %.4500, 0
  br i1 %.2250, label %.2246wloop., label %.2247wn
.2246wloop.:
  br label %.2257wc 
.2247wn:
  call void @putint(i32 %.4498)
  call void @putch(i32 10)
  %.3338 = add i32 %.4542, 1
  br label %.2231wc 
.2257wc:
  %.4824 = phi i32 [0, %.2246wloop.], [%.4825, %.2265]
  %.4694 = phi i32 [0, %.2246wloop.], [%.2290, %.2265]
  %.4634 = phi i32 [%.4500, %.2246wloop.], [%.2284, %.2265]
  %.4574 = phi i32 [1, %.2246wloop.], [%.2287, %.2265]
  %.2262 = icmp slt i32 %.4694, 16
  br i1 %.2262, label %.2258wloop., label %.2259wn
.2258wloop.:
  %.2267 = srem i32 %.4634, 2
  %.2268 = icmp ne i32 %.2267, 0
  br i1 %.2268, label %.2269, label %.2265
.2259wn:
  %.2296 = icmp ne i32 %.4824, 0
  br i1 %.2296, label %.2293, label %.2294
.2264:
  %.2277 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4694
  %.2278 = load i32, i32* %.2277
  %.2279 = mul i32 1, %.2278
  %.2280 = add i32 %.4824, %.2279
  br label %.2265 
.2265:
  %.4825 = phi i32 [%.4824, %.2258wloop.], [%.4824, %.2269], [%.2280, %.2264]
  %.2284 = sdiv i32 %.4634, 2
  %.2287 = sdiv i32 %.4574, 2
  %.2290 = add i32 %.4694, 1
  br label %.2257wc 
.2269:
  %.2272 = srem i32 %.4574, 2
  %.2273 = icmp ne i32 %.2272, 0
  br i1 %.2273, label %.2264, label %.2265
.2293:
  br label %.2306wc 
.2294:
  %.4499 = phi i32 [%.4498, %.2259wn], [%.4494, %.2308wn]
  br label %.2792wc 
.2306wc:
  %.4497 = phi i32 [%.4498, %.2293], [%.4491, %.2734]
  %.4496 = phi i32 [%.4501, %.2293], [%.4845, %.2734]
  %.4494 = phi i32 [0, %.2293], [%.4495, %.2734]
  %.2311 = icmp ne i32 %.4496, 0
  br i1 %.2311, label %.2307wloop., label %.2308wn
.2307wloop.:
  br label %.2318wc 
.2308wn:
  br label %.2294 
.2318wc:
  %.4826 = phi i32 [0, %.2307wloop.], [%.4827, %.2326]
  %.4695 = phi i32 [0, %.2307wloop.], [%.2351, %.2326]
  %.4635 = phi i32 [%.4496, %.2307wloop.], [%.2345, %.2326]
  %.4575 = phi i32 [1, %.2307wloop.], [%.2348, %.2326]
  %.2323 = icmp slt i32 %.4695, 16
  br i1 %.2323, label %.2319wloop., label %.2320wn
.2319wloop.:
  %.2328 = srem i32 %.4635, 2
  %.2329 = icmp ne i32 %.2328, 0
  br i1 %.2329, label %.2330, label %.2326
.2320wn:
  %.2357 = icmp ne i32 %.4826, 0
  br i1 %.2357, label %.2354, label %.2355
.2325:
  %.2338 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4695
  %.2339 = load i32, i32* %.2338
  %.2340 = mul i32 1, %.2339
  %.2341 = add i32 %.4826, %.2340
  br label %.2326 
.2326:
  %.4827 = phi i32 [%.4826, %.2319wloop.], [%.4826, %.2330], [%.2341, %.2325]
  %.2345 = sdiv i32 %.4635, 2
  %.2348 = sdiv i32 %.4575, 2
  %.2351 = add i32 %.4695, 1
  br label %.2318wc 
.2330:
  %.2333 = srem i32 %.4575, 2
  %.2334 = icmp ne i32 %.2333, 0
  br i1 %.2334, label %.2325, label %.2326
.2354:
  br label %.2366wc 
.2355:
  %.4495 = phi i32 [%.4494, %.2320wn], [%.4493, %.2368wn]
  br label %.2545wc 
.2366wc:
  %.4493 = phi i32 [%.4494, %.2354], [%.4828, %.2526]
  %.4492 = phi i32 [%.4497, %.2354], [%.4834, %.2526]
  %.2371 = icmp ne i32 %.4492, 0
  br i1 %.2371, label %.2367wloop., label %.2368wn
.2367wloop.:
  br label %.2379wc 
.2368wn:
  br label %.2355 
.2379wc:
  %.4828 = phi i32 [0, %.2367wloop.], [%.4830, %.2406]
  %.4696 = phi i32 [0, %.2367wloop.], [%.2430, %.2406]
  %.4636 = phi i32 [%.4493, %.2367wloop.], [%.2424, %.2406]
  %.4576 = phi i32 [%.4492, %.2367wloop.], [%.2427, %.2406]
  %.2384 = icmp slt i32 %.4696, 16
  br i1 %.2384, label %.2380wloop., label %.2381wn
.2380wloop.:
  %.2389 = srem i32 %.4636, 2
  %.2390 = icmp ne i32 %.2389, 0
  br i1 %.2390, label %.2386, label %.2387
.2381wn:
  br label %.2441wc 
.2386:
  %.2395 = srem i32 %.4576, 2
  %.2396 = icmp eq i32 %.2395, 0
  br i1 %.2396, label %.2392, label %.2393
.2387:
  %.2411 = srem i32 %.4576, 2
  %.2412 = icmp ne i32 %.2411, 0
  br i1 %.2412, label %.2408, label %.2409
.2392:
  %.2400 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4696
  %.2401 = load i32, i32* %.2400
  %.2402 = mul i32 1, %.2401
  %.2403 = add i32 %.4828, %.2402
  br label %.2393 
.2393:
  %.4829 = phi i32 [%.4828, %.2386], [%.2403, %.2392]
  br label %.2406 
.2406:
  %.4830 = phi i32 [%.4831, %.2409], [%.4829, %.2393]
  %.2424 = sdiv i32 %.4636, 2
  %.2427 = sdiv i32 %.4576, 2
  %.2430 = add i32 %.4696, 1
  br label %.2379wc 
.2408:
  %.2416 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4696
  %.2417 = load i32, i32* %.2416
  %.2418 = mul i32 1, %.2417
  %.2419 = add i32 %.4828, %.2418
  br label %.2409 
.2409:
  %.4831 = phi i32 [%.4828, %.2387], [%.2419, %.2408]
  br label %.2406 
.2441wc:
  %.4832 = phi i32 [0, %.2381wn], [%.4833, %.2449]
  %.4697 = phi i32 [0, %.2381wn], [%.2474, %.2449]
  %.4637 = phi i32 [%.4493, %.2381wn], [%.2468, %.2449]
  %.4577 = phi i32 [%.4492, %.2381wn], [%.2471, %.2449]
  %.2446 = icmp slt i32 %.4697, 16
  br i1 %.2446, label %.2442wloop., label %.2443wn
.2442wloop.:
  %.2451 = srem i32 %.4637, 2
  %.2452 = icmp ne i32 %.2451, 0
  br i1 %.2452, label %.2453, label %.2449
.2443wn:
  br label %.2480 
.2448:
  %.2461 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4697
  %.2462 = load i32, i32* %.2461
  %.2463 = mul i32 1, %.2462
  %.2464 = add i32 %.4832, %.2463
  br label %.2449 
.2449:
  %.4833 = phi i32 [%.4832, %.2442wloop.], [%.4832, %.2453], [%.2464, %.2448]
  %.2468 = sdiv i32 %.4637, 2
  %.2471 = sdiv i32 %.4577, 2
  %.2474 = add i32 %.4697, 1
  br label %.2441wc 
.2453:
  %.2456 = srem i32 %.4577, 2
  %.2457 = icmp ne i32 %.2456, 0
  br i1 %.2457, label %.2448, label %.2449
.2480:
  %.2485 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2486 = load i32, i32* %.2485
  %.2487 = mul i32 %.4832, %.2486
  br label %.2490wc 
.2490wc:
  %.4834 = phi i32 [0, %.2480], [%.4835, %.2498]
  %.4698 = phi i32 [0, %.2480], [%.2523, %.2498]
  %.4638 = phi i32 [%.2487, %.2480], [%.2517, %.2498]
  %.4578 = phi i32 [65535, %.2480], [%.2520, %.2498]
  %.2495 = icmp slt i32 %.4698, 16
  br i1 %.2495, label %.2491wloop., label %.2492wn
.2491wloop.:
  %.2500 = srem i32 %.4638, 2
  %.2501 = icmp ne i32 %.2500, 0
  br i1 %.2501, label %.2502, label %.2498
.2492wn:
  br label %.2526 
.2497:
  %.2510 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4698
  %.2511 = load i32, i32* %.2510
  %.2512 = mul i32 1, %.2511
  %.2513 = add i32 %.4834, %.2512
  br label %.2498 
.2498:
  %.4835 = phi i32 [%.4834, %.2491wloop.], [%.4834, %.2502], [%.2513, %.2497]
  %.2517 = sdiv i32 %.4638, 2
  %.2520 = sdiv i32 %.4578, 2
  %.2523 = add i32 %.4698, 1
  br label %.2490wc 
.2502:
  %.2505 = srem i32 %.4578, 2
  %.2506 = icmp ne i32 %.2505, 0
  br i1 %.2506, label %.2497, label %.2498
.2526:
  br label %.2366wc 
.2545wc:
  %.4491 = phi i32 [%.4497, %.2355], [%.4836, %.2705]
  %.4490 = phi i32 [%.4497, %.2355], [%.4842, %.2705]
  %.2550 = icmp ne i32 %.4490, 0
  br i1 %.2550, label %.2546wloop., label %.2547wn
.2546wloop.:
  br label %.2558wc 
.2547wn:
  br i1 false, label %.2719, label %.2720
.2558wc:
  %.4836 = phi i32 [0, %.2546wloop.], [%.4838, %.2585]
  %.4699 = phi i32 [0, %.2546wloop.], [%.2609, %.2585]
  %.4639 = phi i32 [%.4491, %.2546wloop.], [%.2603, %.2585]
  %.4579 = phi i32 [%.4490, %.2546wloop.], [%.2606, %.2585]
  %.2563 = icmp slt i32 %.4699, 16
  br i1 %.2563, label %.2559wloop., label %.2560wn
.2559wloop.:
  %.2568 = srem i32 %.4639, 2
  %.2569 = icmp ne i32 %.2568, 0
  br i1 %.2569, label %.2565, label %.2566
.2560wn:
  br label %.2620wc 
.2565:
  %.2574 = srem i32 %.4579, 2
  %.2575 = icmp eq i32 %.2574, 0
  br i1 %.2575, label %.2571, label %.2572
.2566:
  %.2590 = srem i32 %.4579, 2
  %.2591 = icmp ne i32 %.2590, 0
  br i1 %.2591, label %.2587, label %.2588
.2571:
  %.2579 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4699
  %.2580 = load i32, i32* %.2579
  %.2581 = mul i32 1, %.2580
  %.2582 = add i32 %.4836, %.2581
  br label %.2572 
.2572:
  %.4837 = phi i32 [%.4836, %.2565], [%.2582, %.2571]
  br label %.2585 
.2585:
  %.4838 = phi i32 [%.4839, %.2588], [%.4837, %.2572]
  %.2603 = sdiv i32 %.4639, 2
  %.2606 = sdiv i32 %.4579, 2
  %.2609 = add i32 %.4699, 1
  br label %.2558wc 
.2587:
  %.2595 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4699
  %.2596 = load i32, i32* %.2595
  %.2597 = mul i32 1, %.2596
  %.2598 = add i32 %.4836, %.2597
  br label %.2588 
.2588:
  %.4839 = phi i32 [%.4836, %.2566], [%.2598, %.2587]
  br label %.2585 
.2620wc:
  %.4840 = phi i32 [0, %.2560wn], [%.4841, %.2628]
  %.4700 = phi i32 [0, %.2560wn], [%.2653, %.2628]
  %.4640 = phi i32 [%.4491, %.2560wn], [%.2647, %.2628]
  %.4580 = phi i32 [%.4490, %.2560wn], [%.2650, %.2628]
  %.2625 = icmp slt i32 %.4700, 16
  br i1 %.2625, label %.2621wloop., label %.2622wn
.2621wloop.:
  %.2630 = srem i32 %.4640, 2
  %.2631 = icmp ne i32 %.2630, 0
  br i1 %.2631, label %.2632, label %.2628
.2622wn:
  br label %.2659 
.2627:
  %.2640 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4700
  %.2641 = load i32, i32* %.2640
  %.2642 = mul i32 1, %.2641
  %.2643 = add i32 %.4840, %.2642
  br label %.2628 
.2628:
  %.4841 = phi i32 [%.4840, %.2621wloop.], [%.4840, %.2632], [%.2643, %.2627]
  %.2647 = sdiv i32 %.4640, 2
  %.2650 = sdiv i32 %.4580, 2
  %.2653 = add i32 %.4700, 1
  br label %.2620wc 
.2632:
  %.2635 = srem i32 %.4580, 2
  %.2636 = icmp ne i32 %.2635, 0
  br i1 %.2636, label %.2627, label %.2628
.2659:
  %.2664 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2665 = load i32, i32* %.2664
  %.2666 = mul i32 %.4840, %.2665
  br label %.2669wc 
.2669wc:
  %.4842 = phi i32 [0, %.2659], [%.4843, %.2677]
  %.4701 = phi i32 [0, %.2659], [%.2702, %.2677]
  %.4641 = phi i32 [%.2666, %.2659], [%.2696, %.2677]
  %.4581 = phi i32 [65535, %.2659], [%.2699, %.2677]
  %.2674 = icmp slt i32 %.4701, 16
  br i1 %.2674, label %.2670wloop., label %.2671wn
.2670wloop.:
  %.2679 = srem i32 %.4641, 2
  %.2680 = icmp ne i32 %.2679, 0
  br i1 %.2680, label %.2681, label %.2677
.2671wn:
  br label %.2705 
.2676:
  %.2689 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4701
  %.2690 = load i32, i32* %.2689
  %.2691 = mul i32 1, %.2690
  %.2692 = add i32 %.4842, %.2691
  br label %.2677 
.2677:
  %.4843 = phi i32 [%.4842, %.2670wloop.], [%.4842, %.2681], [%.2692, %.2676]
  %.2696 = sdiv i32 %.4641, 2
  %.2699 = sdiv i32 %.4581, 2
  %.2702 = add i32 %.4701, 1
  br label %.2669wc 
.2681:
  %.2684 = srem i32 %.4581, 2
  %.2685 = icmp ne i32 %.2684, 0
  br i1 %.2685, label %.2676, label %.2677
.2705:
  br label %.2545wc 
.2719:
  %.2727 = icmp slt i32 %.4496, 0
  br i1 %.2727, label %.2724, label %.2725
.2720:
  br i1 true, label %.2736, label %.2737
.2724:
  br label %.2730 
.2725:
  br label %.2730 
.2730:
  %.4844 = phi i32 [0, %.2725], [65535, %.2724]
  br label %.2734 
.2734:
  %.4845 = phi i32 [%.4847, %.2770], [%.4844, %.2730]
  br label %.2306wc 
.2736:
  %.2744 = icmp sgt i32 %.4496, 32767
  br i1 %.2744, label %.2741, label %.2742
.2737:
  br label %.2770 
.2741:
  %.2748 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2749 = load i32, i32* %.2748
  %.2750 = sdiv i32 %.4496, %.2749
  %.2753 = add i32 %.2750, 65536
  %.2757 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.2758 = load i32, i32* %.2757
  %.2759 = sub i32 %.2753, %.2758
  br label %.2761 
.2742:
  %.2765 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2766 = load i32, i32* %.2765
  %.2767 = sdiv i32 %.4496, %.2766
  br label %.2761 
.2761:
  %.4846 = phi i32 [%.2767, %.2742], [%.2759, %.2741]
  br label %.2770 
.2770:
  %.4847 = phi i32 [%.4496, %.2737], [%.4846, %.2761]
  br label %.2734 
.2792wc:
  %.4489 = phi i32 [%.4501, %.2294], [%.4483, %.3220]
  %.4488 = phi i32 [%.4501, %.2294], [%.4867, %.3220]
  %.4486 = phi i32 [0, %.2294], [%.4487, %.3220]
  %.2797 = icmp ne i32 %.4488, 0
  br i1 %.2797, label %.2793wloop., label %.2794wn
.2793wloop.:
  br label %.2804wc 
.2794wn:
  br i1 false, label %.3272, label %.3273
.2804wc:
  %.4848 = phi i32 [0, %.2793wloop.], [%.4849, %.2812]
  %.4702 = phi i32 [0, %.2793wloop.], [%.2837, %.2812]
  %.4642 = phi i32 [%.4488, %.2793wloop.], [%.2831, %.2812]
  %.4582 = phi i32 [1, %.2793wloop.], [%.2834, %.2812]
  %.2809 = icmp slt i32 %.4702, 16
  br i1 %.2809, label %.2805wloop., label %.2806wn
.2805wloop.:
  %.2814 = srem i32 %.4642, 2
  %.2815 = icmp ne i32 %.2814, 0
  br i1 %.2815, label %.2816, label %.2812
.2806wn:
  %.2843 = icmp ne i32 %.4848, 0
  br i1 %.2843, label %.2840, label %.2841
.2811:
  %.2824 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4702
  %.2825 = load i32, i32* %.2824
  %.2826 = mul i32 1, %.2825
  %.2827 = add i32 %.4848, %.2826
  br label %.2812 
.2812:
  %.4849 = phi i32 [%.4848, %.2805wloop.], [%.4848, %.2816], [%.2827, %.2811]
  %.2831 = sdiv i32 %.4642, 2
  %.2834 = sdiv i32 %.4582, 2
  %.2837 = add i32 %.4702, 1
  br label %.2804wc 
.2816:
  %.2819 = srem i32 %.4582, 2
  %.2820 = icmp ne i32 %.2819, 0
  br i1 %.2820, label %.2811, label %.2812
.2840:
  br label %.2852wc 
.2841:
  %.4487 = phi i32 [%.4486, %.2806wn], [%.4485, %.2854wn]
  br label %.3031wc 
.2852wc:
  %.4485 = phi i32 [%.4486, %.2840], [%.4850, %.3012]
  %.4484 = phi i32 [%.4489, %.2840], [%.4856, %.3012]
  %.2857 = icmp ne i32 %.4484, 0
  br i1 %.2857, label %.2853wloop., label %.2854wn
.2853wloop.:
  br label %.2865wc 
.2854wn:
  br label %.2841 
.2865wc:
  %.4850 = phi i32 [0, %.2853wloop.], [%.4852, %.2892]
  %.4703 = phi i32 [0, %.2853wloop.], [%.2916, %.2892]
  %.4643 = phi i32 [%.4485, %.2853wloop.], [%.2910, %.2892]
  %.4583 = phi i32 [%.4484, %.2853wloop.], [%.2913, %.2892]
  %.2870 = icmp slt i32 %.4703, 16
  br i1 %.2870, label %.2866wloop., label %.2867wn
.2866wloop.:
  %.2875 = srem i32 %.4643, 2
  %.2876 = icmp ne i32 %.2875, 0
  br i1 %.2876, label %.2872, label %.2873
.2867wn:
  br label %.2927wc 
.2872:
  %.2881 = srem i32 %.4583, 2
  %.2882 = icmp eq i32 %.2881, 0
  br i1 %.2882, label %.2878, label %.2879
.2873:
  %.2897 = srem i32 %.4583, 2
  %.2898 = icmp ne i32 %.2897, 0
  br i1 %.2898, label %.2894, label %.2895
.2878:
  %.2886 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4703
  %.2887 = load i32, i32* %.2886
  %.2888 = mul i32 1, %.2887
  %.2889 = add i32 %.4850, %.2888
  br label %.2879 
.2879:
  %.4851 = phi i32 [%.4850, %.2872], [%.2889, %.2878]
  br label %.2892 
.2892:
  %.4852 = phi i32 [%.4853, %.2895], [%.4851, %.2879]
  %.2910 = sdiv i32 %.4643, 2
  %.2913 = sdiv i32 %.4583, 2
  %.2916 = add i32 %.4703, 1
  br label %.2865wc 
.2894:
  %.2902 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4703
  %.2903 = load i32, i32* %.2902
  %.2904 = mul i32 1, %.2903
  %.2905 = add i32 %.4850, %.2904
  br label %.2895 
.2895:
  %.4853 = phi i32 [%.4850, %.2873], [%.2905, %.2894]
  br label %.2892 
.2927wc:
  %.4854 = phi i32 [0, %.2867wn], [%.4855, %.2935]
  %.4704 = phi i32 [0, %.2867wn], [%.2960, %.2935]
  %.4644 = phi i32 [%.4485, %.2867wn], [%.2954, %.2935]
  %.4584 = phi i32 [%.4484, %.2867wn], [%.2957, %.2935]
  %.2932 = icmp slt i32 %.4704, 16
  br i1 %.2932, label %.2928wloop., label %.2929wn
.2928wloop.:
  %.2937 = srem i32 %.4644, 2
  %.2938 = icmp ne i32 %.2937, 0
  br i1 %.2938, label %.2939, label %.2935
.2929wn:
  br label %.2966 
.2934:
  %.2947 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4704
  %.2948 = load i32, i32* %.2947
  %.2949 = mul i32 1, %.2948
  %.2950 = add i32 %.4854, %.2949
  br label %.2935 
.2935:
  %.4855 = phi i32 [%.4854, %.2928wloop.], [%.4854, %.2939], [%.2950, %.2934]
  %.2954 = sdiv i32 %.4644, 2
  %.2957 = sdiv i32 %.4584, 2
  %.2960 = add i32 %.4704, 1
  br label %.2927wc 
.2939:
  %.2942 = srem i32 %.4584, 2
  %.2943 = icmp ne i32 %.2942, 0
  br i1 %.2943, label %.2934, label %.2935
.2966:
  %.2971 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2972 = load i32, i32* %.2971
  %.2973 = mul i32 %.4854, %.2972
  br label %.2976wc 
.2976wc:
  %.4856 = phi i32 [0, %.2966], [%.4857, %.2984]
  %.4705 = phi i32 [0, %.2966], [%.3009, %.2984]
  %.4645 = phi i32 [%.2973, %.2966], [%.3003, %.2984]
  %.4585 = phi i32 [65535, %.2966], [%.3006, %.2984]
  %.2981 = icmp slt i32 %.4705, 16
  br i1 %.2981, label %.2977wloop., label %.2978wn
.2977wloop.:
  %.2986 = srem i32 %.4645, 2
  %.2987 = icmp ne i32 %.2986, 0
  br i1 %.2987, label %.2988, label %.2984
.2978wn:
  br label %.3012 
.2983:
  %.2996 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4705
  %.2997 = load i32, i32* %.2996
  %.2998 = mul i32 1, %.2997
  %.2999 = add i32 %.4856, %.2998
  br label %.2984 
.2984:
  %.4857 = phi i32 [%.4856, %.2977wloop.], [%.4856, %.2988], [%.2999, %.2983]
  %.3003 = sdiv i32 %.4645, 2
  %.3006 = sdiv i32 %.4585, 2
  %.3009 = add i32 %.4705, 1
  br label %.2976wc 
.2988:
  %.2991 = srem i32 %.4585, 2
  %.2992 = icmp ne i32 %.2991, 0
  br i1 %.2992, label %.2983, label %.2984
.3012:
  br label %.2852wc 
.3031wc:
  %.4483 = phi i32 [%.4489, %.2841], [%.4858, %.3191]
  %.4482 = phi i32 [%.4489, %.2841], [%.4864, %.3191]
  %.3036 = icmp ne i32 %.4482, 0
  br i1 %.3036, label %.3032wloop., label %.3033wn
.3032wloop.:
  br label %.3044wc 
.3033wn:
  br i1 false, label %.3205, label %.3206
.3044wc:
  %.4858 = phi i32 [0, %.3032wloop.], [%.4860, %.3071]
  %.4706 = phi i32 [0, %.3032wloop.], [%.3095, %.3071]
  %.4646 = phi i32 [%.4483, %.3032wloop.], [%.3089, %.3071]
  %.4586 = phi i32 [%.4482, %.3032wloop.], [%.3092, %.3071]
  %.3049 = icmp slt i32 %.4706, 16
  br i1 %.3049, label %.3045wloop., label %.3046wn
.3045wloop.:
  %.3054 = srem i32 %.4646, 2
  %.3055 = icmp ne i32 %.3054, 0
  br i1 %.3055, label %.3051, label %.3052
.3046wn:
  br label %.3106wc 
.3051:
  %.3060 = srem i32 %.4586, 2
  %.3061 = icmp eq i32 %.3060, 0
  br i1 %.3061, label %.3057, label %.3058
.3052:
  %.3076 = srem i32 %.4586, 2
  %.3077 = icmp ne i32 %.3076, 0
  br i1 %.3077, label %.3073, label %.3074
.3057:
  %.3065 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4706
  %.3066 = load i32, i32* %.3065
  %.3067 = mul i32 1, %.3066
  %.3068 = add i32 %.4858, %.3067
  br label %.3058 
.3058:
  %.4859 = phi i32 [%.4858, %.3051], [%.3068, %.3057]
  br label %.3071 
.3071:
  %.4860 = phi i32 [%.4861, %.3074], [%.4859, %.3058]
  %.3089 = sdiv i32 %.4646, 2
  %.3092 = sdiv i32 %.4586, 2
  %.3095 = add i32 %.4706, 1
  br label %.3044wc 
.3073:
  %.3081 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4706
  %.3082 = load i32, i32* %.3081
  %.3083 = mul i32 1, %.3082
  %.3084 = add i32 %.4858, %.3083
  br label %.3074 
.3074:
  %.4861 = phi i32 [%.4858, %.3052], [%.3084, %.3073]
  br label %.3071 
.3106wc:
  %.4862 = phi i32 [0, %.3046wn], [%.4863, %.3114]
  %.4707 = phi i32 [0, %.3046wn], [%.3139, %.3114]
  %.4647 = phi i32 [%.4483, %.3046wn], [%.3133, %.3114]
  %.4587 = phi i32 [%.4482, %.3046wn], [%.3136, %.3114]
  %.3111 = icmp slt i32 %.4707, 16
  br i1 %.3111, label %.3107wloop., label %.3108wn
.3107wloop.:
  %.3116 = srem i32 %.4647, 2
  %.3117 = icmp ne i32 %.3116, 0
  br i1 %.3117, label %.3118, label %.3114
.3108wn:
  br label %.3145 
.3113:
  %.3126 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4707
  %.3127 = load i32, i32* %.3126
  %.3128 = mul i32 1, %.3127
  %.3129 = add i32 %.4862, %.3128
  br label %.3114 
.3114:
  %.4863 = phi i32 [%.4862, %.3107wloop.], [%.4862, %.3118], [%.3129, %.3113]
  %.3133 = sdiv i32 %.4647, 2
  %.3136 = sdiv i32 %.4587, 2
  %.3139 = add i32 %.4707, 1
  br label %.3106wc 
.3118:
  %.3121 = srem i32 %.4587, 2
  %.3122 = icmp ne i32 %.3121, 0
  br i1 %.3122, label %.3113, label %.3114
.3145:
  %.3150 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3151 = load i32, i32* %.3150
  %.3152 = mul i32 %.4862, %.3151
  br label %.3155wc 
.3155wc:
  %.4864 = phi i32 [0, %.3145], [%.4865, %.3163]
  %.4708 = phi i32 [0, %.3145], [%.3188, %.3163]
  %.4648 = phi i32 [%.3152, %.3145], [%.3182, %.3163]
  %.4588 = phi i32 [65535, %.3145], [%.3185, %.3163]
  %.3160 = icmp slt i32 %.4708, 16
  br i1 %.3160, label %.3156wloop., label %.3157wn
.3156wloop.:
  %.3165 = srem i32 %.4648, 2
  %.3166 = icmp ne i32 %.3165, 0
  br i1 %.3166, label %.3167, label %.3163
.3157wn:
  br label %.3191 
.3162:
  %.3175 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4708
  %.3176 = load i32, i32* %.3175
  %.3177 = mul i32 1, %.3176
  %.3178 = add i32 %.4864, %.3177
  br label %.3163 
.3163:
  %.4865 = phi i32 [%.4864, %.3156wloop.], [%.4864, %.3167], [%.3178, %.3162]
  %.3182 = sdiv i32 %.4648, 2
  %.3185 = sdiv i32 %.4588, 2
  %.3188 = add i32 %.4708, 1
  br label %.3155wc 
.3167:
  %.3170 = srem i32 %.4588, 2
  %.3171 = icmp ne i32 %.3170, 0
  br i1 %.3171, label %.3162, label %.3163
.3191:
  br label %.3031wc 
.3205:
  %.3213 = icmp slt i32 %.4488, 0
  br i1 %.3213, label %.3210, label %.3211
.3206:
  br i1 true, label %.3222, label %.3223
.3210:
  br label %.3216 
.3211:
  br label %.3216 
.3216:
  %.4866 = phi i32 [0, %.3211], [65535, %.3210]
  br label %.3220 
.3220:
  %.4867 = phi i32 [%.4869, %.3256], [%.4866, %.3216]
  br label %.2792wc 
.3222:
  %.3230 = icmp sgt i32 %.4488, 32767
  br i1 %.3230, label %.3227, label %.3228
.3223:
  br label %.3256 
.3227:
  %.3234 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3235 = load i32, i32* %.3234
  %.3236 = sdiv i32 %.4488, %.3235
  %.3239 = add i32 %.3236, 65536
  %.3243 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.3244 = load i32, i32* %.3243
  %.3245 = sub i32 %.3239, %.3244
  br label %.3247 
.3228:
  %.3251 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3252 = load i32, i32* %.3251
  %.3253 = sdiv i32 %.4488, %.3252
  br label %.3247 
.3247:
  %.4868 = phi i32 [%.3253, %.3228], [%.3245, %.3227]
  br label %.3256 
.3256:
  %.4869 = phi i32 [%.4488, %.3223], [%.4868, %.3247]
  br label %.3220 
.3272:
  %.3280 = icmp slt i32 %.4500, 0
  br i1 %.3280, label %.3277, label %.3278
.3273:
  br i1 true, label %.3289, label %.3290
.3277:
  br label %.3283 
.3278:
  br label %.3283 
.3283:
  %.4870 = phi i32 [0, %.3278], [65535, %.3277]
  br label %.3287 
.3287:
  %.4871 = phi i32 [%.4873, %.3323], [%.4870, %.3283]
  br label %.2245wc 
.3289:
  %.3297 = icmp sgt i32 %.4500, 32767
  br i1 %.3297, label %.3294, label %.3295
.3290:
  br label %.3323 
.3294:
  %.3301 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3302 = load i32, i32* %.3301
  %.3303 = sdiv i32 %.4500, %.3302
  %.3306 = add i32 %.3303, 65536
  %.3310 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.3311 = load i32, i32* %.3310
  %.3312 = sub i32 %.3306, %.3311
  br label %.3314 
.3295:
  %.3318 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3319 = load i32, i32* %.3318
  %.3320 = sdiv i32 %.4500, %.3319
  br label %.3314 
.3314:
  %.4872 = phi i32 [%.3320, %.3295], [%.3312, %.3294]
  br label %.3323 
.3323:
  %.4873 = phi i32 [%.4500, %.3290], [%.4872, %.3314]
  br label %.3287 
.3342wc:
  %.4543 = phi i32 [0, %.2233wn], [%.4455, %.4446]
  %.3347 = icmp slt i32 %.4543, 16
  br i1 %.3347, label %.3343wloop., label %.3344wn
.3343wloop.:
  br label %.3356wc 
.3344wn:
  ret i32 0 
.3356wc:
  %.4481 = phi i32 [2, %.3343wloop.], [%.4466, %.4398]
  %.4480 = phi i32 [%.4543, %.3343wloop.], [%.4921, %.4398]
  %.4478 = phi i32 [1, %.3343wloop.], [%.4479, %.4398]
  %.3361 = icmp sgt i32 %.4480, 0
  br i1 %.3361, label %.3357wloop., label %.3358wn
.3357wloop.:
  br label %.3368wc 
.3358wn:
  %.4448 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4543
  %.4449 = load i32, i32* %.4448
  %.4451 = icmp ne i32 %.4449, %.4478
  br i1 %.4451, label %.4445, label %.4446
.3368wc:
  %.4874 = phi i32 [0, %.3357wloop.], [%.4875, %.3376]
  %.4709 = phi i32 [0, %.3357wloop.], [%.3401, %.3376]
  %.4649 = phi i32 [%.4480, %.3357wloop.], [%.3395, %.3376]
  %.4589 = phi i32 [1, %.3357wloop.], [%.3398, %.3376]
  %.3373 = icmp slt i32 %.4709, 16
  br i1 %.3373, label %.3369wloop., label %.3370wn
.3369wloop.:
  %.3378 = srem i32 %.4649, 2
  %.3379 = icmp ne i32 %.3378, 0
  br i1 %.3379, label %.3380, label %.3376
.3370wn:
  %.3407 = icmp ne i32 %.4874, 0
  br i1 %.3407, label %.3404, label %.3405
.3375:
  %.3388 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4709
  %.3389 = load i32, i32* %.3388
  %.3390 = mul i32 1, %.3389
  %.3391 = add i32 %.4874, %.3390
  br label %.3376 
.3376:
  %.4875 = phi i32 [%.4874, %.3369wloop.], [%.4874, %.3380], [%.3391, %.3375]
  %.3395 = sdiv i32 %.4649, 2
  %.3398 = sdiv i32 %.4589, 2
  %.3401 = add i32 %.4709, 1
  br label %.3368wc 
.3380:
  %.3383 = srem i32 %.4589, 2
  %.3384 = icmp ne i32 %.3383, 0
  br i1 %.3384, label %.3375, label %.3376
.3404:
  br label %.3417wc 
.3405:
  %.4479 = phi i32 [%.4478, %.3370wn], [%.4474, %.3419wn]
  br label %.3903wc 
.3417wc:
  %.4477 = phi i32 [%.4478, %.3404], [%.4471, %.3845]
  %.4476 = phi i32 [%.4481, %.3404], [%.4895, %.3845]
  %.4474 = phi i32 [0, %.3404], [%.4475, %.3845]
  %.3422 = icmp ne i32 %.4476, 0
  br i1 %.3422, label %.3418wloop., label %.3419wn
.3418wloop.:
  br label %.3429wc 
.3419wn:
  br label %.3405 
.3429wc:
  %.4876 = phi i32 [0, %.3418wloop.], [%.4877, %.3437]
  %.4710 = phi i32 [0, %.3418wloop.], [%.3462, %.3437]
  %.4650 = phi i32 [%.4476, %.3418wloop.], [%.3456, %.3437]
  %.4590 = phi i32 [1, %.3418wloop.], [%.3459, %.3437]
  %.3434 = icmp slt i32 %.4710, 16
  br i1 %.3434, label %.3430wloop., label %.3431wn
.3430wloop.:
  %.3439 = srem i32 %.4650, 2
  %.3440 = icmp ne i32 %.3439, 0
  br i1 %.3440, label %.3441, label %.3437
.3431wn:
  %.3468 = icmp ne i32 %.4876, 0
  br i1 %.3468, label %.3465, label %.3466
.3436:
  %.3449 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4710
  %.3450 = load i32, i32* %.3449
  %.3451 = mul i32 1, %.3450
  %.3452 = add i32 %.4876, %.3451
  br label %.3437 
.3437:
  %.4877 = phi i32 [%.4876, %.3430wloop.], [%.4876, %.3441], [%.3452, %.3436]
  %.3456 = sdiv i32 %.4650, 2
  %.3459 = sdiv i32 %.4590, 2
  %.3462 = add i32 %.4710, 1
  br label %.3429wc 
.3441:
  %.3444 = srem i32 %.4590, 2
  %.3445 = icmp ne i32 %.3444, 0
  br i1 %.3445, label %.3436, label %.3437
.3465:
  br label %.3477wc 
.3466:
  %.4475 = phi i32 [%.4474, %.3431wn], [%.4473, %.3479wn]
  br label %.3656wc 
.3477wc:
  %.4473 = phi i32 [%.4474, %.3465], [%.4878, %.3637]
  %.4472 = phi i32 [%.4477, %.3465], [%.4884, %.3637]
  %.3482 = icmp ne i32 %.4472, 0
  br i1 %.3482, label %.3478wloop., label %.3479wn
.3478wloop.:
  br label %.3490wc 
.3479wn:
  br label %.3466 
.3490wc:
  %.4878 = phi i32 [0, %.3478wloop.], [%.4880, %.3517]
  %.4711 = phi i32 [0, %.3478wloop.], [%.3541, %.3517]
  %.4651 = phi i32 [%.4473, %.3478wloop.], [%.3535, %.3517]
  %.4591 = phi i32 [%.4472, %.3478wloop.], [%.3538, %.3517]
  %.3495 = icmp slt i32 %.4711, 16
  br i1 %.3495, label %.3491wloop., label %.3492wn
.3491wloop.:
  %.3500 = srem i32 %.4651, 2
  %.3501 = icmp ne i32 %.3500, 0
  br i1 %.3501, label %.3497, label %.3498
.3492wn:
  br label %.3552wc 
.3497:
  %.3506 = srem i32 %.4591, 2
  %.3507 = icmp eq i32 %.3506, 0
  br i1 %.3507, label %.3503, label %.3504
.3498:
  %.3522 = srem i32 %.4591, 2
  %.3523 = icmp ne i32 %.3522, 0
  br i1 %.3523, label %.3519, label %.3520
.3503:
  %.3511 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4711
  %.3512 = load i32, i32* %.3511
  %.3513 = mul i32 1, %.3512
  %.3514 = add i32 %.4878, %.3513
  br label %.3504 
.3504:
  %.4879 = phi i32 [%.4878, %.3497], [%.3514, %.3503]
  br label %.3517 
.3517:
  %.4880 = phi i32 [%.4881, %.3520], [%.4879, %.3504]
  %.3535 = sdiv i32 %.4651, 2
  %.3538 = sdiv i32 %.4591, 2
  %.3541 = add i32 %.4711, 1
  br label %.3490wc 
.3519:
  %.3527 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4711
  %.3528 = load i32, i32* %.3527
  %.3529 = mul i32 1, %.3528
  %.3530 = add i32 %.4878, %.3529
  br label %.3520 
.3520:
  %.4881 = phi i32 [%.4878, %.3498], [%.3530, %.3519]
  br label %.3517 
.3552wc:
  %.4882 = phi i32 [0, %.3492wn], [%.4883, %.3560]
  %.4712 = phi i32 [0, %.3492wn], [%.3585, %.3560]
  %.4652 = phi i32 [%.4473, %.3492wn], [%.3579, %.3560]
  %.4592 = phi i32 [%.4472, %.3492wn], [%.3582, %.3560]
  %.3557 = icmp slt i32 %.4712, 16
  br i1 %.3557, label %.3553wloop., label %.3554wn
.3553wloop.:
  %.3562 = srem i32 %.4652, 2
  %.3563 = icmp ne i32 %.3562, 0
  br i1 %.3563, label %.3564, label %.3560
.3554wn:
  br label %.3591 
.3559:
  %.3572 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4712
  %.3573 = load i32, i32* %.3572
  %.3574 = mul i32 1, %.3573
  %.3575 = add i32 %.4882, %.3574
  br label %.3560 
.3560:
  %.4883 = phi i32 [%.4882, %.3553wloop.], [%.4882, %.3564], [%.3575, %.3559]
  %.3579 = sdiv i32 %.4652, 2
  %.3582 = sdiv i32 %.4592, 2
  %.3585 = add i32 %.4712, 1
  br label %.3552wc 
.3564:
  %.3567 = srem i32 %.4592, 2
  %.3568 = icmp ne i32 %.3567, 0
  br i1 %.3568, label %.3559, label %.3560
.3591:
  %.3596 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3597 = load i32, i32* %.3596
  %.3598 = mul i32 %.4882, %.3597
  br label %.3601wc 
.3601wc:
  %.4884 = phi i32 [0, %.3591], [%.4885, %.3609]
  %.4713 = phi i32 [0, %.3591], [%.3634, %.3609]
  %.4653 = phi i32 [%.3598, %.3591], [%.3628, %.3609]
  %.4593 = phi i32 [65535, %.3591], [%.3631, %.3609]
  %.3606 = icmp slt i32 %.4713, 16
  br i1 %.3606, label %.3602wloop., label %.3603wn
.3602wloop.:
  %.3611 = srem i32 %.4653, 2
  %.3612 = icmp ne i32 %.3611, 0
  br i1 %.3612, label %.3613, label %.3609
.3603wn:
  br label %.3637 
.3608:
  %.3621 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4713
  %.3622 = load i32, i32* %.3621
  %.3623 = mul i32 1, %.3622
  %.3624 = add i32 %.4884, %.3623
  br label %.3609 
.3609:
  %.4885 = phi i32 [%.4884, %.3602wloop.], [%.4884, %.3613], [%.3624, %.3608]
  %.3628 = sdiv i32 %.4653, 2
  %.3631 = sdiv i32 %.4593, 2
  %.3634 = add i32 %.4713, 1
  br label %.3601wc 
.3613:
  %.3616 = srem i32 %.4593, 2
  %.3617 = icmp ne i32 %.3616, 0
  br i1 %.3617, label %.3608, label %.3609
.3637:
  br label %.3477wc 
.3656wc:
  %.4471 = phi i32 [%.4477, %.3466], [%.4886, %.3816]
  %.4470 = phi i32 [%.4477, %.3466], [%.4892, %.3816]
  %.3661 = icmp ne i32 %.4470, 0
  br i1 %.3661, label %.3657wloop., label %.3658wn
.3657wloop.:
  br label %.3669wc 
.3658wn:
  br i1 false, label %.3830, label %.3831
.3669wc:
  %.4886 = phi i32 [0, %.3657wloop.], [%.4888, %.3696]
  %.4714 = phi i32 [0, %.3657wloop.], [%.3720, %.3696]
  %.4654 = phi i32 [%.4471, %.3657wloop.], [%.3714, %.3696]
  %.4594 = phi i32 [%.4470, %.3657wloop.], [%.3717, %.3696]
  %.3674 = icmp slt i32 %.4714, 16
  br i1 %.3674, label %.3670wloop., label %.3671wn
.3670wloop.:
  %.3679 = srem i32 %.4654, 2
  %.3680 = icmp ne i32 %.3679, 0
  br i1 %.3680, label %.3676, label %.3677
.3671wn:
  br label %.3731wc 
.3676:
  %.3685 = srem i32 %.4594, 2
  %.3686 = icmp eq i32 %.3685, 0
  br i1 %.3686, label %.3682, label %.3683
.3677:
  %.3701 = srem i32 %.4594, 2
  %.3702 = icmp ne i32 %.3701, 0
  br i1 %.3702, label %.3698, label %.3699
.3682:
  %.3690 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4714
  %.3691 = load i32, i32* %.3690
  %.3692 = mul i32 1, %.3691
  %.3693 = add i32 %.4886, %.3692
  br label %.3683 
.3683:
  %.4887 = phi i32 [%.4886, %.3676], [%.3693, %.3682]
  br label %.3696 
.3696:
  %.4888 = phi i32 [%.4889, %.3699], [%.4887, %.3683]
  %.3714 = sdiv i32 %.4654, 2
  %.3717 = sdiv i32 %.4594, 2
  %.3720 = add i32 %.4714, 1
  br label %.3669wc 
.3698:
  %.3706 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4714
  %.3707 = load i32, i32* %.3706
  %.3708 = mul i32 1, %.3707
  %.3709 = add i32 %.4886, %.3708
  br label %.3699 
.3699:
  %.4889 = phi i32 [%.4886, %.3677], [%.3709, %.3698]
  br label %.3696 
.3731wc:
  %.4890 = phi i32 [0, %.3671wn], [%.4891, %.3739]
  %.4715 = phi i32 [0, %.3671wn], [%.3764, %.3739]
  %.4655 = phi i32 [%.4471, %.3671wn], [%.3758, %.3739]
  %.4595 = phi i32 [%.4470, %.3671wn], [%.3761, %.3739]
  %.3736 = icmp slt i32 %.4715, 16
  br i1 %.3736, label %.3732wloop., label %.3733wn
.3732wloop.:
  %.3741 = srem i32 %.4655, 2
  %.3742 = icmp ne i32 %.3741, 0
  br i1 %.3742, label %.3743, label %.3739
.3733wn:
  br label %.3770 
.3738:
  %.3751 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4715
  %.3752 = load i32, i32* %.3751
  %.3753 = mul i32 1, %.3752
  %.3754 = add i32 %.4890, %.3753
  br label %.3739 
.3739:
  %.4891 = phi i32 [%.4890, %.3732wloop.], [%.4890, %.3743], [%.3754, %.3738]
  %.3758 = sdiv i32 %.4655, 2
  %.3761 = sdiv i32 %.4595, 2
  %.3764 = add i32 %.4715, 1
  br label %.3731wc 
.3743:
  %.3746 = srem i32 %.4595, 2
  %.3747 = icmp ne i32 %.3746, 0
  br i1 %.3747, label %.3738, label %.3739
.3770:
  %.3775 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3776 = load i32, i32* %.3775
  %.3777 = mul i32 %.4890, %.3776
  br label %.3780wc 
.3780wc:
  %.4892 = phi i32 [0, %.3770], [%.4893, %.3788]
  %.4716 = phi i32 [0, %.3770], [%.3813, %.3788]
  %.4656 = phi i32 [%.3777, %.3770], [%.3807, %.3788]
  %.4596 = phi i32 [65535, %.3770], [%.3810, %.3788]
  %.3785 = icmp slt i32 %.4716, 16
  br i1 %.3785, label %.3781wloop., label %.3782wn
.3781wloop.:
  %.3790 = srem i32 %.4656, 2
  %.3791 = icmp ne i32 %.3790, 0
  br i1 %.3791, label %.3792, label %.3788
.3782wn:
  br label %.3816 
.3787:
  %.3800 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4716
  %.3801 = load i32, i32* %.3800
  %.3802 = mul i32 1, %.3801
  %.3803 = add i32 %.4892, %.3802
  br label %.3788 
.3788:
  %.4893 = phi i32 [%.4892, %.3781wloop.], [%.4892, %.3792], [%.3803, %.3787]
  %.3807 = sdiv i32 %.4656, 2
  %.3810 = sdiv i32 %.4596, 2
  %.3813 = add i32 %.4716, 1
  br label %.3780wc 
.3792:
  %.3795 = srem i32 %.4596, 2
  %.3796 = icmp ne i32 %.3795, 0
  br i1 %.3796, label %.3787, label %.3788
.3816:
  br label %.3656wc 
.3830:
  %.3838 = icmp slt i32 %.4476, 0
  br i1 %.3838, label %.3835, label %.3836
.3831:
  br i1 true, label %.3847, label %.3848
.3835:
  br label %.3841 
.3836:
  br label %.3841 
.3841:
  %.4894 = phi i32 [0, %.3836], [65535, %.3835]
  br label %.3845 
.3845:
  %.4895 = phi i32 [%.4897, %.3881], [%.4894, %.3841]
  br label %.3417wc 
.3847:
  %.3855 = icmp sgt i32 %.4476, 32767
  br i1 %.3855, label %.3852, label %.3853
.3848:
  br label %.3881 
.3852:
  %.3859 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3860 = load i32, i32* %.3859
  %.3861 = sdiv i32 %.4476, %.3860
  %.3864 = add i32 %.3861, 65536
  %.3868 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.3869 = load i32, i32* %.3868
  %.3870 = sub i32 %.3864, %.3869
  br label %.3872 
.3853:
  %.3876 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3877 = load i32, i32* %.3876
  %.3878 = sdiv i32 %.4476, %.3877
  br label %.3872 
.3872:
  %.4896 = phi i32 [%.3878, %.3853], [%.3870, %.3852]
  br label %.3881 
.3881:
  %.4897 = phi i32 [%.4476, %.3848], [%.4896, %.3872]
  br label %.3845 
.3903wc:
  %.4469 = phi i32 [%.4481, %.3405], [%.4463, %.4331]
  %.4468 = phi i32 [%.4481, %.3405], [%.4917, %.4331]
  %.4466 = phi i32 [0, %.3405], [%.4467, %.4331]
  %.3908 = icmp ne i32 %.4468, 0
  br i1 %.3908, label %.3904wloop., label %.3905wn
.3904wloop.:
  br label %.3915wc 
.3905wn:
  br i1 false, label %.4383, label %.4384
.3915wc:
  %.4898 = phi i32 [0, %.3904wloop.], [%.4899, %.3923]
  %.4717 = phi i32 [0, %.3904wloop.], [%.3948, %.3923]
  %.4657 = phi i32 [%.4468, %.3904wloop.], [%.3942, %.3923]
  %.4597 = phi i32 [1, %.3904wloop.], [%.3945, %.3923]
  %.3920 = icmp slt i32 %.4717, 16
  br i1 %.3920, label %.3916wloop., label %.3917wn
.3916wloop.:
  %.3925 = srem i32 %.4657, 2
  %.3926 = icmp ne i32 %.3925, 0
  br i1 %.3926, label %.3927, label %.3923
.3917wn:
  %.3954 = icmp ne i32 %.4898, 0
  br i1 %.3954, label %.3951, label %.3952
.3922:
  %.3935 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4717
  %.3936 = load i32, i32* %.3935
  %.3937 = mul i32 1, %.3936
  %.3938 = add i32 %.4898, %.3937
  br label %.3923 
.3923:
  %.4899 = phi i32 [%.4898, %.3916wloop.], [%.4898, %.3927], [%.3938, %.3922]
  %.3942 = sdiv i32 %.4657, 2
  %.3945 = sdiv i32 %.4597, 2
  %.3948 = add i32 %.4717, 1
  br label %.3915wc 
.3927:
  %.3930 = srem i32 %.4597, 2
  %.3931 = icmp ne i32 %.3930, 0
  br i1 %.3931, label %.3922, label %.3923
.3951:
  br label %.3963wc 
.3952:
  %.4467 = phi i32 [%.4466, %.3917wn], [%.4465, %.3965wn]
  br label %.4142wc 
.3963wc:
  %.4465 = phi i32 [%.4466, %.3951], [%.4900, %.4123]
  %.4464 = phi i32 [%.4469, %.3951], [%.4906, %.4123]
  %.3968 = icmp ne i32 %.4464, 0
  br i1 %.3968, label %.3964wloop., label %.3965wn
.3964wloop.:
  br label %.3976wc 
.3965wn:
  br label %.3952 
.3976wc:
  %.4900 = phi i32 [0, %.3964wloop.], [%.4902, %.4003]
  %.4718 = phi i32 [0, %.3964wloop.], [%.4027, %.4003]
  %.4658 = phi i32 [%.4465, %.3964wloop.], [%.4021, %.4003]
  %.4598 = phi i32 [%.4464, %.3964wloop.], [%.4024, %.4003]
  %.3981 = icmp slt i32 %.4718, 16
  br i1 %.3981, label %.3977wloop., label %.3978wn
.3977wloop.:
  %.3986 = srem i32 %.4658, 2
  %.3987 = icmp ne i32 %.3986, 0
  br i1 %.3987, label %.3983, label %.3984
.3978wn:
  br label %.4038wc 
.3983:
  %.3992 = srem i32 %.4598, 2
  %.3993 = icmp eq i32 %.3992, 0
  br i1 %.3993, label %.3989, label %.3990
.3984:
  %.4008 = srem i32 %.4598, 2
  %.4009 = icmp ne i32 %.4008, 0
  br i1 %.4009, label %.4005, label %.4006
.3989:
  %.3997 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4718
  %.3998 = load i32, i32* %.3997
  %.3999 = mul i32 1, %.3998
  %.4000 = add i32 %.4900, %.3999
  br label %.3990 
.3990:
  %.4901 = phi i32 [%.4900, %.3983], [%.4000, %.3989]
  br label %.4003 
.4003:
  %.4902 = phi i32 [%.4903, %.4006], [%.4901, %.3990]
  %.4021 = sdiv i32 %.4658, 2
  %.4024 = sdiv i32 %.4598, 2
  %.4027 = add i32 %.4718, 1
  br label %.3976wc 
.4005:
  %.4013 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4718
  %.4014 = load i32, i32* %.4013
  %.4015 = mul i32 1, %.4014
  %.4016 = add i32 %.4900, %.4015
  br label %.4006 
.4006:
  %.4903 = phi i32 [%.4900, %.3984], [%.4016, %.4005]
  br label %.4003 
.4038wc:
  %.4904 = phi i32 [0, %.3978wn], [%.4905, %.4046]
  %.4719 = phi i32 [0, %.3978wn], [%.4071, %.4046]
  %.4659 = phi i32 [%.4465, %.3978wn], [%.4065, %.4046]
  %.4599 = phi i32 [%.4464, %.3978wn], [%.4068, %.4046]
  %.4043 = icmp slt i32 %.4719, 16
  br i1 %.4043, label %.4039wloop., label %.4040wn
.4039wloop.:
  %.4048 = srem i32 %.4659, 2
  %.4049 = icmp ne i32 %.4048, 0
  br i1 %.4049, label %.4050, label %.4046
.4040wn:
  br label %.4077 
.4045:
  %.4058 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4719
  %.4059 = load i32, i32* %.4058
  %.4060 = mul i32 1, %.4059
  %.4061 = add i32 %.4904, %.4060
  br label %.4046 
.4046:
  %.4905 = phi i32 [%.4904, %.4039wloop.], [%.4904, %.4050], [%.4061, %.4045]
  %.4065 = sdiv i32 %.4659, 2
  %.4068 = sdiv i32 %.4599, 2
  %.4071 = add i32 %.4719, 1
  br label %.4038wc 
.4050:
  %.4053 = srem i32 %.4599, 2
  %.4054 = icmp ne i32 %.4053, 0
  br i1 %.4054, label %.4045, label %.4046
.4077:
  %.4082 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.4083 = load i32, i32* %.4082
  %.4084 = mul i32 %.4904, %.4083
  br label %.4087wc 
.4087wc:
  %.4906 = phi i32 [0, %.4077], [%.4907, %.4095]
  %.4720 = phi i32 [0, %.4077], [%.4120, %.4095]
  %.4660 = phi i32 [%.4084, %.4077], [%.4114, %.4095]
  %.4600 = phi i32 [65535, %.4077], [%.4117, %.4095]
  %.4092 = icmp slt i32 %.4720, 16
  br i1 %.4092, label %.4088wloop., label %.4089wn
.4088wloop.:
  %.4097 = srem i32 %.4660, 2
  %.4098 = icmp ne i32 %.4097, 0
  br i1 %.4098, label %.4099, label %.4095
.4089wn:
  br label %.4123 
.4094:
  %.4107 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4720
  %.4108 = load i32, i32* %.4107
  %.4109 = mul i32 1, %.4108
  %.4110 = add i32 %.4906, %.4109
  br label %.4095 
.4095:
  %.4907 = phi i32 [%.4906, %.4088wloop.], [%.4906, %.4099], [%.4110, %.4094]
  %.4114 = sdiv i32 %.4660, 2
  %.4117 = sdiv i32 %.4600, 2
  %.4120 = add i32 %.4720, 1
  br label %.4087wc 
.4099:
  %.4102 = srem i32 %.4600, 2
  %.4103 = icmp ne i32 %.4102, 0
  br i1 %.4103, label %.4094, label %.4095
.4123:
  br label %.3963wc 
.4142wc:
  %.4463 = phi i32 [%.4469, %.3952], [%.4908, %.4302]
  %.4462 = phi i32 [%.4469, %.3952], [%.4914, %.4302]
  %.4147 = icmp ne i32 %.4462, 0
  br i1 %.4147, label %.4143wloop., label %.4144wn
.4143wloop.:
  br label %.4155wc 
.4144wn:
  br i1 false, label %.4316, label %.4317
.4155wc:
  %.4908 = phi i32 [0, %.4143wloop.], [%.4910, %.4182]
  %.4721 = phi i32 [0, %.4143wloop.], [%.4206, %.4182]
  %.4661 = phi i32 [%.4463, %.4143wloop.], [%.4200, %.4182]
  %.4601 = phi i32 [%.4462, %.4143wloop.], [%.4203, %.4182]
  %.4160 = icmp slt i32 %.4721, 16
  br i1 %.4160, label %.4156wloop., label %.4157wn
.4156wloop.:
  %.4165 = srem i32 %.4661, 2
  %.4166 = icmp ne i32 %.4165, 0
  br i1 %.4166, label %.4162, label %.4163
.4157wn:
  br label %.4217wc 
.4162:
  %.4171 = srem i32 %.4601, 2
  %.4172 = icmp eq i32 %.4171, 0
  br i1 %.4172, label %.4168, label %.4169
.4163:
  %.4187 = srem i32 %.4601, 2
  %.4188 = icmp ne i32 %.4187, 0
  br i1 %.4188, label %.4184, label %.4185
.4168:
  %.4176 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4721
  %.4177 = load i32, i32* %.4176
  %.4178 = mul i32 1, %.4177
  %.4179 = add i32 %.4908, %.4178
  br label %.4169 
.4169:
  %.4909 = phi i32 [%.4908, %.4162], [%.4179, %.4168]
  br label %.4182 
.4182:
  %.4910 = phi i32 [%.4911, %.4185], [%.4909, %.4169]
  %.4200 = sdiv i32 %.4661, 2
  %.4203 = sdiv i32 %.4601, 2
  %.4206 = add i32 %.4721, 1
  br label %.4155wc 
.4184:
  %.4192 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4721
  %.4193 = load i32, i32* %.4192
  %.4194 = mul i32 1, %.4193
  %.4195 = add i32 %.4908, %.4194
  br label %.4185 
.4185:
  %.4911 = phi i32 [%.4908, %.4163], [%.4195, %.4184]
  br label %.4182 
.4217wc:
  %.4912 = phi i32 [0, %.4157wn], [%.4913, %.4225]
  %.4722 = phi i32 [0, %.4157wn], [%.4250, %.4225]
  %.4662 = phi i32 [%.4463, %.4157wn], [%.4244, %.4225]
  %.4602 = phi i32 [%.4462, %.4157wn], [%.4247, %.4225]
  %.4222 = icmp slt i32 %.4722, 16
  br i1 %.4222, label %.4218wloop., label %.4219wn
.4218wloop.:
  %.4227 = srem i32 %.4662, 2
  %.4228 = icmp ne i32 %.4227, 0
  br i1 %.4228, label %.4229, label %.4225
.4219wn:
  br label %.4256 
.4224:
  %.4237 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4722
  %.4238 = load i32, i32* %.4237
  %.4239 = mul i32 1, %.4238
  %.4240 = add i32 %.4912, %.4239
  br label %.4225 
.4225:
  %.4913 = phi i32 [%.4912, %.4218wloop.], [%.4912, %.4229], [%.4240, %.4224]
  %.4244 = sdiv i32 %.4662, 2
  %.4247 = sdiv i32 %.4602, 2
  %.4250 = add i32 %.4722, 1
  br label %.4217wc 
.4229:
  %.4232 = srem i32 %.4602, 2
  %.4233 = icmp ne i32 %.4232, 0
  br i1 %.4233, label %.4224, label %.4225
.4256:
  %.4261 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.4262 = load i32, i32* %.4261
  %.4263 = mul i32 %.4912, %.4262
  br label %.4266wc 
.4266wc:
  %.4914 = phi i32 [0, %.4256], [%.4915, %.4274]
  %.4723 = phi i32 [0, %.4256], [%.4299, %.4274]
  %.4663 = phi i32 [%.4263, %.4256], [%.4293, %.4274]
  %.4603 = phi i32 [65535, %.4256], [%.4296, %.4274]
  %.4271 = icmp slt i32 %.4723, 16
  br i1 %.4271, label %.4267wloop., label %.4268wn
.4267wloop.:
  %.4276 = srem i32 %.4663, 2
  %.4277 = icmp ne i32 %.4276, 0
  br i1 %.4277, label %.4278, label %.4274
.4268wn:
  br label %.4302 
.4273:
  %.4286 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4723
  %.4287 = load i32, i32* %.4286
  %.4288 = mul i32 1, %.4287
  %.4289 = add i32 %.4914, %.4288
  br label %.4274 
.4274:
  %.4915 = phi i32 [%.4914, %.4267wloop.], [%.4914, %.4278], [%.4289, %.4273]
  %.4293 = sdiv i32 %.4663, 2
  %.4296 = sdiv i32 %.4603, 2
  %.4299 = add i32 %.4723, 1
  br label %.4266wc 
.4278:
  %.4281 = srem i32 %.4603, 2
  %.4282 = icmp ne i32 %.4281, 0
  br i1 %.4282, label %.4273, label %.4274
.4302:
  br label %.4142wc 
.4316:
  %.4324 = icmp slt i32 %.4468, 0
  br i1 %.4324, label %.4321, label %.4322
.4317:
  br i1 true, label %.4333, label %.4334
.4321:
  br label %.4327 
.4322:
  br label %.4327 
.4327:
  %.4916 = phi i32 [0, %.4322], [65535, %.4321]
  br label %.4331 
.4331:
  %.4917 = phi i32 [%.4919, %.4367], [%.4916, %.4327]
  br label %.3903wc 
.4333:
  %.4341 = icmp sgt i32 %.4468, 32767
  br i1 %.4341, label %.4338, label %.4339
.4334:
  br label %.4367 
.4338:
  %.4345 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.4346 = load i32, i32* %.4345
  %.4347 = sdiv i32 %.4468, %.4346
  %.4350 = add i32 %.4347, 65536
  %.4354 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.4355 = load i32, i32* %.4354
  %.4356 = sub i32 %.4350, %.4355
  br label %.4358 
.4339:
  %.4362 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.4363 = load i32, i32* %.4362
  %.4364 = sdiv i32 %.4468, %.4363
  br label %.4358 
.4358:
  %.4918 = phi i32 [%.4364, %.4339], [%.4356, %.4338]
  br label %.4367 
.4367:
  %.4919 = phi i32 [%.4468, %.4334], [%.4918, %.4358]
  br label %.4331 
.4383:
  %.4391 = icmp slt i32 %.4480, 0
  br i1 %.4391, label %.4388, label %.4389
.4384:
  br i1 true, label %.4400, label %.4401
.4388:
  br label %.4394 
.4389:
  br label %.4394 
.4394:
  %.4920 = phi i32 [0, %.4389], [65535, %.4388]
  br label %.4398 
.4398:
  %.4921 = phi i32 [%.4923, %.4434], [%.4920, %.4394]
  br label %.3356wc 
.4400:
  %.4408 = icmp sgt i32 %.4480, 32767
  br i1 %.4408, label %.4405, label %.4406
.4401:
  br label %.4434 
.4405:
  %.4412 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.4413 = load i32, i32* %.4412
  %.4414 = sdiv i32 %.4480, %.4413
  %.4417 = add i32 %.4414, 65536
  %.4421 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 15
  %.4422 = load i32, i32* %.4421
  %.4423 = sub i32 %.4417, %.4422
  br label %.4425 
.4406:
  %.4429 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.4430 = load i32, i32* %.4429
  %.4431 = sdiv i32 %.4480, %.4430
  br label %.4425 
.4425:
  %.4922 = phi i32 [%.4431, %.4406], [%.4423, %.4405]
  br label %.4434 
.4434:
  %.4923 = phi i32 [%.4480, %.4401], [%.4922, %.4425]
  br label %.4398 
.4445:
  ret i32 1 
.4446:
  %.4455 = add i32 %.4543, 1
  br label %.3342wc 
}
define i32 @main(){
.4459:
  %.4460at6 = call i32 @_user_long_func()
  ret i32 %.4460at6 
}
