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
  %.44 = alloca i32
  %.6 = alloca i32
  %.5 = alloca i32
  %.3 = alloca i32*
  store i32* %.2, i32** %.3
  store i32 0, i32* %.5
  br label %.9wc 
.9wc:
  %.13 = load i32, i32* %.5
  %.14 = load i32, i32* @.G.n
  %.16 = sub i32 %.14, 1
  %.17 = icmp slt i32 %.13, %.16
  br i1 %.17, label %.10wloop., label %.11wn
.10wloop.:
  store i32 0, i32* %.6
  br label %.20wc 
.11wn:
  ret i32 0 
.20wc:
  %.24 = load i32, i32* %.6
  %.25 = load i32, i32* @.G.n
  %.26 = load i32, i32* %.5
  %.27 = sub i32 %.25, %.26
  %.28 = sub i32 %.27, 1
  %.29 = icmp slt i32 %.24, %.28
  br i1 %.29, label %.21wloop., label %.22wn
.21wloop.:
  %.33 = load i32, i32* %.6
  %.34 = load i32*, i32** %.3
  %.35 = getelementptr inbounds i32, i32* %.34, i32 %.33
  %.36 = load i32, i32* %.35
  %.37 = load i32, i32* %.6
  %.38 = add i32 %.37, 1
  %.39 = load i32*, i32** %.3
  %.40 = getelementptr inbounds i32, i32* %.39, i32 %.38
  %.41 = load i32, i32* %.40
  %.42 = icmp sgt i32 %.36, %.41
  br i1 %.42, label %.31, label %.32
.22wn:
  %.70 = load i32, i32* %.5
  %.71 = add i32 %.70, 1
  store i32 %.71, i32* %.5
  br label %.9wc 
.31:
  %.45 = load i32, i32* %.6
  %.46 = add i32 %.45, 1
  %.47 = load i32*, i32** %.3
  %.48 = getelementptr inbounds i32, i32* %.47, i32 %.46
  %.49 = load i32, i32* %.48
  store i32 %.49, i32* %.44
  %.51 = load i32, i32* %.6
  %.52 = load i32*, i32** %.3
  %.53 = getelementptr inbounds i32, i32* %.52, i32 %.51
  %.54 = load i32, i32* %.53
  %.55 = load i32, i32* %.6
  %.56 = add i32 %.55, 1
  %.57 = load i32*, i32** %.3
  %.58 = getelementptr inbounds i32, i32* %.57, i32 %.56
  store i32 %.54, i32* %.58
  %.60 = load i32, i32* %.44
  %.61 = load i32, i32* %.6
  %.62 = load i32*, i32** %.3
  %.63 = getelementptr inbounds i32, i32* %.62, i32 %.61
  store i32 %.60, i32* %.63
  br label %.32 
.32:
  %.66 = load i32, i32* %.6
  %.67 = add i32 %.66, 1
  store i32 %.67, i32* %.6
  br label %.20wc 
}
define i32 @_user_insertsort(i32* %.76){
.75:
  %.95 = alloca i32
  %.89 = alloca i32
  %.79 = alloca i32
  %.77 = alloca i32*
  store i32* %.76, i32** %.77
  store i32 1, i32* %.79
  br label %.81wc 
.81wc:
  %.85 = load i32, i32* %.79
  %.86 = load i32, i32* @.G.n
  %.87 = icmp slt i32 %.85, %.86
  br i1 %.87, label %.82wloop., label %.83wn
.82wloop.:
  %.90 = load i32, i32* %.79
  %.91 = load i32*, i32** %.77
  %.92 = getelementptr inbounds i32, i32* %.91, i32 %.90
  %.93 = load i32, i32* %.92
  store i32 %.93, i32* %.89
  %.96 = load i32, i32* %.79
  %.97 = sub i32 %.96, 1
  store i32 %.97, i32* %.95
  br label %.99wc 
.83wn:
  ret i32 0 
.99wc:
  %.103 = load i32, i32* %.95
  %.105 = icmp sgt i32 %.103, -1
  br i1 %.105, label %.106, label %.101wn
.100wloop.:
  %.115 = load i32, i32* %.95
  %.116 = load i32*, i32** %.77
  %.117 = getelementptr inbounds i32, i32* %.116, i32 %.115
  %.118 = load i32, i32* %.117
  %.119 = load i32, i32* %.95
  %.120 = add i32 %.119, 1
  %.121 = load i32*, i32** %.77
  %.122 = getelementptr inbounds i32, i32* %.121, i32 %.120
  store i32 %.118, i32* %.122
  %.124 = load i32, i32* %.95
  %.125 = sub i32 %.124, 1
  store i32 %.125, i32* %.95
  br label %.99wc 
.101wn:
  %.128 = load i32, i32* %.89
  %.129 = load i32, i32* %.95
  %.130 = add i32 %.129, 1
  %.131 = load i32*, i32** %.77
  %.132 = getelementptr inbounds i32, i32* %.131, i32 %.130
  store i32 %.128, i32* %.132
  %.134 = load i32, i32* %.79
  %.135 = add i32 %.134, 1
  store i32 %.135, i32* %.79
  br label %.81wc 
.106:
  %.108 = load i32, i32* %.89
  %.109 = load i32, i32* %.95
  %.110 = load i32*, i32** %.77
  %.111 = getelementptr inbounds i32, i32* %.110, i32 %.109
  %.112 = load i32, i32* %.111
  %.113 = icmp slt i32 %.108, %.112
  br i1 %.113, label %.100wloop., label %.101wn
}
define i32 @_user_QuickSort(i32* %.140, i32 %.143, i32 %.146){
.139:
  %.258 = alloca i32
  %.161 = alloca i32
  %.158 = alloca i32
  %.155 = alloca i32
  %.147 = alloca i32
  %.144 = alloca i32
  %.141 = alloca i32*
  store i32* %.140, i32** %.141
  store i32 %.143, i32* %.144
  store i32 %.146, i32* %.147
  %.151 = load i32, i32* %.144
  %.152 = load i32, i32* %.147
  %.153 = icmp slt i32 %.151, %.152
  br i1 %.153, label %.149, label %.150
.149:
  %.156 = load i32, i32* %.144
  store i32 %.156, i32* %.155
  %.159 = load i32, i32* %.147
  store i32 %.159, i32* %.158
  %.162 = load i32, i32* %.144
  %.163 = load i32*, i32** %.141
  %.164 = getelementptr inbounds i32, i32* %.163, i32 %.162
  %.165 = load i32, i32* %.164
  store i32 %.165, i32* %.161
  br label %.167wc 
.150:
  ret i32 0 
.167wc:
  %.171 = load i32, i32* %.155
  %.172 = load i32, i32* %.158
  %.173 = icmp slt i32 %.171, %.172
  br i1 %.173, label %.168wloop., label %.169wn
.168wloop.:
  br label %.175wc 
.169wn:
  %.253 = load i32, i32* %.161
  %.254 = load i32, i32* %.155
  %.255 = load i32*, i32** %.141
  %.256 = getelementptr inbounds i32, i32* %.255, i32 %.254
  store i32 %.253, i32* %.256
  %.259 = load i32, i32* %.155
  %.260 = sub i32 %.259, 1
  store i32 %.260, i32* %.258
  %.262 = load i32*, i32** %.141
  %.263 = load i32, i32* %.144
  %.264 = load i32, i32* %.258
  %.265at0 = call i32 @_user_QuickSort(i32* %.262, i32 %.263, i32 %.264)
  store i32 %.265at0, i32* %.258
  %.267 = load i32, i32* %.155
  %.268 = add i32 %.267, 1
  store i32 %.268, i32* %.258
  %.270 = load i32*, i32** %.141
  %.271 = load i32, i32* %.258
  %.272 = load i32, i32* %.147
  %.273at1 = call i32 @_user_QuickSort(i32* %.270, i32 %.271, i32 %.272)
  store i32 %.273at1, i32* %.258
  br label %.150 
.175wc:
  %.179 = load i32, i32* %.155
  %.180 = load i32, i32* %.158
  %.181 = icmp slt i32 %.179, %.180
  br i1 %.181, label %.182, label %.177wn
.176wloop.:
  %.192 = load i32, i32* %.158
  %.193 = sub i32 %.192, 1
  store i32 %.193, i32* %.158
  br label %.175wc 
.177wn:
  %.198 = load i32, i32* %.155
  %.199 = load i32, i32* %.158
  %.200 = icmp slt i32 %.198, %.199
  br i1 %.200, label %.196, label %.197
.182:
  %.184 = load i32, i32* %.158
  %.185 = load i32*, i32** %.141
  %.186 = getelementptr inbounds i32, i32* %.185, i32 %.184
  %.187 = load i32, i32* %.186
  %.188 = load i32, i32* %.161
  %.189 = sub i32 %.188, 1
  %.190 = icmp sgt i32 %.187, %.189
  br i1 %.190, label %.176wloop., label %.177wn
.196:
  %.202 = load i32, i32* %.158
  %.203 = load i32*, i32** %.141
  %.204 = getelementptr inbounds i32, i32* %.203, i32 %.202
  %.205 = load i32, i32* %.204
  %.206 = load i32, i32* %.155
  %.207 = load i32*, i32** %.141
  %.208 = getelementptr inbounds i32, i32* %.207, i32 %.206
  store i32 %.205, i32* %.208
  %.210 = load i32, i32* %.155
  %.211 = add i32 %.210, 1
  store i32 %.211, i32* %.155
  br label %.197 
.197:
  br label %.214wc 
.214wc:
  %.218 = load i32, i32* %.155
  %.219 = load i32, i32* %.158
  %.220 = icmp slt i32 %.218, %.219
  br i1 %.220, label %.221, label %.216wn
.215wloop.:
  %.230 = load i32, i32* %.155
  %.231 = add i32 %.230, 1
  store i32 %.231, i32* %.155
  br label %.214wc 
.216wn:
  %.236 = load i32, i32* %.155
  %.237 = load i32, i32* %.158
  %.238 = icmp slt i32 %.236, %.237
  br i1 %.238, label %.234, label %.235
.221:
  %.223 = load i32, i32* %.155
  %.224 = load i32*, i32** %.141
  %.225 = getelementptr inbounds i32, i32* %.224, i32 %.223
  %.226 = load i32, i32* %.225
  %.227 = load i32, i32* %.161
  %.228 = icmp slt i32 %.226, %.227
  br i1 %.228, label %.215wloop., label %.216wn
.234:
  %.240 = load i32, i32* %.155
  %.241 = load i32*, i32** %.141
  %.242 = getelementptr inbounds i32, i32* %.241, i32 %.240
  %.243 = load i32, i32* %.242
  %.244 = load i32, i32* %.158
  %.245 = load i32*, i32** %.141
  %.246 = getelementptr inbounds i32, i32* %.245, i32 %.244
  store i32 %.243, i32* %.246
  %.248 = load i32, i32* %.158
  %.249 = sub i32 %.248, 1
  store i32 %.249, i32* %.158
  br label %.235 
.235:
  br label %.167wc 
}
define i32 @_user_getMid(i32* %.278){
.277:
  %.281 = alloca i32
  %.279 = alloca i32*
  store i32* %.278, i32** %.279
  %.284 = load i32, i32* @.G.n
  %.286 = srem i32 %.284, 2
  %.287 = icmp eq i32 %.286, 0
  br i1 %.287, label %.282, label %.283
.282:
  %.289 = load i32, i32* @.G.n
  %.290 = sdiv i32 %.289, 2
  store i32 %.290, i32* %.281
  %.292 = load i32, i32* %.281
  %.293 = load i32*, i32** %.279
  %.294 = getelementptr inbounds i32, i32* %.293, i32 %.292
  %.295 = load i32, i32* %.294
  %.296 = load i32, i32* %.281
  %.297 = sub i32 %.296, 1
  %.298 = load i32*, i32** %.279
  %.299 = getelementptr inbounds i32, i32* %.298, i32 %.297
  %.300 = load i32, i32* %.299
  %.301 = add i32 %.295, %.300
  %.302 = sdiv i32 %.301, 2
  ret i32 %.302 
.283:
  %.304 = load i32, i32* @.G.n
  %.305 = sdiv i32 %.304, 2
  store i32 %.305, i32* %.281
  %.307 = load i32, i32* %.281
  %.308 = load i32*, i32** %.279
  %.309 = getelementptr inbounds i32, i32* %.308, i32 %.307
  %.310 = load i32, i32* %.309
  ret i32 %.310 
}
define i32 @_user_getMost(i32* %.313){
.312:
  %.346 = alloca i32
  %.336 = alloca i32
  %.335 = alloca i32
  %.318 = alloca i32
  %.317 = alloca [1000 x i32]
  %.314 = alloca i32*
  store i32* %.313, i32** %.314
  store i32 0, i32* %.318
  br label %.320wc 
.320wc:
  %.324 = load i32, i32* %.318
  %.325 = icmp slt i32 %.324, 1000
  br i1 %.325, label %.321wloop., label %.322wn
.321wloop.:
  %.327 = load i32, i32* %.318
  %.328 = getelementptr inbounds [1000 x i32], [1000 x i32]* %.317, i32 0, i32 %.327
  store i32 0, i32* %.328
  %.330 = load i32, i32* %.318
  %.331 = add i32 %.330, 1
  store i32 %.331, i32* %.318
  br label %.320wc 
.322wn:
  store i32 0, i32* %.318
  store i32 0, i32* %.335
  br label %.338wc 
.338wc:
  %.342 = load i32, i32* %.318
  %.343 = load i32, i32* @.G.n
  %.344 = icmp slt i32 %.342, %.343
  br i1 %.344, label %.339wloop., label %.340wn
.339wloop.:
  %.347 = load i32, i32* %.318
  %.348 = load i32*, i32** %.314
  %.349 = getelementptr inbounds i32, i32* %.348, i32 %.347
  %.350 = load i32, i32* %.349
  store i32 %.350, i32* %.346
  %.352 = load i32, i32* %.346
  %.353 = getelementptr inbounds [1000 x i32], [1000 x i32]* %.317, i32 0, i32 %.352
  %.354 = load i32, i32* %.353
  %.355 = add i32 %.354, 1
  %.356 = load i32, i32* %.346
  %.357 = getelementptr inbounds [1000 x i32], [1000 x i32]* %.317, i32 0, i32 %.356
  store i32 %.355, i32* %.357
  %.361 = load i32, i32* %.346
  %.362 = getelementptr inbounds [1000 x i32], [1000 x i32]* %.317, i32 0, i32 %.361
  %.363 = load i32, i32* %.362
  %.364 = load i32, i32* %.335
  %.365 = icmp sgt i32 %.363, %.364
  br i1 %.365, label %.359, label %.360
.340wn:
  %.378 = load i32, i32* %.336
  ret i32 %.378 
.359:
  %.367 = load i32, i32* %.346
  %.368 = getelementptr inbounds [1000 x i32], [1000 x i32]* %.317, i32 0, i32 %.367
  %.369 = load i32, i32* %.368
  store i32 %.369, i32* %.335
  %.371 = load i32, i32* %.346
  store i32 %.371, i32* %.336
  br label %.360 
.360:
  %.374 = load i32, i32* %.318
  %.375 = add i32 %.374, 1
  store i32 %.375, i32* %.318
  br label %.338wc 
}
define i32 @_user_revert(i32* %.381){
.380:
  %.386 = alloca i32
  %.385 = alloca i32
  %.384 = alloca i32
  %.382 = alloca i32*
  store i32* %.381, i32** %.382
  store i32 0, i32* %.385
  store i32 0, i32* %.386
  br label %.389wc 
.389wc:
  %.393 = load i32, i32* %.385
  %.394 = load i32, i32* %.386
  %.395 = icmp slt i32 %.393, %.394
  br i1 %.395, label %.390wloop., label %.391wn
.390wloop.:
  %.397 = load i32, i32* %.385
  %.398 = load i32*, i32** %.382
  %.399 = getelementptr inbounds i32, i32* %.398, i32 %.397
  %.400 = load i32, i32* %.399
  store i32 %.400, i32* %.384
  %.402 = load i32, i32* %.386
  %.403 = load i32*, i32** %.382
  %.404 = getelementptr inbounds i32, i32* %.403, i32 %.402
  %.405 = load i32, i32* %.404
  %.406 = load i32, i32* %.385
  %.407 = load i32*, i32** %.382
  %.408 = getelementptr inbounds i32, i32* %.407, i32 %.406
  store i32 %.405, i32* %.408
  %.410 = load i32, i32* %.384
  %.411 = load i32, i32* %.386
  %.412 = load i32*, i32** %.382
  %.413 = getelementptr inbounds i32, i32* %.412, i32 %.411
  store i32 %.410, i32* %.413
  %.415 = load i32, i32* %.385
  %.416 = add i32 %.415, 1
  store i32 %.416, i32* %.385
  %.418 = load i32, i32* %.386
  %.419 = sub i32 %.418, 1
  store i32 %.419, i32* %.386
  br label %.389wc 
.391wn:
  ret i32 0 
}
define i32 @_user_arrCopy(i32* %.424, i32* %.427){
.423:
  %.430 = alloca i32
  %.428 = alloca i32*
  %.425 = alloca i32*
  store i32* %.424, i32** %.425
  store i32* %.427, i32** %.428
  store i32 0, i32* %.430
  br label %.432wc 
.432wc:
  %.436 = load i32, i32* %.430
  %.437 = load i32, i32* @.G.n
  %.438 = icmp slt i32 %.436, %.437
  br i1 %.438, label %.433wloop., label %.434wn
.433wloop.:
  %.440 = load i32, i32* %.430
  %.441 = load i32*, i32** %.425
  %.442 = getelementptr inbounds i32, i32* %.441, i32 %.440
  %.443 = load i32, i32* %.442
  %.444 = load i32, i32* %.430
  %.445 = load i32*, i32** %.428
  %.446 = getelementptr inbounds i32, i32* %.445, i32 %.444
  store i32 %.443, i32* %.446
  %.448 = load i32, i32* %.430
  %.449 = add i32 %.448, 1
  store i32 %.449, i32* %.430
  br label %.432wc 
.434wn:
  ret i32 0 
}
define i32 @_user_calSum(i32* %.454, i32 %.457){
.453:
  %.462 = alloca i32
  %.460 = alloca i32
  %.458 = alloca i32
  %.455 = alloca i32*
  store i32* %.454, i32** %.455
  store i32 %.457, i32* %.458
  store i32 0, i32* %.460
  store i32 0, i32* %.462
  br label %.464wc 
.464wc:
  %.468 = load i32, i32* %.462
  %.469 = load i32, i32* @.G.n
  %.470 = icmp slt i32 %.468, %.469
  br i1 %.470, label %.465wloop., label %.466wn
.465wloop.:
  %.472 = load i32, i32* %.460
  %.473 = load i32, i32* %.462
  %.474 = load i32*, i32** %.455
  %.475 = getelementptr inbounds i32, i32* %.474, i32 %.473
  %.476 = load i32, i32* %.475
  %.477 = add i32 %.472, %.476
  store i32 %.477, i32* %.460
  %.481 = load i32, i32* %.462
  %.482 = load i32, i32* %.458
  %.483 = srem i32 %.481, %.482
  %.484 = load i32, i32* %.458
  %.485 = sub i32 %.484, 1
  %.486 = icmp ne i32 %.483, %.485
  br i1 %.486, label %.479, label %.480
.466wn:
  ret i32 0 
.479:
  %.488 = load i32, i32* %.462
  %.489 = load i32*, i32** %.455
  %.490 = getelementptr inbounds i32, i32* %.489, i32 %.488
  store i32 0, i32* %.490
  br label %.492 
.480:
  %.494 = load i32, i32* %.460
  %.495 = load i32, i32* %.462
  %.496 = load i32*, i32** %.455
  %.497 = getelementptr inbounds i32, i32* %.496, i32 %.495
  store i32 %.494, i32* %.497
  store i32 0, i32* %.460
  br label %.492 
.492:
  %.501 = load i32, i32* %.462
  %.502 = add i32 %.501, 1
  store i32 %.502, i32* %.462
  br label %.464wc 
}
define i32 @_user_avgPooling(i32* %.507, i32 %.510){
.506:
  %.517 = alloca i32
  %.514 = alloca i32
  %.513 = alloca i32
  %.511 = alloca i32
  %.508 = alloca i32*
  store i32* %.507, i32** %.508
  store i32 %.510, i32* %.511
  store i32 0, i32* %.514
  store i32 0, i32* %.513
  br label %.518wc 
.518wc:
  %.522 = load i32, i32* %.514
  %.523 = load i32, i32* @.G.n
  %.524 = icmp slt i32 %.522, %.523
  br i1 %.524, label %.519wloop., label %.520wn
.519wloop.:
  %.528 = load i32, i32* %.514
  %.529 = load i32, i32* %.511
  %.530 = sub i32 %.529, 1
  %.531 = icmp slt i32 %.528, %.530
  br i1 %.531, label %.526, label %.527
.520wn:
  %.594 = load i32, i32* @.G.n
  %.595 = load i32, i32* %.511
  %.596 = sub i32 %.594, %.595
  %.597 = add i32 %.596, 1
  store i32 %.597, i32* %.514
  br label %.599wc 
.526:
  %.533 = load i32, i32* %.513
  %.534 = load i32, i32* %.514
  %.535 = load i32*, i32** %.508
  %.536 = getelementptr inbounds i32, i32* %.535, i32 %.534
  %.537 = load i32, i32* %.536
  %.538 = add i32 %.533, %.537
  store i32 %.538, i32* %.513
  br label %.540 
.527:
  %.544 = load i32, i32* %.514
  %.545 = load i32, i32* %.511
  %.546 = sub i32 %.545, 1
  %.547 = icmp eq i32 %.544, %.546
  br i1 %.547, label %.542, label %.543
.540:
  %.590 = load i32, i32* %.514
  %.591 = add i32 %.590, 1
  store i32 %.591, i32* %.514
  br label %.518wc 
.542:
  %.549 = load i32*, i32** %.508
  %.550 = getelementptr inbounds i32, i32* %.549, i32 0
  %.551 = load i32, i32* %.550
  store i32 %.551, i32* %.517
  %.553 = load i32, i32* %.513
  %.554 = load i32, i32* %.511
  %.555 = sdiv i32 %.553, %.554
  %.556 = load i32*, i32** %.508
  %.557 = getelementptr inbounds i32, i32* %.556, i32 0
  store i32 %.555, i32* %.557
  br label %.559 
.543:
  %.561 = load i32, i32* %.513
  %.562 = load i32, i32* %.514
  %.563 = load i32*, i32** %.508
  %.564 = getelementptr inbounds i32, i32* %.563, i32 %.562
  %.565 = load i32, i32* %.564
  %.566 = add i32 %.561, %.565
  %.567 = load i32, i32* %.517
  %.568 = sub i32 %.566, %.567
  store i32 %.568, i32* %.513
  %.570 = load i32, i32* %.514
  %.571 = load i32, i32* %.511
  %.572 = sub i32 %.570, %.571
  %.573 = add i32 %.572, 1
  %.574 = load i32*, i32** %.508
  %.575 = getelementptr inbounds i32, i32* %.574, i32 %.573
  %.576 = load i32, i32* %.575
  store i32 %.576, i32* %.517
  %.578 = load i32, i32* %.513
  %.579 = load i32, i32* %.511
  %.580 = sdiv i32 %.578, %.579
  %.581 = load i32, i32* %.514
  %.582 = load i32, i32* %.511
  %.583 = sub i32 %.581, %.582
  %.584 = add i32 %.583, 1
  %.585 = load i32*, i32** %.508
  %.586 = getelementptr inbounds i32, i32* %.585, i32 %.584
  store i32 %.580, i32* %.586
  br label %.559 
.559:
  br label %.540 
.599wc:
  %.603 = load i32, i32* %.514
  %.604 = load i32, i32* @.G.n
  %.605 = icmp slt i32 %.603, %.604
  br i1 %.605, label %.600wloop., label %.601wn
.600wloop.:
  %.607 = load i32, i32* %.514
  %.608 = load i32*, i32** %.508
  %.609 = getelementptr inbounds i32, i32* %.608, i32 %.607
  store i32 0, i32* %.609
  %.611 = load i32, i32* %.514
  %.612 = add i32 %.611, 1
  store i32 %.612, i32* %.514
  br label %.599wc 
.601wn:
  ret i32 0 
}
define i32 @main(){
.616:
  %.746 = alloca i32
  %.738 = alloca i32
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
  store i32 %.741at2, i32* %.738
  %.743 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.744at3 = call i32 @_user_revert(i32* %.743)
  store i32 %.744at3, i32* %.738
  store i32 0, i32* %.746
  br label %.748wc 
.748wc:
  %.752 = load i32, i32* %.746
  %.753 = icmp slt i32 %.752, 32
  br i1 %.753, label %.749wloop., label %.750wn
.749wloop.:
  %.755 = load i32, i32* %.746
  %.756 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.755
  %.757 = load i32, i32* %.756
  store i32 %.757, i32* %.738
  %.759 = load i32, i32* %.738
  call void @putint(i32 %.759)
  %.762 = load i32, i32* %.746
  %.763 = add i32 %.762, 1
  store i32 %.763, i32* %.746
  br label %.748wc 
.750wn:
  %.766 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.767at5 = call i32 @_user_bubblesort(i32* %.766)
  store i32 %.767at5, i32* %.738
  store i32 0, i32* %.746
  br label %.770wc 
.770wc:
  %.774 = load i32, i32* %.746
  %.775 = icmp slt i32 %.774, 32
  br i1 %.775, label %.771wloop., label %.772wn
.771wloop.:
  %.777 = load i32, i32* %.746
  %.778 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.777
  %.779 = load i32, i32* %.778
  store i32 %.779, i32* %.738
  %.781 = load i32, i32* %.738
  call void @putint(i32 %.781)
  %.783 = load i32, i32* %.746
  %.784 = add i32 %.783, 1
  store i32 %.784, i32* %.746
  br label %.770wc 
.772wn:
  %.787 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.788at7 = call i32 @_user_getMid(i32* %.787)
  store i32 %.788at7, i32* %.738
  %.790 = load i32, i32* %.738
  call void @putint(i32 %.790)
  %.792 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.793at9 = call i32 @_user_getMost(i32* %.792)
  store i32 %.793at9, i32* %.738
  %.795 = load i32, i32* %.738
  call void @putint(i32 %.795)
  %.797 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  %.798 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.799at11 = call i32 @_user_arrCopy(i32* %.797, i32* %.798)
  store i32 %.799at11, i32* %.738
  %.801 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.802at12 = call i32 @_user_bubblesort(i32* %.801)
  store i32 %.802at12, i32* %.738
  store i32 0, i32* %.746
  br label %.805wc 
.805wc:
  %.809 = load i32, i32* %.746
  %.810 = icmp slt i32 %.809, 32
  br i1 %.810, label %.806wloop., label %.807wn
.806wloop.:
  %.812 = load i32, i32* %.746
  %.813 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.812
  %.814 = load i32, i32* %.813
  store i32 %.814, i32* %.738
  %.816 = load i32, i32* %.738
  call void @putint(i32 %.816)
  %.818 = load i32, i32* %.746
  %.819 = add i32 %.818, 1
  store i32 %.819, i32* %.746
  br label %.805wc 
.807wn:
  %.822 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  %.823 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.824at14 = call i32 @_user_arrCopy(i32* %.822, i32* %.823)
  store i32 %.824at14, i32* %.738
  %.826 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.827at15 = call i32 @_user_insertsort(i32* %.826)
  store i32 %.827at15, i32* %.738
  store i32 0, i32* %.746
  br label %.830wc 
.830wc:
  %.834 = load i32, i32* %.746
  %.835 = icmp slt i32 %.834, 32
  br i1 %.835, label %.831wloop., label %.832wn
.831wloop.:
  %.837 = load i32, i32* %.746
  %.838 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.837
  %.839 = load i32, i32* %.838
  store i32 %.839, i32* %.738
  %.841 = load i32, i32* %.738
  call void @putint(i32 %.841)
  %.843 = load i32, i32* %.746
  %.844 = add i32 %.843, 1
  store i32 %.844, i32* %.746
  br label %.830wc 
.832wn:
  %.847 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  %.848 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.849at17 = call i32 @_user_arrCopy(i32* %.847, i32* %.848)
  store i32 %.849at17, i32* %.738
  store i32 0, i32* %.746
  store i32 31, i32* %.738
  %.853 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.854 = load i32, i32* %.746
  %.855 = load i32, i32* %.738
  %.856at18 = call i32 @_user_QuickSort(i32* %.853, i32 %.854, i32 %.855)
  store i32 %.856at18, i32* %.738
  br label %.858wc 
.858wc:
  %.862 = load i32, i32* %.746
  %.863 = icmp slt i32 %.862, 32
  br i1 %.863, label %.859wloop., label %.860wn
.859wloop.:
  %.865 = load i32, i32* %.746
  %.866 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.865
  %.867 = load i32, i32* %.866
  store i32 %.867, i32* %.738
  %.869 = load i32, i32* %.738
  call void @putint(i32 %.869)
  %.871 = load i32, i32* %.746
  %.872 = add i32 %.871, 1
  store i32 %.872, i32* %.746
  br label %.858wc 
.860wn:
  %.875 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  %.876 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.877at20 = call i32 @_user_arrCopy(i32* %.875, i32* %.876)
  store i32 %.877at20, i32* %.738
  %.879 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.880at21 = call i32 @_user_calSum(i32* %.879, i32 4)
  store i32 %.880at21, i32* %.738
  store i32 0, i32* %.746
  br label %.883wc 
.883wc:
  %.887 = load i32, i32* %.746
  %.888 = icmp slt i32 %.887, 32
  br i1 %.888, label %.884wloop., label %.885wn
.884wloop.:
  %.890 = load i32, i32* %.746
  %.891 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.890
  %.892 = load i32, i32* %.891
  store i32 %.892, i32* %.738
  %.894 = load i32, i32* %.738
  call void @putint(i32 %.894)
  %.896 = load i32, i32* %.746
  %.897 = add i32 %.896, 1
  store i32 %.897, i32* %.746
  br label %.883wc 
.885wn:
  %.900 = getelementptr inbounds [32 x i32], [32 x i32]* %.619, i32 0, i32 0
  %.901 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.902at23 = call i32 @_user_arrCopy(i32* %.900, i32* %.901)
  store i32 %.902at23, i32* %.738
  %.904 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 0
  %.905at24 = call i32 @_user_avgPooling(i32* %.904, i32 3)
  store i32 %.905at24, i32* %.738
  store i32 0, i32* %.746
  br label %.908wc 
.908wc:
  %.912 = load i32, i32* %.746
  %.913 = icmp slt i32 %.912, 32
  br i1 %.913, label %.909wloop., label %.910wn
.909wloop.:
  %.915 = load i32, i32* %.746
  %.916 = getelementptr inbounds [32 x i32], [32 x i32]* %.620, i32 0, i32 %.915
  %.917 = load i32, i32* %.916
  store i32 %.917, i32* %.738
  %.919 = load i32, i32* %.738
  call void @putint(i32 %.919)
  %.921 = load i32, i32* %.746
  %.922 = add i32 %.921, 1
  store i32 %.922, i32* %.746
  br label %.908wc 
.910wn:
  ret i32 0 
}
