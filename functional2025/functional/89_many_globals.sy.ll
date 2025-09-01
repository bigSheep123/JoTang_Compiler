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
@.G.a0 = global i32 zeroinitializer
@.G.a1 = global i32 zeroinitializer
@.G.a2 = global i32 zeroinitializer
@.G.a3 = global i32 zeroinitializer
@.G.a4 = global i32 zeroinitializer
@.G.a5 = global i32 zeroinitializer
@.G.a6 = global i32 zeroinitializer
@.G.a7 = global i32 zeroinitializer
@.G.a8 = global i32 zeroinitializer
@.G.a9 = global i32 zeroinitializer
@.G.a10 = global i32 zeroinitializer
@.G.a11 = global i32 zeroinitializer
@.G.a12 = global i32 zeroinitializer
@.G.a13 = global i32 zeroinitializer
@.G.a14 = global i32 zeroinitializer
@.G.a15 = global i32 zeroinitializer
@.G.a16 = global i32 zeroinitializer
@.G.a17 = global i32 zeroinitializer
@.G.a18 = global i32 zeroinitializer
@.G.a19 = global i32 zeroinitializer
@.G.a20 = global i32 zeroinitializer
@.G.a21 = global i32 zeroinitializer
@.G.a22 = global i32 zeroinitializer
@.G.a23 = global i32 zeroinitializer
@.G.a24 = global i32 zeroinitializer
@.G.a25 = global i32 zeroinitializer
@.G.a26 = global i32 zeroinitializer
@.G.a27 = global i32 zeroinitializer
@.G.a28 = global i32 zeroinitializer
@.G.a29 = global i32 zeroinitializer
@.G.a30 = global i32 zeroinitializer
@.G.a31 = global i32 zeroinitializer
@.G.a32 = global i32 zeroinitializer
@.G.a33 = global i32 zeroinitializer
@.G.a34 = global i32 zeroinitializer
@.G.a35 = global i32 zeroinitializer
@.G.a36 = global i32 zeroinitializer
@.G.a37 = global i32 zeroinitializer
@.G.a38 = global i32 zeroinitializer
@.G.a39 = global i32 zeroinitializer
define i32 @_user_testParam8(i32 %.41, i32 %.44, i32 %.47, i32 %.50, i32 %.53, i32 %.56, i32 %.59, i32 %.62){
.40:
  %.63 = alloca i32
  %.60 = alloca i32
  %.57 = alloca i32
  %.54 = alloca i32
  %.51 = alloca i32
  %.48 = alloca i32
  %.45 = alloca i32
  %.42 = alloca i32
  store i32 %.41, i32* %.42
  store i32 %.44, i32* %.45
  store i32 %.47, i32* %.48
  store i32 %.50, i32* %.51
  store i32 %.53, i32* %.54
  store i32 %.56, i32* %.57
  store i32 %.59, i32* %.60
  store i32 %.62, i32* %.63
  %.65 = load i32, i32* %.42
  %.66 = load i32, i32* %.45
  %.67 = add i32 %.65, %.66
  %.68 = load i32, i32* %.48
  %.69 = add i32 %.67, %.68
  %.70 = load i32, i32* %.51
  %.71 = add i32 %.69, %.70
  %.72 = load i32, i32* %.54
  %.73 = add i32 %.71, %.72
  %.74 = load i32, i32* %.57
  %.75 = add i32 %.73, %.74
  %.76 = load i32, i32* %.60
  %.77 = add i32 %.75, %.76
  %.78 = load i32, i32* %.63
  %.79 = add i32 %.77, %.78
  ret i32 %.79 
}
define i32 @_user_testParam16(i32 %.82, i32 %.85, i32 %.88, i32 %.91, i32 %.94, i32 %.97, i32 %.100, i32 %.103, i32 %.106, i32 %.109, i32 %.112, i32 %.115, i32 %.118, i32 %.121, i32 %.124, i32 %.127){
.81:
  %.128 = alloca i32
  %.125 = alloca i32
  %.122 = alloca i32
  %.119 = alloca i32
  %.116 = alloca i32
  %.113 = alloca i32
  %.110 = alloca i32
  %.107 = alloca i32
  %.104 = alloca i32
  %.101 = alloca i32
  %.98 = alloca i32
  %.95 = alloca i32
  %.92 = alloca i32
  %.89 = alloca i32
  %.86 = alloca i32
  %.83 = alloca i32
  store i32 %.82, i32* %.83
  store i32 %.85, i32* %.86
  store i32 %.88, i32* %.89
  store i32 %.91, i32* %.92
  store i32 %.94, i32* %.95
  store i32 %.97, i32* %.98
  store i32 %.100, i32* %.101
  store i32 %.103, i32* %.104
  store i32 %.106, i32* %.107
  store i32 %.109, i32* %.110
  store i32 %.112, i32* %.113
  store i32 %.115, i32* %.116
  store i32 %.118, i32* %.119
  store i32 %.121, i32* %.122
  store i32 %.124, i32* %.125
  store i32 %.127, i32* %.128
  %.130 = load i32, i32* %.83
  %.131 = load i32, i32* %.86
  %.132 = add i32 %.130, %.131
  %.133 = load i32, i32* %.89
  %.134 = add i32 %.132, %.133
  %.135 = load i32, i32* %.92
  %.136 = sub i32 %.134, %.135
  %.137 = load i32, i32* %.95
  %.138 = sub i32 %.136, %.137
  %.139 = load i32, i32* %.98
  %.140 = sub i32 %.138, %.139
  %.141 = load i32, i32* %.101
  %.142 = sub i32 %.140, %.141
  %.143 = load i32, i32* %.104
  %.144 = sub i32 %.142, %.143
  %.145 = load i32, i32* %.107
  %.146 = add i32 %.144, %.145
  %.147 = load i32, i32* %.110
  %.148 = add i32 %.146, %.147
  %.149 = load i32, i32* %.113
  %.150 = add i32 %.148, %.149
  %.151 = load i32, i32* %.116
  %.152 = add i32 %.150, %.151
  %.153 = load i32, i32* %.119
  %.154 = add i32 %.152, %.153
  %.155 = load i32, i32* %.122
  %.156 = add i32 %.154, %.155
  %.157 = load i32, i32* %.125
  %.158 = add i32 %.156, %.157
  %.159 = load i32, i32* %.128
  %.160 = add i32 %.158, %.159
  ret i32 %.160 
}
define i32 @_user_testParam32(i32 %.163, i32 %.166, i32 %.169, i32 %.172, i32 %.175, i32 %.178, i32 %.181, i32 %.184, i32 %.187, i32 %.190, i32 %.193, i32 %.196, i32 %.199, i32 %.202, i32 %.205, i32 %.208, i32 %.211, i32 %.214, i32 %.217, i32 %.220, i32 %.223, i32 %.226, i32 %.229, i32 %.232, i32 %.235, i32 %.238, i32 %.241, i32 %.244, i32 %.247, i32 %.250, i32 %.253, i32 %.256){
.162:
  %.257 = alloca i32
  %.254 = alloca i32
  %.251 = alloca i32
  %.248 = alloca i32
  %.245 = alloca i32
  %.242 = alloca i32
  %.239 = alloca i32
  %.236 = alloca i32
  %.233 = alloca i32
  %.230 = alloca i32
  %.227 = alloca i32
  %.224 = alloca i32
  %.221 = alloca i32
  %.218 = alloca i32
  %.215 = alloca i32
  %.212 = alloca i32
  %.209 = alloca i32
  %.206 = alloca i32
  %.203 = alloca i32
  %.200 = alloca i32
  %.197 = alloca i32
  %.194 = alloca i32
  %.191 = alloca i32
  %.188 = alloca i32
  %.185 = alloca i32
  %.182 = alloca i32
  %.179 = alloca i32
  %.176 = alloca i32
  %.173 = alloca i32
  %.170 = alloca i32
  %.167 = alloca i32
  %.164 = alloca i32
  store i32 %.163, i32* %.164
  store i32 %.166, i32* %.167
  store i32 %.169, i32* %.170
  store i32 %.172, i32* %.173
  store i32 %.175, i32* %.176
  store i32 %.178, i32* %.179
  store i32 %.181, i32* %.182
  store i32 %.184, i32* %.185
  store i32 %.187, i32* %.188
  store i32 %.190, i32* %.191
  store i32 %.193, i32* %.194
  store i32 %.196, i32* %.197
  store i32 %.199, i32* %.200
  store i32 %.202, i32* %.203
  store i32 %.205, i32* %.206
  store i32 %.208, i32* %.209
  store i32 %.211, i32* %.212
  store i32 %.214, i32* %.215
  store i32 %.217, i32* %.218
  store i32 %.220, i32* %.221
  store i32 %.223, i32* %.224
  store i32 %.226, i32* %.227
  store i32 %.229, i32* %.230
  store i32 %.232, i32* %.233
  store i32 %.235, i32* %.236
  store i32 %.238, i32* %.239
  store i32 %.241, i32* %.242
  store i32 %.244, i32* %.245
  store i32 %.247, i32* %.248
  store i32 %.250, i32* %.251
  store i32 %.253, i32* %.254
  store i32 %.256, i32* %.257
  %.259 = load i32, i32* %.164
  %.260 = load i32, i32* %.167
  %.261 = add i32 %.259, %.260
  %.262 = load i32, i32* %.170
  %.263 = add i32 %.261, %.262
  %.264 = load i32, i32* %.173
  %.265 = add i32 %.263, %.264
  %.266 = load i32, i32* %.176
  %.267 = add i32 %.265, %.266
  %.268 = load i32, i32* %.179
  %.269 = add i32 %.267, %.268
  %.270 = load i32, i32* %.182
  %.271 = add i32 %.269, %.270
  %.272 = load i32, i32* %.185
  %.273 = add i32 %.271, %.272
  %.274 = load i32, i32* %.188
  %.275 = add i32 %.273, %.274
  %.276 = load i32, i32* %.191
  %.277 = add i32 %.275, %.276
  %.278 = load i32, i32* %.194
  %.279 = add i32 %.277, %.278
  %.280 = load i32, i32* %.197
  %.281 = add i32 %.279, %.280
  %.282 = load i32, i32* %.200
  %.283 = add i32 %.281, %.282
  %.284 = load i32, i32* %.203
  %.285 = add i32 %.283, %.284
  %.286 = load i32, i32* %.206
  %.287 = add i32 %.285, %.286
  %.288 = load i32, i32* %.209
  %.289 = add i32 %.287, %.288
  %.290 = load i32, i32* %.212
  %.291 = add i32 %.289, %.290
  %.292 = load i32, i32* %.215
  %.293 = add i32 %.291, %.292
  %.294 = load i32, i32* %.218
  %.295 = sub i32 %.293, %.294
  %.296 = load i32, i32* %.221
  %.297 = sub i32 %.295, %.296
  %.298 = load i32, i32* %.224
  %.299 = sub i32 %.297, %.298
  %.300 = load i32, i32* %.227
  %.301 = sub i32 %.299, %.300
  %.302 = load i32, i32* %.230
  %.303 = sub i32 %.301, %.302
  %.304 = load i32, i32* %.233
  %.305 = add i32 %.303, %.304
  %.306 = load i32, i32* %.236
  %.307 = add i32 %.305, %.306
  %.308 = load i32, i32* %.239
  %.309 = add i32 %.307, %.308
  %.310 = load i32, i32* %.242
  %.311 = add i32 %.309, %.310
  %.312 = load i32, i32* %.245
  %.313 = add i32 %.311, %.312
  %.314 = load i32, i32* %.248
  %.315 = add i32 %.313, %.314
  %.316 = load i32, i32* %.251
  %.317 = add i32 %.315, %.316
  %.318 = load i32, i32* %.254
  %.319 = add i32 %.317, %.318
  %.320 = load i32, i32* %.257
  %.321 = add i32 %.319, %.320
  ret i32 %.321 
}
define i32 @main(){
.323:
  store i32 0, i32* @.G.a0
  store i32 1, i32* @.G.a1
  store i32 2, i32* @.G.a2
  store i32 3, i32* @.G.a3
  store i32 4, i32* @.G.a4
  store i32 5, i32* @.G.a5
  store i32 6, i32* @.G.a6
  store i32 7, i32* @.G.a7
  store i32 8, i32* @.G.a8
  store i32 9, i32* @.G.a9
  store i32 0, i32* @.G.a10
  store i32 1, i32* @.G.a11
  store i32 2, i32* @.G.a12
  store i32 3, i32* @.G.a13
  store i32 4, i32* @.G.a14
  store i32 5, i32* @.G.a15
  store i32 6, i32* @.G.a16
  store i32 7, i32* @.G.a17
  store i32 8, i32* @.G.a18
  store i32 9, i32* @.G.a19
  store i32 0, i32* @.G.a20
  store i32 1, i32* @.G.a21
  store i32 2, i32* @.G.a22
  store i32 3, i32* @.G.a23
  store i32 4, i32* @.G.a24
  store i32 5, i32* @.G.a25
  store i32 6, i32* @.G.a26
  store i32 7, i32* @.G.a27
  store i32 8, i32* @.G.a28
  store i32 9, i32* @.G.a29
  store i32 0, i32* @.G.a30
  store i32 1, i32* @.G.a31
  store i32 4, i32* @.G.a32
  store i32 5, i32* @.G.a33
  store i32 6, i32* @.G.a34
  store i32 7, i32* @.G.a35
  store i32 8, i32* @.G.a36
  store i32 9, i32* @.G.a37
  store i32 0, i32* @.G.a38
  store i32 1, i32* @.G.a39
  %.374 = load i32, i32* @.G.a0
  %.375 = load i32, i32* @.G.a1
  %.376 = load i32, i32* @.G.a2
  %.377 = load i32, i32* @.G.a3
  %.378 = load i32, i32* @.G.a4
  %.379 = load i32, i32* @.G.a5
  %.380 = load i32, i32* @.G.a6
  %.381 = load i32, i32* @.G.a7
  %.382at0 = call i32 @_user_testParam8(i32 %.374, i32 %.375, i32 %.376, i32 %.377, i32 %.378, i32 %.379, i32 %.380, i32 %.381)
  store i32 %.382at0, i32* @.G.a0
  %.384 = load i32, i32* @.G.a0
  call void @putint(i32 %.384)
  %.387 = load i32, i32* @.G.a32
  %.388 = load i32, i32* @.G.a33
  %.389 = load i32, i32* @.G.a34
  %.390 = load i32, i32* @.G.a35
  %.391 = load i32, i32* @.G.a36
  %.392 = load i32, i32* @.G.a37
  %.393 = load i32, i32* @.G.a38
  %.394 = load i32, i32* @.G.a39
  %.395 = load i32, i32* @.G.a8
  %.396 = load i32, i32* @.G.a9
  %.397 = load i32, i32* @.G.a10
  %.398 = load i32, i32* @.G.a11
  %.399 = load i32, i32* @.G.a12
  %.400 = load i32, i32* @.G.a13
  %.401 = load i32, i32* @.G.a14
  %.402 = load i32, i32* @.G.a15
  %.403at2 = call i32 @_user_testParam16(i32 %.387, i32 %.388, i32 %.389, i32 %.390, i32 %.391, i32 %.392, i32 %.393, i32 %.394, i32 %.395, i32 %.396, i32 %.397, i32 %.398, i32 %.399, i32 %.400, i32 %.401, i32 %.402)
  store i32 %.403at2, i32* @.G.a0
  %.405 = load i32, i32* @.G.a0
  call void @putint(i32 %.405)
  %.407 = load i32, i32* @.G.a0
  %.408 = load i32, i32* @.G.a1
  %.409 = load i32, i32* @.G.a2
  %.410 = load i32, i32* @.G.a3
  %.411 = load i32, i32* @.G.a4
  %.412 = load i32, i32* @.G.a5
  %.413 = load i32, i32* @.G.a6
  %.414 = load i32, i32* @.G.a7
  %.415 = load i32, i32* @.G.a8
  %.416 = load i32, i32* @.G.a9
  %.417 = load i32, i32* @.G.a10
  %.418 = load i32, i32* @.G.a11
  %.419 = load i32, i32* @.G.a12
  %.420 = load i32, i32* @.G.a13
  %.421 = load i32, i32* @.G.a14
  %.422 = load i32, i32* @.G.a15
  %.423 = load i32, i32* @.G.a16
  %.424 = load i32, i32* @.G.a17
  %.425 = load i32, i32* @.G.a18
  %.426 = load i32, i32* @.G.a19
  %.427 = load i32, i32* @.G.a20
  %.428 = load i32, i32* @.G.a21
  %.429 = load i32, i32* @.G.a22
  %.430 = load i32, i32* @.G.a23
  %.431 = load i32, i32* @.G.a24
  %.432 = load i32, i32* @.G.a25
  %.433 = load i32, i32* @.G.a26
  %.434 = load i32, i32* @.G.a27
  %.435 = load i32, i32* @.G.a28
  %.436 = load i32, i32* @.G.a29
  %.437 = load i32, i32* @.G.a30
  %.438 = load i32, i32* @.G.a31
  %.439at4 = call i32 @_user_testParam32(i32 %.407, i32 %.408, i32 %.409, i32 %.410, i32 %.411, i32 %.412, i32 %.413, i32 %.414, i32 %.415, i32 %.416, i32 %.417, i32 %.418, i32 %.419, i32 %.420, i32 %.421, i32 %.422, i32 %.423, i32 %.424, i32 %.425, i32 %.426, i32 %.427, i32 %.428, i32 %.429, i32 %.430, i32 %.431, i32 %.432, i32 %.433, i32 %.434, i32 %.435, i32 %.436, i32 %.437, i32 %.438)
  store i32 %.439at4, i32* @.G.a0
  %.441 = load i32, i32* @.G.a0
  call void @putint(i32 %.441)
  ret i32 0 
}
