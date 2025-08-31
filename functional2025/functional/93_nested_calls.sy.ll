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
define i32 @_user_func1(i32 %.1, i32 %.4, i32 %.7){
.0:
  %.14 = icmp eq i32 %.7, 0
  br i1 %.14, label %.10, label %.11
.10:
  %.18 = mul i32 %.1, %.4
  ret i32 %.18 
.11:
  %.23 = sub i32 %.4, %.7
  %.24at0 = call i32 @_user_func1(i32 %.1, i32 %.23, i32 0)
  ret i32 %.24at0 
}
define i32 @_user_func2(i32 %.27, i32 %.30){
.26:
  %.36 = icmp ne i32 %.30, 0
  br i1 %.36, label %.33, label %.34
.33:
  %.40 = srem i32 %.27, %.30
  %.41at1 = call i32 @_user_func2(i32 %.40, i32 0)
  ret i32 %.41at1 
.34:
  ret i32 %.27 
}
define i32 @_user_func3(i32 %.46, i32 %.49){
.45:
  %.55 = icmp eq i32 %.49, 0
  br i1 %.55, label %.52, label %.53
.52:
  %.59 = add i32 %.46, 1
  ret i32 %.59 
.53:
  %.63 = add i32 %.46, %.49
  %.64at2 = call i32 @_user_func3(i32 %.63, i32 0)
  ret i32 %.64at2 
}
define i32 @_user_func4(i32 %.67, i32 %.70, i32 %.73){
.66:
  %.79 = icmp ne i32 %.67, 0
  br i1 %.79, label %.76, label %.77
.76:
  ret i32 %.70 
.77:
  ret i32 %.73 
}
define i32 @_user_func5(i32 %.86){
.85:
  %.90 = sub i32 0, %.86
  ret i32 %.90 
}
define i32 @_user_func6(i32 %.93, i32 %.96){
.92:
  %.102 = icmp ne i32 %.93, 0
  br i1 %.102, label %.103, label %.100
.99:
  ret i32 1 
.100:
  ret i32 0 
.103:
  %.106 = icmp ne i32 %.96, 0
  br i1 %.106, label %.99, label %.100
}
define i32 @_user_func7(i32 %.111){
.110:
  %.117 = icmp eq i32 %.111, 0
  br i1 %.117, label %.114, label %.115
.114:
  ret i32 1 
.115:
  ret i32 0 
}
define i32 @main(){
.121:
  %.136 = alloca [10 x i32]
  %.124at3 = call i32 @getint()
  %.127at4 = call i32 @getint()
  %.130at5 = call i32 @getint()
  %.133at6 = call i32 @getint()
  br label %.139wc 
.139wc:
  %.249 = phi i32 [0, %.121], [%.151, %.140wloop.]
  %.144 = icmp slt i32 %.249, 10
  br i1 %.144, label %.140wloop., label %.141wn
.140wloop.:
  %.146at7 = call i32 @getint()
  %.148 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 %.249
  store i32 %.146at7, i32* %.148
  %.151 = add i32 %.249, 1
  br label %.139wc 
.141wn:
  %.156at8 = call i32 @_user_func7(i32 %.124at3)
  %.158at9 = call i32 @_user_func5(i32 %.127at4)
  %.159at10 = call i32 @_user_func6(i32 %.156at8, i32 %.158at9)
  %.161at11 = call i32 @_user_func2(i32 %.159at10, i32 %.130at5)
  %.163at12 = call i32 @_user_func3(i32 %.161at11, i32 %.133at6)
  %.164at13 = call i32 @_user_func5(i32 %.163at12)
  %.165 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 0
  %.166 = load i32, i32* %.165
  %.167 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 1
  %.168 = load i32, i32* %.167
  %.169at14 = call i32 @_user_func5(i32 %.168)
  %.171 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 2
  %.172 = load i32, i32* %.171
  %.174 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 3
  %.175 = load i32, i32* %.174
  %.176at15 = call i32 @_user_func7(i32 %.175)
  %.177at16 = call i32 @_user_func6(i32 %.172, i32 %.176at15)
  %.179 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 4
  %.180 = load i32, i32* %.179
  %.182 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 5
  %.183 = load i32, i32* %.182
  %.184at17 = call i32 @_user_func7(i32 %.183)
  %.185at18 = call i32 @_user_func2(i32 %.180, i32 %.184at17)
  %.186at19 = call i32 @_user_func4(i32 %.169at14, i32 %.177at16, i32 %.185at18)
  %.188 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 6
  %.189 = load i32, i32* %.188
  %.190at20 = call i32 @_user_func3(i32 %.186at19, i32 %.189)
  %.192 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 7
  %.193 = load i32, i32* %.192
  %.194at21 = call i32 @_user_func2(i32 %.190at20, i32 %.193)
  %.196 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 8
  %.197 = load i32, i32* %.196
  %.199 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 9
  %.200 = load i32, i32* %.199
  %.201at22 = call i32 @_user_func7(i32 %.200)
  %.202at23 = call i32 @_user_func3(i32 %.197, i32 %.201at22)
  %.204at24 = call i32 @_user_func1(i32 %.194at21, i32 %.202at23, i32 %.124at3)
  %.205at25 = call i32 @_user_func4(i32 %.164at13, i32 %.166, i32 %.204at24)
  %.208at26 = call i32 @_user_func7(i32 %.130at5)
  %.210at27 = call i32 @_user_func3(i32 %.208at26, i32 %.133at6)
  %.211at28 = call i32 @_user_func2(i32 %.127at4, i32 %.210at27)
  %.212at29 = call i32 @_user_func3(i32 %.205at25, i32 %.211at28)
  %.213 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 0
  %.214 = load i32, i32* %.213
  %.215 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 1
  %.216 = load i32, i32* %.215
  %.217at30 = call i32 @_user_func1(i32 %.212at29, i32 %.214, i32 %.216)
  %.218 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 2
  %.219 = load i32, i32* %.218
  %.220at31 = call i32 @_user_func2(i32 %.217at30, i32 %.219)
  %.221 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 3
  %.222 = load i32, i32* %.221
  %.223 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 4
  %.224 = load i32, i32* %.223
  %.225 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 5
  %.226 = load i32, i32* %.225
  %.227at32 = call i32 @_user_func5(i32 %.226)
  %.228at33 = call i32 @_user_func3(i32 %.224, i32 %.227at32)
  %.229 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 6
  %.230 = load i32, i32* %.229
  %.231at34 = call i32 @_user_func5(i32 %.230)
  %.232at35 = call i32 @_user_func2(i32 %.228at33, i32 %.231at34)
  %.233 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 7
  %.234 = load i32, i32* %.233
  %.235 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 8
  %.236 = load i32, i32* %.235
  %.237at36 = call i32 @_user_func7(i32 %.236)
  %.238at37 = call i32 @_user_func1(i32 %.232at35, i32 %.234, i32 %.237at36)
  %.239 = getelementptr inbounds [10 x i32], [10 x i32]* %.136, i32 0, i32 9
  %.240 = load i32, i32* %.239
  %.241at38 = call i32 @_user_func5(i32 %.240)
  %.242at39 = call i32 @_user_func2(i32 %.238at37, i32 %.241at38)
  %.244at40 = call i32 @_user_func3(i32 %.242at39, i32 %.124at3)
  %.245at41 = call i32 @_user_func1(i32 %.220at31, i32 %.222, i32 %.244at40)
  ret i32 %.245at41 
}
