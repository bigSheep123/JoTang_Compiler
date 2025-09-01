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
@.C..701 = constant [16 x i32]  [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]
@.C..877 = constant [32 x [2 x i32]]  [[2 x i32]  [i32 0, i32 8848], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer]
define void @_user_sort(i32* %.1, i32 %.4){
.0:
  %.44 = alloca i32
  %.20 = alloca i32
  %.7 = alloca i32
  %.5 = alloca i32
  %.2 = alloca i32*
  store i32* %.1, i32** %.2
  store i32 %.4, i32* %.5
  store i32 0, i32* %.7
  br label %.10wc 
.10wc:
  %.14 = load i32, i32* %.7
  %.15 = load i32, i32* %.5
  %.17 = sub i32 %.15, 1
  %.18 = icmp slt i32 %.14, %.17
  br i1 %.18, label %.11wloop., label %.12wn
.11wloop.:
  %.21 = load i32, i32* %.7
  %.22 = add i32 %.21, 1
  store i32 %.22, i32* %.20
  br label %.24wc 
.12wn:
  ret void
.24wc:
  %.28 = load i32, i32* %.20
  %.29 = load i32, i32* %.5
  %.30 = icmp slt i32 %.28, %.29
  br i1 %.30, label %.25wloop., label %.26wn
.25wloop.:
  %.34 = load i32, i32* %.7
  %.35 = load i32*, i32** %.2
  %.36 = getelementptr inbounds i32, i32* %.35, i32 %.34
  %.37 = load i32, i32* %.36
  %.38 = load i32, i32* %.20
  %.39 = load i32*, i32** %.2
  %.40 = getelementptr inbounds i32, i32* %.39, i32 %.38
  %.41 = load i32, i32* %.40
  %.42 = icmp slt i32 %.37, %.41
  br i1 %.42, label %.32, label %.33
.26wn:
  %.68 = load i32, i32* %.7
  %.69 = add i32 %.68, 1
  store i32 %.69, i32* %.7
  br label %.10wc 
.32:
  %.45 = load i32, i32* %.7
  %.46 = load i32*, i32** %.2
  %.47 = getelementptr inbounds i32, i32* %.46, i32 %.45
  %.48 = load i32, i32* %.47
  store i32 %.48, i32* %.44
  %.50 = load i32, i32* %.20
  %.51 = load i32*, i32** %.2
  %.52 = getelementptr inbounds i32, i32* %.51, i32 %.50
  %.53 = load i32, i32* %.52
  %.54 = load i32, i32* %.7
  %.55 = load i32*, i32** %.2
  %.56 = getelementptr inbounds i32, i32* %.55, i32 %.54
  store i32 %.53, i32* %.56
  %.58 = load i32, i32* %.44
  %.59 = load i32, i32* %.20
  %.60 = load i32*, i32** %.2
  %.61 = getelementptr inbounds i32, i32* %.60, i32 %.59
  store i32 %.58, i32* %.61
  br label %.33 
.33:
  %.64 = load i32, i32* %.20
  %.65 = add i32 %.64, 1
  store i32 %.65, i32* %.20
  br label %.24wc 
}
define i32 @_user_param32_rec(i32 %.74, i32 %.77, i32 %.80, i32 %.83, i32 %.86, i32 %.89, i32 %.92, i32 %.95, i32 %.98, i32 %.101, i32 %.104, i32 %.107, i32 %.110, i32 %.113, i32 %.116, i32 %.119, i32 %.122, i32 %.125, i32 %.128, i32 %.131, i32 %.134, i32 %.137, i32 %.140, i32 %.143, i32 %.146, i32 %.149, i32 %.152, i32 %.155, i32 %.158, i32 %.161, i32 %.164, i32 %.167){
.73:
  %.168 = alloca i32
  %.165 = alloca i32
  %.162 = alloca i32
  %.159 = alloca i32
  %.156 = alloca i32
  %.153 = alloca i32
  %.150 = alloca i32
  %.147 = alloca i32
  %.144 = alloca i32
  %.141 = alloca i32
  %.138 = alloca i32
  %.135 = alloca i32
  %.132 = alloca i32
  %.129 = alloca i32
  %.126 = alloca i32
  %.123 = alloca i32
  %.120 = alloca i32
  %.117 = alloca i32
  %.114 = alloca i32
  %.111 = alloca i32
  %.108 = alloca i32
  %.105 = alloca i32
  %.102 = alloca i32
  %.99 = alloca i32
  %.96 = alloca i32
  %.93 = alloca i32
  %.90 = alloca i32
  %.87 = alloca i32
  %.84 = alloca i32
  %.81 = alloca i32
  %.78 = alloca i32
  %.75 = alloca i32
  store i32 %.74, i32* %.75
  store i32 %.77, i32* %.78
  store i32 %.80, i32* %.81
  store i32 %.83, i32* %.84
  store i32 %.86, i32* %.87
  store i32 %.89, i32* %.90
  store i32 %.92, i32* %.93
  store i32 %.95, i32* %.96
  store i32 %.98, i32* %.99
  store i32 %.101, i32* %.102
  store i32 %.104, i32* %.105
  store i32 %.107, i32* %.108
  store i32 %.110, i32* %.111
  store i32 %.113, i32* %.114
  store i32 %.116, i32* %.117
  store i32 %.119, i32* %.120
  store i32 %.122, i32* %.123
  store i32 %.125, i32* %.126
  store i32 %.128, i32* %.129
  store i32 %.131, i32* %.132
  store i32 %.134, i32* %.135
  store i32 %.137, i32* %.138
  store i32 %.140, i32* %.141
  store i32 %.143, i32* %.144
  store i32 %.146, i32* %.147
  store i32 %.149, i32* %.150
  store i32 %.152, i32* %.153
  store i32 %.155, i32* %.156
  store i32 %.158, i32* %.159
  store i32 %.161, i32* %.162
  store i32 %.164, i32* %.165
  store i32 %.167, i32* %.168
  %.172 = load i32, i32* %.75
  %.173 = icmp eq i32 %.172, 0
  br i1 %.173, label %.170, label %.171
.170:
  %.175 = load i32, i32* %.78
  ret i32 %.175 
.171:
  %.177 = load i32, i32* %.75
  %.178 = sub i32 %.177, 1
  %.179 = load i32, i32* %.78
  %.180 = load i32, i32* %.81
  %.181 = add i32 %.179, %.180
  %.183 = srem i32 %.181, 998244353
  %.184 = load i32, i32* %.84
  %.185 = load i32, i32* %.87
  %.186 = load i32, i32* %.90
  %.187 = load i32, i32* %.93
  %.188 = load i32, i32* %.96
  %.189 = load i32, i32* %.99
  %.190 = load i32, i32* %.102
  %.191 = load i32, i32* %.105
  %.192 = load i32, i32* %.108
  %.193 = load i32, i32* %.111
  %.194 = load i32, i32* %.114
  %.195 = load i32, i32* %.117
  %.196 = load i32, i32* %.120
  %.197 = load i32, i32* %.123
  %.198 = load i32, i32* %.126
  %.199 = load i32, i32* %.129
  %.200 = load i32, i32* %.132
  %.201 = load i32, i32* %.135
  %.202 = load i32, i32* %.138
  %.203 = load i32, i32* %.141
  %.204 = load i32, i32* %.144
  %.205 = load i32, i32* %.147
  %.206 = load i32, i32* %.150
  %.207 = load i32, i32* %.153
  %.208 = load i32, i32* %.156
  %.209 = load i32, i32* %.159
  %.210 = load i32, i32* %.162
  %.211 = load i32, i32* %.165
  %.212 = load i32, i32* %.168
  %.213at0 = call i32 @_user_param32_rec(i32 %.178, i32 %.183, i32 %.184, i32 %.185, i32 %.186, i32 %.187, i32 %.188, i32 %.189, i32 %.190, i32 %.191, i32 %.192, i32 %.193, i32 %.194, i32 %.195, i32 %.196, i32 %.197, i32 %.198, i32 %.199, i32 %.200, i32 %.201, i32 %.202, i32 %.203, i32 %.204, i32 %.205, i32 %.206, i32 %.207, i32 %.208, i32 %.209, i32 %.210, i32 %.211, i32 %.212, i32 0)
  ret i32 %.213at0 
}
define i32 @_user_param32_arr(i32* %.216, i32* %.219, i32* %.222, i32* %.225, i32* %.228, i32* %.231, i32* %.234, i32* %.237, i32* %.240, i32* %.243, i32* %.246, i32* %.249, i32* %.252, i32* %.255, i32* %.258, i32* %.261, i32* %.264, i32* %.267, i32* %.270, i32* %.273, i32* %.276, i32* %.279, i32* %.282, i32* %.285, i32* %.288, i32* %.291, i32* %.294, i32* %.297, i32* %.300, i32* %.303, i32* %.306, i32* %.309){
.215:
  %.312 = alloca i32
  %.310 = alloca i32*
  %.307 = alloca i32*
  %.304 = alloca i32*
  %.301 = alloca i32*
  %.298 = alloca i32*
  %.295 = alloca i32*
  %.292 = alloca i32*
  %.289 = alloca i32*
  %.286 = alloca i32*
  %.283 = alloca i32*
  %.280 = alloca i32*
  %.277 = alloca i32*
  %.274 = alloca i32*
  %.271 = alloca i32*
  %.268 = alloca i32*
  %.265 = alloca i32*
  %.262 = alloca i32*
  %.259 = alloca i32*
  %.256 = alloca i32*
  %.253 = alloca i32*
  %.250 = alloca i32*
  %.247 = alloca i32*
  %.244 = alloca i32*
  %.241 = alloca i32*
  %.238 = alloca i32*
  %.235 = alloca i32*
  %.232 = alloca i32*
  %.229 = alloca i32*
  %.226 = alloca i32*
  %.223 = alloca i32*
  %.220 = alloca i32*
  %.217 = alloca i32*
  store i32* %.216, i32** %.217
  store i32* %.219, i32** %.220
  store i32* %.222, i32** %.223
  store i32* %.225, i32** %.226
  store i32* %.228, i32** %.229
  store i32* %.231, i32** %.232
  store i32* %.234, i32** %.235
  store i32* %.237, i32** %.238
  store i32* %.240, i32** %.241
  store i32* %.243, i32** %.244
  store i32* %.246, i32** %.247
  store i32* %.249, i32** %.250
  store i32* %.252, i32** %.253
  store i32* %.255, i32** %.256
  store i32* %.258, i32** %.259
  store i32* %.261, i32** %.262
  store i32* %.264, i32** %.265
  store i32* %.267, i32** %.268
  store i32* %.270, i32** %.271
  store i32* %.273, i32** %.274
  store i32* %.276, i32** %.277
  store i32* %.279, i32** %.280
  store i32* %.282, i32** %.283
  store i32* %.285, i32** %.286
  store i32* %.288, i32** %.289
  store i32* %.291, i32** %.292
  store i32* %.294, i32** %.295
  store i32* %.297, i32** %.298
  store i32* %.300, i32** %.301
  store i32* %.303, i32** %.304
  store i32* %.306, i32** %.307
  store i32* %.309, i32** %.310
  %.313 = load i32*, i32** %.217
  %.314 = getelementptr inbounds i32, i32* %.313, i32 0
  %.315 = load i32, i32* %.314
  %.316 = load i32*, i32** %.217
  %.317 = getelementptr inbounds i32, i32* %.316, i32 1
  %.318 = load i32, i32* %.317
  %.319 = add i32 %.315, %.318
  store i32 %.319, i32* %.312
  %.321 = load i32, i32* %.312
  %.322 = load i32*, i32** %.220
  %.323 = getelementptr inbounds i32, i32* %.322, i32 0
  %.324 = load i32, i32* %.323
  %.325 = add i32 %.321, %.324
  %.326 = load i32*, i32** %.220
  %.327 = getelementptr inbounds i32, i32* %.326, i32 1
  %.328 = load i32, i32* %.327
  %.329 = add i32 %.325, %.328
  store i32 %.329, i32* %.312
  %.331 = load i32, i32* %.312
  %.332 = load i32*, i32** %.223
  %.333 = getelementptr inbounds i32, i32* %.332, i32 0
  %.334 = load i32, i32* %.333
  %.335 = add i32 %.331, %.334
  %.336 = load i32*, i32** %.223
  %.337 = getelementptr inbounds i32, i32* %.336, i32 1
  %.338 = load i32, i32* %.337
  %.339 = add i32 %.335, %.338
  store i32 %.339, i32* %.312
  %.341 = load i32, i32* %.312
  %.342 = load i32*, i32** %.226
  %.343 = getelementptr inbounds i32, i32* %.342, i32 0
  %.344 = load i32, i32* %.343
  %.345 = add i32 %.341, %.344
  %.346 = load i32*, i32** %.226
  %.347 = getelementptr inbounds i32, i32* %.346, i32 1
  %.348 = load i32, i32* %.347
  %.349 = add i32 %.345, %.348
  store i32 %.349, i32* %.312
  %.351 = load i32, i32* %.312
  %.352 = load i32*, i32** %.229
  %.353 = getelementptr inbounds i32, i32* %.352, i32 0
  %.354 = load i32, i32* %.353
  %.355 = add i32 %.351, %.354
  %.356 = load i32*, i32** %.229
  %.357 = getelementptr inbounds i32, i32* %.356, i32 1
  %.358 = load i32, i32* %.357
  %.359 = add i32 %.355, %.358
  store i32 %.359, i32* %.312
  %.361 = load i32, i32* %.312
  %.362 = load i32*, i32** %.232
  %.363 = getelementptr inbounds i32, i32* %.362, i32 0
  %.364 = load i32, i32* %.363
  %.365 = add i32 %.361, %.364
  %.366 = load i32*, i32** %.232
  %.367 = getelementptr inbounds i32, i32* %.366, i32 1
  %.368 = load i32, i32* %.367
  %.369 = add i32 %.365, %.368
  store i32 %.369, i32* %.312
  %.371 = load i32, i32* %.312
  %.372 = load i32*, i32** %.235
  %.373 = getelementptr inbounds i32, i32* %.372, i32 0
  %.374 = load i32, i32* %.373
  %.375 = add i32 %.371, %.374
  %.376 = load i32*, i32** %.235
  %.377 = getelementptr inbounds i32, i32* %.376, i32 1
  %.378 = load i32, i32* %.377
  %.379 = add i32 %.375, %.378
  store i32 %.379, i32* %.312
  %.381 = load i32, i32* %.312
  %.382 = load i32*, i32** %.238
  %.383 = getelementptr inbounds i32, i32* %.382, i32 0
  %.384 = load i32, i32* %.383
  %.385 = add i32 %.381, %.384
  %.386 = load i32*, i32** %.238
  %.387 = getelementptr inbounds i32, i32* %.386, i32 1
  %.388 = load i32, i32* %.387
  %.389 = add i32 %.385, %.388
  store i32 %.389, i32* %.312
  %.391 = load i32, i32* %.312
  %.392 = load i32*, i32** %.241
  %.393 = getelementptr inbounds i32, i32* %.392, i32 0
  %.394 = load i32, i32* %.393
  %.395 = add i32 %.391, %.394
  %.396 = load i32*, i32** %.241
  %.397 = getelementptr inbounds i32, i32* %.396, i32 1
  %.398 = load i32, i32* %.397
  %.399 = add i32 %.395, %.398
  store i32 %.399, i32* %.312
  %.401 = load i32, i32* %.312
  %.402 = load i32*, i32** %.244
  %.403 = getelementptr inbounds i32, i32* %.402, i32 0
  %.404 = load i32, i32* %.403
  %.405 = add i32 %.401, %.404
  %.406 = load i32*, i32** %.244
  %.407 = getelementptr inbounds i32, i32* %.406, i32 1
  %.408 = load i32, i32* %.407
  %.409 = add i32 %.405, %.408
  store i32 %.409, i32* %.312
  %.411 = load i32, i32* %.312
  %.412 = load i32*, i32** %.247
  %.413 = getelementptr inbounds i32, i32* %.412, i32 0
  %.414 = load i32, i32* %.413
  %.415 = add i32 %.411, %.414
  %.416 = load i32*, i32** %.247
  %.417 = getelementptr inbounds i32, i32* %.416, i32 1
  %.418 = load i32, i32* %.417
  %.419 = add i32 %.415, %.418
  store i32 %.419, i32* %.312
  %.421 = load i32, i32* %.312
  %.422 = load i32*, i32** %.250
  %.423 = getelementptr inbounds i32, i32* %.422, i32 0
  %.424 = load i32, i32* %.423
  %.425 = add i32 %.421, %.424
  %.426 = load i32*, i32** %.250
  %.427 = getelementptr inbounds i32, i32* %.426, i32 1
  %.428 = load i32, i32* %.427
  %.429 = add i32 %.425, %.428
  store i32 %.429, i32* %.312
  %.431 = load i32, i32* %.312
  %.432 = load i32*, i32** %.253
  %.433 = getelementptr inbounds i32, i32* %.432, i32 0
  %.434 = load i32, i32* %.433
  %.435 = add i32 %.431, %.434
  %.436 = load i32*, i32** %.253
  %.437 = getelementptr inbounds i32, i32* %.436, i32 1
  %.438 = load i32, i32* %.437
  %.439 = add i32 %.435, %.438
  store i32 %.439, i32* %.312
  %.441 = load i32, i32* %.312
  %.442 = load i32*, i32** %.256
  %.443 = getelementptr inbounds i32, i32* %.442, i32 0
  %.444 = load i32, i32* %.443
  %.445 = add i32 %.441, %.444
  %.446 = load i32*, i32** %.256
  %.447 = getelementptr inbounds i32, i32* %.446, i32 1
  %.448 = load i32, i32* %.447
  %.449 = add i32 %.445, %.448
  store i32 %.449, i32* %.312
  %.451 = load i32, i32* %.312
  %.452 = load i32*, i32** %.259
  %.453 = getelementptr inbounds i32, i32* %.452, i32 0
  %.454 = load i32, i32* %.453
  %.455 = add i32 %.451, %.454
  %.456 = load i32*, i32** %.259
  %.457 = getelementptr inbounds i32, i32* %.456, i32 1
  %.458 = load i32, i32* %.457
  %.459 = add i32 %.455, %.458
  store i32 %.459, i32* %.312
  %.461 = load i32, i32* %.312
  %.462 = load i32*, i32** %.262
  %.463 = getelementptr inbounds i32, i32* %.462, i32 0
  %.464 = load i32, i32* %.463
  %.465 = add i32 %.461, %.464
  %.466 = load i32*, i32** %.262
  %.467 = getelementptr inbounds i32, i32* %.466, i32 1
  %.468 = load i32, i32* %.467
  %.469 = add i32 %.465, %.468
  store i32 %.469, i32* %.312
  %.471 = load i32, i32* %.312
  %.472 = load i32*, i32** %.265
  %.473 = getelementptr inbounds i32, i32* %.472, i32 0
  %.474 = load i32, i32* %.473
  %.475 = add i32 %.471, %.474
  %.476 = load i32*, i32** %.265
  %.477 = getelementptr inbounds i32, i32* %.476, i32 1
  %.478 = load i32, i32* %.477
  %.479 = add i32 %.475, %.478
  store i32 %.479, i32* %.312
  %.481 = load i32, i32* %.312
  %.482 = load i32*, i32** %.268
  %.483 = getelementptr inbounds i32, i32* %.482, i32 0
  %.484 = load i32, i32* %.483
  %.485 = add i32 %.481, %.484
  %.486 = load i32*, i32** %.268
  %.487 = getelementptr inbounds i32, i32* %.486, i32 1
  %.488 = load i32, i32* %.487
  %.489 = add i32 %.485, %.488
  store i32 %.489, i32* %.312
  %.491 = load i32, i32* %.312
  %.492 = load i32*, i32** %.271
  %.493 = getelementptr inbounds i32, i32* %.492, i32 0
  %.494 = load i32, i32* %.493
  %.495 = add i32 %.491, %.494
  %.496 = load i32*, i32** %.271
  %.497 = getelementptr inbounds i32, i32* %.496, i32 1
  %.498 = load i32, i32* %.497
  %.499 = add i32 %.495, %.498
  store i32 %.499, i32* %.312
  %.501 = load i32, i32* %.312
  %.502 = load i32*, i32** %.274
  %.503 = getelementptr inbounds i32, i32* %.502, i32 0
  %.504 = load i32, i32* %.503
  %.505 = add i32 %.501, %.504
  %.506 = load i32*, i32** %.274
  %.507 = getelementptr inbounds i32, i32* %.506, i32 1
  %.508 = load i32, i32* %.507
  %.509 = add i32 %.505, %.508
  store i32 %.509, i32* %.312
  %.511 = load i32, i32* %.312
  %.512 = load i32*, i32** %.277
  %.513 = getelementptr inbounds i32, i32* %.512, i32 0
  %.514 = load i32, i32* %.513
  %.515 = add i32 %.511, %.514
  %.516 = load i32*, i32** %.277
  %.517 = getelementptr inbounds i32, i32* %.516, i32 1
  %.518 = load i32, i32* %.517
  %.519 = add i32 %.515, %.518
  store i32 %.519, i32* %.312
  %.521 = load i32, i32* %.312
  %.522 = load i32*, i32** %.280
  %.523 = getelementptr inbounds i32, i32* %.522, i32 0
  %.524 = load i32, i32* %.523
  %.525 = add i32 %.521, %.524
  %.526 = load i32*, i32** %.280
  %.527 = getelementptr inbounds i32, i32* %.526, i32 1
  %.528 = load i32, i32* %.527
  %.529 = add i32 %.525, %.528
  store i32 %.529, i32* %.312
  %.531 = load i32, i32* %.312
  %.532 = load i32*, i32** %.283
  %.533 = getelementptr inbounds i32, i32* %.532, i32 0
  %.534 = load i32, i32* %.533
  %.535 = add i32 %.531, %.534
  %.536 = load i32*, i32** %.283
  %.537 = getelementptr inbounds i32, i32* %.536, i32 1
  %.538 = load i32, i32* %.537
  %.539 = add i32 %.535, %.538
  store i32 %.539, i32* %.312
  %.541 = load i32, i32* %.312
  %.542 = load i32*, i32** %.286
  %.543 = getelementptr inbounds i32, i32* %.542, i32 0
  %.544 = load i32, i32* %.543
  %.545 = add i32 %.541, %.544
  %.546 = load i32*, i32** %.286
  %.547 = getelementptr inbounds i32, i32* %.546, i32 1
  %.548 = load i32, i32* %.547
  %.549 = add i32 %.545, %.548
  store i32 %.549, i32* %.312
  %.551 = load i32, i32* %.312
  %.552 = load i32*, i32** %.289
  %.553 = getelementptr inbounds i32, i32* %.552, i32 0
  %.554 = load i32, i32* %.553
  %.555 = add i32 %.551, %.554
  %.556 = load i32*, i32** %.289
  %.557 = getelementptr inbounds i32, i32* %.556, i32 1
  %.558 = load i32, i32* %.557
  %.559 = add i32 %.555, %.558
  store i32 %.559, i32* %.312
  %.561 = load i32, i32* %.312
  %.562 = load i32*, i32** %.292
  %.563 = getelementptr inbounds i32, i32* %.562, i32 0
  %.564 = load i32, i32* %.563
  %.565 = add i32 %.561, %.564
  %.566 = load i32*, i32** %.292
  %.567 = getelementptr inbounds i32, i32* %.566, i32 1
  %.568 = load i32, i32* %.567
  %.569 = add i32 %.565, %.568
  store i32 %.569, i32* %.312
  %.571 = load i32, i32* %.312
  %.572 = load i32*, i32** %.295
  %.573 = getelementptr inbounds i32, i32* %.572, i32 0
  %.574 = load i32, i32* %.573
  %.575 = add i32 %.571, %.574
  %.576 = load i32*, i32** %.295
  %.577 = getelementptr inbounds i32, i32* %.576, i32 1
  %.578 = load i32, i32* %.577
  %.579 = add i32 %.575, %.578
  store i32 %.579, i32* %.312
  %.581 = load i32, i32* %.312
  %.582 = load i32*, i32** %.298
  %.583 = getelementptr inbounds i32, i32* %.582, i32 0
  %.584 = load i32, i32* %.583
  %.585 = add i32 %.581, %.584
  %.586 = load i32*, i32** %.298
  %.587 = getelementptr inbounds i32, i32* %.586, i32 1
  %.588 = load i32, i32* %.587
  %.589 = add i32 %.585, %.588
  store i32 %.589, i32* %.312
  %.591 = load i32, i32* %.312
  %.592 = load i32*, i32** %.301
  %.593 = getelementptr inbounds i32, i32* %.592, i32 0
  %.594 = load i32, i32* %.593
  %.595 = add i32 %.591, %.594
  %.596 = load i32*, i32** %.301
  %.597 = getelementptr inbounds i32, i32* %.596, i32 1
  %.598 = load i32, i32* %.597
  %.599 = add i32 %.595, %.598
  store i32 %.599, i32* %.312
  %.601 = load i32, i32* %.312
  %.602 = load i32*, i32** %.304
  %.603 = getelementptr inbounds i32, i32* %.602, i32 0
  %.604 = load i32, i32* %.603
  %.605 = add i32 %.601, %.604
  %.606 = load i32*, i32** %.304
  %.607 = getelementptr inbounds i32, i32* %.606, i32 1
  %.608 = load i32, i32* %.607
  %.609 = add i32 %.605, %.608
  store i32 %.609, i32* %.312
  %.611 = load i32, i32* %.312
  %.612 = load i32*, i32** %.307
  %.613 = getelementptr inbounds i32, i32* %.612, i32 0
  %.614 = load i32, i32* %.613
  %.615 = add i32 %.611, %.614
  %.616 = load i32*, i32** %.307
  %.617 = getelementptr inbounds i32, i32* %.616, i32 1
  %.618 = load i32, i32* %.617
  %.619 = add i32 %.615, %.618
  store i32 %.619, i32* %.312
  %.621 = load i32, i32* %.312
  %.622 = load i32*, i32** %.310
  %.623 = getelementptr inbounds i32, i32* %.622, i32 0
  %.624 = load i32, i32* %.623
  %.625 = add i32 %.621, %.624
  %.626 = load i32*, i32** %.310
  %.627 = getelementptr inbounds i32, i32* %.626, i32 1
  %.628 = load i32, i32* %.627
  %.629 = add i32 %.625, %.628
  store i32 %.629, i32* %.312
  %.631 = load i32, i32* %.312
  ret i32 %.631 
}
define i32 @_user_param16(i32 %.634, i32 %.637, i32 %.640, i32 %.643, i32 %.646, i32 %.649, i32 %.652, i32 %.655, i32 %.658, i32 %.661, i32 %.664, i32 %.667, i32 %.670, i32 %.673, i32 %.676, i32 %.679){
.633:
  %.683 = alloca [16 x i32]
  %.680 = alloca i32
  %.677 = alloca i32
  %.674 = alloca i32
  %.671 = alloca i32
  %.668 = alloca i32
  %.665 = alloca i32
  %.662 = alloca i32
  %.659 = alloca i32
  %.656 = alloca i32
  %.653 = alloca i32
  %.650 = alloca i32
  %.647 = alloca i32
  %.644 = alloca i32
  %.641 = alloca i32
  %.638 = alloca i32
  %.635 = alloca i32
  store i32 %.634, i32* %.635
  store i32 %.637, i32* %.638
  store i32 %.640, i32* %.641
  store i32 %.643, i32* %.644
  store i32 %.646, i32* %.647
  store i32 %.649, i32* %.650
  store i32 %.652, i32* %.653
  store i32 %.655, i32* %.656
  store i32 %.658, i32* %.659
  store i32 %.661, i32* %.662
  store i32 %.664, i32* %.665
  store i32 %.667, i32* %.668
  store i32 %.670, i32* %.671
  store i32 %.673, i32* %.674
  store i32 %.676, i32* %.677
  store i32 %.679, i32* %.680
  %.685 = load i32, i32* %.635
  %.686 = load i32, i32* %.638
  %.687 = load i32, i32* %.641
  %.688 = load i32, i32* %.644
  %.689 = load i32, i32* %.647
  %.690 = load i32, i32* %.650
  %.691 = load i32, i32* %.653
  %.692 = load i32, i32* %.656
  %.693 = load i32, i32* %.659
  %.694 = load i32, i32* %.662
  %.695 = load i32, i32* %.665
  %.696 = load i32, i32* %.668
  %.697 = load i32, i32* %.671
  %.698 = load i32, i32* %.674
  %.699 = load i32, i32* %.677
  %.700 = load i32, i32* %.680
  call void @llvm.memcpy.p0.p0.i32([16 x i32]* %.683, [16 x i32]* @.C..701, i32 64, i1 false)
  %.707 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 0
  store i32 %.685, i32* %.707
  %.709 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 1
  store i32 %.686, i32* %.709
  %.711 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 2
  store i32 %.687, i32* %.711
  %.714 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 3
  store i32 %.688, i32* %.714
  %.717 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 4
  store i32 %.689, i32* %.717
  %.720 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 5
  store i32 %.690, i32* %.720
  %.723 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 6
  store i32 %.691, i32* %.723
  %.726 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 7
  store i32 %.692, i32* %.726
  %.729 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 8
  store i32 %.693, i32* %.729
  %.732 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 9
  store i32 %.694, i32* %.732
  %.735 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 10
  store i32 %.695, i32* %.735
  %.738 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 11
  store i32 %.696, i32* %.738
  %.741 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 12
  store i32 %.697, i32* %.741
  %.744 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 13
  store i32 %.698, i32* %.744
  %.747 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 14
  store i32 %.699, i32* %.747
  %.750 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 15
  store i32 %.700, i32* %.750
  %.753 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 0
  call void @_user_sort(i32* %.753, i32 16)
  %.755 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 0
  %.756 = load i32, i32* %.755
  %.757 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 1
  %.758 = load i32, i32* %.757
  %.759 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 2
  %.760 = load i32, i32* %.759
  %.761 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 3
  %.762 = load i32, i32* %.761
  %.763 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 4
  %.764 = load i32, i32* %.763
  %.765 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 5
  %.766 = load i32, i32* %.765
  %.767 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 6
  %.768 = load i32, i32* %.767
  %.769 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 7
  %.770 = load i32, i32* %.769
  %.771 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 8
  %.772 = load i32, i32* %.771
  %.773 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 9
  %.774 = load i32, i32* %.773
  %.775 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 10
  %.776 = load i32, i32* %.775
  %.777 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 11
  %.778 = load i32, i32* %.777
  %.779 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 12
  %.780 = load i32, i32* %.779
  %.781 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 13
  %.782 = load i32, i32* %.781
  %.783 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 14
  %.784 = load i32, i32* %.783
  %.785 = getelementptr inbounds [16 x i32], [16 x i32]* %.683, i32 0, i32 15
  %.786 = load i32, i32* %.785
  %.787 = load i32, i32* %.635
  %.788 = load i32, i32* %.638
  %.789 = load i32, i32* %.641
  %.790 = load i32, i32* %.644
  %.791 = load i32, i32* %.647
  %.792 = load i32, i32* %.650
  %.793 = load i32, i32* %.653
  %.794 = load i32, i32* %.656
  %.795 = load i32, i32* %.659
  %.796 = load i32, i32* %.662
  %.797 = load i32, i32* %.665
  %.798 = load i32, i32* %.668
  %.799 = load i32, i32* %.671
  %.800 = load i32, i32* %.674
  %.801 = load i32, i32* %.677
  %.802 = load i32, i32* %.680
  %.803at2 = call i32 @_user_param32_rec(i32 %.756, i32 %.758, i32 %.760, i32 %.762, i32 %.764, i32 %.766, i32 %.768, i32 %.770, i32 %.772, i32 %.774, i32 %.776, i32 %.778, i32 %.780, i32 %.782, i32 %.784, i32 %.786, i32 %.787, i32 %.788, i32 %.789, i32 %.790, i32 %.791, i32 %.792, i32 %.793, i32 %.794, i32 %.795, i32 %.796, i32 %.797, i32 %.798, i32 %.799, i32 %.800, i32 %.801, i32 %.802)
  ret i32 %.803at2 
}
define i32 @main(){
.805:
  %.882 = alloca i32
  %.856 = alloca [32 x [2 x i32]]
  %.852 = alloca i32
  %.849 = alloca i32
  %.846 = alloca i32
  %.843 = alloca i32
  %.840 = alloca i32
  %.837 = alloca i32
  %.834 = alloca i32
  %.831 = alloca i32
  %.828 = alloca i32
  %.825 = alloca i32
  %.822 = alloca i32
  %.819 = alloca i32
  %.816 = alloca i32
  %.813 = alloca i32
  %.810 = alloca i32
  %.806 = alloca i32
  %.808at3 = call i32 @getint()
  store i32 %.808at3, i32* %.806
  %.811at4 = call i32 @getint()
  store i32 %.811at4, i32* %.810
  %.814at5 = call i32 @getint()
  store i32 %.814at5, i32* %.813
  %.817at6 = call i32 @getint()
  store i32 %.817at6, i32* %.816
  %.820at7 = call i32 @getint()
  store i32 %.820at7, i32* %.819
  %.823at8 = call i32 @getint()
  store i32 %.823at8, i32* %.822
  %.826at9 = call i32 @getint()
  store i32 %.826at9, i32* %.825
  %.829at10 = call i32 @getint()
  store i32 %.829at10, i32* %.828
  %.832at11 = call i32 @getint()
  store i32 %.832at11, i32* %.831
  %.835at12 = call i32 @getint()
  store i32 %.835at12, i32* %.834
  %.838at13 = call i32 @getint()
  store i32 %.838at13, i32* %.837
  %.841at14 = call i32 @getint()
  store i32 %.841at14, i32* %.840
  %.844at15 = call i32 @getint()
  store i32 %.844at15, i32* %.843
  %.847at16 = call i32 @getint()
  store i32 %.847at16, i32* %.846
  %.850at17 = call i32 @getint()
  store i32 %.850at17, i32* %.849
  %.853at18 = call i32 @getint()
  store i32 %.853at18, i32* %.852
  %.859 = load i32, i32* %.806
  %.860 = load i32, i32* %.810
  %.861 = load i32, i32* %.813
  %.862 = load i32, i32* %.816
  %.863 = load i32, i32* %.819
  %.864 = load i32, i32* %.822
  %.865 = load i32, i32* %.825
  %.866 = load i32, i32* %.828
  %.867 = load i32, i32* %.831
  %.868 = load i32, i32* %.834
  %.869 = load i32, i32* %.837
  %.870 = load i32, i32* %.840
  %.871 = load i32, i32* %.843
  %.872 = load i32, i32* %.846
  %.873 = load i32, i32* %.849
  %.874 = load i32, i32* %.852
  %.875at19 = call i32 @_user_param16(i32 %.859, i32 %.860, i32 %.861, i32 %.862, i32 %.863, i32 %.864, i32 %.865, i32 %.866, i32 %.867, i32 %.868, i32 %.869, i32 %.870, i32 %.871, i32 %.872, i32 %.873, i32 %.874)
  call void @llvm.memcpy.p0.p0.i32([32 x [2 x i32]]* %.856, [32 x [2 x i32]]* @.C..877, i32 256, i1 false)
  %.880 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 0, i32 0
  store i32 %.875at19, i32* %.880
  store i32 1, i32* %.882
  br label %.884wc 
.884wc:
  %.888 = load i32, i32* %.882
  %.889 = icmp slt i32 %.888, 32
  br i1 %.889, label %.885wloop., label %.886wn
.885wloop.:
  %.891 = load i32, i32* %.882
  %.892 = sub i32 %.891, 1
  %.893 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 %.892, i32 1
  %.894 = load i32, i32* %.893
  %.895 = sub i32 %.894, 1
  %.896 = load i32, i32* %.882
  %.897 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 %.896, i32 0
  store i32 %.895, i32* %.897
  %.899 = load i32, i32* %.882
  %.900 = sub i32 %.899, 1
  %.901 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 %.900, i32 0
  %.902 = load i32, i32* %.901
  %.903 = sub i32 %.902, 2
  %.904 = load i32, i32* %.882
  %.905 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 %.904, i32 1
  store i32 %.903, i32* %.905
  %.907 = load i32, i32* %.882
  %.908 = add i32 %.907, 1
  store i32 %.908, i32* %.882
  br label %.884wc 
.886wn:
  %.911 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 0, i32 0
  %.912 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 1, i32 0
  %.913 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 2, i32 0
  %.914 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 3, i32 0
  %.915 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 4, i32 0
  %.916 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 5, i32 0
  %.917 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 6, i32 0
  %.918 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 7, i32 0
  %.919 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 8, i32 0
  %.920 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 9, i32 0
  %.921 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 10, i32 0
  %.922 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 11, i32 0
  %.923 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 12, i32 0
  %.924 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 13, i32 0
  %.925 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 14, i32 0
  %.926 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 15, i32 0
  %.927 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 16, i32 0
  %.929 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 17, i32 0
  %.931 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 18, i32 0
  %.933 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 19, i32 0
  %.935 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 20, i32 0
  %.937 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 21, i32 0
  %.939 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 22, i32 0
  %.941 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 23, i32 0
  %.943 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 24, i32 0
  %.945 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 25, i32 0
  %.947 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 26, i32 0
  %.949 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 27, i32 0
  %.951 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 28, i32 0
  %.953 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 29, i32 0
  %.955 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 30, i32 0
  %.957 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %.856, i32 0, i32 31, i32 0
  %.958at20 = call i32 @_user_param32_arr(i32* %.911, i32* %.912, i32* %.913, i32* %.914, i32* %.915, i32* %.916, i32* %.917, i32* %.918, i32* %.919, i32* %.920, i32* %.921, i32* %.922, i32* %.923, i32* %.924, i32* %.925, i32* %.926, i32* %.927, i32* %.929, i32* %.931, i32* %.933, i32* %.935, i32* %.937, i32* %.939, i32* %.941, i32* %.943, i32* %.945, i32* %.947, i32* %.949, i32* %.951, i32* %.953, i32* %.955, i32* %.957)
  call void @putint(i32 %.958at20)
  call void @putch(i32 10)
  ret i32 0 
}
