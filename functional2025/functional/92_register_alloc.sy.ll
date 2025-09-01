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
@.G.a1 = global i32 1
@.G.a2 = global i32 2
@.G.a3 = global i32 3
@.G.a4 = global i32 4
@.G.a5 = global i32 5
@.G.a6 = global i32 6
@.G.a7 = global i32 7
@.G.a8 = global i32 8
@.G.a9 = global i32 9
@.G.a10 = global i32 10
@.G.a11 = global i32 11
@.G.a12 = global i32 12
@.G.a13 = global i32 13
@.G.a14 = global i32 14
@.G.a15 = global i32 15
@.G.a16 = global i32 16
@.G.a17 = global i32 1
@.G.a18 = global i32 2
@.G.a19 = global i32 3
@.G.a20 = global i32 4
@.G.a21 = global i32 5
@.G.a22 = global i32 6
@.G.a23 = global i32 7
@.G.a24 = global i32 8
@.G.a25 = global i32 9
@.G.a26 = global i32 10
@.G.a27 = global i32 11
@.G.a28 = global i32 12
@.G.a29 = global i32 13
@.G.a30 = global i32 14
@.G.a31 = global i32 15
@.G.a32 = global i32 16
define i32 @_user_func(i32 %.49, i32 %.52){
.48:
  %.95 = alloca i32
  %.94 = alloca i32
  %.93 = alloca i32
  %.92 = alloca i32
  %.91 = alloca i32
  %.90 = alloca i32
  %.89 = alloca i32
  %.88 = alloca i32
  %.87 = alloca i32
  %.86 = alloca i32
  %.85 = alloca i32
  %.84 = alloca i32
  %.83 = alloca i32
  %.82 = alloca i32
  %.81 = alloca i32
  %.80 = alloca i32
  %.79 = alloca i32
  %.78 = alloca i32
  %.77 = alloca i32
  %.76 = alloca i32
  %.75 = alloca i32
  %.74 = alloca i32
  %.73 = alloca i32
  %.72 = alloca i32
  %.71 = alloca i32
  %.70 = alloca i32
  %.69 = alloca i32
  %.68 = alloca i32
  %.67 = alloca i32
  %.66 = alloca i32
  %.65 = alloca i32
  %.64 = alloca i32
  %.63 = alloca i32
  %.62 = alloca i32
  %.61 = alloca i32
  %.60 = alloca i32
  %.55 = alloca i32
  %.53 = alloca i32
  %.50 = alloca i32
  store i32 %.49, i32* %.50
  store i32 %.52, i32* %.53
  %.56 = load i32, i32* %.50
  %.57 = load i32, i32* %.53
  %.58 = add i32 %.56, %.57
  store i32 %.58, i32* %.55
  %.97at0 = call i32 @getint()
  store i32 %.97at0, i32* %.60
  %.99at1 = call i32 @getint()
  store i32 %.99at1, i32* %.61
  %.101at2 = call i32 @getint()
  store i32 %.101at2, i32* %.62
  %.103at3 = call i32 @getint()
  store i32 %.103at3, i32* %.63
  %.105 = load i32, i32* %.60
  %.106 = add i32 1, %.105
  %.107 = load i32, i32* @.G.a1
  %.108 = add i32 %.106, %.107
  store i32 %.108, i32* %.64
  %.110 = load i32, i32* %.61
  %.111 = add i32 2, %.110
  %.112 = load i32, i32* @.G.a2
  %.113 = add i32 %.111, %.112
  store i32 %.113, i32* %.65
  %.115 = load i32, i32* %.62
  %.116 = add i32 3, %.115
  %.117 = load i32, i32* @.G.a3
  %.118 = add i32 %.116, %.117
  store i32 %.118, i32* %.66
  %.120 = load i32, i32* %.63
  %.121 = add i32 4, %.120
  %.122 = load i32, i32* @.G.a4
  %.123 = add i32 %.121, %.122
  store i32 %.123, i32* %.67
  %.125 = load i32, i32* %.64
  %.126 = add i32 1, %.125
  %.127 = load i32, i32* @.G.a5
  %.128 = add i32 %.126, %.127
  store i32 %.128, i32* %.68
  %.130 = load i32, i32* %.65
  %.131 = add i32 2, %.130
  %.132 = load i32, i32* @.G.a6
  %.133 = add i32 %.131, %.132
  store i32 %.133, i32* %.69
  %.135 = load i32, i32* %.66
  %.136 = add i32 3, %.135
  %.137 = load i32, i32* @.G.a7
  %.138 = add i32 %.136, %.137
  store i32 %.138, i32* %.70
  %.140 = load i32, i32* %.67
  %.141 = add i32 4, %.140
  %.142 = load i32, i32* @.G.a8
  %.143 = add i32 %.141, %.142
  store i32 %.143, i32* %.71
  %.145 = load i32, i32* %.68
  %.146 = add i32 1, %.145
  %.147 = load i32, i32* @.G.a9
  %.148 = add i32 %.146, %.147
  store i32 %.148, i32* %.72
  %.150 = load i32, i32* %.69
  %.151 = add i32 2, %.150
  %.152 = load i32, i32* @.G.a10
  %.153 = add i32 %.151, %.152
  store i32 %.153, i32* %.73
  %.155 = load i32, i32* %.70
  %.156 = add i32 3, %.155
  %.157 = load i32, i32* @.G.a11
  %.158 = add i32 %.156, %.157
  store i32 %.158, i32* %.74
  %.160 = load i32, i32* %.71
  %.161 = add i32 4, %.160
  %.162 = load i32, i32* @.G.a12
  %.163 = add i32 %.161, %.162
  store i32 %.163, i32* %.75
  %.165 = load i32, i32* %.72
  %.166 = add i32 1, %.165
  %.167 = load i32, i32* @.G.a13
  %.168 = add i32 %.166, %.167
  store i32 %.168, i32* %.76
  %.170 = load i32, i32* %.73
  %.171 = add i32 2, %.170
  %.172 = load i32, i32* @.G.a14
  %.173 = add i32 %.171, %.172
  store i32 %.173, i32* %.77
  %.175 = load i32, i32* %.74
  %.176 = add i32 3, %.175
  %.177 = load i32, i32* @.G.a15
  %.178 = add i32 %.176, %.177
  store i32 %.178, i32* %.78
  %.180 = load i32, i32* %.75
  %.181 = add i32 4, %.180
  %.182 = load i32, i32* @.G.a16
  %.183 = add i32 %.181, %.182
  store i32 %.183, i32* %.79
  %.185 = load i32, i32* %.76
  %.186 = add i32 1, %.185
  %.187 = load i32, i32* @.G.a17
  %.188 = add i32 %.186, %.187
  store i32 %.188, i32* %.80
  %.190 = load i32, i32* %.77
  %.191 = add i32 2, %.190
  %.192 = load i32, i32* @.G.a18
  %.193 = add i32 %.191, %.192
  store i32 %.193, i32* %.81
  %.195 = load i32, i32* %.78
  %.196 = add i32 3, %.195
  %.197 = load i32, i32* @.G.a19
  %.198 = add i32 %.196, %.197
  store i32 %.198, i32* %.82
  %.200 = load i32, i32* %.79
  %.201 = add i32 4, %.200
  %.202 = load i32, i32* @.G.a20
  %.203 = add i32 %.201, %.202
  store i32 %.203, i32* %.83
  %.205 = load i32, i32* %.80
  %.206 = add i32 1, %.205
  %.207 = load i32, i32* @.G.a21
  %.208 = add i32 %.206, %.207
  store i32 %.208, i32* %.84
  %.210 = load i32, i32* %.81
  %.211 = add i32 2, %.210
  %.212 = load i32, i32* @.G.a22
  %.213 = add i32 %.211, %.212
  store i32 %.213, i32* %.85
  %.215 = load i32, i32* %.82
  %.216 = add i32 3, %.215
  %.217 = load i32, i32* @.G.a23
  %.218 = add i32 %.216, %.217
  store i32 %.218, i32* %.86
  %.220 = load i32, i32* %.83
  %.221 = add i32 4, %.220
  %.222 = load i32, i32* @.G.a24
  %.223 = add i32 %.221, %.222
  store i32 %.223, i32* %.87
  %.225 = load i32, i32* %.84
  %.226 = add i32 1, %.225
  %.227 = load i32, i32* @.G.a25
  %.228 = add i32 %.226, %.227
  store i32 %.228, i32* %.88
  %.230 = load i32, i32* %.85
  %.231 = add i32 2, %.230
  %.232 = load i32, i32* @.G.a26
  %.233 = add i32 %.231, %.232
  store i32 %.233, i32* %.89
  %.235 = load i32, i32* %.86
  %.236 = add i32 3, %.235
  %.237 = load i32, i32* @.G.a27
  %.238 = add i32 %.236, %.237
  store i32 %.238, i32* %.90
  %.240 = load i32, i32* %.87
  %.241 = add i32 4, %.240
  %.242 = load i32, i32* @.G.a28
  %.243 = add i32 %.241, %.242
  store i32 %.243, i32* %.91
  %.245 = load i32, i32* %.88
  %.246 = add i32 1, %.245
  %.247 = load i32, i32* @.G.a29
  %.248 = add i32 %.246, %.247
  store i32 %.248, i32* %.92
  %.250 = load i32, i32* %.89
  %.251 = add i32 2, %.250
  %.252 = load i32, i32* @.G.a30
  %.253 = add i32 %.251, %.252
  store i32 %.253, i32* %.93
  %.255 = load i32, i32* %.90
  %.256 = add i32 3, %.255
  %.257 = load i32, i32* @.G.a31
  %.258 = add i32 %.256, %.257
  store i32 %.258, i32* %.94
  %.260 = load i32, i32* %.91
  %.261 = add i32 4, %.260
  %.262 = load i32, i32* @.G.a32
  %.263 = add i32 %.261, %.262
  store i32 %.263, i32* %.95
  %.265 = load i32, i32* %.50
  %.266 = load i32, i32* %.53
  %.267 = sub i32 %.265, %.266
  %.268 = add i32 %.267, 10
  store i32 %.268, i32* %.55
  %.270 = load i32, i32* %.88
  %.271 = add i32 1, %.270
  %.272 = load i32, i32* @.G.a29
  %.273 = add i32 %.271, %.272
  store i32 %.273, i32* %.92
  %.275 = load i32, i32* %.89
  %.276 = add i32 2, %.275
  %.277 = load i32, i32* @.G.a30
  %.278 = add i32 %.276, %.277
  store i32 %.278, i32* %.93
  %.280 = load i32, i32* %.90
  %.281 = add i32 3, %.280
  %.282 = load i32, i32* @.G.a31
  %.283 = add i32 %.281, %.282
  store i32 %.283, i32* %.94
  %.285 = load i32, i32* %.91
  %.286 = add i32 4, %.285
  %.287 = load i32, i32* @.G.a32
  %.288 = add i32 %.286, %.287
  store i32 %.288, i32* %.95
  %.290 = load i32, i32* %.84
  %.291 = add i32 1, %.290
  %.292 = load i32, i32* @.G.a25
  %.293 = add i32 %.291, %.292
  store i32 %.293, i32* %.88
  %.295 = load i32, i32* %.85
  %.296 = add i32 2, %.295
  %.297 = load i32, i32* @.G.a26
  %.298 = add i32 %.296, %.297
  store i32 %.298, i32* %.89
  %.300 = load i32, i32* %.86
  %.301 = add i32 3, %.300
  %.302 = load i32, i32* @.G.a27
  %.303 = add i32 %.301, %.302
  store i32 %.303, i32* %.90
  %.305 = load i32, i32* %.87
  %.306 = add i32 4, %.305
  %.307 = load i32, i32* @.G.a28
  %.308 = add i32 %.306, %.307
  store i32 %.308, i32* %.91
  %.310 = load i32, i32* %.80
  %.311 = add i32 1, %.310
  %.312 = load i32, i32* @.G.a21
  %.313 = add i32 %.311, %.312
  store i32 %.313, i32* %.84
  %.315 = load i32, i32* %.81
  %.316 = add i32 2, %.315
  %.317 = load i32, i32* @.G.a22
  %.318 = add i32 %.316, %.317
  store i32 %.318, i32* %.85
  %.320 = load i32, i32* %.82
  %.321 = add i32 3, %.320
  %.322 = load i32, i32* @.G.a23
  %.323 = add i32 %.321, %.322
  store i32 %.323, i32* %.86
  %.325 = load i32, i32* %.83
  %.326 = add i32 4, %.325
  %.327 = load i32, i32* @.G.a24
  %.328 = add i32 %.326, %.327
  store i32 %.328, i32* %.87
  %.330 = load i32, i32* %.76
  %.331 = add i32 1, %.330
  %.332 = load i32, i32* @.G.a17
  %.333 = add i32 %.331, %.332
  store i32 %.333, i32* %.80
  %.335 = load i32, i32* %.77
  %.336 = add i32 2, %.335
  %.337 = load i32, i32* @.G.a18
  %.338 = add i32 %.336, %.337
  store i32 %.338, i32* %.81
  %.340 = load i32, i32* %.78
  %.341 = add i32 3, %.340
  %.342 = load i32, i32* @.G.a19
  %.343 = add i32 %.341, %.342
  store i32 %.343, i32* %.82
  %.345 = load i32, i32* %.79
  %.346 = add i32 4, %.345
  %.347 = load i32, i32* @.G.a20
  %.348 = add i32 %.346, %.347
  store i32 %.348, i32* %.83
  %.350 = load i32, i32* %.72
  %.351 = add i32 1, %.350
  %.352 = load i32, i32* @.G.a13
  %.353 = add i32 %.351, %.352
  store i32 %.353, i32* %.76
  %.355 = load i32, i32* %.73
  %.356 = add i32 2, %.355
  %.357 = load i32, i32* @.G.a14
  %.358 = add i32 %.356, %.357
  store i32 %.358, i32* %.77
  %.360 = load i32, i32* %.74
  %.361 = add i32 3, %.360
  %.362 = load i32, i32* @.G.a15
  %.363 = add i32 %.361, %.362
  store i32 %.363, i32* %.78
  %.365 = load i32, i32* %.75
  %.366 = add i32 4, %.365
  %.367 = load i32, i32* @.G.a16
  %.368 = add i32 %.366, %.367
  store i32 %.368, i32* %.79
  %.370 = load i32, i32* %.68
  %.371 = add i32 1, %.370
  %.372 = load i32, i32* @.G.a9
  %.373 = add i32 %.371, %.372
  store i32 %.373, i32* %.72
  %.375 = load i32, i32* %.69
  %.376 = add i32 2, %.375
  %.377 = load i32, i32* @.G.a10
  %.378 = add i32 %.376, %.377
  store i32 %.378, i32* %.73
  %.380 = load i32, i32* %.70
  %.381 = add i32 3, %.380
  %.382 = load i32, i32* @.G.a11
  %.383 = add i32 %.381, %.382
  store i32 %.383, i32* %.74
  %.385 = load i32, i32* %.71
  %.386 = add i32 4, %.385
  %.387 = load i32, i32* @.G.a12
  %.388 = add i32 %.386, %.387
  store i32 %.388, i32* %.75
  %.390 = load i32, i32* %.64
  %.391 = add i32 1, %.390
  %.392 = load i32, i32* @.G.a5
  %.393 = add i32 %.391, %.392
  store i32 %.393, i32* %.68
  %.395 = load i32, i32* %.65
  %.396 = add i32 2, %.395
  %.397 = load i32, i32* @.G.a6
  %.398 = add i32 %.396, %.397
  store i32 %.398, i32* %.69
  %.400 = load i32, i32* %.66
  %.401 = add i32 3, %.400
  %.402 = load i32, i32* @.G.a7
  %.403 = add i32 %.401, %.402
  store i32 %.403, i32* %.70
  %.405 = load i32, i32* %.67
  %.406 = add i32 4, %.405
  %.407 = load i32, i32* @.G.a8
  %.408 = add i32 %.406, %.407
  store i32 %.408, i32* %.71
  %.410 = load i32, i32* %.60
  %.411 = add i32 1, %.410
  %.412 = load i32, i32* @.G.a1
  %.413 = add i32 %.411, %.412
  store i32 %.413, i32* %.64
  %.415 = load i32, i32* %.61
  %.416 = add i32 2, %.415
  %.417 = load i32, i32* @.G.a2
  %.418 = add i32 %.416, %.417
  store i32 %.418, i32* %.65
  %.420 = load i32, i32* %.62
  %.421 = add i32 3, %.420
  %.422 = load i32, i32* @.G.a3
  %.423 = add i32 %.421, %.422
  store i32 %.423, i32* %.66
  %.425 = load i32, i32* %.63
  %.426 = add i32 4, %.425
  %.427 = load i32, i32* @.G.a4
  %.428 = add i32 %.426, %.427
  store i32 %.428, i32* %.67
  %.430 = load i32, i32* %.60
  %.431 = add i32 1, %.430
  %.432 = load i32, i32* @.G.a1
  %.433 = add i32 %.431, %.432
  store i32 %.433, i32* %.64
  %.435 = load i32, i32* %.61
  %.436 = add i32 2, %.435
  %.437 = load i32, i32* @.G.a2
  %.438 = add i32 %.436, %.437
  store i32 %.438, i32* %.65
  %.440 = load i32, i32* %.62
  %.441 = add i32 3, %.440
  %.442 = load i32, i32* @.G.a3
  %.443 = add i32 %.441, %.442
  store i32 %.443, i32* %.66
  %.445 = load i32, i32* %.63
  %.446 = add i32 4, %.445
  %.447 = load i32, i32* @.G.a4
  %.448 = add i32 %.446, %.447
  store i32 %.448, i32* %.67
  %.450 = load i32, i32* %.55
  %.451 = load i32, i32* %.60
  %.452 = add i32 %.450, %.451
  %.453 = load i32, i32* %.61
  %.454 = add i32 %.452, %.453
  %.455 = load i32, i32* %.62
  %.456 = add i32 %.454, %.455
  %.457 = load i32, i32* %.63
  %.458 = add i32 %.456, %.457
  %.459 = load i32, i32* %.64
  %.460 = sub i32 %.458, %.459
  %.461 = load i32, i32* %.65
  %.462 = sub i32 %.460, %.461
  %.463 = load i32, i32* %.66
  %.464 = sub i32 %.462, %.463
  %.465 = load i32, i32* %.67
  %.466 = sub i32 %.464, %.465
  %.467 = load i32, i32* %.68
  %.468 = add i32 %.466, %.467
  %.469 = load i32, i32* %.69
  %.470 = add i32 %.468, %.469
  %.471 = load i32, i32* %.70
  %.472 = add i32 %.470, %.471
  %.473 = load i32, i32* %.71
  %.474 = add i32 %.472, %.473
  %.475 = load i32, i32* %.72
  %.476 = sub i32 %.474, %.475
  %.477 = load i32, i32* %.73
  %.478 = sub i32 %.476, %.477
  %.479 = load i32, i32* %.74
  %.480 = sub i32 %.478, %.479
  %.481 = load i32, i32* %.75
  %.482 = sub i32 %.480, %.481
  %.483 = load i32, i32* %.76
  %.484 = add i32 %.482, %.483
  %.485 = load i32, i32* %.77
  %.486 = add i32 %.484, %.485
  %.487 = load i32, i32* %.78
  %.488 = add i32 %.486, %.487
  %.489 = load i32, i32* %.79
  %.490 = add i32 %.488, %.489
  %.491 = load i32, i32* %.80
  %.492 = sub i32 %.490, %.491
  %.493 = load i32, i32* %.81
  %.494 = sub i32 %.492, %.493
  %.495 = load i32, i32* %.82
  %.496 = sub i32 %.494, %.495
  %.497 = load i32, i32* %.83
  %.498 = sub i32 %.496, %.497
  %.499 = load i32, i32* %.84
  %.500 = add i32 %.498, %.499
  %.501 = load i32, i32* %.85
  %.502 = add i32 %.500, %.501
  %.503 = load i32, i32* %.86
  %.504 = add i32 %.502, %.503
  %.505 = load i32, i32* %.87
  %.506 = add i32 %.504, %.505
  %.507 = load i32, i32* %.88
  %.508 = sub i32 %.506, %.507
  %.509 = load i32, i32* %.89
  %.510 = sub i32 %.508, %.509
  %.511 = load i32, i32* %.90
  %.512 = sub i32 %.510, %.511
  %.513 = load i32, i32* %.91
  %.514 = sub i32 %.512, %.513
  %.515 = load i32, i32* %.92
  %.516 = add i32 %.514, %.515
  %.517 = load i32, i32* %.93
  %.518 = add i32 %.516, %.517
  %.519 = load i32, i32* %.94
  %.520 = add i32 %.518, %.519
  %.521 = load i32, i32* %.95
  %.522 = add i32 %.520, %.521
  %.523 = load i32, i32* @.G.a1
  %.524 = add i32 %.522, %.523
  %.525 = load i32, i32* @.G.a2
  %.526 = sub i32 %.524, %.525
  %.527 = load i32, i32* @.G.a3
  %.528 = add i32 %.526, %.527
  %.529 = load i32, i32* @.G.a4
  %.530 = sub i32 %.528, %.529
  %.531 = load i32, i32* @.G.a5
  %.532 = add i32 %.530, %.531
  %.533 = load i32, i32* @.G.a6
  %.534 = sub i32 %.532, %.533
  %.535 = load i32, i32* @.G.a7
  %.536 = add i32 %.534, %.535
  %.537 = load i32, i32* @.G.a8
  %.538 = sub i32 %.536, %.537
  %.539 = load i32, i32* @.G.a9
  %.540 = add i32 %.538, %.539
  %.541 = load i32, i32* @.G.a10
  %.542 = sub i32 %.540, %.541
  %.543 = load i32, i32* @.G.a11
  %.544 = add i32 %.542, %.543
  %.545 = load i32, i32* @.G.a12
  %.546 = sub i32 %.544, %.545
  %.547 = load i32, i32* @.G.a13
  %.548 = add i32 %.546, %.547
  %.549 = load i32, i32* @.G.a14
  %.550 = sub i32 %.548, %.549
  %.551 = load i32, i32* @.G.a15
  %.552 = add i32 %.550, %.551
  %.553 = load i32, i32* @.G.a16
  %.554 = sub i32 %.552, %.553
  %.555 = load i32, i32* @.G.a17
  %.556 = add i32 %.554, %.555
  %.557 = load i32, i32* @.G.a18
  %.558 = sub i32 %.556, %.557
  %.559 = load i32, i32* @.G.a19
  %.560 = add i32 %.558, %.559
  %.561 = load i32, i32* @.G.a20
  %.562 = sub i32 %.560, %.561
  %.563 = load i32, i32* @.G.a21
  %.564 = add i32 %.562, %.563
  %.565 = load i32, i32* @.G.a22
  %.566 = sub i32 %.564, %.565
  %.567 = load i32, i32* @.G.a23
  %.568 = add i32 %.566, %.567
  %.569 = load i32, i32* @.G.a24
  %.570 = sub i32 %.568, %.569
  %.571 = load i32, i32* @.G.a25
  %.572 = add i32 %.570, %.571
  %.573 = load i32, i32* @.G.a26
  %.574 = sub i32 %.572, %.573
  %.575 = load i32, i32* @.G.a27
  %.576 = add i32 %.574, %.575
  %.577 = load i32, i32* @.G.a28
  %.578 = sub i32 %.576, %.577
  %.579 = load i32, i32* @.G.a29
  %.580 = add i32 %.578, %.579
  %.581 = load i32, i32* @.G.a30
  %.582 = sub i32 %.580, %.581
  %.583 = load i32, i32* @.G.a31
  %.584 = add i32 %.582, %.583
  %.585 = load i32, i32* @.G.a32
  %.586 = sub i32 %.584, %.585
  ret i32 %.586 
}
define i32 @main(){
.588:
  %.590 = alloca i32
  %.589 = alloca i32
  %.591at4 = call i32 @getint()
  store i32 %.591at4, i32* %.589
  %.593 = load i32, i32* %.589
  %.595 = add i32 %.593, 18
  store i32 %.595, i32* %.590
  %.597 = load i32, i32* %.589
  %.598 = load i32, i32* %.590
  %.599at5 = call i32 @_user_func(i32 %.597, i32 %.598)
  store i32 %.599at5, i32* %.589
  %.601 = load i32, i32* %.589
  call void @putint(i32 %.601)
  %.604 = load i32, i32* %.589
  ret i32 %.604 
}
