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
  %.4141 = alloca i32
  %.4138 = alloca i32
  %.4135 = alloca i32
  %.3962 = alloca i32
  %.3959 = alloca i32
  %.3956 = alloca i32
  %.3901 = alloca i32
  %.3898 = alloca i32
  %.3895 = alloca i32
  %.3655 = alloca i32
  %.3652 = alloca i32
  %.3649 = alloca i32
  %.3476 = alloca i32
  %.3473 = alloca i32
  %.3470 = alloca i32
  %.3415 = alloca i32
  %.3412 = alloca i32
  %.3409 = alloca i32
  %.3354 = alloca i32
  %.3351 = alloca i32
  %.3349 = alloca i32
  %.3030 = alloca i32
  %.3027 = alloca i32
  %.3024 = alloca i32
  %.2851 = alloca i32
  %.2848 = alloca i32
  %.2845 = alloca i32
  %.2790 = alloca i32
  %.2787 = alloca i32
  %.2784 = alloca i32
  %.2544 = alloca i32
  %.2541 = alloca i32
  %.2538 = alloca i32
  %.2365 = alloca i32
  %.2362 = alloca i32
  %.2359 = alloca i32
  %.2304 = alloca i32
  %.2301 = alloca i32
  %.2298 = alloca i32
  %.2243 = alloca i32
  %.2240 = alloca i32
  %.2238 = alloca i32
  %.1923 = alloca i32
  %.1920 = alloca i32
  %.1917 = alloca i32
  %.1744 = alloca i32
  %.1741 = alloca i32
  %.1738 = alloca i32
  %.1683 = alloca i32
  %.1680 = alloca i32
  %.1677 = alloca i32
  %.1437 = alloca i32
  %.1434 = alloca i32
  %.1431 = alloca i32
  %.1258 = alloca i32
  %.1255 = alloca i32
  %.1252 = alloca i32
  %.1197 = alloca i32
  %.1194 = alloca i32
  %.1191 = alloca i32
  %.1136 = alloca i32
  %.1134 = alloca i32
  %.1132 = alloca i32
  %.822 = alloca i32
  %.819 = alloca i32
  %.816 = alloca i32
  %.643 = alloca i32
  %.640 = alloca i32
  %.637 = alloca i32
  %.582 = alloca i32
  %.579 = alloca i32
  %.576 = alloca i32
  %.334 = alloca i32
  %.331 = alloca i32
  %.328 = alloca i32
  %.151 = alloca i32
  %.148 = alloca i32
  %.145 = alloca i32
  %.90 = alloca i32
  %.87 = alloca i32
  %.84 = alloca i32
  %.29 = alloca i32
  %.26 = alloca i32
  %.24 = alloca i32
  %.23 = alloca i32
  %.22 = alloca i32
  %.21 = alloca i32
  %.20 = alloca i32
  %.19 = alloca i32
  store i32 2, i32* %.24
  store i32 0, i32* %.26
  store i32 1, i32* %.29
  br label %.31wc 
.31wc:
  %.35 = load i32, i32* %.26
  %.36 = icmp sgt i32 %.35, 0
  br i1 %.36, label %.32wloop., label %.33wn
.32wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.40 = load i32, i32* %.26
  store i32 %.40, i32* %.21
  store i32 1, i32* %.22
  br label %.43wc 
.33wn:
  %.1124 = load i32, i32* %.29
  store i32 %.1124, i32* %.19
  %.1126 = load i32, i32* %.19
  call void @putint(i32 %.1126)
  call void @putch(i32 10)
  store i32 2, i32* %.1132
  store i32 1, i32* %.1134
  store i32 1, i32* %.1136
  br label %.1138wc 
.43wc:
  %.47 = load i32, i32* %.20
  %.48 = icmp slt i32 %.47, 16
  br i1 %.48, label %.44wloop., label %.45wn
.44wloop.:
  %.52 = load i32, i32* %.21
  %.53 = srem i32 %.52, 2
  %.54 = icmp ne i32 %.53, 0
  br i1 %.54, label %.55, label %.51
.45wn:
  %.81 = load i32, i32* %.19
  %.82 = icmp ne i32 %.81, 0
  br i1 %.82, label %.79, label %.80
.50:
  %.61 = load i32, i32* %.19
  %.62 = load i32, i32* %.20
  %.63 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.62
  %.64 = load i32, i32* %.63
  %.65 = mul i32 1, %.64
  %.66 = add i32 %.61, %.65
  store i32 %.66, i32* %.19
  br label %.51 
.51:
  %.69 = load i32, i32* %.21
  %.70 = sdiv i32 %.69, 2
  store i32 %.70, i32* %.21
  %.72 = load i32, i32* %.22
  %.73 = sdiv i32 %.72, 2
  store i32 %.73, i32* %.22
  %.75 = load i32, i32* %.20
  %.76 = add i32 %.75, 1
  store i32 %.76, i32* %.20
  br label %.43wc 
.55:
  %.57 = load i32, i32* %.22
  %.58 = srem i32 %.57, 2
  %.59 = icmp ne i32 %.58, 0
  br i1 %.59, label %.50, label %.51
.79:
  %.85 = load i32, i32* %.29
  store i32 %.85, i32* %.84
  %.88 = load i32, i32* %.24
  store i32 %.88, i32* %.87
  store i32 0, i32* %.90
  br label %.92wc 
.80:
  %.577 = load i32, i32* %.24
  store i32 %.577, i32* %.576
  %.580 = load i32, i32* %.24
  store i32 %.580, i32* %.579
  store i32 0, i32* %.582
  br label %.584wc 
.92wc:
  %.96 = load i32, i32* %.87
  %.97 = icmp ne i32 %.96, 0
  br i1 %.97, label %.93wloop., label %.94wn
.93wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.101 = load i32, i32* %.87
  store i32 %.101, i32* %.21
  store i32 1, i32* %.22
  br label %.104wc 
.94wn:
  %.571 = load i32, i32* %.90
  store i32 %.571, i32* %.19
  %.573 = load i32, i32* %.19
  store i32 %.573, i32* %.29
  br label %.80 
.104wc:
  %.108 = load i32, i32* %.20
  %.109 = icmp slt i32 %.108, 16
  br i1 %.109, label %.105wloop., label %.106wn
.105wloop.:
  %.113 = load i32, i32* %.21
  %.114 = srem i32 %.113, 2
  %.115 = icmp ne i32 %.114, 0
  br i1 %.115, label %.116, label %.112
.106wn:
  %.142 = load i32, i32* %.19
  %.143 = icmp ne i32 %.142, 0
  br i1 %.143, label %.140, label %.141
.111:
  %.122 = load i32, i32* %.19
  %.123 = load i32, i32* %.20
  %.124 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.123
  %.125 = load i32, i32* %.124
  %.126 = mul i32 1, %.125
  %.127 = add i32 %.122, %.126
  store i32 %.127, i32* %.19
  br label %.112 
.112:
  %.130 = load i32, i32* %.21
  %.131 = sdiv i32 %.130, 2
  store i32 %.131, i32* %.21
  %.133 = load i32, i32* %.22
  %.134 = sdiv i32 %.133, 2
  store i32 %.134, i32* %.22
  %.136 = load i32, i32* %.20
  %.137 = add i32 %.136, 1
  store i32 %.137, i32* %.20
  br label %.104wc 
.116:
  %.118 = load i32, i32* %.22
  %.119 = srem i32 %.118, 2
  %.120 = icmp ne i32 %.119, 0
  br i1 %.120, label %.111, label %.112
.140:
  %.146 = load i32, i32* %.90
  store i32 %.146, i32* %.145
  %.149 = load i32, i32* %.84
  store i32 %.149, i32* %.148
  br label %.152wc 
.141:
  %.329 = load i32, i32* %.84
  store i32 %.329, i32* %.328
  %.332 = load i32, i32* %.84
  store i32 %.332, i32* %.331
  br label %.335wc 
.152wc:
  %.156 = load i32, i32* %.148
  %.157 = icmp ne i32 %.156, 0
  br i1 %.157, label %.153wloop., label %.154wn
.153wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.161 = load i32, i32* %.145
  store i32 %.161, i32* %.21
  %.163 = load i32, i32* %.148
  store i32 %.163, i32* %.22
  br label %.165wc 
.154wn:
  %.323 = load i32, i32* %.145
  store i32 %.323, i32* %.19
  %.325 = load i32, i32* %.19
  store i32 %.325, i32* %.90
  br label %.141 
.165wc:
  %.169 = load i32, i32* %.20
  %.170 = icmp slt i32 %.169, 16
  br i1 %.170, label %.166wloop., label %.167wn
.166wloop.:
  %.174 = load i32, i32* %.21
  %.175 = srem i32 %.174, 2
  %.176 = icmp ne i32 %.175, 0
  br i1 %.176, label %.172, label %.173
.167wn:
  %.219 = load i32, i32* %.19
  store i32 %.219, i32* %.151
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.223 = load i32, i32* %.145
  store i32 %.223, i32* %.21
  %.225 = load i32, i32* %.148
  store i32 %.225, i32* %.22
  br label %.227wc 
.172:
  %.180 = load i32, i32* %.22
  %.181 = srem i32 %.180, 2
  %.182 = icmp eq i32 %.181, 0
  br i1 %.182, label %.178, label %.179
.173:
  %.196 = load i32, i32* %.22
  %.197 = srem i32 %.196, 2
  %.198 = icmp ne i32 %.197, 0
  br i1 %.198, label %.194, label %.195
.178:
  %.184 = load i32, i32* %.19
  %.185 = load i32, i32* %.20
  %.186 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.185
  %.187 = load i32, i32* %.186
  %.188 = mul i32 1, %.187
  %.189 = add i32 %.184, %.188
  store i32 %.189, i32* %.19
  br label %.179 
.179:
  br label %.192 
.192:
  %.209 = load i32, i32* %.21
  %.210 = sdiv i32 %.209, 2
  store i32 %.210, i32* %.21
  %.212 = load i32, i32* %.22
  %.213 = sdiv i32 %.212, 2
  store i32 %.213, i32* %.22
  %.215 = load i32, i32* %.20
  %.216 = add i32 %.215, 1
  store i32 %.216, i32* %.20
  br label %.165wc 
.194:
  %.200 = load i32, i32* %.19
  %.201 = load i32, i32* %.20
  %.202 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.201
  %.203 = load i32, i32* %.202
  %.204 = mul i32 1, %.203
  %.205 = add i32 %.200, %.204
  store i32 %.205, i32* %.19
  br label %.195 
.195:
  br label %.192 
.227wc:
  %.231 = load i32, i32* %.20
  %.232 = icmp slt i32 %.231, 16
  br i1 %.232, label %.228wloop., label %.229wn
.228wloop.:
  %.236 = load i32, i32* %.21
  %.237 = srem i32 %.236, 2
  %.238 = icmp ne i32 %.237, 0
  br i1 %.238, label %.239, label %.235
.229wn:
  %.263 = load i32, i32* %.19
  store i32 %.263, i32* %.148
  br label %.266 
.234:
  %.245 = load i32, i32* %.19
  %.246 = load i32, i32* %.20
  %.247 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.246
  %.248 = load i32, i32* %.247
  %.249 = mul i32 1, %.248
  %.250 = add i32 %.245, %.249
  store i32 %.250, i32* %.19
  br label %.235 
.235:
  %.253 = load i32, i32* %.21
  %.254 = sdiv i32 %.253, 2
  store i32 %.254, i32* %.21
  %.256 = load i32, i32* %.22
  %.257 = sdiv i32 %.256, 2
  store i32 %.257, i32* %.22
  %.259 = load i32, i32* %.20
  %.260 = add i32 %.259, 1
  store i32 %.260, i32* %.20
  br label %.227wc 
.239:
  %.241 = load i32, i32* %.22
  %.242 = srem i32 %.241, 2
  %.243 = icmp ne i32 %.242, 0
  br i1 %.243, label %.234, label %.235
.266:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.273 = load i32, i32* %.148
  %.274 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.275 = load i32, i32* %.274
  %.276 = mul i32 %.273, %.275
  store i32 %.276, i32* %.21
  store i32 65535, i32* %.22
  br label %.280wc 
.280wc:
  %.284 = load i32, i32* %.20
  %.285 = icmp slt i32 %.284, 16
  br i1 %.285, label %.281wloop., label %.282wn
.281wloop.:
  %.289 = load i32, i32* %.21
  %.290 = srem i32 %.289, 2
  %.291 = icmp ne i32 %.290, 0
  br i1 %.291, label %.292, label %.288
.282wn:
  br label %.316 
.287:
  %.298 = load i32, i32* %.19
  %.299 = load i32, i32* %.20
  %.300 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.299
  %.301 = load i32, i32* %.300
  %.302 = mul i32 1, %.301
  %.303 = add i32 %.298, %.302
  store i32 %.303, i32* %.19
  br label %.288 
.288:
  %.306 = load i32, i32* %.21
  %.307 = sdiv i32 %.306, 2
  store i32 %.307, i32* %.21
  %.309 = load i32, i32* %.22
  %.310 = sdiv i32 %.309, 2
  store i32 %.310, i32* %.22
  %.312 = load i32, i32* %.20
  %.313 = add i32 %.312, 1
  store i32 %.313, i32* %.20
  br label %.280wc 
.292:
  %.294 = load i32, i32* %.22
  %.295 = srem i32 %.294, 2
  %.296 = icmp ne i32 %.295, 0
  br i1 %.296, label %.287, label %.288
.316:
  %.318 = load i32, i32* %.19
  store i32 %.318, i32* %.148
  %.320 = load i32, i32* %.151
  store i32 %.320, i32* %.145
  br label %.152wc 
.335wc:
  %.339 = load i32, i32* %.331
  %.340 = icmp ne i32 %.339, 0
  br i1 %.340, label %.336wloop., label %.337wn
.336wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.344 = load i32, i32* %.328
  store i32 %.344, i32* %.21
  %.346 = load i32, i32* %.331
  store i32 %.346, i32* %.22
  br label %.348wc 
.337wn:
  %.502 = load i32, i32* %.328
  store i32 %.502, i32* %.19
  %.504 = load i32, i32* %.19
  store i32 %.504, i32* %.84
  %.506 = load i32, i32* %.87
  store i32 %.506, i32* %.21
  store i32 1, i32* %.22
  %.511 = load i32, i32* %.22
  %.512 = icmp sge i32 %.511, 15
  br i1 %.512, label %.509, label %.510
.348wc:
  %.352 = load i32, i32* %.20
  %.353 = icmp slt i32 %.352, 16
  br i1 %.353, label %.349wloop., label %.350wn
.349wloop.:
  %.357 = load i32, i32* %.21
  %.358 = srem i32 %.357, 2
  %.359 = icmp ne i32 %.358, 0
  br i1 %.359, label %.355, label %.356
.350wn:
  %.402 = load i32, i32* %.19
  store i32 %.402, i32* %.334
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.406 = load i32, i32* %.328
  store i32 %.406, i32* %.21
  %.408 = load i32, i32* %.331
  store i32 %.408, i32* %.22
  br label %.410wc 
.355:
  %.363 = load i32, i32* %.22
  %.364 = srem i32 %.363, 2
  %.365 = icmp eq i32 %.364, 0
  br i1 %.365, label %.361, label %.362
.356:
  %.379 = load i32, i32* %.22
  %.380 = srem i32 %.379, 2
  %.381 = icmp ne i32 %.380, 0
  br i1 %.381, label %.377, label %.378
.361:
  %.367 = load i32, i32* %.19
  %.368 = load i32, i32* %.20
  %.369 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.368
  %.370 = load i32, i32* %.369
  %.371 = mul i32 1, %.370
  %.372 = add i32 %.367, %.371
  store i32 %.372, i32* %.19
  br label %.362 
.362:
  br label %.375 
.375:
  %.392 = load i32, i32* %.21
  %.393 = sdiv i32 %.392, 2
  store i32 %.393, i32* %.21
  %.395 = load i32, i32* %.22
  %.396 = sdiv i32 %.395, 2
  store i32 %.396, i32* %.22
  %.398 = load i32, i32* %.20
  %.399 = add i32 %.398, 1
  store i32 %.399, i32* %.20
  br label %.348wc 
.377:
  %.383 = load i32, i32* %.19
  %.384 = load i32, i32* %.20
  %.385 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.384
  %.386 = load i32, i32* %.385
  %.387 = mul i32 1, %.386
  %.388 = add i32 %.383, %.387
  store i32 %.388, i32* %.19
  br label %.378 
.378:
  br label %.375 
.410wc:
  %.414 = load i32, i32* %.20
  %.415 = icmp slt i32 %.414, 16
  br i1 %.415, label %.411wloop., label %.412wn
.411wloop.:
  %.419 = load i32, i32* %.21
  %.420 = srem i32 %.419, 2
  %.421 = icmp ne i32 %.420, 0
  br i1 %.421, label %.422, label %.418
.412wn:
  %.446 = load i32, i32* %.19
  store i32 %.446, i32* %.331
  br label %.449 
.417:
  %.428 = load i32, i32* %.19
  %.429 = load i32, i32* %.20
  %.430 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.429
  %.431 = load i32, i32* %.430
  %.432 = mul i32 1, %.431
  %.433 = add i32 %.428, %.432
  store i32 %.433, i32* %.19
  br label %.418 
.418:
  %.436 = load i32, i32* %.21
  %.437 = sdiv i32 %.436, 2
  store i32 %.437, i32* %.21
  %.439 = load i32, i32* %.22
  %.440 = sdiv i32 %.439, 2
  store i32 %.440, i32* %.22
  %.442 = load i32, i32* %.20
  %.443 = add i32 %.442, 1
  store i32 %.443, i32* %.20
  br label %.410wc 
.422:
  %.424 = load i32, i32* %.22
  %.425 = srem i32 %.424, 2
  %.426 = icmp ne i32 %.425, 0
  br i1 %.426, label %.417, label %.418
.449:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.453 = load i32, i32* %.331
  %.454 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.455 = load i32, i32* %.454
  %.456 = mul i32 %.453, %.455
  store i32 %.456, i32* %.21
  store i32 65535, i32* %.22
  br label %.459wc 
.459wc:
  %.463 = load i32, i32* %.20
  %.464 = icmp slt i32 %.463, 16
  br i1 %.464, label %.460wloop., label %.461wn
.460wloop.:
  %.468 = load i32, i32* %.21
  %.469 = srem i32 %.468, 2
  %.470 = icmp ne i32 %.469, 0
  br i1 %.470, label %.471, label %.467
.461wn:
  br label %.495 
.466:
  %.477 = load i32, i32* %.19
  %.478 = load i32, i32* %.20
  %.479 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.478
  %.480 = load i32, i32* %.479
  %.481 = mul i32 1, %.480
  %.482 = add i32 %.477, %.481
  store i32 %.482, i32* %.19
  br label %.467 
.467:
  %.485 = load i32, i32* %.21
  %.486 = sdiv i32 %.485, 2
  store i32 %.486, i32* %.21
  %.488 = load i32, i32* %.22
  %.489 = sdiv i32 %.488, 2
  store i32 %.489, i32* %.22
  %.491 = load i32, i32* %.20
  %.492 = add i32 %.491, 1
  store i32 %.492, i32* %.20
  br label %.459wc 
.471:
  %.473 = load i32, i32* %.22
  %.474 = srem i32 %.473, 2
  %.475 = icmp ne i32 %.474, 0
  br i1 %.475, label %.466, label %.467
.495:
  %.497 = load i32, i32* %.19
  store i32 %.497, i32* %.331
  %.499 = load i32, i32* %.334
  store i32 %.499, i32* %.328
  br label %.335wc 
.509:
  %.516 = load i32, i32* %.21
  %.517 = icmp slt i32 %.516, 0
  br i1 %.517, label %.514, label %.515
.510:
  %.528 = load i32, i32* %.22
  %.529 = icmp sgt i32 %.528, 0
  br i1 %.529, label %.526, label %.527
.514:
  store i32 65535, i32* %.19
  br label %.520 
.515:
  store i32 0, i32* %.19
  br label %.520 
.520:
  br label %.524 
.524:
  %.568 = load i32, i32* %.19
  store i32 %.568, i32* %.87
  br label %.92wc 
.526:
  %.533 = load i32, i32* %.21
  %.535 = icmp sgt i32 %.533, 32767
  br i1 %.535, label %.531, label %.532
.527:
  %.564 = load i32, i32* %.21
  store i32 %.564, i32* %.19
  br label %.562 
.531:
  %.537 = load i32, i32* %.21
  %.538 = load i32, i32* %.22
  %.539 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.538
  %.540 = load i32, i32* %.539
  %.541 = sdiv i32 %.537, %.540
  store i32 %.541, i32* %.21
  %.543 = load i32, i32* %.21
  %.545 = add i32 %.543, 65536
  %.546 = load i32, i32* %.22
  %.547 = sub i32 15, %.546
  %.548 = add i32 %.547, 1
  %.549 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.548
  %.550 = load i32, i32* %.549
  %.551 = sub i32 %.545, %.550
  store i32 %.551, i32* %.19
  br label %.553 
.532:
  %.555 = load i32, i32* %.21
  %.556 = load i32, i32* %.22
  %.557 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.556
  %.558 = load i32, i32* %.557
  %.559 = sdiv i32 %.555, %.558
  store i32 %.559, i32* %.19
  br label %.553 
.553:
  br label %.562 
.562:
  br label %.524 
.584wc:
  %.588 = load i32, i32* %.579
  %.589 = icmp ne i32 %.588, 0
  br i1 %.589, label %.585wloop., label %.586wn
.585wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.593 = load i32, i32* %.579
  store i32 %.593, i32* %.21
  store i32 1, i32* %.22
  br label %.596wc 
.586wn:
  %.1057 = load i32, i32* %.582
  store i32 %.1057, i32* %.19
  %.1059 = load i32, i32* %.19
  store i32 %.1059, i32* %.24
  %.1061 = load i32, i32* %.26
  store i32 %.1061, i32* %.21
  store i32 1, i32* %.22
  %.1066 = load i32, i32* %.22
  %.1067 = icmp sge i32 %.1066, 15
  br i1 %.1067, label %.1064, label %.1065
.596wc:
  %.600 = load i32, i32* %.20
  %.601 = icmp slt i32 %.600, 16
  br i1 %.601, label %.597wloop., label %.598wn
.597wloop.:
  %.605 = load i32, i32* %.21
  %.606 = srem i32 %.605, 2
  %.607 = icmp ne i32 %.606, 0
  br i1 %.607, label %.608, label %.604
.598wn:
  %.634 = load i32, i32* %.19
  %.635 = icmp ne i32 %.634, 0
  br i1 %.635, label %.632, label %.633
.603:
  %.614 = load i32, i32* %.19
  %.615 = load i32, i32* %.20
  %.616 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.615
  %.617 = load i32, i32* %.616
  %.618 = mul i32 1, %.617
  %.619 = add i32 %.614, %.618
  store i32 %.619, i32* %.19
  br label %.604 
.604:
  %.622 = load i32, i32* %.21
  %.623 = sdiv i32 %.622, 2
  store i32 %.623, i32* %.21
  %.625 = load i32, i32* %.22
  %.626 = sdiv i32 %.625, 2
  store i32 %.626, i32* %.22
  %.628 = load i32, i32* %.20
  %.629 = add i32 %.628, 1
  store i32 %.629, i32* %.20
  br label %.596wc 
.608:
  %.610 = load i32, i32* %.22
  %.611 = srem i32 %.610, 2
  %.612 = icmp ne i32 %.611, 0
  br i1 %.612, label %.603, label %.604
.632:
  %.638 = load i32, i32* %.582
  store i32 %.638, i32* %.637
  %.641 = load i32, i32* %.576
  store i32 %.641, i32* %.640
  br label %.644wc 
.633:
  %.817 = load i32, i32* %.576
  store i32 %.817, i32* %.816
  %.820 = load i32, i32* %.576
  store i32 %.820, i32* %.819
  br label %.823wc 
.644wc:
  %.648 = load i32, i32* %.640
  %.649 = icmp ne i32 %.648, 0
  br i1 %.649, label %.645wloop., label %.646wn
.645wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.653 = load i32, i32* %.637
  store i32 %.653, i32* %.21
  %.655 = load i32, i32* %.640
  store i32 %.655, i32* %.22
  br label %.657wc 
.646wn:
  %.811 = load i32, i32* %.637
  store i32 %.811, i32* %.19
  %.813 = load i32, i32* %.19
  store i32 %.813, i32* %.582
  br label %.633 
.657wc:
  %.661 = load i32, i32* %.20
  %.662 = icmp slt i32 %.661, 16
  br i1 %.662, label %.658wloop., label %.659wn
.658wloop.:
  %.666 = load i32, i32* %.21
  %.667 = srem i32 %.666, 2
  %.668 = icmp ne i32 %.667, 0
  br i1 %.668, label %.664, label %.665
.659wn:
  %.711 = load i32, i32* %.19
  store i32 %.711, i32* %.643
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.715 = load i32, i32* %.637
  store i32 %.715, i32* %.21
  %.717 = load i32, i32* %.640
  store i32 %.717, i32* %.22
  br label %.719wc 
.664:
  %.672 = load i32, i32* %.22
  %.673 = srem i32 %.672, 2
  %.674 = icmp eq i32 %.673, 0
  br i1 %.674, label %.670, label %.671
.665:
  %.688 = load i32, i32* %.22
  %.689 = srem i32 %.688, 2
  %.690 = icmp ne i32 %.689, 0
  br i1 %.690, label %.686, label %.687
.670:
  %.676 = load i32, i32* %.19
  %.677 = load i32, i32* %.20
  %.678 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.677
  %.679 = load i32, i32* %.678
  %.680 = mul i32 1, %.679
  %.681 = add i32 %.676, %.680
  store i32 %.681, i32* %.19
  br label %.671 
.671:
  br label %.684 
.684:
  %.701 = load i32, i32* %.21
  %.702 = sdiv i32 %.701, 2
  store i32 %.702, i32* %.21
  %.704 = load i32, i32* %.22
  %.705 = sdiv i32 %.704, 2
  store i32 %.705, i32* %.22
  %.707 = load i32, i32* %.20
  %.708 = add i32 %.707, 1
  store i32 %.708, i32* %.20
  br label %.657wc 
.686:
  %.692 = load i32, i32* %.19
  %.693 = load i32, i32* %.20
  %.694 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.693
  %.695 = load i32, i32* %.694
  %.696 = mul i32 1, %.695
  %.697 = add i32 %.692, %.696
  store i32 %.697, i32* %.19
  br label %.687 
.687:
  br label %.684 
.719wc:
  %.723 = load i32, i32* %.20
  %.724 = icmp slt i32 %.723, 16
  br i1 %.724, label %.720wloop., label %.721wn
.720wloop.:
  %.728 = load i32, i32* %.21
  %.729 = srem i32 %.728, 2
  %.730 = icmp ne i32 %.729, 0
  br i1 %.730, label %.731, label %.727
.721wn:
  %.755 = load i32, i32* %.19
  store i32 %.755, i32* %.640
  br label %.758 
.726:
  %.737 = load i32, i32* %.19
  %.738 = load i32, i32* %.20
  %.739 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.738
  %.740 = load i32, i32* %.739
  %.741 = mul i32 1, %.740
  %.742 = add i32 %.737, %.741
  store i32 %.742, i32* %.19
  br label %.727 
.727:
  %.745 = load i32, i32* %.21
  %.746 = sdiv i32 %.745, 2
  store i32 %.746, i32* %.21
  %.748 = load i32, i32* %.22
  %.749 = sdiv i32 %.748, 2
  store i32 %.749, i32* %.22
  %.751 = load i32, i32* %.20
  %.752 = add i32 %.751, 1
  store i32 %.752, i32* %.20
  br label %.719wc 
.731:
  %.733 = load i32, i32* %.22
  %.734 = srem i32 %.733, 2
  %.735 = icmp ne i32 %.734, 0
  br i1 %.735, label %.726, label %.727
.758:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.762 = load i32, i32* %.640
  %.763 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.764 = load i32, i32* %.763
  %.765 = mul i32 %.762, %.764
  store i32 %.765, i32* %.21
  store i32 65535, i32* %.22
  br label %.768wc 
.768wc:
  %.772 = load i32, i32* %.20
  %.773 = icmp slt i32 %.772, 16
  br i1 %.773, label %.769wloop., label %.770wn
.769wloop.:
  %.777 = load i32, i32* %.21
  %.778 = srem i32 %.777, 2
  %.779 = icmp ne i32 %.778, 0
  br i1 %.779, label %.780, label %.776
.770wn:
  br label %.804 
.775:
  %.786 = load i32, i32* %.19
  %.787 = load i32, i32* %.20
  %.788 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.787
  %.789 = load i32, i32* %.788
  %.790 = mul i32 1, %.789
  %.791 = add i32 %.786, %.790
  store i32 %.791, i32* %.19
  br label %.776 
.776:
  %.794 = load i32, i32* %.21
  %.795 = sdiv i32 %.794, 2
  store i32 %.795, i32* %.21
  %.797 = load i32, i32* %.22
  %.798 = sdiv i32 %.797, 2
  store i32 %.798, i32* %.22
  %.800 = load i32, i32* %.20
  %.801 = add i32 %.800, 1
  store i32 %.801, i32* %.20
  br label %.768wc 
.780:
  %.782 = load i32, i32* %.22
  %.783 = srem i32 %.782, 2
  %.784 = icmp ne i32 %.783, 0
  br i1 %.784, label %.775, label %.776
.804:
  %.806 = load i32, i32* %.19
  store i32 %.806, i32* %.640
  %.808 = load i32, i32* %.643
  store i32 %.808, i32* %.637
  br label %.644wc 
.823wc:
  %.827 = load i32, i32* %.819
  %.828 = icmp ne i32 %.827, 0
  br i1 %.828, label %.824wloop., label %.825wn
.824wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.832 = load i32, i32* %.816
  store i32 %.832, i32* %.21
  %.834 = load i32, i32* %.819
  store i32 %.834, i32* %.22
  br label %.836wc 
.825wn:
  %.990 = load i32, i32* %.816
  store i32 %.990, i32* %.19
  %.992 = load i32, i32* %.19
  store i32 %.992, i32* %.576
  %.994 = load i32, i32* %.579
  store i32 %.994, i32* %.21
  store i32 1, i32* %.22
  %.999 = load i32, i32* %.22
  %.1000 = icmp sge i32 %.999, 15
  br i1 %.1000, label %.997, label %.998
.836wc:
  %.840 = load i32, i32* %.20
  %.841 = icmp slt i32 %.840, 16
  br i1 %.841, label %.837wloop., label %.838wn
.837wloop.:
  %.845 = load i32, i32* %.21
  %.846 = srem i32 %.845, 2
  %.847 = icmp ne i32 %.846, 0
  br i1 %.847, label %.843, label %.844
.838wn:
  %.890 = load i32, i32* %.19
  store i32 %.890, i32* %.822
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.894 = load i32, i32* %.816
  store i32 %.894, i32* %.21
  %.896 = load i32, i32* %.819
  store i32 %.896, i32* %.22
  br label %.898wc 
.843:
  %.851 = load i32, i32* %.22
  %.852 = srem i32 %.851, 2
  %.853 = icmp eq i32 %.852, 0
  br i1 %.853, label %.849, label %.850
.844:
  %.867 = load i32, i32* %.22
  %.868 = srem i32 %.867, 2
  %.869 = icmp ne i32 %.868, 0
  br i1 %.869, label %.865, label %.866
.849:
  %.855 = load i32, i32* %.19
  %.856 = load i32, i32* %.20
  %.857 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.856
  %.858 = load i32, i32* %.857
  %.859 = mul i32 1, %.858
  %.860 = add i32 %.855, %.859
  store i32 %.860, i32* %.19
  br label %.850 
.850:
  br label %.863 
.863:
  %.880 = load i32, i32* %.21
  %.881 = sdiv i32 %.880, 2
  store i32 %.881, i32* %.21
  %.883 = load i32, i32* %.22
  %.884 = sdiv i32 %.883, 2
  store i32 %.884, i32* %.22
  %.886 = load i32, i32* %.20
  %.887 = add i32 %.886, 1
  store i32 %.887, i32* %.20
  br label %.836wc 
.865:
  %.871 = load i32, i32* %.19
  %.872 = load i32, i32* %.20
  %.873 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.872
  %.874 = load i32, i32* %.873
  %.875 = mul i32 1, %.874
  %.876 = add i32 %.871, %.875
  store i32 %.876, i32* %.19
  br label %.866 
.866:
  br label %.863 
.898wc:
  %.902 = load i32, i32* %.20
  %.903 = icmp slt i32 %.902, 16
  br i1 %.903, label %.899wloop., label %.900wn
.899wloop.:
  %.907 = load i32, i32* %.21
  %.908 = srem i32 %.907, 2
  %.909 = icmp ne i32 %.908, 0
  br i1 %.909, label %.910, label %.906
.900wn:
  %.934 = load i32, i32* %.19
  store i32 %.934, i32* %.819
  br label %.937 
.905:
  %.916 = load i32, i32* %.19
  %.917 = load i32, i32* %.20
  %.918 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.917
  %.919 = load i32, i32* %.918
  %.920 = mul i32 1, %.919
  %.921 = add i32 %.916, %.920
  store i32 %.921, i32* %.19
  br label %.906 
.906:
  %.924 = load i32, i32* %.21
  %.925 = sdiv i32 %.924, 2
  store i32 %.925, i32* %.21
  %.927 = load i32, i32* %.22
  %.928 = sdiv i32 %.927, 2
  store i32 %.928, i32* %.22
  %.930 = load i32, i32* %.20
  %.931 = add i32 %.930, 1
  store i32 %.931, i32* %.20
  br label %.898wc 
.910:
  %.912 = load i32, i32* %.22
  %.913 = srem i32 %.912, 2
  %.914 = icmp ne i32 %.913, 0
  br i1 %.914, label %.905, label %.906
.937:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.941 = load i32, i32* %.819
  %.942 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.943 = load i32, i32* %.942
  %.944 = mul i32 %.941, %.943
  store i32 %.944, i32* %.21
  store i32 65535, i32* %.22
  br label %.947wc 
.947wc:
  %.951 = load i32, i32* %.20
  %.952 = icmp slt i32 %.951, 16
  br i1 %.952, label %.948wloop., label %.949wn
.948wloop.:
  %.956 = load i32, i32* %.21
  %.957 = srem i32 %.956, 2
  %.958 = icmp ne i32 %.957, 0
  br i1 %.958, label %.959, label %.955
.949wn:
  br label %.983 
.954:
  %.965 = load i32, i32* %.19
  %.966 = load i32, i32* %.20
  %.967 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.966
  %.968 = load i32, i32* %.967
  %.969 = mul i32 1, %.968
  %.970 = add i32 %.965, %.969
  store i32 %.970, i32* %.19
  br label %.955 
.955:
  %.973 = load i32, i32* %.21
  %.974 = sdiv i32 %.973, 2
  store i32 %.974, i32* %.21
  %.976 = load i32, i32* %.22
  %.977 = sdiv i32 %.976, 2
  store i32 %.977, i32* %.22
  %.979 = load i32, i32* %.20
  %.980 = add i32 %.979, 1
  store i32 %.980, i32* %.20
  br label %.947wc 
.959:
  %.961 = load i32, i32* %.22
  %.962 = srem i32 %.961, 2
  %.963 = icmp ne i32 %.962, 0
  br i1 %.963, label %.954, label %.955
.983:
  %.985 = load i32, i32* %.19
  store i32 %.985, i32* %.819
  %.987 = load i32, i32* %.822
  store i32 %.987, i32* %.816
  br label %.823wc 
.997:
  %.1004 = load i32, i32* %.21
  %.1005 = icmp slt i32 %.1004, 0
  br i1 %.1005, label %.1002, label %.1003
.998:
  %.1016 = load i32, i32* %.22
  %.1017 = icmp sgt i32 %.1016, 0
  br i1 %.1017, label %.1014, label %.1015
.1002:
  store i32 65535, i32* %.19
  br label %.1008 
.1003:
  store i32 0, i32* %.19
  br label %.1008 
.1008:
  br label %.1012 
.1012:
  %.1054 = load i32, i32* %.19
  store i32 %.1054, i32* %.579
  br label %.584wc 
.1014:
  %.1021 = load i32, i32* %.21
  %.1022 = icmp sgt i32 %.1021, 32767
  br i1 %.1022, label %.1019, label %.1020
.1015:
  %.1050 = load i32, i32* %.21
  store i32 %.1050, i32* %.19
  br label %.1048 
.1019:
  %.1024 = load i32, i32* %.21
  %.1025 = load i32, i32* %.22
  %.1026 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1025
  %.1027 = load i32, i32* %.1026
  %.1028 = sdiv i32 %.1024, %.1027
  store i32 %.1028, i32* %.21
  %.1030 = load i32, i32* %.21
  %.1031 = add i32 %.1030, 65536
  %.1032 = load i32, i32* %.22
  %.1033 = sub i32 15, %.1032
  %.1034 = add i32 %.1033, 1
  %.1035 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1034
  %.1036 = load i32, i32* %.1035
  %.1037 = sub i32 %.1031, %.1036
  store i32 %.1037, i32* %.19
  br label %.1039 
.1020:
  %.1041 = load i32, i32* %.21
  %.1042 = load i32, i32* %.22
  %.1043 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1042
  %.1044 = load i32, i32* %.1043
  %.1045 = sdiv i32 %.1041, %.1044
  store i32 %.1045, i32* %.19
  br label %.1039 
.1039:
  br label %.1048 
.1048:
  br label %.1012 
.1064:
  %.1071 = load i32, i32* %.21
  %.1072 = icmp slt i32 %.1071, 0
  br i1 %.1072, label %.1069, label %.1070
.1065:
  %.1083 = load i32, i32* %.22
  %.1084 = icmp sgt i32 %.1083, 0
  br i1 %.1084, label %.1081, label %.1082
.1069:
  store i32 65535, i32* %.19
  br label %.1075 
.1070:
  store i32 0, i32* %.19
  br label %.1075 
.1075:
  br label %.1079 
.1079:
  %.1121 = load i32, i32* %.19
  store i32 %.1121, i32* %.26
  br label %.31wc 
.1081:
  %.1088 = load i32, i32* %.21
  %.1089 = icmp sgt i32 %.1088, 32767
  br i1 %.1089, label %.1086, label %.1087
.1082:
  %.1117 = load i32, i32* %.21
  store i32 %.1117, i32* %.19
  br label %.1115 
.1086:
  %.1091 = load i32, i32* %.21
  %.1092 = load i32, i32* %.22
  %.1093 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1092
  %.1094 = load i32, i32* %.1093
  %.1095 = sdiv i32 %.1091, %.1094
  store i32 %.1095, i32* %.21
  %.1097 = load i32, i32* %.21
  %.1098 = add i32 %.1097, 65536
  %.1099 = load i32, i32* %.22
  %.1100 = sub i32 15, %.1099
  %.1101 = add i32 %.1100, 1
  %.1102 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1101
  %.1103 = load i32, i32* %.1102
  %.1104 = sub i32 %.1098, %.1103
  store i32 %.1104, i32* %.19
  br label %.1106 
.1087:
  %.1108 = load i32, i32* %.21
  %.1109 = load i32, i32* %.22
  %.1110 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1109
  %.1111 = load i32, i32* %.1110
  %.1112 = sdiv i32 %.1108, %.1111
  store i32 %.1112, i32* %.19
  br label %.1106 
.1106:
  br label %.1115 
.1115:
  br label %.1079 
.1138wc:
  %.1142 = load i32, i32* %.1134
  %.1143 = icmp sgt i32 %.1142, 0
  br i1 %.1143, label %.1139wloop., label %.1140wn
.1139wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1147 = load i32, i32* %.1134
  store i32 %.1147, i32* %.21
  store i32 1, i32* %.22
  br label %.1150wc 
.1140wn:
  %.2225 = load i32, i32* %.1136
  store i32 %.2225, i32* %.19
  %.2227 = load i32, i32* %.19
  call void @putint(i32 %.2227)
  call void @putch(i32 10)
  store i32 2, i32* %.23
  br label %.2231wc 
.1150wc:
  %.1154 = load i32, i32* %.20
  %.1155 = icmp slt i32 %.1154, 16
  br i1 %.1155, label %.1151wloop., label %.1152wn
.1151wloop.:
  %.1159 = load i32, i32* %.21
  %.1160 = srem i32 %.1159, 2
  %.1161 = icmp ne i32 %.1160, 0
  br i1 %.1161, label %.1162, label %.1158
.1152wn:
  %.1188 = load i32, i32* %.19
  %.1189 = icmp ne i32 %.1188, 0
  br i1 %.1189, label %.1186, label %.1187
.1157:
  %.1168 = load i32, i32* %.19
  %.1169 = load i32, i32* %.20
  %.1170 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1169
  %.1171 = load i32, i32* %.1170
  %.1172 = mul i32 1, %.1171
  %.1173 = add i32 %.1168, %.1172
  store i32 %.1173, i32* %.19
  br label %.1158 
.1158:
  %.1176 = load i32, i32* %.21
  %.1177 = sdiv i32 %.1176, 2
  store i32 %.1177, i32* %.21
  %.1179 = load i32, i32* %.22
  %.1180 = sdiv i32 %.1179, 2
  store i32 %.1180, i32* %.22
  %.1182 = load i32, i32* %.20
  %.1183 = add i32 %.1182, 1
  store i32 %.1183, i32* %.20
  br label %.1150wc 
.1162:
  %.1164 = load i32, i32* %.22
  %.1165 = srem i32 %.1164, 2
  %.1166 = icmp ne i32 %.1165, 0
  br i1 %.1166, label %.1157, label %.1158
.1186:
  %.1192 = load i32, i32* %.1136
  store i32 %.1192, i32* %.1191
  %.1195 = load i32, i32* %.1132
  store i32 %.1195, i32* %.1194
  store i32 0, i32* %.1197
  br label %.1199wc 
.1187:
  %.1678 = load i32, i32* %.1132
  store i32 %.1678, i32* %.1677
  %.1681 = load i32, i32* %.1132
  store i32 %.1681, i32* %.1680
  store i32 0, i32* %.1683
  br label %.1685wc 
.1199wc:
  %.1203 = load i32, i32* %.1194
  %.1204 = icmp ne i32 %.1203, 0
  br i1 %.1204, label %.1200wloop., label %.1201wn
.1200wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1208 = load i32, i32* %.1194
  store i32 %.1208, i32* %.21
  store i32 1, i32* %.22
  br label %.1211wc 
.1201wn:
  %.1672 = load i32, i32* %.1197
  store i32 %.1672, i32* %.19
  %.1674 = load i32, i32* %.19
  store i32 %.1674, i32* %.1136
  br label %.1187 
.1211wc:
  %.1215 = load i32, i32* %.20
  %.1216 = icmp slt i32 %.1215, 16
  br i1 %.1216, label %.1212wloop., label %.1213wn
.1212wloop.:
  %.1220 = load i32, i32* %.21
  %.1221 = srem i32 %.1220, 2
  %.1222 = icmp ne i32 %.1221, 0
  br i1 %.1222, label %.1223, label %.1219
.1213wn:
  %.1249 = load i32, i32* %.19
  %.1250 = icmp ne i32 %.1249, 0
  br i1 %.1250, label %.1247, label %.1248
.1218:
  %.1229 = load i32, i32* %.19
  %.1230 = load i32, i32* %.20
  %.1231 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1230
  %.1232 = load i32, i32* %.1231
  %.1233 = mul i32 1, %.1232
  %.1234 = add i32 %.1229, %.1233
  store i32 %.1234, i32* %.19
  br label %.1219 
.1219:
  %.1237 = load i32, i32* %.21
  %.1238 = sdiv i32 %.1237, 2
  store i32 %.1238, i32* %.21
  %.1240 = load i32, i32* %.22
  %.1241 = sdiv i32 %.1240, 2
  store i32 %.1241, i32* %.22
  %.1243 = load i32, i32* %.20
  %.1244 = add i32 %.1243, 1
  store i32 %.1244, i32* %.20
  br label %.1211wc 
.1223:
  %.1225 = load i32, i32* %.22
  %.1226 = srem i32 %.1225, 2
  %.1227 = icmp ne i32 %.1226, 0
  br i1 %.1227, label %.1218, label %.1219
.1247:
  %.1253 = load i32, i32* %.1197
  store i32 %.1253, i32* %.1252
  %.1256 = load i32, i32* %.1191
  store i32 %.1256, i32* %.1255
  br label %.1259wc 
.1248:
  %.1432 = load i32, i32* %.1191
  store i32 %.1432, i32* %.1431
  %.1435 = load i32, i32* %.1191
  store i32 %.1435, i32* %.1434
  br label %.1438wc 
.1259wc:
  %.1263 = load i32, i32* %.1255
  %.1264 = icmp ne i32 %.1263, 0
  br i1 %.1264, label %.1260wloop., label %.1261wn
.1260wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1268 = load i32, i32* %.1252
  store i32 %.1268, i32* %.21
  %.1270 = load i32, i32* %.1255
  store i32 %.1270, i32* %.22
  br label %.1272wc 
.1261wn:
  %.1426 = load i32, i32* %.1252
  store i32 %.1426, i32* %.19
  %.1428 = load i32, i32* %.19
  store i32 %.1428, i32* %.1197
  br label %.1248 
.1272wc:
  %.1276 = load i32, i32* %.20
  %.1277 = icmp slt i32 %.1276, 16
  br i1 %.1277, label %.1273wloop., label %.1274wn
.1273wloop.:
  %.1281 = load i32, i32* %.21
  %.1282 = srem i32 %.1281, 2
  %.1283 = icmp ne i32 %.1282, 0
  br i1 %.1283, label %.1279, label %.1280
.1274wn:
  %.1326 = load i32, i32* %.19
  store i32 %.1326, i32* %.1258
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1330 = load i32, i32* %.1252
  store i32 %.1330, i32* %.21
  %.1332 = load i32, i32* %.1255
  store i32 %.1332, i32* %.22
  br label %.1334wc 
.1279:
  %.1287 = load i32, i32* %.22
  %.1288 = srem i32 %.1287, 2
  %.1289 = icmp eq i32 %.1288, 0
  br i1 %.1289, label %.1285, label %.1286
.1280:
  %.1303 = load i32, i32* %.22
  %.1304 = srem i32 %.1303, 2
  %.1305 = icmp ne i32 %.1304, 0
  br i1 %.1305, label %.1301, label %.1302
.1285:
  %.1291 = load i32, i32* %.19
  %.1292 = load i32, i32* %.20
  %.1293 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1292
  %.1294 = load i32, i32* %.1293
  %.1295 = mul i32 1, %.1294
  %.1296 = add i32 %.1291, %.1295
  store i32 %.1296, i32* %.19
  br label %.1286 
.1286:
  br label %.1299 
.1299:
  %.1316 = load i32, i32* %.21
  %.1317 = sdiv i32 %.1316, 2
  store i32 %.1317, i32* %.21
  %.1319 = load i32, i32* %.22
  %.1320 = sdiv i32 %.1319, 2
  store i32 %.1320, i32* %.22
  %.1322 = load i32, i32* %.20
  %.1323 = add i32 %.1322, 1
  store i32 %.1323, i32* %.20
  br label %.1272wc 
.1301:
  %.1307 = load i32, i32* %.19
  %.1308 = load i32, i32* %.20
  %.1309 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1308
  %.1310 = load i32, i32* %.1309
  %.1311 = mul i32 1, %.1310
  %.1312 = add i32 %.1307, %.1311
  store i32 %.1312, i32* %.19
  br label %.1302 
.1302:
  br label %.1299 
.1334wc:
  %.1338 = load i32, i32* %.20
  %.1339 = icmp slt i32 %.1338, 16
  br i1 %.1339, label %.1335wloop., label %.1336wn
.1335wloop.:
  %.1343 = load i32, i32* %.21
  %.1344 = srem i32 %.1343, 2
  %.1345 = icmp ne i32 %.1344, 0
  br i1 %.1345, label %.1346, label %.1342
.1336wn:
  %.1370 = load i32, i32* %.19
  store i32 %.1370, i32* %.1255
  br label %.1373 
.1341:
  %.1352 = load i32, i32* %.19
  %.1353 = load i32, i32* %.20
  %.1354 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1353
  %.1355 = load i32, i32* %.1354
  %.1356 = mul i32 1, %.1355
  %.1357 = add i32 %.1352, %.1356
  store i32 %.1357, i32* %.19
  br label %.1342 
.1342:
  %.1360 = load i32, i32* %.21
  %.1361 = sdiv i32 %.1360, 2
  store i32 %.1361, i32* %.21
  %.1363 = load i32, i32* %.22
  %.1364 = sdiv i32 %.1363, 2
  store i32 %.1364, i32* %.22
  %.1366 = load i32, i32* %.20
  %.1367 = add i32 %.1366, 1
  store i32 %.1367, i32* %.20
  br label %.1334wc 
.1346:
  %.1348 = load i32, i32* %.22
  %.1349 = srem i32 %.1348, 2
  %.1350 = icmp ne i32 %.1349, 0
  br i1 %.1350, label %.1341, label %.1342
.1373:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1377 = load i32, i32* %.1255
  %.1378 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1379 = load i32, i32* %.1378
  %.1380 = mul i32 %.1377, %.1379
  store i32 %.1380, i32* %.21
  store i32 65535, i32* %.22
  br label %.1383wc 
.1383wc:
  %.1387 = load i32, i32* %.20
  %.1388 = icmp slt i32 %.1387, 16
  br i1 %.1388, label %.1384wloop., label %.1385wn
.1384wloop.:
  %.1392 = load i32, i32* %.21
  %.1393 = srem i32 %.1392, 2
  %.1394 = icmp ne i32 %.1393, 0
  br i1 %.1394, label %.1395, label %.1391
.1385wn:
  br label %.1419 
.1390:
  %.1401 = load i32, i32* %.19
  %.1402 = load i32, i32* %.20
  %.1403 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1402
  %.1404 = load i32, i32* %.1403
  %.1405 = mul i32 1, %.1404
  %.1406 = add i32 %.1401, %.1405
  store i32 %.1406, i32* %.19
  br label %.1391 
.1391:
  %.1409 = load i32, i32* %.21
  %.1410 = sdiv i32 %.1409, 2
  store i32 %.1410, i32* %.21
  %.1412 = load i32, i32* %.22
  %.1413 = sdiv i32 %.1412, 2
  store i32 %.1413, i32* %.22
  %.1415 = load i32, i32* %.20
  %.1416 = add i32 %.1415, 1
  store i32 %.1416, i32* %.20
  br label %.1383wc 
.1395:
  %.1397 = load i32, i32* %.22
  %.1398 = srem i32 %.1397, 2
  %.1399 = icmp ne i32 %.1398, 0
  br i1 %.1399, label %.1390, label %.1391
.1419:
  %.1421 = load i32, i32* %.19
  store i32 %.1421, i32* %.1255
  %.1423 = load i32, i32* %.1258
  store i32 %.1423, i32* %.1252
  br label %.1259wc 
.1438wc:
  %.1442 = load i32, i32* %.1434
  %.1443 = icmp ne i32 %.1442, 0
  br i1 %.1443, label %.1439wloop., label %.1440wn
.1439wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1447 = load i32, i32* %.1431
  store i32 %.1447, i32* %.21
  %.1449 = load i32, i32* %.1434
  store i32 %.1449, i32* %.22
  br label %.1451wc 
.1440wn:
  %.1605 = load i32, i32* %.1431
  store i32 %.1605, i32* %.19
  %.1607 = load i32, i32* %.19
  store i32 %.1607, i32* %.1191
  %.1609 = load i32, i32* %.1194
  store i32 %.1609, i32* %.21
  store i32 1, i32* %.22
  %.1614 = load i32, i32* %.22
  %.1615 = icmp sge i32 %.1614, 15
  br i1 %.1615, label %.1612, label %.1613
.1451wc:
  %.1455 = load i32, i32* %.20
  %.1456 = icmp slt i32 %.1455, 16
  br i1 %.1456, label %.1452wloop., label %.1453wn
.1452wloop.:
  %.1460 = load i32, i32* %.21
  %.1461 = srem i32 %.1460, 2
  %.1462 = icmp ne i32 %.1461, 0
  br i1 %.1462, label %.1458, label %.1459
.1453wn:
  %.1505 = load i32, i32* %.19
  store i32 %.1505, i32* %.1437
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1509 = load i32, i32* %.1431
  store i32 %.1509, i32* %.21
  %.1511 = load i32, i32* %.1434
  store i32 %.1511, i32* %.22
  br label %.1513wc 
.1458:
  %.1466 = load i32, i32* %.22
  %.1467 = srem i32 %.1466, 2
  %.1468 = icmp eq i32 %.1467, 0
  br i1 %.1468, label %.1464, label %.1465
.1459:
  %.1482 = load i32, i32* %.22
  %.1483 = srem i32 %.1482, 2
  %.1484 = icmp ne i32 %.1483, 0
  br i1 %.1484, label %.1480, label %.1481
.1464:
  %.1470 = load i32, i32* %.19
  %.1471 = load i32, i32* %.20
  %.1472 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1471
  %.1473 = load i32, i32* %.1472
  %.1474 = mul i32 1, %.1473
  %.1475 = add i32 %.1470, %.1474
  store i32 %.1475, i32* %.19
  br label %.1465 
.1465:
  br label %.1478 
.1478:
  %.1495 = load i32, i32* %.21
  %.1496 = sdiv i32 %.1495, 2
  store i32 %.1496, i32* %.21
  %.1498 = load i32, i32* %.22
  %.1499 = sdiv i32 %.1498, 2
  store i32 %.1499, i32* %.22
  %.1501 = load i32, i32* %.20
  %.1502 = add i32 %.1501, 1
  store i32 %.1502, i32* %.20
  br label %.1451wc 
.1480:
  %.1486 = load i32, i32* %.19
  %.1487 = load i32, i32* %.20
  %.1488 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1487
  %.1489 = load i32, i32* %.1488
  %.1490 = mul i32 1, %.1489
  %.1491 = add i32 %.1486, %.1490
  store i32 %.1491, i32* %.19
  br label %.1481 
.1481:
  br label %.1478 
.1513wc:
  %.1517 = load i32, i32* %.20
  %.1518 = icmp slt i32 %.1517, 16
  br i1 %.1518, label %.1514wloop., label %.1515wn
.1514wloop.:
  %.1522 = load i32, i32* %.21
  %.1523 = srem i32 %.1522, 2
  %.1524 = icmp ne i32 %.1523, 0
  br i1 %.1524, label %.1525, label %.1521
.1515wn:
  %.1549 = load i32, i32* %.19
  store i32 %.1549, i32* %.1434
  br label %.1552 
.1520:
  %.1531 = load i32, i32* %.19
  %.1532 = load i32, i32* %.20
  %.1533 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1532
  %.1534 = load i32, i32* %.1533
  %.1535 = mul i32 1, %.1534
  %.1536 = add i32 %.1531, %.1535
  store i32 %.1536, i32* %.19
  br label %.1521 
.1521:
  %.1539 = load i32, i32* %.21
  %.1540 = sdiv i32 %.1539, 2
  store i32 %.1540, i32* %.21
  %.1542 = load i32, i32* %.22
  %.1543 = sdiv i32 %.1542, 2
  store i32 %.1543, i32* %.22
  %.1545 = load i32, i32* %.20
  %.1546 = add i32 %.1545, 1
  store i32 %.1546, i32* %.20
  br label %.1513wc 
.1525:
  %.1527 = load i32, i32* %.22
  %.1528 = srem i32 %.1527, 2
  %.1529 = icmp ne i32 %.1528, 0
  br i1 %.1529, label %.1520, label %.1521
.1552:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1556 = load i32, i32* %.1434
  %.1557 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1558 = load i32, i32* %.1557
  %.1559 = mul i32 %.1556, %.1558
  store i32 %.1559, i32* %.21
  store i32 65535, i32* %.22
  br label %.1562wc 
.1562wc:
  %.1566 = load i32, i32* %.20
  %.1567 = icmp slt i32 %.1566, 16
  br i1 %.1567, label %.1563wloop., label %.1564wn
.1563wloop.:
  %.1571 = load i32, i32* %.21
  %.1572 = srem i32 %.1571, 2
  %.1573 = icmp ne i32 %.1572, 0
  br i1 %.1573, label %.1574, label %.1570
.1564wn:
  br label %.1598 
.1569:
  %.1580 = load i32, i32* %.19
  %.1581 = load i32, i32* %.20
  %.1582 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1581
  %.1583 = load i32, i32* %.1582
  %.1584 = mul i32 1, %.1583
  %.1585 = add i32 %.1580, %.1584
  store i32 %.1585, i32* %.19
  br label %.1570 
.1570:
  %.1588 = load i32, i32* %.21
  %.1589 = sdiv i32 %.1588, 2
  store i32 %.1589, i32* %.21
  %.1591 = load i32, i32* %.22
  %.1592 = sdiv i32 %.1591, 2
  store i32 %.1592, i32* %.22
  %.1594 = load i32, i32* %.20
  %.1595 = add i32 %.1594, 1
  store i32 %.1595, i32* %.20
  br label %.1562wc 
.1574:
  %.1576 = load i32, i32* %.22
  %.1577 = srem i32 %.1576, 2
  %.1578 = icmp ne i32 %.1577, 0
  br i1 %.1578, label %.1569, label %.1570
.1598:
  %.1600 = load i32, i32* %.19
  store i32 %.1600, i32* %.1434
  %.1602 = load i32, i32* %.1437
  store i32 %.1602, i32* %.1431
  br label %.1438wc 
.1612:
  %.1619 = load i32, i32* %.21
  %.1620 = icmp slt i32 %.1619, 0
  br i1 %.1620, label %.1617, label %.1618
.1613:
  %.1631 = load i32, i32* %.22
  %.1632 = icmp sgt i32 %.1631, 0
  br i1 %.1632, label %.1629, label %.1630
.1617:
  store i32 65535, i32* %.19
  br label %.1623 
.1618:
  store i32 0, i32* %.19
  br label %.1623 
.1623:
  br label %.1627 
.1627:
  %.1669 = load i32, i32* %.19
  store i32 %.1669, i32* %.1194
  br label %.1199wc 
.1629:
  %.1636 = load i32, i32* %.21
  %.1637 = icmp sgt i32 %.1636, 32767
  br i1 %.1637, label %.1634, label %.1635
.1630:
  %.1665 = load i32, i32* %.21
  store i32 %.1665, i32* %.19
  br label %.1663 
.1634:
  %.1639 = load i32, i32* %.21
  %.1640 = load i32, i32* %.22
  %.1641 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1640
  %.1642 = load i32, i32* %.1641
  %.1643 = sdiv i32 %.1639, %.1642
  store i32 %.1643, i32* %.21
  %.1645 = load i32, i32* %.21
  %.1646 = add i32 %.1645, 65536
  %.1647 = load i32, i32* %.22
  %.1648 = sub i32 15, %.1647
  %.1649 = add i32 %.1648, 1
  %.1650 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1649
  %.1651 = load i32, i32* %.1650
  %.1652 = sub i32 %.1646, %.1651
  store i32 %.1652, i32* %.19
  br label %.1654 
.1635:
  %.1656 = load i32, i32* %.21
  %.1657 = load i32, i32* %.22
  %.1658 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1657
  %.1659 = load i32, i32* %.1658
  %.1660 = sdiv i32 %.1656, %.1659
  store i32 %.1660, i32* %.19
  br label %.1654 
.1654:
  br label %.1663 
.1663:
  br label %.1627 
.1685wc:
  %.1689 = load i32, i32* %.1680
  %.1690 = icmp ne i32 %.1689, 0
  br i1 %.1690, label %.1686wloop., label %.1687wn
.1686wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1694 = load i32, i32* %.1680
  store i32 %.1694, i32* %.21
  store i32 1, i32* %.22
  br label %.1697wc 
.1687wn:
  %.2158 = load i32, i32* %.1683
  store i32 %.2158, i32* %.19
  %.2160 = load i32, i32* %.19
  store i32 %.2160, i32* %.1132
  %.2162 = load i32, i32* %.1134
  store i32 %.2162, i32* %.21
  store i32 1, i32* %.22
  %.2167 = load i32, i32* %.22
  %.2168 = icmp sge i32 %.2167, 15
  br i1 %.2168, label %.2165, label %.2166
.1697wc:
  %.1701 = load i32, i32* %.20
  %.1702 = icmp slt i32 %.1701, 16
  br i1 %.1702, label %.1698wloop., label %.1699wn
.1698wloop.:
  %.1706 = load i32, i32* %.21
  %.1707 = srem i32 %.1706, 2
  %.1708 = icmp ne i32 %.1707, 0
  br i1 %.1708, label %.1709, label %.1705
.1699wn:
  %.1735 = load i32, i32* %.19
  %.1736 = icmp ne i32 %.1735, 0
  br i1 %.1736, label %.1733, label %.1734
.1704:
  %.1715 = load i32, i32* %.19
  %.1716 = load i32, i32* %.20
  %.1717 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1716
  %.1718 = load i32, i32* %.1717
  %.1719 = mul i32 1, %.1718
  %.1720 = add i32 %.1715, %.1719
  store i32 %.1720, i32* %.19
  br label %.1705 
.1705:
  %.1723 = load i32, i32* %.21
  %.1724 = sdiv i32 %.1723, 2
  store i32 %.1724, i32* %.21
  %.1726 = load i32, i32* %.22
  %.1727 = sdiv i32 %.1726, 2
  store i32 %.1727, i32* %.22
  %.1729 = load i32, i32* %.20
  %.1730 = add i32 %.1729, 1
  store i32 %.1730, i32* %.20
  br label %.1697wc 
.1709:
  %.1711 = load i32, i32* %.22
  %.1712 = srem i32 %.1711, 2
  %.1713 = icmp ne i32 %.1712, 0
  br i1 %.1713, label %.1704, label %.1705
.1733:
  %.1739 = load i32, i32* %.1683
  store i32 %.1739, i32* %.1738
  %.1742 = load i32, i32* %.1677
  store i32 %.1742, i32* %.1741
  br label %.1745wc 
.1734:
  %.1918 = load i32, i32* %.1677
  store i32 %.1918, i32* %.1917
  %.1921 = load i32, i32* %.1677
  store i32 %.1921, i32* %.1920
  br label %.1924wc 
.1745wc:
  %.1749 = load i32, i32* %.1741
  %.1750 = icmp ne i32 %.1749, 0
  br i1 %.1750, label %.1746wloop., label %.1747wn
.1746wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1754 = load i32, i32* %.1738
  store i32 %.1754, i32* %.21
  %.1756 = load i32, i32* %.1741
  store i32 %.1756, i32* %.22
  br label %.1758wc 
.1747wn:
  %.1912 = load i32, i32* %.1738
  store i32 %.1912, i32* %.19
  %.1914 = load i32, i32* %.19
  store i32 %.1914, i32* %.1683
  br label %.1734 
.1758wc:
  %.1762 = load i32, i32* %.20
  %.1763 = icmp slt i32 %.1762, 16
  br i1 %.1763, label %.1759wloop., label %.1760wn
.1759wloop.:
  %.1767 = load i32, i32* %.21
  %.1768 = srem i32 %.1767, 2
  %.1769 = icmp ne i32 %.1768, 0
  br i1 %.1769, label %.1765, label %.1766
.1760wn:
  %.1812 = load i32, i32* %.19
  store i32 %.1812, i32* %.1744
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1816 = load i32, i32* %.1738
  store i32 %.1816, i32* %.21
  %.1818 = load i32, i32* %.1741
  store i32 %.1818, i32* %.22
  br label %.1820wc 
.1765:
  %.1773 = load i32, i32* %.22
  %.1774 = srem i32 %.1773, 2
  %.1775 = icmp eq i32 %.1774, 0
  br i1 %.1775, label %.1771, label %.1772
.1766:
  %.1789 = load i32, i32* %.22
  %.1790 = srem i32 %.1789, 2
  %.1791 = icmp ne i32 %.1790, 0
  br i1 %.1791, label %.1787, label %.1788
.1771:
  %.1777 = load i32, i32* %.19
  %.1778 = load i32, i32* %.20
  %.1779 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1778
  %.1780 = load i32, i32* %.1779
  %.1781 = mul i32 1, %.1780
  %.1782 = add i32 %.1777, %.1781
  store i32 %.1782, i32* %.19
  br label %.1772 
.1772:
  br label %.1785 
.1785:
  %.1802 = load i32, i32* %.21
  %.1803 = sdiv i32 %.1802, 2
  store i32 %.1803, i32* %.21
  %.1805 = load i32, i32* %.22
  %.1806 = sdiv i32 %.1805, 2
  store i32 %.1806, i32* %.22
  %.1808 = load i32, i32* %.20
  %.1809 = add i32 %.1808, 1
  store i32 %.1809, i32* %.20
  br label %.1758wc 
.1787:
  %.1793 = load i32, i32* %.19
  %.1794 = load i32, i32* %.20
  %.1795 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1794
  %.1796 = load i32, i32* %.1795
  %.1797 = mul i32 1, %.1796
  %.1798 = add i32 %.1793, %.1797
  store i32 %.1798, i32* %.19
  br label %.1788 
.1788:
  br label %.1785 
.1820wc:
  %.1824 = load i32, i32* %.20
  %.1825 = icmp slt i32 %.1824, 16
  br i1 %.1825, label %.1821wloop., label %.1822wn
.1821wloop.:
  %.1829 = load i32, i32* %.21
  %.1830 = srem i32 %.1829, 2
  %.1831 = icmp ne i32 %.1830, 0
  br i1 %.1831, label %.1832, label %.1828
.1822wn:
  %.1856 = load i32, i32* %.19
  store i32 %.1856, i32* %.1741
  br label %.1859 
.1827:
  %.1838 = load i32, i32* %.19
  %.1839 = load i32, i32* %.20
  %.1840 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1839
  %.1841 = load i32, i32* %.1840
  %.1842 = mul i32 1, %.1841
  %.1843 = add i32 %.1838, %.1842
  store i32 %.1843, i32* %.19
  br label %.1828 
.1828:
  %.1846 = load i32, i32* %.21
  %.1847 = sdiv i32 %.1846, 2
  store i32 %.1847, i32* %.21
  %.1849 = load i32, i32* %.22
  %.1850 = sdiv i32 %.1849, 2
  store i32 %.1850, i32* %.22
  %.1852 = load i32, i32* %.20
  %.1853 = add i32 %.1852, 1
  store i32 %.1853, i32* %.20
  br label %.1820wc 
.1832:
  %.1834 = load i32, i32* %.22
  %.1835 = srem i32 %.1834, 2
  %.1836 = icmp ne i32 %.1835, 0
  br i1 %.1836, label %.1827, label %.1828
.1859:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1863 = load i32, i32* %.1741
  %.1864 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.1865 = load i32, i32* %.1864
  %.1866 = mul i32 %.1863, %.1865
  store i32 %.1866, i32* %.21
  store i32 65535, i32* %.22
  br label %.1869wc 
.1869wc:
  %.1873 = load i32, i32* %.20
  %.1874 = icmp slt i32 %.1873, 16
  br i1 %.1874, label %.1870wloop., label %.1871wn
.1870wloop.:
  %.1878 = load i32, i32* %.21
  %.1879 = srem i32 %.1878, 2
  %.1880 = icmp ne i32 %.1879, 0
  br i1 %.1880, label %.1881, label %.1877
.1871wn:
  br label %.1905 
.1876:
  %.1887 = load i32, i32* %.19
  %.1888 = load i32, i32* %.20
  %.1889 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1888
  %.1890 = load i32, i32* %.1889
  %.1891 = mul i32 1, %.1890
  %.1892 = add i32 %.1887, %.1891
  store i32 %.1892, i32* %.19
  br label %.1877 
.1877:
  %.1895 = load i32, i32* %.21
  %.1896 = sdiv i32 %.1895, 2
  store i32 %.1896, i32* %.21
  %.1898 = load i32, i32* %.22
  %.1899 = sdiv i32 %.1898, 2
  store i32 %.1899, i32* %.22
  %.1901 = load i32, i32* %.20
  %.1902 = add i32 %.1901, 1
  store i32 %.1902, i32* %.20
  br label %.1869wc 
.1881:
  %.1883 = load i32, i32* %.22
  %.1884 = srem i32 %.1883, 2
  %.1885 = icmp ne i32 %.1884, 0
  br i1 %.1885, label %.1876, label %.1877
.1905:
  %.1907 = load i32, i32* %.19
  store i32 %.1907, i32* %.1741
  %.1909 = load i32, i32* %.1744
  store i32 %.1909, i32* %.1738
  br label %.1745wc 
.1924wc:
  %.1928 = load i32, i32* %.1920
  %.1929 = icmp ne i32 %.1928, 0
  br i1 %.1929, label %.1925wloop., label %.1926wn
.1925wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1933 = load i32, i32* %.1917
  store i32 %.1933, i32* %.21
  %.1935 = load i32, i32* %.1920
  store i32 %.1935, i32* %.22
  br label %.1937wc 
.1926wn:
  %.2091 = load i32, i32* %.1917
  store i32 %.2091, i32* %.19
  %.2093 = load i32, i32* %.19
  store i32 %.2093, i32* %.1677
  %.2095 = load i32, i32* %.1680
  store i32 %.2095, i32* %.21
  store i32 1, i32* %.22
  %.2100 = load i32, i32* %.22
  %.2101 = icmp sge i32 %.2100, 15
  br i1 %.2101, label %.2098, label %.2099
.1937wc:
  %.1941 = load i32, i32* %.20
  %.1942 = icmp slt i32 %.1941, 16
  br i1 %.1942, label %.1938wloop., label %.1939wn
.1938wloop.:
  %.1946 = load i32, i32* %.21
  %.1947 = srem i32 %.1946, 2
  %.1948 = icmp ne i32 %.1947, 0
  br i1 %.1948, label %.1944, label %.1945
.1939wn:
  %.1991 = load i32, i32* %.19
  store i32 %.1991, i32* %.1923
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.1995 = load i32, i32* %.1917
  store i32 %.1995, i32* %.21
  %.1997 = load i32, i32* %.1920
  store i32 %.1997, i32* %.22
  br label %.1999wc 
.1944:
  %.1952 = load i32, i32* %.22
  %.1953 = srem i32 %.1952, 2
  %.1954 = icmp eq i32 %.1953, 0
  br i1 %.1954, label %.1950, label %.1951
.1945:
  %.1968 = load i32, i32* %.22
  %.1969 = srem i32 %.1968, 2
  %.1970 = icmp ne i32 %.1969, 0
  br i1 %.1970, label %.1966, label %.1967
.1950:
  %.1956 = load i32, i32* %.19
  %.1957 = load i32, i32* %.20
  %.1958 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1957
  %.1959 = load i32, i32* %.1958
  %.1960 = mul i32 1, %.1959
  %.1961 = add i32 %.1956, %.1960
  store i32 %.1961, i32* %.19
  br label %.1951 
.1951:
  br label %.1964 
.1964:
  %.1981 = load i32, i32* %.21
  %.1982 = sdiv i32 %.1981, 2
  store i32 %.1982, i32* %.21
  %.1984 = load i32, i32* %.22
  %.1985 = sdiv i32 %.1984, 2
  store i32 %.1985, i32* %.22
  %.1987 = load i32, i32* %.20
  %.1988 = add i32 %.1987, 1
  store i32 %.1988, i32* %.20
  br label %.1937wc 
.1966:
  %.1972 = load i32, i32* %.19
  %.1973 = load i32, i32* %.20
  %.1974 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.1973
  %.1975 = load i32, i32* %.1974
  %.1976 = mul i32 1, %.1975
  %.1977 = add i32 %.1972, %.1976
  store i32 %.1977, i32* %.19
  br label %.1967 
.1967:
  br label %.1964 
.1999wc:
  %.2003 = load i32, i32* %.20
  %.2004 = icmp slt i32 %.2003, 16
  br i1 %.2004, label %.2000wloop., label %.2001wn
.2000wloop.:
  %.2008 = load i32, i32* %.21
  %.2009 = srem i32 %.2008, 2
  %.2010 = icmp ne i32 %.2009, 0
  br i1 %.2010, label %.2011, label %.2007
.2001wn:
  %.2035 = load i32, i32* %.19
  store i32 %.2035, i32* %.1920
  br label %.2038 
.2006:
  %.2017 = load i32, i32* %.19
  %.2018 = load i32, i32* %.20
  %.2019 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2018
  %.2020 = load i32, i32* %.2019
  %.2021 = mul i32 1, %.2020
  %.2022 = add i32 %.2017, %.2021
  store i32 %.2022, i32* %.19
  br label %.2007 
.2007:
  %.2025 = load i32, i32* %.21
  %.2026 = sdiv i32 %.2025, 2
  store i32 %.2026, i32* %.21
  %.2028 = load i32, i32* %.22
  %.2029 = sdiv i32 %.2028, 2
  store i32 %.2029, i32* %.22
  %.2031 = load i32, i32* %.20
  %.2032 = add i32 %.2031, 1
  store i32 %.2032, i32* %.20
  br label %.1999wc 
.2011:
  %.2013 = load i32, i32* %.22
  %.2014 = srem i32 %.2013, 2
  %.2015 = icmp ne i32 %.2014, 0
  br i1 %.2015, label %.2006, label %.2007
.2038:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2042 = load i32, i32* %.1920
  %.2043 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2044 = load i32, i32* %.2043
  %.2045 = mul i32 %.2042, %.2044
  store i32 %.2045, i32* %.21
  store i32 65535, i32* %.22
  br label %.2048wc 
.2048wc:
  %.2052 = load i32, i32* %.20
  %.2053 = icmp slt i32 %.2052, 16
  br i1 %.2053, label %.2049wloop., label %.2050wn
.2049wloop.:
  %.2057 = load i32, i32* %.21
  %.2058 = srem i32 %.2057, 2
  %.2059 = icmp ne i32 %.2058, 0
  br i1 %.2059, label %.2060, label %.2056
.2050wn:
  br label %.2084 
.2055:
  %.2066 = load i32, i32* %.19
  %.2067 = load i32, i32* %.20
  %.2068 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2067
  %.2069 = load i32, i32* %.2068
  %.2070 = mul i32 1, %.2069
  %.2071 = add i32 %.2066, %.2070
  store i32 %.2071, i32* %.19
  br label %.2056 
.2056:
  %.2074 = load i32, i32* %.21
  %.2075 = sdiv i32 %.2074, 2
  store i32 %.2075, i32* %.21
  %.2077 = load i32, i32* %.22
  %.2078 = sdiv i32 %.2077, 2
  store i32 %.2078, i32* %.22
  %.2080 = load i32, i32* %.20
  %.2081 = add i32 %.2080, 1
  store i32 %.2081, i32* %.20
  br label %.2048wc 
.2060:
  %.2062 = load i32, i32* %.22
  %.2063 = srem i32 %.2062, 2
  %.2064 = icmp ne i32 %.2063, 0
  br i1 %.2064, label %.2055, label %.2056
.2084:
  %.2086 = load i32, i32* %.19
  store i32 %.2086, i32* %.1920
  %.2088 = load i32, i32* %.1923
  store i32 %.2088, i32* %.1917
  br label %.1924wc 
.2098:
  %.2105 = load i32, i32* %.21
  %.2106 = icmp slt i32 %.2105, 0
  br i1 %.2106, label %.2103, label %.2104
.2099:
  %.2117 = load i32, i32* %.22
  %.2118 = icmp sgt i32 %.2117, 0
  br i1 %.2118, label %.2115, label %.2116
.2103:
  store i32 65535, i32* %.19
  br label %.2109 
.2104:
  store i32 0, i32* %.19
  br label %.2109 
.2109:
  br label %.2113 
.2113:
  %.2155 = load i32, i32* %.19
  store i32 %.2155, i32* %.1680
  br label %.1685wc 
.2115:
  %.2122 = load i32, i32* %.21
  %.2123 = icmp sgt i32 %.2122, 32767
  br i1 %.2123, label %.2120, label %.2121
.2116:
  %.2151 = load i32, i32* %.21
  store i32 %.2151, i32* %.19
  br label %.2149 
.2120:
  %.2125 = load i32, i32* %.21
  %.2126 = load i32, i32* %.22
  %.2127 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2126
  %.2128 = load i32, i32* %.2127
  %.2129 = sdiv i32 %.2125, %.2128
  store i32 %.2129, i32* %.21
  %.2131 = load i32, i32* %.21
  %.2132 = add i32 %.2131, 65536
  %.2133 = load i32, i32* %.22
  %.2134 = sub i32 15, %.2133
  %.2135 = add i32 %.2134, 1
  %.2136 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2135
  %.2137 = load i32, i32* %.2136
  %.2138 = sub i32 %.2132, %.2137
  store i32 %.2138, i32* %.19
  br label %.2140 
.2121:
  %.2142 = load i32, i32* %.21
  %.2143 = load i32, i32* %.22
  %.2144 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2143
  %.2145 = load i32, i32* %.2144
  %.2146 = sdiv i32 %.2142, %.2145
  store i32 %.2146, i32* %.19
  br label %.2140 
.2140:
  br label %.2149 
.2149:
  br label %.2113 
.2165:
  %.2172 = load i32, i32* %.21
  %.2173 = icmp slt i32 %.2172, 0
  br i1 %.2173, label %.2170, label %.2171
.2166:
  %.2184 = load i32, i32* %.22
  %.2185 = icmp sgt i32 %.2184, 0
  br i1 %.2185, label %.2182, label %.2183
.2170:
  store i32 65535, i32* %.19
  br label %.2176 
.2171:
  store i32 0, i32* %.19
  br label %.2176 
.2176:
  br label %.2180 
.2180:
  %.2222 = load i32, i32* %.19
  store i32 %.2222, i32* %.1134
  br label %.1138wc 
.2182:
  %.2189 = load i32, i32* %.21
  %.2190 = icmp sgt i32 %.2189, 32767
  br i1 %.2190, label %.2187, label %.2188
.2183:
  %.2218 = load i32, i32* %.21
  store i32 %.2218, i32* %.19
  br label %.2216 
.2187:
  %.2192 = load i32, i32* %.21
  %.2193 = load i32, i32* %.22
  %.2194 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2193
  %.2195 = load i32, i32* %.2194
  %.2196 = sdiv i32 %.2192, %.2195
  store i32 %.2196, i32* %.21
  %.2198 = load i32, i32* %.21
  %.2199 = add i32 %.2198, 65536
  %.2200 = load i32, i32* %.22
  %.2201 = sub i32 15, %.2200
  %.2202 = add i32 %.2201, 1
  %.2203 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2202
  %.2204 = load i32, i32* %.2203
  %.2205 = sub i32 %.2199, %.2204
  store i32 %.2205, i32* %.19
  br label %.2207 
.2188:
  %.2209 = load i32, i32* %.21
  %.2210 = load i32, i32* %.22
  %.2211 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2210
  %.2212 = load i32, i32* %.2211
  %.2213 = sdiv i32 %.2209, %.2212
  store i32 %.2213, i32* %.19
  br label %.2207 
.2207:
  br label %.2216 
.2216:
  br label %.2180 
.2231wc:
  %.2235 = load i32, i32* %.23
  %.2236 = icmp slt i32 %.2235, 16
  br i1 %.2236, label %.2232wloop., label %.2233wn
.2232wloop.:
  store i32 2, i32* %.2238
  %.2241 = load i32, i32* %.23
  store i32 %.2241, i32* %.2240
  store i32 1, i32* %.2243
  br label %.2245wc 
.2233wn:
  store i32 0, i32* %.23
  br label %.3342wc 
.2245wc:
  %.2249 = load i32, i32* %.2240
  %.2250 = icmp sgt i32 %.2249, 0
  br i1 %.2250, label %.2246wloop., label %.2247wn
.2246wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2254 = load i32, i32* %.2240
  store i32 %.2254, i32* %.21
  store i32 1, i32* %.22
  br label %.2257wc 
.2247wn:
  %.3332 = load i32, i32* %.2243
  store i32 %.3332, i32* %.19
  %.3334 = load i32, i32* %.19
  call void @putint(i32 %.3334)
  call void @putch(i32 10)
  %.3337 = load i32, i32* %.23
  %.3338 = add i32 %.3337, 1
  store i32 %.3338, i32* %.23
  br label %.2231wc 
.2257wc:
  %.2261 = load i32, i32* %.20
  %.2262 = icmp slt i32 %.2261, 16
  br i1 %.2262, label %.2258wloop., label %.2259wn
.2258wloop.:
  %.2266 = load i32, i32* %.21
  %.2267 = srem i32 %.2266, 2
  %.2268 = icmp ne i32 %.2267, 0
  br i1 %.2268, label %.2269, label %.2265
.2259wn:
  %.2295 = load i32, i32* %.19
  %.2296 = icmp ne i32 %.2295, 0
  br i1 %.2296, label %.2293, label %.2294
.2264:
  %.2275 = load i32, i32* %.19
  %.2276 = load i32, i32* %.20
  %.2277 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2276
  %.2278 = load i32, i32* %.2277
  %.2279 = mul i32 1, %.2278
  %.2280 = add i32 %.2275, %.2279
  store i32 %.2280, i32* %.19
  br label %.2265 
.2265:
  %.2283 = load i32, i32* %.21
  %.2284 = sdiv i32 %.2283, 2
  store i32 %.2284, i32* %.21
  %.2286 = load i32, i32* %.22
  %.2287 = sdiv i32 %.2286, 2
  store i32 %.2287, i32* %.22
  %.2289 = load i32, i32* %.20
  %.2290 = add i32 %.2289, 1
  store i32 %.2290, i32* %.20
  br label %.2257wc 
.2269:
  %.2271 = load i32, i32* %.22
  %.2272 = srem i32 %.2271, 2
  %.2273 = icmp ne i32 %.2272, 0
  br i1 %.2273, label %.2264, label %.2265
.2293:
  %.2299 = load i32, i32* %.2243
  store i32 %.2299, i32* %.2298
  %.2302 = load i32, i32* %.2238
  store i32 %.2302, i32* %.2301
  store i32 0, i32* %.2304
  br label %.2306wc 
.2294:
  %.2785 = load i32, i32* %.2238
  store i32 %.2785, i32* %.2784
  %.2788 = load i32, i32* %.2238
  store i32 %.2788, i32* %.2787
  store i32 0, i32* %.2790
  br label %.2792wc 
.2306wc:
  %.2310 = load i32, i32* %.2301
  %.2311 = icmp ne i32 %.2310, 0
  br i1 %.2311, label %.2307wloop., label %.2308wn
.2307wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2315 = load i32, i32* %.2301
  store i32 %.2315, i32* %.21
  store i32 1, i32* %.22
  br label %.2318wc 
.2308wn:
  %.2779 = load i32, i32* %.2304
  store i32 %.2779, i32* %.19
  %.2781 = load i32, i32* %.19
  store i32 %.2781, i32* %.2243
  br label %.2294 
.2318wc:
  %.2322 = load i32, i32* %.20
  %.2323 = icmp slt i32 %.2322, 16
  br i1 %.2323, label %.2319wloop., label %.2320wn
.2319wloop.:
  %.2327 = load i32, i32* %.21
  %.2328 = srem i32 %.2327, 2
  %.2329 = icmp ne i32 %.2328, 0
  br i1 %.2329, label %.2330, label %.2326
.2320wn:
  %.2356 = load i32, i32* %.19
  %.2357 = icmp ne i32 %.2356, 0
  br i1 %.2357, label %.2354, label %.2355
.2325:
  %.2336 = load i32, i32* %.19
  %.2337 = load i32, i32* %.20
  %.2338 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2337
  %.2339 = load i32, i32* %.2338
  %.2340 = mul i32 1, %.2339
  %.2341 = add i32 %.2336, %.2340
  store i32 %.2341, i32* %.19
  br label %.2326 
.2326:
  %.2344 = load i32, i32* %.21
  %.2345 = sdiv i32 %.2344, 2
  store i32 %.2345, i32* %.21
  %.2347 = load i32, i32* %.22
  %.2348 = sdiv i32 %.2347, 2
  store i32 %.2348, i32* %.22
  %.2350 = load i32, i32* %.20
  %.2351 = add i32 %.2350, 1
  store i32 %.2351, i32* %.20
  br label %.2318wc 
.2330:
  %.2332 = load i32, i32* %.22
  %.2333 = srem i32 %.2332, 2
  %.2334 = icmp ne i32 %.2333, 0
  br i1 %.2334, label %.2325, label %.2326
.2354:
  %.2360 = load i32, i32* %.2304
  store i32 %.2360, i32* %.2359
  %.2363 = load i32, i32* %.2298
  store i32 %.2363, i32* %.2362
  br label %.2366wc 
.2355:
  %.2539 = load i32, i32* %.2298
  store i32 %.2539, i32* %.2538
  %.2542 = load i32, i32* %.2298
  store i32 %.2542, i32* %.2541
  br label %.2545wc 
.2366wc:
  %.2370 = load i32, i32* %.2362
  %.2371 = icmp ne i32 %.2370, 0
  br i1 %.2371, label %.2367wloop., label %.2368wn
.2367wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2375 = load i32, i32* %.2359
  store i32 %.2375, i32* %.21
  %.2377 = load i32, i32* %.2362
  store i32 %.2377, i32* %.22
  br label %.2379wc 
.2368wn:
  %.2533 = load i32, i32* %.2359
  store i32 %.2533, i32* %.19
  %.2535 = load i32, i32* %.19
  store i32 %.2535, i32* %.2304
  br label %.2355 
.2379wc:
  %.2383 = load i32, i32* %.20
  %.2384 = icmp slt i32 %.2383, 16
  br i1 %.2384, label %.2380wloop., label %.2381wn
.2380wloop.:
  %.2388 = load i32, i32* %.21
  %.2389 = srem i32 %.2388, 2
  %.2390 = icmp ne i32 %.2389, 0
  br i1 %.2390, label %.2386, label %.2387
.2381wn:
  %.2433 = load i32, i32* %.19
  store i32 %.2433, i32* %.2365
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2437 = load i32, i32* %.2359
  store i32 %.2437, i32* %.21
  %.2439 = load i32, i32* %.2362
  store i32 %.2439, i32* %.22
  br label %.2441wc 
.2386:
  %.2394 = load i32, i32* %.22
  %.2395 = srem i32 %.2394, 2
  %.2396 = icmp eq i32 %.2395, 0
  br i1 %.2396, label %.2392, label %.2393
.2387:
  %.2410 = load i32, i32* %.22
  %.2411 = srem i32 %.2410, 2
  %.2412 = icmp ne i32 %.2411, 0
  br i1 %.2412, label %.2408, label %.2409
.2392:
  %.2398 = load i32, i32* %.19
  %.2399 = load i32, i32* %.20
  %.2400 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2399
  %.2401 = load i32, i32* %.2400
  %.2402 = mul i32 1, %.2401
  %.2403 = add i32 %.2398, %.2402
  store i32 %.2403, i32* %.19
  br label %.2393 
.2393:
  br label %.2406 
.2406:
  %.2423 = load i32, i32* %.21
  %.2424 = sdiv i32 %.2423, 2
  store i32 %.2424, i32* %.21
  %.2426 = load i32, i32* %.22
  %.2427 = sdiv i32 %.2426, 2
  store i32 %.2427, i32* %.22
  %.2429 = load i32, i32* %.20
  %.2430 = add i32 %.2429, 1
  store i32 %.2430, i32* %.20
  br label %.2379wc 
.2408:
  %.2414 = load i32, i32* %.19
  %.2415 = load i32, i32* %.20
  %.2416 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2415
  %.2417 = load i32, i32* %.2416
  %.2418 = mul i32 1, %.2417
  %.2419 = add i32 %.2414, %.2418
  store i32 %.2419, i32* %.19
  br label %.2409 
.2409:
  br label %.2406 
.2441wc:
  %.2445 = load i32, i32* %.20
  %.2446 = icmp slt i32 %.2445, 16
  br i1 %.2446, label %.2442wloop., label %.2443wn
.2442wloop.:
  %.2450 = load i32, i32* %.21
  %.2451 = srem i32 %.2450, 2
  %.2452 = icmp ne i32 %.2451, 0
  br i1 %.2452, label %.2453, label %.2449
.2443wn:
  %.2477 = load i32, i32* %.19
  store i32 %.2477, i32* %.2362
  br label %.2480 
.2448:
  %.2459 = load i32, i32* %.19
  %.2460 = load i32, i32* %.20
  %.2461 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2460
  %.2462 = load i32, i32* %.2461
  %.2463 = mul i32 1, %.2462
  %.2464 = add i32 %.2459, %.2463
  store i32 %.2464, i32* %.19
  br label %.2449 
.2449:
  %.2467 = load i32, i32* %.21
  %.2468 = sdiv i32 %.2467, 2
  store i32 %.2468, i32* %.21
  %.2470 = load i32, i32* %.22
  %.2471 = sdiv i32 %.2470, 2
  store i32 %.2471, i32* %.22
  %.2473 = load i32, i32* %.20
  %.2474 = add i32 %.2473, 1
  store i32 %.2474, i32* %.20
  br label %.2441wc 
.2453:
  %.2455 = load i32, i32* %.22
  %.2456 = srem i32 %.2455, 2
  %.2457 = icmp ne i32 %.2456, 0
  br i1 %.2457, label %.2448, label %.2449
.2480:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2484 = load i32, i32* %.2362
  %.2485 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2486 = load i32, i32* %.2485
  %.2487 = mul i32 %.2484, %.2486
  store i32 %.2487, i32* %.21
  store i32 65535, i32* %.22
  br label %.2490wc 
.2490wc:
  %.2494 = load i32, i32* %.20
  %.2495 = icmp slt i32 %.2494, 16
  br i1 %.2495, label %.2491wloop., label %.2492wn
.2491wloop.:
  %.2499 = load i32, i32* %.21
  %.2500 = srem i32 %.2499, 2
  %.2501 = icmp ne i32 %.2500, 0
  br i1 %.2501, label %.2502, label %.2498
.2492wn:
  br label %.2526 
.2497:
  %.2508 = load i32, i32* %.19
  %.2509 = load i32, i32* %.20
  %.2510 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2509
  %.2511 = load i32, i32* %.2510
  %.2512 = mul i32 1, %.2511
  %.2513 = add i32 %.2508, %.2512
  store i32 %.2513, i32* %.19
  br label %.2498 
.2498:
  %.2516 = load i32, i32* %.21
  %.2517 = sdiv i32 %.2516, 2
  store i32 %.2517, i32* %.21
  %.2519 = load i32, i32* %.22
  %.2520 = sdiv i32 %.2519, 2
  store i32 %.2520, i32* %.22
  %.2522 = load i32, i32* %.20
  %.2523 = add i32 %.2522, 1
  store i32 %.2523, i32* %.20
  br label %.2490wc 
.2502:
  %.2504 = load i32, i32* %.22
  %.2505 = srem i32 %.2504, 2
  %.2506 = icmp ne i32 %.2505, 0
  br i1 %.2506, label %.2497, label %.2498
.2526:
  %.2528 = load i32, i32* %.19
  store i32 %.2528, i32* %.2362
  %.2530 = load i32, i32* %.2365
  store i32 %.2530, i32* %.2359
  br label %.2366wc 
.2545wc:
  %.2549 = load i32, i32* %.2541
  %.2550 = icmp ne i32 %.2549, 0
  br i1 %.2550, label %.2546wloop., label %.2547wn
.2546wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2554 = load i32, i32* %.2538
  store i32 %.2554, i32* %.21
  %.2556 = load i32, i32* %.2541
  store i32 %.2556, i32* %.22
  br label %.2558wc 
.2547wn:
  %.2712 = load i32, i32* %.2538
  store i32 %.2712, i32* %.19
  %.2714 = load i32, i32* %.19
  store i32 %.2714, i32* %.2298
  %.2716 = load i32, i32* %.2301
  store i32 %.2716, i32* %.21
  store i32 1, i32* %.22
  %.2721 = load i32, i32* %.22
  %.2722 = icmp sge i32 %.2721, 15
  br i1 %.2722, label %.2719, label %.2720
.2558wc:
  %.2562 = load i32, i32* %.20
  %.2563 = icmp slt i32 %.2562, 16
  br i1 %.2563, label %.2559wloop., label %.2560wn
.2559wloop.:
  %.2567 = load i32, i32* %.21
  %.2568 = srem i32 %.2567, 2
  %.2569 = icmp ne i32 %.2568, 0
  br i1 %.2569, label %.2565, label %.2566
.2560wn:
  %.2612 = load i32, i32* %.19
  store i32 %.2612, i32* %.2544
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2616 = load i32, i32* %.2538
  store i32 %.2616, i32* %.21
  %.2618 = load i32, i32* %.2541
  store i32 %.2618, i32* %.22
  br label %.2620wc 
.2565:
  %.2573 = load i32, i32* %.22
  %.2574 = srem i32 %.2573, 2
  %.2575 = icmp eq i32 %.2574, 0
  br i1 %.2575, label %.2571, label %.2572
.2566:
  %.2589 = load i32, i32* %.22
  %.2590 = srem i32 %.2589, 2
  %.2591 = icmp ne i32 %.2590, 0
  br i1 %.2591, label %.2587, label %.2588
.2571:
  %.2577 = load i32, i32* %.19
  %.2578 = load i32, i32* %.20
  %.2579 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2578
  %.2580 = load i32, i32* %.2579
  %.2581 = mul i32 1, %.2580
  %.2582 = add i32 %.2577, %.2581
  store i32 %.2582, i32* %.19
  br label %.2572 
.2572:
  br label %.2585 
.2585:
  %.2602 = load i32, i32* %.21
  %.2603 = sdiv i32 %.2602, 2
  store i32 %.2603, i32* %.21
  %.2605 = load i32, i32* %.22
  %.2606 = sdiv i32 %.2605, 2
  store i32 %.2606, i32* %.22
  %.2608 = load i32, i32* %.20
  %.2609 = add i32 %.2608, 1
  store i32 %.2609, i32* %.20
  br label %.2558wc 
.2587:
  %.2593 = load i32, i32* %.19
  %.2594 = load i32, i32* %.20
  %.2595 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2594
  %.2596 = load i32, i32* %.2595
  %.2597 = mul i32 1, %.2596
  %.2598 = add i32 %.2593, %.2597
  store i32 %.2598, i32* %.19
  br label %.2588 
.2588:
  br label %.2585 
.2620wc:
  %.2624 = load i32, i32* %.20
  %.2625 = icmp slt i32 %.2624, 16
  br i1 %.2625, label %.2621wloop., label %.2622wn
.2621wloop.:
  %.2629 = load i32, i32* %.21
  %.2630 = srem i32 %.2629, 2
  %.2631 = icmp ne i32 %.2630, 0
  br i1 %.2631, label %.2632, label %.2628
.2622wn:
  %.2656 = load i32, i32* %.19
  store i32 %.2656, i32* %.2541
  br label %.2659 
.2627:
  %.2638 = load i32, i32* %.19
  %.2639 = load i32, i32* %.20
  %.2640 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2639
  %.2641 = load i32, i32* %.2640
  %.2642 = mul i32 1, %.2641
  %.2643 = add i32 %.2638, %.2642
  store i32 %.2643, i32* %.19
  br label %.2628 
.2628:
  %.2646 = load i32, i32* %.21
  %.2647 = sdiv i32 %.2646, 2
  store i32 %.2647, i32* %.21
  %.2649 = load i32, i32* %.22
  %.2650 = sdiv i32 %.2649, 2
  store i32 %.2650, i32* %.22
  %.2652 = load i32, i32* %.20
  %.2653 = add i32 %.2652, 1
  store i32 %.2653, i32* %.20
  br label %.2620wc 
.2632:
  %.2634 = load i32, i32* %.22
  %.2635 = srem i32 %.2634, 2
  %.2636 = icmp ne i32 %.2635, 0
  br i1 %.2636, label %.2627, label %.2628
.2659:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2663 = load i32, i32* %.2541
  %.2664 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2665 = load i32, i32* %.2664
  %.2666 = mul i32 %.2663, %.2665
  store i32 %.2666, i32* %.21
  store i32 65535, i32* %.22
  br label %.2669wc 
.2669wc:
  %.2673 = load i32, i32* %.20
  %.2674 = icmp slt i32 %.2673, 16
  br i1 %.2674, label %.2670wloop., label %.2671wn
.2670wloop.:
  %.2678 = load i32, i32* %.21
  %.2679 = srem i32 %.2678, 2
  %.2680 = icmp ne i32 %.2679, 0
  br i1 %.2680, label %.2681, label %.2677
.2671wn:
  br label %.2705 
.2676:
  %.2687 = load i32, i32* %.19
  %.2688 = load i32, i32* %.20
  %.2689 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2688
  %.2690 = load i32, i32* %.2689
  %.2691 = mul i32 1, %.2690
  %.2692 = add i32 %.2687, %.2691
  store i32 %.2692, i32* %.19
  br label %.2677 
.2677:
  %.2695 = load i32, i32* %.21
  %.2696 = sdiv i32 %.2695, 2
  store i32 %.2696, i32* %.21
  %.2698 = load i32, i32* %.22
  %.2699 = sdiv i32 %.2698, 2
  store i32 %.2699, i32* %.22
  %.2701 = load i32, i32* %.20
  %.2702 = add i32 %.2701, 1
  store i32 %.2702, i32* %.20
  br label %.2669wc 
.2681:
  %.2683 = load i32, i32* %.22
  %.2684 = srem i32 %.2683, 2
  %.2685 = icmp ne i32 %.2684, 0
  br i1 %.2685, label %.2676, label %.2677
.2705:
  %.2707 = load i32, i32* %.19
  store i32 %.2707, i32* %.2541
  %.2709 = load i32, i32* %.2544
  store i32 %.2709, i32* %.2538
  br label %.2545wc 
.2719:
  %.2726 = load i32, i32* %.21
  %.2727 = icmp slt i32 %.2726, 0
  br i1 %.2727, label %.2724, label %.2725
.2720:
  %.2738 = load i32, i32* %.22
  %.2739 = icmp sgt i32 %.2738, 0
  br i1 %.2739, label %.2736, label %.2737
.2724:
  store i32 65535, i32* %.19
  br label %.2730 
.2725:
  store i32 0, i32* %.19
  br label %.2730 
.2730:
  br label %.2734 
.2734:
  %.2776 = load i32, i32* %.19
  store i32 %.2776, i32* %.2301
  br label %.2306wc 
.2736:
  %.2743 = load i32, i32* %.21
  %.2744 = icmp sgt i32 %.2743, 32767
  br i1 %.2744, label %.2741, label %.2742
.2737:
  %.2772 = load i32, i32* %.21
  store i32 %.2772, i32* %.19
  br label %.2770 
.2741:
  %.2746 = load i32, i32* %.21
  %.2747 = load i32, i32* %.22
  %.2748 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2747
  %.2749 = load i32, i32* %.2748
  %.2750 = sdiv i32 %.2746, %.2749
  store i32 %.2750, i32* %.21
  %.2752 = load i32, i32* %.21
  %.2753 = add i32 %.2752, 65536
  %.2754 = load i32, i32* %.22
  %.2755 = sub i32 15, %.2754
  %.2756 = add i32 %.2755, 1
  %.2757 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2756
  %.2758 = load i32, i32* %.2757
  %.2759 = sub i32 %.2753, %.2758
  store i32 %.2759, i32* %.19
  br label %.2761 
.2742:
  %.2763 = load i32, i32* %.21
  %.2764 = load i32, i32* %.22
  %.2765 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2764
  %.2766 = load i32, i32* %.2765
  %.2767 = sdiv i32 %.2763, %.2766
  store i32 %.2767, i32* %.19
  br label %.2761 
.2761:
  br label %.2770 
.2770:
  br label %.2734 
.2792wc:
  %.2796 = load i32, i32* %.2787
  %.2797 = icmp ne i32 %.2796, 0
  br i1 %.2797, label %.2793wloop., label %.2794wn
.2793wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2801 = load i32, i32* %.2787
  store i32 %.2801, i32* %.21
  store i32 1, i32* %.22
  br label %.2804wc 
.2794wn:
  %.3265 = load i32, i32* %.2790
  store i32 %.3265, i32* %.19
  %.3267 = load i32, i32* %.19
  store i32 %.3267, i32* %.2238
  %.3269 = load i32, i32* %.2240
  store i32 %.3269, i32* %.21
  store i32 1, i32* %.22
  %.3274 = load i32, i32* %.22
  %.3275 = icmp sge i32 %.3274, 15
  br i1 %.3275, label %.3272, label %.3273
.2804wc:
  %.2808 = load i32, i32* %.20
  %.2809 = icmp slt i32 %.2808, 16
  br i1 %.2809, label %.2805wloop., label %.2806wn
.2805wloop.:
  %.2813 = load i32, i32* %.21
  %.2814 = srem i32 %.2813, 2
  %.2815 = icmp ne i32 %.2814, 0
  br i1 %.2815, label %.2816, label %.2812
.2806wn:
  %.2842 = load i32, i32* %.19
  %.2843 = icmp ne i32 %.2842, 0
  br i1 %.2843, label %.2840, label %.2841
.2811:
  %.2822 = load i32, i32* %.19
  %.2823 = load i32, i32* %.20
  %.2824 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2823
  %.2825 = load i32, i32* %.2824
  %.2826 = mul i32 1, %.2825
  %.2827 = add i32 %.2822, %.2826
  store i32 %.2827, i32* %.19
  br label %.2812 
.2812:
  %.2830 = load i32, i32* %.21
  %.2831 = sdiv i32 %.2830, 2
  store i32 %.2831, i32* %.21
  %.2833 = load i32, i32* %.22
  %.2834 = sdiv i32 %.2833, 2
  store i32 %.2834, i32* %.22
  %.2836 = load i32, i32* %.20
  %.2837 = add i32 %.2836, 1
  store i32 %.2837, i32* %.20
  br label %.2804wc 
.2816:
  %.2818 = load i32, i32* %.22
  %.2819 = srem i32 %.2818, 2
  %.2820 = icmp ne i32 %.2819, 0
  br i1 %.2820, label %.2811, label %.2812
.2840:
  %.2846 = load i32, i32* %.2790
  store i32 %.2846, i32* %.2845
  %.2849 = load i32, i32* %.2784
  store i32 %.2849, i32* %.2848
  br label %.2852wc 
.2841:
  %.3025 = load i32, i32* %.2784
  store i32 %.3025, i32* %.3024
  %.3028 = load i32, i32* %.2784
  store i32 %.3028, i32* %.3027
  br label %.3031wc 
.2852wc:
  %.2856 = load i32, i32* %.2848
  %.2857 = icmp ne i32 %.2856, 0
  br i1 %.2857, label %.2853wloop., label %.2854wn
.2853wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2861 = load i32, i32* %.2845
  store i32 %.2861, i32* %.21
  %.2863 = load i32, i32* %.2848
  store i32 %.2863, i32* %.22
  br label %.2865wc 
.2854wn:
  %.3019 = load i32, i32* %.2845
  store i32 %.3019, i32* %.19
  %.3021 = load i32, i32* %.19
  store i32 %.3021, i32* %.2790
  br label %.2841 
.2865wc:
  %.2869 = load i32, i32* %.20
  %.2870 = icmp slt i32 %.2869, 16
  br i1 %.2870, label %.2866wloop., label %.2867wn
.2866wloop.:
  %.2874 = load i32, i32* %.21
  %.2875 = srem i32 %.2874, 2
  %.2876 = icmp ne i32 %.2875, 0
  br i1 %.2876, label %.2872, label %.2873
.2867wn:
  %.2919 = load i32, i32* %.19
  store i32 %.2919, i32* %.2851
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2923 = load i32, i32* %.2845
  store i32 %.2923, i32* %.21
  %.2925 = load i32, i32* %.2848
  store i32 %.2925, i32* %.22
  br label %.2927wc 
.2872:
  %.2880 = load i32, i32* %.22
  %.2881 = srem i32 %.2880, 2
  %.2882 = icmp eq i32 %.2881, 0
  br i1 %.2882, label %.2878, label %.2879
.2873:
  %.2896 = load i32, i32* %.22
  %.2897 = srem i32 %.2896, 2
  %.2898 = icmp ne i32 %.2897, 0
  br i1 %.2898, label %.2894, label %.2895
.2878:
  %.2884 = load i32, i32* %.19
  %.2885 = load i32, i32* %.20
  %.2886 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2885
  %.2887 = load i32, i32* %.2886
  %.2888 = mul i32 1, %.2887
  %.2889 = add i32 %.2884, %.2888
  store i32 %.2889, i32* %.19
  br label %.2879 
.2879:
  br label %.2892 
.2892:
  %.2909 = load i32, i32* %.21
  %.2910 = sdiv i32 %.2909, 2
  store i32 %.2910, i32* %.21
  %.2912 = load i32, i32* %.22
  %.2913 = sdiv i32 %.2912, 2
  store i32 %.2913, i32* %.22
  %.2915 = load i32, i32* %.20
  %.2916 = add i32 %.2915, 1
  store i32 %.2916, i32* %.20
  br label %.2865wc 
.2894:
  %.2900 = load i32, i32* %.19
  %.2901 = load i32, i32* %.20
  %.2902 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2901
  %.2903 = load i32, i32* %.2902
  %.2904 = mul i32 1, %.2903
  %.2905 = add i32 %.2900, %.2904
  store i32 %.2905, i32* %.19
  br label %.2895 
.2895:
  br label %.2892 
.2927wc:
  %.2931 = load i32, i32* %.20
  %.2932 = icmp slt i32 %.2931, 16
  br i1 %.2932, label %.2928wloop., label %.2929wn
.2928wloop.:
  %.2936 = load i32, i32* %.21
  %.2937 = srem i32 %.2936, 2
  %.2938 = icmp ne i32 %.2937, 0
  br i1 %.2938, label %.2939, label %.2935
.2929wn:
  %.2963 = load i32, i32* %.19
  store i32 %.2963, i32* %.2848
  br label %.2966 
.2934:
  %.2945 = load i32, i32* %.19
  %.2946 = load i32, i32* %.20
  %.2947 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2946
  %.2948 = load i32, i32* %.2947
  %.2949 = mul i32 1, %.2948
  %.2950 = add i32 %.2945, %.2949
  store i32 %.2950, i32* %.19
  br label %.2935 
.2935:
  %.2953 = load i32, i32* %.21
  %.2954 = sdiv i32 %.2953, 2
  store i32 %.2954, i32* %.21
  %.2956 = load i32, i32* %.22
  %.2957 = sdiv i32 %.2956, 2
  store i32 %.2957, i32* %.22
  %.2959 = load i32, i32* %.20
  %.2960 = add i32 %.2959, 1
  store i32 %.2960, i32* %.20
  br label %.2927wc 
.2939:
  %.2941 = load i32, i32* %.22
  %.2942 = srem i32 %.2941, 2
  %.2943 = icmp ne i32 %.2942, 0
  br i1 %.2943, label %.2934, label %.2935
.2966:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.2970 = load i32, i32* %.2848
  %.2971 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.2972 = load i32, i32* %.2971
  %.2973 = mul i32 %.2970, %.2972
  store i32 %.2973, i32* %.21
  store i32 65535, i32* %.22
  br label %.2976wc 
.2976wc:
  %.2980 = load i32, i32* %.20
  %.2981 = icmp slt i32 %.2980, 16
  br i1 %.2981, label %.2977wloop., label %.2978wn
.2977wloop.:
  %.2985 = load i32, i32* %.21
  %.2986 = srem i32 %.2985, 2
  %.2987 = icmp ne i32 %.2986, 0
  br i1 %.2987, label %.2988, label %.2984
.2978wn:
  br label %.3012 
.2983:
  %.2994 = load i32, i32* %.19
  %.2995 = load i32, i32* %.20
  %.2996 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.2995
  %.2997 = load i32, i32* %.2996
  %.2998 = mul i32 1, %.2997
  %.2999 = add i32 %.2994, %.2998
  store i32 %.2999, i32* %.19
  br label %.2984 
.2984:
  %.3002 = load i32, i32* %.21
  %.3003 = sdiv i32 %.3002, 2
  store i32 %.3003, i32* %.21
  %.3005 = load i32, i32* %.22
  %.3006 = sdiv i32 %.3005, 2
  store i32 %.3006, i32* %.22
  %.3008 = load i32, i32* %.20
  %.3009 = add i32 %.3008, 1
  store i32 %.3009, i32* %.20
  br label %.2976wc 
.2988:
  %.2990 = load i32, i32* %.22
  %.2991 = srem i32 %.2990, 2
  %.2992 = icmp ne i32 %.2991, 0
  br i1 %.2992, label %.2983, label %.2984
.3012:
  %.3014 = load i32, i32* %.19
  store i32 %.3014, i32* %.2848
  %.3016 = load i32, i32* %.2851
  store i32 %.3016, i32* %.2845
  br label %.2852wc 
.3031wc:
  %.3035 = load i32, i32* %.3027
  %.3036 = icmp ne i32 %.3035, 0
  br i1 %.3036, label %.3032wloop., label %.3033wn
.3032wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3040 = load i32, i32* %.3024
  store i32 %.3040, i32* %.21
  %.3042 = load i32, i32* %.3027
  store i32 %.3042, i32* %.22
  br label %.3044wc 
.3033wn:
  %.3198 = load i32, i32* %.3024
  store i32 %.3198, i32* %.19
  %.3200 = load i32, i32* %.19
  store i32 %.3200, i32* %.2784
  %.3202 = load i32, i32* %.2787
  store i32 %.3202, i32* %.21
  store i32 1, i32* %.22
  %.3207 = load i32, i32* %.22
  %.3208 = icmp sge i32 %.3207, 15
  br i1 %.3208, label %.3205, label %.3206
.3044wc:
  %.3048 = load i32, i32* %.20
  %.3049 = icmp slt i32 %.3048, 16
  br i1 %.3049, label %.3045wloop., label %.3046wn
.3045wloop.:
  %.3053 = load i32, i32* %.21
  %.3054 = srem i32 %.3053, 2
  %.3055 = icmp ne i32 %.3054, 0
  br i1 %.3055, label %.3051, label %.3052
.3046wn:
  %.3098 = load i32, i32* %.19
  store i32 %.3098, i32* %.3030
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3102 = load i32, i32* %.3024
  store i32 %.3102, i32* %.21
  %.3104 = load i32, i32* %.3027
  store i32 %.3104, i32* %.22
  br label %.3106wc 
.3051:
  %.3059 = load i32, i32* %.22
  %.3060 = srem i32 %.3059, 2
  %.3061 = icmp eq i32 %.3060, 0
  br i1 %.3061, label %.3057, label %.3058
.3052:
  %.3075 = load i32, i32* %.22
  %.3076 = srem i32 %.3075, 2
  %.3077 = icmp ne i32 %.3076, 0
  br i1 %.3077, label %.3073, label %.3074
.3057:
  %.3063 = load i32, i32* %.19
  %.3064 = load i32, i32* %.20
  %.3065 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3064
  %.3066 = load i32, i32* %.3065
  %.3067 = mul i32 1, %.3066
  %.3068 = add i32 %.3063, %.3067
  store i32 %.3068, i32* %.19
  br label %.3058 
.3058:
  br label %.3071 
.3071:
  %.3088 = load i32, i32* %.21
  %.3089 = sdiv i32 %.3088, 2
  store i32 %.3089, i32* %.21
  %.3091 = load i32, i32* %.22
  %.3092 = sdiv i32 %.3091, 2
  store i32 %.3092, i32* %.22
  %.3094 = load i32, i32* %.20
  %.3095 = add i32 %.3094, 1
  store i32 %.3095, i32* %.20
  br label %.3044wc 
.3073:
  %.3079 = load i32, i32* %.19
  %.3080 = load i32, i32* %.20
  %.3081 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3080
  %.3082 = load i32, i32* %.3081
  %.3083 = mul i32 1, %.3082
  %.3084 = add i32 %.3079, %.3083
  store i32 %.3084, i32* %.19
  br label %.3074 
.3074:
  br label %.3071 
.3106wc:
  %.3110 = load i32, i32* %.20
  %.3111 = icmp slt i32 %.3110, 16
  br i1 %.3111, label %.3107wloop., label %.3108wn
.3107wloop.:
  %.3115 = load i32, i32* %.21
  %.3116 = srem i32 %.3115, 2
  %.3117 = icmp ne i32 %.3116, 0
  br i1 %.3117, label %.3118, label %.3114
.3108wn:
  %.3142 = load i32, i32* %.19
  store i32 %.3142, i32* %.3027
  br label %.3145 
.3113:
  %.3124 = load i32, i32* %.19
  %.3125 = load i32, i32* %.20
  %.3126 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3125
  %.3127 = load i32, i32* %.3126
  %.3128 = mul i32 1, %.3127
  %.3129 = add i32 %.3124, %.3128
  store i32 %.3129, i32* %.19
  br label %.3114 
.3114:
  %.3132 = load i32, i32* %.21
  %.3133 = sdiv i32 %.3132, 2
  store i32 %.3133, i32* %.21
  %.3135 = load i32, i32* %.22
  %.3136 = sdiv i32 %.3135, 2
  store i32 %.3136, i32* %.22
  %.3138 = load i32, i32* %.20
  %.3139 = add i32 %.3138, 1
  store i32 %.3139, i32* %.20
  br label %.3106wc 
.3118:
  %.3120 = load i32, i32* %.22
  %.3121 = srem i32 %.3120, 2
  %.3122 = icmp ne i32 %.3121, 0
  br i1 %.3122, label %.3113, label %.3114
.3145:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3149 = load i32, i32* %.3027
  %.3150 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3151 = load i32, i32* %.3150
  %.3152 = mul i32 %.3149, %.3151
  store i32 %.3152, i32* %.21
  store i32 65535, i32* %.22
  br label %.3155wc 
.3155wc:
  %.3159 = load i32, i32* %.20
  %.3160 = icmp slt i32 %.3159, 16
  br i1 %.3160, label %.3156wloop., label %.3157wn
.3156wloop.:
  %.3164 = load i32, i32* %.21
  %.3165 = srem i32 %.3164, 2
  %.3166 = icmp ne i32 %.3165, 0
  br i1 %.3166, label %.3167, label %.3163
.3157wn:
  br label %.3191 
.3162:
  %.3173 = load i32, i32* %.19
  %.3174 = load i32, i32* %.20
  %.3175 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3174
  %.3176 = load i32, i32* %.3175
  %.3177 = mul i32 1, %.3176
  %.3178 = add i32 %.3173, %.3177
  store i32 %.3178, i32* %.19
  br label %.3163 
.3163:
  %.3181 = load i32, i32* %.21
  %.3182 = sdiv i32 %.3181, 2
  store i32 %.3182, i32* %.21
  %.3184 = load i32, i32* %.22
  %.3185 = sdiv i32 %.3184, 2
  store i32 %.3185, i32* %.22
  %.3187 = load i32, i32* %.20
  %.3188 = add i32 %.3187, 1
  store i32 %.3188, i32* %.20
  br label %.3155wc 
.3167:
  %.3169 = load i32, i32* %.22
  %.3170 = srem i32 %.3169, 2
  %.3171 = icmp ne i32 %.3170, 0
  br i1 %.3171, label %.3162, label %.3163
.3191:
  %.3193 = load i32, i32* %.19
  store i32 %.3193, i32* %.3027
  %.3195 = load i32, i32* %.3030
  store i32 %.3195, i32* %.3024
  br label %.3031wc 
.3205:
  %.3212 = load i32, i32* %.21
  %.3213 = icmp slt i32 %.3212, 0
  br i1 %.3213, label %.3210, label %.3211
.3206:
  %.3224 = load i32, i32* %.22
  %.3225 = icmp sgt i32 %.3224, 0
  br i1 %.3225, label %.3222, label %.3223
.3210:
  store i32 65535, i32* %.19
  br label %.3216 
.3211:
  store i32 0, i32* %.19
  br label %.3216 
.3216:
  br label %.3220 
.3220:
  %.3262 = load i32, i32* %.19
  store i32 %.3262, i32* %.2787
  br label %.2792wc 
.3222:
  %.3229 = load i32, i32* %.21
  %.3230 = icmp sgt i32 %.3229, 32767
  br i1 %.3230, label %.3227, label %.3228
.3223:
  %.3258 = load i32, i32* %.21
  store i32 %.3258, i32* %.19
  br label %.3256 
.3227:
  %.3232 = load i32, i32* %.21
  %.3233 = load i32, i32* %.22
  %.3234 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3233
  %.3235 = load i32, i32* %.3234
  %.3236 = sdiv i32 %.3232, %.3235
  store i32 %.3236, i32* %.21
  %.3238 = load i32, i32* %.21
  %.3239 = add i32 %.3238, 65536
  %.3240 = load i32, i32* %.22
  %.3241 = sub i32 15, %.3240
  %.3242 = add i32 %.3241, 1
  %.3243 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3242
  %.3244 = load i32, i32* %.3243
  %.3245 = sub i32 %.3239, %.3244
  store i32 %.3245, i32* %.19
  br label %.3247 
.3228:
  %.3249 = load i32, i32* %.21
  %.3250 = load i32, i32* %.22
  %.3251 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3250
  %.3252 = load i32, i32* %.3251
  %.3253 = sdiv i32 %.3249, %.3252
  store i32 %.3253, i32* %.19
  br label %.3247 
.3247:
  br label %.3256 
.3256:
  br label %.3220 
.3272:
  %.3279 = load i32, i32* %.21
  %.3280 = icmp slt i32 %.3279, 0
  br i1 %.3280, label %.3277, label %.3278
.3273:
  %.3291 = load i32, i32* %.22
  %.3292 = icmp sgt i32 %.3291, 0
  br i1 %.3292, label %.3289, label %.3290
.3277:
  store i32 65535, i32* %.19
  br label %.3283 
.3278:
  store i32 0, i32* %.19
  br label %.3283 
.3283:
  br label %.3287 
.3287:
  %.3329 = load i32, i32* %.19
  store i32 %.3329, i32* %.2240
  br label %.2245wc 
.3289:
  %.3296 = load i32, i32* %.21
  %.3297 = icmp sgt i32 %.3296, 32767
  br i1 %.3297, label %.3294, label %.3295
.3290:
  %.3325 = load i32, i32* %.21
  store i32 %.3325, i32* %.19
  br label %.3323 
.3294:
  %.3299 = load i32, i32* %.21
  %.3300 = load i32, i32* %.22
  %.3301 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3300
  %.3302 = load i32, i32* %.3301
  %.3303 = sdiv i32 %.3299, %.3302
  store i32 %.3303, i32* %.21
  %.3305 = load i32, i32* %.21
  %.3306 = add i32 %.3305, 65536
  %.3307 = load i32, i32* %.22
  %.3308 = sub i32 15, %.3307
  %.3309 = add i32 %.3308, 1
  %.3310 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3309
  %.3311 = load i32, i32* %.3310
  %.3312 = sub i32 %.3306, %.3311
  store i32 %.3312, i32* %.19
  br label %.3314 
.3295:
  %.3316 = load i32, i32* %.21
  %.3317 = load i32, i32* %.22
  %.3318 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3317
  %.3319 = load i32, i32* %.3318
  %.3320 = sdiv i32 %.3316, %.3319
  store i32 %.3320, i32* %.19
  br label %.3314 
.3314:
  br label %.3323 
.3323:
  br label %.3287 
.3342wc:
  %.3346 = load i32, i32* %.23
  %.3347 = icmp slt i32 %.3346, 16
  br i1 %.3347, label %.3343wloop., label %.3344wn
.3343wloop.:
  store i32 2, i32* %.3349
  %.3352 = load i32, i32* %.23
  store i32 %.3352, i32* %.3351
  store i32 1, i32* %.3354
  br label %.3356wc 
.3344wn:
  ret i32 0 
.3356wc:
  %.3360 = load i32, i32* %.3351
  %.3361 = icmp sgt i32 %.3360, 0
  br i1 %.3361, label %.3357wloop., label %.3358wn
.3357wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3365 = load i32, i32* %.3351
  store i32 %.3365, i32* %.21
  store i32 1, i32* %.22
  br label %.3368wc 
.3358wn:
  %.4443 = load i32, i32* %.3354
  store i32 %.4443, i32* %.19
  %.4447 = load i32, i32* %.23
  %.4448 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4447
  %.4449 = load i32, i32* %.4448
  %.4450 = load i32, i32* %.19
  %.4451 = icmp ne i32 %.4449, %.4450
  br i1 %.4451, label %.4445, label %.4446
.3368wc:
  %.3372 = load i32, i32* %.20
  %.3373 = icmp slt i32 %.3372, 16
  br i1 %.3373, label %.3369wloop., label %.3370wn
.3369wloop.:
  %.3377 = load i32, i32* %.21
  %.3378 = srem i32 %.3377, 2
  %.3379 = icmp ne i32 %.3378, 0
  br i1 %.3379, label %.3380, label %.3376
.3370wn:
  %.3406 = load i32, i32* %.19
  %.3407 = icmp ne i32 %.3406, 0
  br i1 %.3407, label %.3404, label %.3405
.3375:
  %.3386 = load i32, i32* %.19
  %.3387 = load i32, i32* %.20
  %.3388 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3387
  %.3389 = load i32, i32* %.3388
  %.3390 = mul i32 1, %.3389
  %.3391 = add i32 %.3386, %.3390
  store i32 %.3391, i32* %.19
  br label %.3376 
.3376:
  %.3394 = load i32, i32* %.21
  %.3395 = sdiv i32 %.3394, 2
  store i32 %.3395, i32* %.21
  %.3397 = load i32, i32* %.22
  %.3398 = sdiv i32 %.3397, 2
  store i32 %.3398, i32* %.22
  %.3400 = load i32, i32* %.20
  %.3401 = add i32 %.3400, 1
  store i32 %.3401, i32* %.20
  br label %.3368wc 
.3380:
  %.3382 = load i32, i32* %.22
  %.3383 = srem i32 %.3382, 2
  %.3384 = icmp ne i32 %.3383, 0
  br i1 %.3384, label %.3375, label %.3376
.3404:
  %.3410 = load i32, i32* %.3354
  store i32 %.3410, i32* %.3409
  %.3413 = load i32, i32* %.3349
  store i32 %.3413, i32* %.3412
  store i32 0, i32* %.3415
  br label %.3417wc 
.3405:
  %.3896 = load i32, i32* %.3349
  store i32 %.3896, i32* %.3895
  %.3899 = load i32, i32* %.3349
  store i32 %.3899, i32* %.3898
  store i32 0, i32* %.3901
  br label %.3903wc 
.3417wc:
  %.3421 = load i32, i32* %.3412
  %.3422 = icmp ne i32 %.3421, 0
  br i1 %.3422, label %.3418wloop., label %.3419wn
.3418wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3426 = load i32, i32* %.3412
  store i32 %.3426, i32* %.21
  store i32 1, i32* %.22
  br label %.3429wc 
.3419wn:
  %.3890 = load i32, i32* %.3415
  store i32 %.3890, i32* %.19
  %.3892 = load i32, i32* %.19
  store i32 %.3892, i32* %.3354
  br label %.3405 
.3429wc:
  %.3433 = load i32, i32* %.20
  %.3434 = icmp slt i32 %.3433, 16
  br i1 %.3434, label %.3430wloop., label %.3431wn
.3430wloop.:
  %.3438 = load i32, i32* %.21
  %.3439 = srem i32 %.3438, 2
  %.3440 = icmp ne i32 %.3439, 0
  br i1 %.3440, label %.3441, label %.3437
.3431wn:
  %.3467 = load i32, i32* %.19
  %.3468 = icmp ne i32 %.3467, 0
  br i1 %.3468, label %.3465, label %.3466
.3436:
  %.3447 = load i32, i32* %.19
  %.3448 = load i32, i32* %.20
  %.3449 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3448
  %.3450 = load i32, i32* %.3449
  %.3451 = mul i32 1, %.3450
  %.3452 = add i32 %.3447, %.3451
  store i32 %.3452, i32* %.19
  br label %.3437 
.3437:
  %.3455 = load i32, i32* %.21
  %.3456 = sdiv i32 %.3455, 2
  store i32 %.3456, i32* %.21
  %.3458 = load i32, i32* %.22
  %.3459 = sdiv i32 %.3458, 2
  store i32 %.3459, i32* %.22
  %.3461 = load i32, i32* %.20
  %.3462 = add i32 %.3461, 1
  store i32 %.3462, i32* %.20
  br label %.3429wc 
.3441:
  %.3443 = load i32, i32* %.22
  %.3444 = srem i32 %.3443, 2
  %.3445 = icmp ne i32 %.3444, 0
  br i1 %.3445, label %.3436, label %.3437
.3465:
  %.3471 = load i32, i32* %.3415
  store i32 %.3471, i32* %.3470
  %.3474 = load i32, i32* %.3409
  store i32 %.3474, i32* %.3473
  br label %.3477wc 
.3466:
  %.3650 = load i32, i32* %.3409
  store i32 %.3650, i32* %.3649
  %.3653 = load i32, i32* %.3409
  store i32 %.3653, i32* %.3652
  br label %.3656wc 
.3477wc:
  %.3481 = load i32, i32* %.3473
  %.3482 = icmp ne i32 %.3481, 0
  br i1 %.3482, label %.3478wloop., label %.3479wn
.3478wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3486 = load i32, i32* %.3470
  store i32 %.3486, i32* %.21
  %.3488 = load i32, i32* %.3473
  store i32 %.3488, i32* %.22
  br label %.3490wc 
.3479wn:
  %.3644 = load i32, i32* %.3470
  store i32 %.3644, i32* %.19
  %.3646 = load i32, i32* %.19
  store i32 %.3646, i32* %.3415
  br label %.3466 
.3490wc:
  %.3494 = load i32, i32* %.20
  %.3495 = icmp slt i32 %.3494, 16
  br i1 %.3495, label %.3491wloop., label %.3492wn
.3491wloop.:
  %.3499 = load i32, i32* %.21
  %.3500 = srem i32 %.3499, 2
  %.3501 = icmp ne i32 %.3500, 0
  br i1 %.3501, label %.3497, label %.3498
.3492wn:
  %.3544 = load i32, i32* %.19
  store i32 %.3544, i32* %.3476
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3548 = load i32, i32* %.3470
  store i32 %.3548, i32* %.21
  %.3550 = load i32, i32* %.3473
  store i32 %.3550, i32* %.22
  br label %.3552wc 
.3497:
  %.3505 = load i32, i32* %.22
  %.3506 = srem i32 %.3505, 2
  %.3507 = icmp eq i32 %.3506, 0
  br i1 %.3507, label %.3503, label %.3504
.3498:
  %.3521 = load i32, i32* %.22
  %.3522 = srem i32 %.3521, 2
  %.3523 = icmp ne i32 %.3522, 0
  br i1 %.3523, label %.3519, label %.3520
.3503:
  %.3509 = load i32, i32* %.19
  %.3510 = load i32, i32* %.20
  %.3511 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3510
  %.3512 = load i32, i32* %.3511
  %.3513 = mul i32 1, %.3512
  %.3514 = add i32 %.3509, %.3513
  store i32 %.3514, i32* %.19
  br label %.3504 
.3504:
  br label %.3517 
.3517:
  %.3534 = load i32, i32* %.21
  %.3535 = sdiv i32 %.3534, 2
  store i32 %.3535, i32* %.21
  %.3537 = load i32, i32* %.22
  %.3538 = sdiv i32 %.3537, 2
  store i32 %.3538, i32* %.22
  %.3540 = load i32, i32* %.20
  %.3541 = add i32 %.3540, 1
  store i32 %.3541, i32* %.20
  br label %.3490wc 
.3519:
  %.3525 = load i32, i32* %.19
  %.3526 = load i32, i32* %.20
  %.3527 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3526
  %.3528 = load i32, i32* %.3527
  %.3529 = mul i32 1, %.3528
  %.3530 = add i32 %.3525, %.3529
  store i32 %.3530, i32* %.19
  br label %.3520 
.3520:
  br label %.3517 
.3552wc:
  %.3556 = load i32, i32* %.20
  %.3557 = icmp slt i32 %.3556, 16
  br i1 %.3557, label %.3553wloop., label %.3554wn
.3553wloop.:
  %.3561 = load i32, i32* %.21
  %.3562 = srem i32 %.3561, 2
  %.3563 = icmp ne i32 %.3562, 0
  br i1 %.3563, label %.3564, label %.3560
.3554wn:
  %.3588 = load i32, i32* %.19
  store i32 %.3588, i32* %.3473
  br label %.3591 
.3559:
  %.3570 = load i32, i32* %.19
  %.3571 = load i32, i32* %.20
  %.3572 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3571
  %.3573 = load i32, i32* %.3572
  %.3574 = mul i32 1, %.3573
  %.3575 = add i32 %.3570, %.3574
  store i32 %.3575, i32* %.19
  br label %.3560 
.3560:
  %.3578 = load i32, i32* %.21
  %.3579 = sdiv i32 %.3578, 2
  store i32 %.3579, i32* %.21
  %.3581 = load i32, i32* %.22
  %.3582 = sdiv i32 %.3581, 2
  store i32 %.3582, i32* %.22
  %.3584 = load i32, i32* %.20
  %.3585 = add i32 %.3584, 1
  store i32 %.3585, i32* %.20
  br label %.3552wc 
.3564:
  %.3566 = load i32, i32* %.22
  %.3567 = srem i32 %.3566, 2
  %.3568 = icmp ne i32 %.3567, 0
  br i1 %.3568, label %.3559, label %.3560
.3591:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3595 = load i32, i32* %.3473
  %.3596 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3597 = load i32, i32* %.3596
  %.3598 = mul i32 %.3595, %.3597
  store i32 %.3598, i32* %.21
  store i32 65535, i32* %.22
  br label %.3601wc 
.3601wc:
  %.3605 = load i32, i32* %.20
  %.3606 = icmp slt i32 %.3605, 16
  br i1 %.3606, label %.3602wloop., label %.3603wn
.3602wloop.:
  %.3610 = load i32, i32* %.21
  %.3611 = srem i32 %.3610, 2
  %.3612 = icmp ne i32 %.3611, 0
  br i1 %.3612, label %.3613, label %.3609
.3603wn:
  br label %.3637 
.3608:
  %.3619 = load i32, i32* %.19
  %.3620 = load i32, i32* %.20
  %.3621 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3620
  %.3622 = load i32, i32* %.3621
  %.3623 = mul i32 1, %.3622
  %.3624 = add i32 %.3619, %.3623
  store i32 %.3624, i32* %.19
  br label %.3609 
.3609:
  %.3627 = load i32, i32* %.21
  %.3628 = sdiv i32 %.3627, 2
  store i32 %.3628, i32* %.21
  %.3630 = load i32, i32* %.22
  %.3631 = sdiv i32 %.3630, 2
  store i32 %.3631, i32* %.22
  %.3633 = load i32, i32* %.20
  %.3634 = add i32 %.3633, 1
  store i32 %.3634, i32* %.20
  br label %.3601wc 
.3613:
  %.3615 = load i32, i32* %.22
  %.3616 = srem i32 %.3615, 2
  %.3617 = icmp ne i32 %.3616, 0
  br i1 %.3617, label %.3608, label %.3609
.3637:
  %.3639 = load i32, i32* %.19
  store i32 %.3639, i32* %.3473
  %.3641 = load i32, i32* %.3476
  store i32 %.3641, i32* %.3470
  br label %.3477wc 
.3656wc:
  %.3660 = load i32, i32* %.3652
  %.3661 = icmp ne i32 %.3660, 0
  br i1 %.3661, label %.3657wloop., label %.3658wn
.3657wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3665 = load i32, i32* %.3649
  store i32 %.3665, i32* %.21
  %.3667 = load i32, i32* %.3652
  store i32 %.3667, i32* %.22
  br label %.3669wc 
.3658wn:
  %.3823 = load i32, i32* %.3649
  store i32 %.3823, i32* %.19
  %.3825 = load i32, i32* %.19
  store i32 %.3825, i32* %.3409
  %.3827 = load i32, i32* %.3412
  store i32 %.3827, i32* %.21
  store i32 1, i32* %.22
  %.3832 = load i32, i32* %.22
  %.3833 = icmp sge i32 %.3832, 15
  br i1 %.3833, label %.3830, label %.3831
.3669wc:
  %.3673 = load i32, i32* %.20
  %.3674 = icmp slt i32 %.3673, 16
  br i1 %.3674, label %.3670wloop., label %.3671wn
.3670wloop.:
  %.3678 = load i32, i32* %.21
  %.3679 = srem i32 %.3678, 2
  %.3680 = icmp ne i32 %.3679, 0
  br i1 %.3680, label %.3676, label %.3677
.3671wn:
  %.3723 = load i32, i32* %.19
  store i32 %.3723, i32* %.3655
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3727 = load i32, i32* %.3649
  store i32 %.3727, i32* %.21
  %.3729 = load i32, i32* %.3652
  store i32 %.3729, i32* %.22
  br label %.3731wc 
.3676:
  %.3684 = load i32, i32* %.22
  %.3685 = srem i32 %.3684, 2
  %.3686 = icmp eq i32 %.3685, 0
  br i1 %.3686, label %.3682, label %.3683
.3677:
  %.3700 = load i32, i32* %.22
  %.3701 = srem i32 %.3700, 2
  %.3702 = icmp ne i32 %.3701, 0
  br i1 %.3702, label %.3698, label %.3699
.3682:
  %.3688 = load i32, i32* %.19
  %.3689 = load i32, i32* %.20
  %.3690 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3689
  %.3691 = load i32, i32* %.3690
  %.3692 = mul i32 1, %.3691
  %.3693 = add i32 %.3688, %.3692
  store i32 %.3693, i32* %.19
  br label %.3683 
.3683:
  br label %.3696 
.3696:
  %.3713 = load i32, i32* %.21
  %.3714 = sdiv i32 %.3713, 2
  store i32 %.3714, i32* %.21
  %.3716 = load i32, i32* %.22
  %.3717 = sdiv i32 %.3716, 2
  store i32 %.3717, i32* %.22
  %.3719 = load i32, i32* %.20
  %.3720 = add i32 %.3719, 1
  store i32 %.3720, i32* %.20
  br label %.3669wc 
.3698:
  %.3704 = load i32, i32* %.19
  %.3705 = load i32, i32* %.20
  %.3706 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3705
  %.3707 = load i32, i32* %.3706
  %.3708 = mul i32 1, %.3707
  %.3709 = add i32 %.3704, %.3708
  store i32 %.3709, i32* %.19
  br label %.3699 
.3699:
  br label %.3696 
.3731wc:
  %.3735 = load i32, i32* %.20
  %.3736 = icmp slt i32 %.3735, 16
  br i1 %.3736, label %.3732wloop., label %.3733wn
.3732wloop.:
  %.3740 = load i32, i32* %.21
  %.3741 = srem i32 %.3740, 2
  %.3742 = icmp ne i32 %.3741, 0
  br i1 %.3742, label %.3743, label %.3739
.3733wn:
  %.3767 = load i32, i32* %.19
  store i32 %.3767, i32* %.3652
  br label %.3770 
.3738:
  %.3749 = load i32, i32* %.19
  %.3750 = load i32, i32* %.20
  %.3751 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3750
  %.3752 = load i32, i32* %.3751
  %.3753 = mul i32 1, %.3752
  %.3754 = add i32 %.3749, %.3753
  store i32 %.3754, i32* %.19
  br label %.3739 
.3739:
  %.3757 = load i32, i32* %.21
  %.3758 = sdiv i32 %.3757, 2
  store i32 %.3758, i32* %.21
  %.3760 = load i32, i32* %.22
  %.3761 = sdiv i32 %.3760, 2
  store i32 %.3761, i32* %.22
  %.3763 = load i32, i32* %.20
  %.3764 = add i32 %.3763, 1
  store i32 %.3764, i32* %.20
  br label %.3731wc 
.3743:
  %.3745 = load i32, i32* %.22
  %.3746 = srem i32 %.3745, 2
  %.3747 = icmp ne i32 %.3746, 0
  br i1 %.3747, label %.3738, label %.3739
.3770:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3774 = load i32, i32* %.3652
  %.3775 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.3776 = load i32, i32* %.3775
  %.3777 = mul i32 %.3774, %.3776
  store i32 %.3777, i32* %.21
  store i32 65535, i32* %.22
  br label %.3780wc 
.3780wc:
  %.3784 = load i32, i32* %.20
  %.3785 = icmp slt i32 %.3784, 16
  br i1 %.3785, label %.3781wloop., label %.3782wn
.3781wloop.:
  %.3789 = load i32, i32* %.21
  %.3790 = srem i32 %.3789, 2
  %.3791 = icmp ne i32 %.3790, 0
  br i1 %.3791, label %.3792, label %.3788
.3782wn:
  br label %.3816 
.3787:
  %.3798 = load i32, i32* %.19
  %.3799 = load i32, i32* %.20
  %.3800 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3799
  %.3801 = load i32, i32* %.3800
  %.3802 = mul i32 1, %.3801
  %.3803 = add i32 %.3798, %.3802
  store i32 %.3803, i32* %.19
  br label %.3788 
.3788:
  %.3806 = load i32, i32* %.21
  %.3807 = sdiv i32 %.3806, 2
  store i32 %.3807, i32* %.21
  %.3809 = load i32, i32* %.22
  %.3810 = sdiv i32 %.3809, 2
  store i32 %.3810, i32* %.22
  %.3812 = load i32, i32* %.20
  %.3813 = add i32 %.3812, 1
  store i32 %.3813, i32* %.20
  br label %.3780wc 
.3792:
  %.3794 = load i32, i32* %.22
  %.3795 = srem i32 %.3794, 2
  %.3796 = icmp ne i32 %.3795, 0
  br i1 %.3796, label %.3787, label %.3788
.3816:
  %.3818 = load i32, i32* %.19
  store i32 %.3818, i32* %.3652
  %.3820 = load i32, i32* %.3655
  store i32 %.3820, i32* %.3649
  br label %.3656wc 
.3830:
  %.3837 = load i32, i32* %.21
  %.3838 = icmp slt i32 %.3837, 0
  br i1 %.3838, label %.3835, label %.3836
.3831:
  %.3849 = load i32, i32* %.22
  %.3850 = icmp sgt i32 %.3849, 0
  br i1 %.3850, label %.3847, label %.3848
.3835:
  store i32 65535, i32* %.19
  br label %.3841 
.3836:
  store i32 0, i32* %.19
  br label %.3841 
.3841:
  br label %.3845 
.3845:
  %.3887 = load i32, i32* %.19
  store i32 %.3887, i32* %.3412
  br label %.3417wc 
.3847:
  %.3854 = load i32, i32* %.21
  %.3855 = icmp sgt i32 %.3854, 32767
  br i1 %.3855, label %.3852, label %.3853
.3848:
  %.3883 = load i32, i32* %.21
  store i32 %.3883, i32* %.19
  br label %.3881 
.3852:
  %.3857 = load i32, i32* %.21
  %.3858 = load i32, i32* %.22
  %.3859 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3858
  %.3860 = load i32, i32* %.3859
  %.3861 = sdiv i32 %.3857, %.3860
  store i32 %.3861, i32* %.21
  %.3863 = load i32, i32* %.21
  %.3864 = add i32 %.3863, 65536
  %.3865 = load i32, i32* %.22
  %.3866 = sub i32 15, %.3865
  %.3867 = add i32 %.3866, 1
  %.3868 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3867
  %.3869 = load i32, i32* %.3868
  %.3870 = sub i32 %.3864, %.3869
  store i32 %.3870, i32* %.19
  br label %.3872 
.3853:
  %.3874 = load i32, i32* %.21
  %.3875 = load i32, i32* %.22
  %.3876 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3875
  %.3877 = load i32, i32* %.3876
  %.3878 = sdiv i32 %.3874, %.3877
  store i32 %.3878, i32* %.19
  br label %.3872 
.3872:
  br label %.3881 
.3881:
  br label %.3845 
.3903wc:
  %.3907 = load i32, i32* %.3898
  %.3908 = icmp ne i32 %.3907, 0
  br i1 %.3908, label %.3904wloop., label %.3905wn
.3904wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3912 = load i32, i32* %.3898
  store i32 %.3912, i32* %.21
  store i32 1, i32* %.22
  br label %.3915wc 
.3905wn:
  %.4376 = load i32, i32* %.3901
  store i32 %.4376, i32* %.19
  %.4378 = load i32, i32* %.19
  store i32 %.4378, i32* %.3349
  %.4380 = load i32, i32* %.3351
  store i32 %.4380, i32* %.21
  store i32 1, i32* %.22
  %.4385 = load i32, i32* %.22
  %.4386 = icmp sge i32 %.4385, 15
  br i1 %.4386, label %.4383, label %.4384
.3915wc:
  %.3919 = load i32, i32* %.20
  %.3920 = icmp slt i32 %.3919, 16
  br i1 %.3920, label %.3916wloop., label %.3917wn
.3916wloop.:
  %.3924 = load i32, i32* %.21
  %.3925 = srem i32 %.3924, 2
  %.3926 = icmp ne i32 %.3925, 0
  br i1 %.3926, label %.3927, label %.3923
.3917wn:
  %.3953 = load i32, i32* %.19
  %.3954 = icmp ne i32 %.3953, 0
  br i1 %.3954, label %.3951, label %.3952
.3922:
  %.3933 = load i32, i32* %.19
  %.3934 = load i32, i32* %.20
  %.3935 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3934
  %.3936 = load i32, i32* %.3935
  %.3937 = mul i32 1, %.3936
  %.3938 = add i32 %.3933, %.3937
  store i32 %.3938, i32* %.19
  br label %.3923 
.3923:
  %.3941 = load i32, i32* %.21
  %.3942 = sdiv i32 %.3941, 2
  store i32 %.3942, i32* %.21
  %.3944 = load i32, i32* %.22
  %.3945 = sdiv i32 %.3944, 2
  store i32 %.3945, i32* %.22
  %.3947 = load i32, i32* %.20
  %.3948 = add i32 %.3947, 1
  store i32 %.3948, i32* %.20
  br label %.3915wc 
.3927:
  %.3929 = load i32, i32* %.22
  %.3930 = srem i32 %.3929, 2
  %.3931 = icmp ne i32 %.3930, 0
  br i1 %.3931, label %.3922, label %.3923
.3951:
  %.3957 = load i32, i32* %.3901
  store i32 %.3957, i32* %.3956
  %.3960 = load i32, i32* %.3895
  store i32 %.3960, i32* %.3959
  br label %.3963wc 
.3952:
  %.4136 = load i32, i32* %.3895
  store i32 %.4136, i32* %.4135
  %.4139 = load i32, i32* %.3895
  store i32 %.4139, i32* %.4138
  br label %.4142wc 
.3963wc:
  %.3967 = load i32, i32* %.3959
  %.3968 = icmp ne i32 %.3967, 0
  br i1 %.3968, label %.3964wloop., label %.3965wn
.3964wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.3972 = load i32, i32* %.3956
  store i32 %.3972, i32* %.21
  %.3974 = load i32, i32* %.3959
  store i32 %.3974, i32* %.22
  br label %.3976wc 
.3965wn:
  %.4130 = load i32, i32* %.3956
  store i32 %.4130, i32* %.19
  %.4132 = load i32, i32* %.19
  store i32 %.4132, i32* %.3901
  br label %.3952 
.3976wc:
  %.3980 = load i32, i32* %.20
  %.3981 = icmp slt i32 %.3980, 16
  br i1 %.3981, label %.3977wloop., label %.3978wn
.3977wloop.:
  %.3985 = load i32, i32* %.21
  %.3986 = srem i32 %.3985, 2
  %.3987 = icmp ne i32 %.3986, 0
  br i1 %.3987, label %.3983, label %.3984
.3978wn:
  %.4030 = load i32, i32* %.19
  store i32 %.4030, i32* %.3962
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.4034 = load i32, i32* %.3956
  store i32 %.4034, i32* %.21
  %.4036 = load i32, i32* %.3959
  store i32 %.4036, i32* %.22
  br label %.4038wc 
.3983:
  %.3991 = load i32, i32* %.22
  %.3992 = srem i32 %.3991, 2
  %.3993 = icmp eq i32 %.3992, 0
  br i1 %.3993, label %.3989, label %.3990
.3984:
  %.4007 = load i32, i32* %.22
  %.4008 = srem i32 %.4007, 2
  %.4009 = icmp ne i32 %.4008, 0
  br i1 %.4009, label %.4005, label %.4006
.3989:
  %.3995 = load i32, i32* %.19
  %.3996 = load i32, i32* %.20
  %.3997 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.3996
  %.3998 = load i32, i32* %.3997
  %.3999 = mul i32 1, %.3998
  %.4000 = add i32 %.3995, %.3999
  store i32 %.4000, i32* %.19
  br label %.3990 
.3990:
  br label %.4003 
.4003:
  %.4020 = load i32, i32* %.21
  %.4021 = sdiv i32 %.4020, 2
  store i32 %.4021, i32* %.21
  %.4023 = load i32, i32* %.22
  %.4024 = sdiv i32 %.4023, 2
  store i32 %.4024, i32* %.22
  %.4026 = load i32, i32* %.20
  %.4027 = add i32 %.4026, 1
  store i32 %.4027, i32* %.20
  br label %.3976wc 
.4005:
  %.4011 = load i32, i32* %.19
  %.4012 = load i32, i32* %.20
  %.4013 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4012
  %.4014 = load i32, i32* %.4013
  %.4015 = mul i32 1, %.4014
  %.4016 = add i32 %.4011, %.4015
  store i32 %.4016, i32* %.19
  br label %.4006 
.4006:
  br label %.4003 
.4038wc:
  %.4042 = load i32, i32* %.20
  %.4043 = icmp slt i32 %.4042, 16
  br i1 %.4043, label %.4039wloop., label %.4040wn
.4039wloop.:
  %.4047 = load i32, i32* %.21
  %.4048 = srem i32 %.4047, 2
  %.4049 = icmp ne i32 %.4048, 0
  br i1 %.4049, label %.4050, label %.4046
.4040wn:
  %.4074 = load i32, i32* %.19
  store i32 %.4074, i32* %.3959
  br label %.4077 
.4045:
  %.4056 = load i32, i32* %.19
  %.4057 = load i32, i32* %.20
  %.4058 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4057
  %.4059 = load i32, i32* %.4058
  %.4060 = mul i32 1, %.4059
  %.4061 = add i32 %.4056, %.4060
  store i32 %.4061, i32* %.19
  br label %.4046 
.4046:
  %.4064 = load i32, i32* %.21
  %.4065 = sdiv i32 %.4064, 2
  store i32 %.4065, i32* %.21
  %.4067 = load i32, i32* %.22
  %.4068 = sdiv i32 %.4067, 2
  store i32 %.4068, i32* %.22
  %.4070 = load i32, i32* %.20
  %.4071 = add i32 %.4070, 1
  store i32 %.4071, i32* %.20
  br label %.4038wc 
.4050:
  %.4052 = load i32, i32* %.22
  %.4053 = srem i32 %.4052, 2
  %.4054 = icmp ne i32 %.4053, 0
  br i1 %.4054, label %.4045, label %.4046
.4077:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.4081 = load i32, i32* %.3959
  %.4082 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.4083 = load i32, i32* %.4082
  %.4084 = mul i32 %.4081, %.4083
  store i32 %.4084, i32* %.21
  store i32 65535, i32* %.22
  br label %.4087wc 
.4087wc:
  %.4091 = load i32, i32* %.20
  %.4092 = icmp slt i32 %.4091, 16
  br i1 %.4092, label %.4088wloop., label %.4089wn
.4088wloop.:
  %.4096 = load i32, i32* %.21
  %.4097 = srem i32 %.4096, 2
  %.4098 = icmp ne i32 %.4097, 0
  br i1 %.4098, label %.4099, label %.4095
.4089wn:
  br label %.4123 
.4094:
  %.4105 = load i32, i32* %.19
  %.4106 = load i32, i32* %.20
  %.4107 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4106
  %.4108 = load i32, i32* %.4107
  %.4109 = mul i32 1, %.4108
  %.4110 = add i32 %.4105, %.4109
  store i32 %.4110, i32* %.19
  br label %.4095 
.4095:
  %.4113 = load i32, i32* %.21
  %.4114 = sdiv i32 %.4113, 2
  store i32 %.4114, i32* %.21
  %.4116 = load i32, i32* %.22
  %.4117 = sdiv i32 %.4116, 2
  store i32 %.4117, i32* %.22
  %.4119 = load i32, i32* %.20
  %.4120 = add i32 %.4119, 1
  store i32 %.4120, i32* %.20
  br label %.4087wc 
.4099:
  %.4101 = load i32, i32* %.22
  %.4102 = srem i32 %.4101, 2
  %.4103 = icmp ne i32 %.4102, 0
  br i1 %.4103, label %.4094, label %.4095
.4123:
  %.4125 = load i32, i32* %.19
  store i32 %.4125, i32* %.3959
  %.4127 = load i32, i32* %.3962
  store i32 %.4127, i32* %.3956
  br label %.3963wc 
.4142wc:
  %.4146 = load i32, i32* %.4138
  %.4147 = icmp ne i32 %.4146, 0
  br i1 %.4147, label %.4143wloop., label %.4144wn
.4143wloop.:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.4151 = load i32, i32* %.4135
  store i32 %.4151, i32* %.21
  %.4153 = load i32, i32* %.4138
  store i32 %.4153, i32* %.22
  br label %.4155wc 
.4144wn:
  %.4309 = load i32, i32* %.4135
  store i32 %.4309, i32* %.19
  %.4311 = load i32, i32* %.19
  store i32 %.4311, i32* %.3895
  %.4313 = load i32, i32* %.3898
  store i32 %.4313, i32* %.21
  store i32 1, i32* %.22
  %.4318 = load i32, i32* %.22
  %.4319 = icmp sge i32 %.4318, 15
  br i1 %.4319, label %.4316, label %.4317
.4155wc:
  %.4159 = load i32, i32* %.20
  %.4160 = icmp slt i32 %.4159, 16
  br i1 %.4160, label %.4156wloop., label %.4157wn
.4156wloop.:
  %.4164 = load i32, i32* %.21
  %.4165 = srem i32 %.4164, 2
  %.4166 = icmp ne i32 %.4165, 0
  br i1 %.4166, label %.4162, label %.4163
.4157wn:
  %.4209 = load i32, i32* %.19
  store i32 %.4209, i32* %.4141
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.4213 = load i32, i32* %.4135
  store i32 %.4213, i32* %.21
  %.4215 = load i32, i32* %.4138
  store i32 %.4215, i32* %.22
  br label %.4217wc 
.4162:
  %.4170 = load i32, i32* %.22
  %.4171 = srem i32 %.4170, 2
  %.4172 = icmp eq i32 %.4171, 0
  br i1 %.4172, label %.4168, label %.4169
.4163:
  %.4186 = load i32, i32* %.22
  %.4187 = srem i32 %.4186, 2
  %.4188 = icmp ne i32 %.4187, 0
  br i1 %.4188, label %.4184, label %.4185
.4168:
  %.4174 = load i32, i32* %.19
  %.4175 = load i32, i32* %.20
  %.4176 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4175
  %.4177 = load i32, i32* %.4176
  %.4178 = mul i32 1, %.4177
  %.4179 = add i32 %.4174, %.4178
  store i32 %.4179, i32* %.19
  br label %.4169 
.4169:
  br label %.4182 
.4182:
  %.4199 = load i32, i32* %.21
  %.4200 = sdiv i32 %.4199, 2
  store i32 %.4200, i32* %.21
  %.4202 = load i32, i32* %.22
  %.4203 = sdiv i32 %.4202, 2
  store i32 %.4203, i32* %.22
  %.4205 = load i32, i32* %.20
  %.4206 = add i32 %.4205, 1
  store i32 %.4206, i32* %.20
  br label %.4155wc 
.4184:
  %.4190 = load i32, i32* %.19
  %.4191 = load i32, i32* %.20
  %.4192 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4191
  %.4193 = load i32, i32* %.4192
  %.4194 = mul i32 1, %.4193
  %.4195 = add i32 %.4190, %.4194
  store i32 %.4195, i32* %.19
  br label %.4185 
.4185:
  br label %.4182 
.4217wc:
  %.4221 = load i32, i32* %.20
  %.4222 = icmp slt i32 %.4221, 16
  br i1 %.4222, label %.4218wloop., label %.4219wn
.4218wloop.:
  %.4226 = load i32, i32* %.21
  %.4227 = srem i32 %.4226, 2
  %.4228 = icmp ne i32 %.4227, 0
  br i1 %.4228, label %.4229, label %.4225
.4219wn:
  %.4253 = load i32, i32* %.19
  store i32 %.4253, i32* %.4138
  br label %.4256 
.4224:
  %.4235 = load i32, i32* %.19
  %.4236 = load i32, i32* %.20
  %.4237 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4236
  %.4238 = load i32, i32* %.4237
  %.4239 = mul i32 1, %.4238
  %.4240 = add i32 %.4235, %.4239
  store i32 %.4240, i32* %.19
  br label %.4225 
.4225:
  %.4243 = load i32, i32* %.21
  %.4244 = sdiv i32 %.4243, 2
  store i32 %.4244, i32* %.21
  %.4246 = load i32, i32* %.22
  %.4247 = sdiv i32 %.4246, 2
  store i32 %.4247, i32* %.22
  %.4249 = load i32, i32* %.20
  %.4250 = add i32 %.4249, 1
  store i32 %.4250, i32* %.20
  br label %.4217wc 
.4229:
  %.4231 = load i32, i32* %.22
  %.4232 = srem i32 %.4231, 2
  %.4233 = icmp ne i32 %.4232, 0
  br i1 %.4233, label %.4224, label %.4225
.4256:
  store i32 0, i32* %.19
  store i32 0, i32* %.20
  %.4260 = load i32, i32* %.4138
  %.4261 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 1
  %.4262 = load i32, i32* %.4261
  %.4263 = mul i32 %.4260, %.4262
  store i32 %.4263, i32* %.21
  store i32 65535, i32* %.22
  br label %.4266wc 
.4266wc:
  %.4270 = load i32, i32* %.20
  %.4271 = icmp slt i32 %.4270, 16
  br i1 %.4271, label %.4267wloop., label %.4268wn
.4267wloop.:
  %.4275 = load i32, i32* %.21
  %.4276 = srem i32 %.4275, 2
  %.4277 = icmp ne i32 %.4276, 0
  br i1 %.4277, label %.4278, label %.4274
.4268wn:
  br label %.4302 
.4273:
  %.4284 = load i32, i32* %.19
  %.4285 = load i32, i32* %.20
  %.4286 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4285
  %.4287 = load i32, i32* %.4286
  %.4288 = mul i32 1, %.4287
  %.4289 = add i32 %.4284, %.4288
  store i32 %.4289, i32* %.19
  br label %.4274 
.4274:
  %.4292 = load i32, i32* %.21
  %.4293 = sdiv i32 %.4292, 2
  store i32 %.4293, i32* %.21
  %.4295 = load i32, i32* %.22
  %.4296 = sdiv i32 %.4295, 2
  store i32 %.4296, i32* %.22
  %.4298 = load i32, i32* %.20
  %.4299 = add i32 %.4298, 1
  store i32 %.4299, i32* %.20
  br label %.4266wc 
.4278:
  %.4280 = load i32, i32* %.22
  %.4281 = srem i32 %.4280, 2
  %.4282 = icmp ne i32 %.4281, 0
  br i1 %.4282, label %.4273, label %.4274
.4302:
  %.4304 = load i32, i32* %.19
  store i32 %.4304, i32* %.4138
  %.4306 = load i32, i32* %.4141
  store i32 %.4306, i32* %.4135
  br label %.4142wc 
.4316:
  %.4323 = load i32, i32* %.21
  %.4324 = icmp slt i32 %.4323, 0
  br i1 %.4324, label %.4321, label %.4322
.4317:
  %.4335 = load i32, i32* %.22
  %.4336 = icmp sgt i32 %.4335, 0
  br i1 %.4336, label %.4333, label %.4334
.4321:
  store i32 65535, i32* %.19
  br label %.4327 
.4322:
  store i32 0, i32* %.19
  br label %.4327 
.4327:
  br label %.4331 
.4331:
  %.4373 = load i32, i32* %.19
  store i32 %.4373, i32* %.3898
  br label %.3903wc 
.4333:
  %.4340 = load i32, i32* %.21
  %.4341 = icmp sgt i32 %.4340, 32767
  br i1 %.4341, label %.4338, label %.4339
.4334:
  %.4369 = load i32, i32* %.21
  store i32 %.4369, i32* %.19
  br label %.4367 
.4338:
  %.4343 = load i32, i32* %.21
  %.4344 = load i32, i32* %.22
  %.4345 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4344
  %.4346 = load i32, i32* %.4345
  %.4347 = sdiv i32 %.4343, %.4346
  store i32 %.4347, i32* %.21
  %.4349 = load i32, i32* %.21
  %.4350 = add i32 %.4349, 65536
  %.4351 = load i32, i32* %.22
  %.4352 = sub i32 15, %.4351
  %.4353 = add i32 %.4352, 1
  %.4354 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4353
  %.4355 = load i32, i32* %.4354
  %.4356 = sub i32 %.4350, %.4355
  store i32 %.4356, i32* %.19
  br label %.4358 
.4339:
  %.4360 = load i32, i32* %.21
  %.4361 = load i32, i32* %.22
  %.4362 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4361
  %.4363 = load i32, i32* %.4362
  %.4364 = sdiv i32 %.4360, %.4363
  store i32 %.4364, i32* %.19
  br label %.4358 
.4358:
  br label %.4367 
.4367:
  br label %.4331 
.4383:
  %.4390 = load i32, i32* %.21
  %.4391 = icmp slt i32 %.4390, 0
  br i1 %.4391, label %.4388, label %.4389
.4384:
  %.4402 = load i32, i32* %.22
  %.4403 = icmp sgt i32 %.4402, 0
  br i1 %.4403, label %.4400, label %.4401
.4388:
  store i32 65535, i32* %.19
  br label %.4394 
.4389:
  store i32 0, i32* %.19
  br label %.4394 
.4394:
  br label %.4398 
.4398:
  %.4440 = load i32, i32* %.19
  store i32 %.4440, i32* %.3351
  br label %.3356wc 
.4400:
  %.4407 = load i32, i32* %.21
  %.4408 = icmp sgt i32 %.4407, 32767
  br i1 %.4408, label %.4405, label %.4406
.4401:
  %.4436 = load i32, i32* %.21
  store i32 %.4436, i32* %.19
  br label %.4434 
.4405:
  %.4410 = load i32, i32* %.21
  %.4411 = load i32, i32* %.22
  %.4412 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4411
  %.4413 = load i32, i32* %.4412
  %.4414 = sdiv i32 %.4410, %.4413
  store i32 %.4414, i32* %.21
  %.4416 = load i32, i32* %.21
  %.4417 = add i32 %.4416, 65536
  %.4418 = load i32, i32* %.22
  %.4419 = sub i32 15, %.4418
  %.4420 = add i32 %.4419, 1
  %.4421 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4420
  %.4422 = load i32, i32* %.4421
  %.4423 = sub i32 %.4417, %.4422
  store i32 %.4423, i32* %.19
  br label %.4425 
.4406:
  %.4427 = load i32, i32* %.21
  %.4428 = load i32, i32* %.22
  %.4429 = getelementptr inbounds [16 x i32], [16 x i32]* @.G.SHIFT_TABLE, i32 0, i32 %.4428
  %.4430 = load i32, i32* %.4429
  %.4431 = sdiv i32 %.4427, %.4430
  store i32 %.4431, i32* %.19
  br label %.4425 
.4425:
  br label %.4434 
.4434:
  br label %.4398 
.4445:
  ret i32 1 
.4446:
  %.4454 = load i32, i32* %.23
  %.4455 = add i32 %.4454, 1
  store i32 %.4455, i32* %.23
  br label %.3342wc 
}
define i32 @main(){
.4459:
  %.4460at6 = call i32 @_user_long_func()
  ret i32 %.4460at6 
}
