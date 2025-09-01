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
@.G.arr1 = global [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]] zeroinitializer
@.G.arr2 = global [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]] zeroinitializer
define void @_user_loop1(i32 %.11, i32 %.14){
.10:
  %.23 = alloca i32
  %.22 = alloca i32
  %.21 = alloca i32
  %.20 = alloca i32
  %.19 = alloca i32
  %.18 = alloca i32
  %.17 = alloca i32
  %.15 = alloca i32
  %.12 = alloca i32
  store i32 %.11, i32* %.12
  store i32 %.14, i32* %.15
  store i32 0, i32* %.17
  br label %.26wc 
.26wc:
  %.30 = load i32, i32* %.17
  %.31 = load i32, i32* %.12
  %.32 = icmp slt i32 %.30, %.31
  br i1 %.32, label %.33, label %.28wn
.27wloop.:
  store i32 0, i32* %.18
  br label %.40wc 
.28wn:
  ret void
.33:
  %.35 = load i32, i32* %.17
  %.36 = load i32, i32* %.15
  %.37 = icmp slt i32 %.35, %.36
  br i1 %.37, label %.27wloop., label %.28wn
.40wc:
  %.44 = load i32, i32* %.18
  %.45 = icmp slt i32 %.44, 2
  br i1 %.45, label %.41wloop., label %.42wn
.41wloop.:
  store i32 0, i32* %.19
  br label %.48wc 
.42wn:
  %.138 = load i32, i32* %.17
  %.139 = add i32 %.138, 1
  store i32 %.139, i32* %.17
  br label %.26wc 
.48wc:
  %.52 = load i32, i32* %.19
  %.53 = icmp slt i32 %.52, 3
  br i1 %.53, label %.49wloop., label %.50wn
.49wloop.:
  store i32 0, i32* %.20
  br label %.56wc 
.50wn:
  %.134 = load i32, i32* %.18
  %.135 = add i32 %.134, 1
  store i32 %.135, i32* %.18
  br label %.40wc 
.56wc:
  %.60 = load i32, i32* %.20
  %.61 = icmp slt i32 %.60, 4
  br i1 %.61, label %.57wloop., label %.58wn
.57wloop.:
  store i32 0, i32* %.21
  br label %.64wc 
.58wn:
  %.130 = load i32, i32* %.19
  %.131 = add i32 %.130, 1
  store i32 %.131, i32* %.19
  br label %.48wc 
.64wc:
  %.68 = load i32, i32* %.21
  %.69 = icmp slt i32 %.68, 5
  br i1 %.69, label %.65wloop., label %.66wn
.65wloop.:
  store i32 0, i32* %.22
  br label %.72wc 
.66wn:
  %.126 = load i32, i32* %.20
  %.127 = add i32 %.126, 1
  store i32 %.127, i32* %.20
  br label %.56wc 
.72wc:
  %.76 = load i32, i32* %.22
  %.77 = icmp slt i32 %.76, 6
  br i1 %.77, label %.73wloop., label %.74wn
.73wloop.:
  store i32 0, i32* %.23
  br label %.80wc 
.74wn:
  %.122 = load i32, i32* %.21
  %.123 = add i32 %.122, 1
  store i32 %.123, i32* %.21
  br label %.64wc 
.80wc:
  %.84 = load i32, i32* %.23
  %.85 = icmp slt i32 %.84, 2
  br i1 %.85, label %.81wloop., label %.82wn
.81wloop.:
  %.87 = load i32, i32* %.17
  %.88 = load i32, i32* %.18
  %.89 = add i32 %.87, %.88
  %.90 = load i32, i32* %.19
  %.91 = add i32 %.89, %.90
  %.92 = load i32, i32* %.20
  %.93 = add i32 %.91, %.92
  %.94 = load i32, i32* %.21
  %.95 = add i32 %.93, %.94
  %.96 = load i32, i32* %.22
  %.97 = add i32 %.95, %.96
  %.98 = load i32, i32* %.23
  %.99 = add i32 %.97, %.98
  %.100 = load i32, i32* %.12
  %.101 = add i32 %.99, %.100
  %.102 = load i32, i32* %.15
  %.103 = add i32 %.101, %.102
  %.104 = load i32, i32* %.17
  %.105 = load i32, i32* %.18
  %.106 = load i32, i32* %.19
  %.107 = load i32, i32* %.20
  %.108 = load i32, i32* %.21
  %.109 = load i32, i32* %.22
  %.110 = load i32, i32* %.23
  %.111 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @.G.arr1, i32 0, i32 %.104, i32 %.105, i32 %.106, i32 %.107, i32 %.108, i32 %.109, i32 %.110
  store i32 %.103, i32* %.111
  %.113 = load i32, i32* %.23
  %.115 = add i32 %.113, 1
  store i32 %.115, i32* %.23
  br label %.80wc 
.82wn:
  %.118 = load i32, i32* %.22
  %.119 = add i32 %.118, 1
  store i32 %.119, i32* %.22
  br label %.72wc 
}
define void @_user_loop2(){
.143:
  %.150 = alloca i32
  %.149 = alloca i32
  %.148 = alloca i32
  %.147 = alloca i32
  %.146 = alloca i32
  %.145 = alloca i32
  %.144 = alloca i32
  store i32 0, i32* %.144
  br label %.152wc 
.152wc:
  %.156 = load i32, i32* %.144
  %.157 = icmp slt i32 %.156, 10
  br i1 %.157, label %.153wloop., label %.154wn
.153wloop.:
  store i32 0, i32* %.145
  br label %.160wc 
.154wn:
  ret void
.160wc:
  %.164 = load i32, i32* %.145
  %.165 = icmp slt i32 %.164, 2
  br i1 %.165, label %.161wloop., label %.162wn
.161wloop.:
  store i32 0, i32* %.146
  br label %.168wc 
.162wn:
  %.247 = load i32, i32* %.144
  %.248 = add i32 %.247, 1
  store i32 %.248, i32* %.144
  br label %.152wc 
.168wc:
  %.172 = load i32, i32* %.146
  %.173 = icmp slt i32 %.172, 3
  br i1 %.173, label %.169wloop., label %.170wn
.169wloop.:
  store i32 0, i32* %.147
  br label %.176wc 
.170wn:
  %.243 = load i32, i32* %.145
  %.244 = add i32 %.243, 1
  store i32 %.244, i32* %.145
  br label %.160wc 
.176wc:
  %.180 = load i32, i32* %.147
  %.181 = icmp slt i32 %.180, 2
  br i1 %.181, label %.177wloop., label %.178wn
.177wloop.:
  store i32 0, i32* %.148
  br label %.184wc 
.178wn:
  %.239 = load i32, i32* %.146
  %.240 = add i32 %.239, 1
  store i32 %.240, i32* %.146
  br label %.168wc 
.184wc:
  %.188 = load i32, i32* %.148
  %.189 = icmp slt i32 %.188, 4
  br i1 %.189, label %.185wloop., label %.186wn
.185wloop.:
  store i32 0, i32* %.149
  br label %.192wc 
.186wn:
  %.235 = load i32, i32* %.147
  %.236 = add i32 %.235, 1
  store i32 %.236, i32* %.147
  br label %.176wc 
.192wc:
  %.196 = load i32, i32* %.149
  %.197 = icmp slt i32 %.196, 8
  br i1 %.197, label %.193wloop., label %.194wn
.193wloop.:
  store i32 0, i32* %.150
  br label %.200wc 
.194wn:
  %.231 = load i32, i32* %.148
  %.232 = add i32 %.231, 1
  store i32 %.232, i32* %.148
  br label %.184wc 
.200wc:
  %.204 = load i32, i32* %.150
  %.205 = icmp slt i32 %.204, 7
  br i1 %.205, label %.201wloop., label %.202wn
.201wloop.:
  %.207 = load i32, i32* %.144
  %.208 = load i32, i32* %.145
  %.209 = add i32 %.207, %.208
  %.210 = load i32, i32* %.147
  %.211 = add i32 %.209, %.210
  %.212 = load i32, i32* %.150
  %.213 = add i32 %.211, %.212
  %.214 = load i32, i32* %.144
  %.215 = load i32, i32* %.145
  %.216 = load i32, i32* %.146
  %.217 = load i32, i32* %.147
  %.218 = load i32, i32* %.148
  %.219 = load i32, i32* %.149
  %.220 = load i32, i32* %.150
  %.221 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @.G.arr2, i32 0, i32 %.214, i32 %.215, i32 %.216, i32 %.217, i32 %.218, i32 %.219, i32 %.220
  store i32 %.213, i32* %.221
  %.223 = load i32, i32* %.150
  %.224 = add i32 %.223, 1
  store i32 %.224, i32* %.150
  br label %.200wc 
.202wn:
  %.227 = load i32, i32* %.149
  %.228 = add i32 %.227, 1
  store i32 %.228, i32* %.149
  br label %.192wc 
}
define i32 @_user_loop3(i32 %.253, i32 %.256, i32 %.259, i32 %.262, i32 %.265, i32 %.268, i32 %.271){
.252:
  %.281 = alloca i32
  %.280 = alloca i32
  %.279 = alloca i32
  %.278 = alloca i32
  %.277 = alloca i32
  %.276 = alloca i32
  %.275 = alloca i32
  %.274 = alloca i32
  %.272 = alloca i32
  %.269 = alloca i32
  %.266 = alloca i32
  %.263 = alloca i32
  %.260 = alloca i32
  %.257 = alloca i32
  %.254 = alloca i32
  store i32 %.253, i32* %.254
  store i32 %.256, i32* %.257
  store i32 %.259, i32* %.260
  store i32 %.262, i32* %.263
  store i32 %.265, i32* %.266
  store i32 %.268, i32* %.269
  store i32 %.271, i32* %.272
  store i32 0, i32* %.281
  store i32 0, i32* %.274
  br label %.284wc 
.284wc:
  %.288 = load i32, i32* %.274
  %.289 = icmp slt i32 %.288, 10
  br i1 %.289, label %.285wloop., label %.286wn
.285wloop.:
  store i32 0, i32* %.275
  br label %.292wc 
.286wn:
  %.446 = load i32, i32* %.281
  ret i32 %.446 
.292wc:
  %.296 = load i32, i32* %.275
  %.298 = icmp slt i32 %.296, 100
  br i1 %.298, label %.293wloop., label %.294wn
.293wloop.:
  store i32 0, i32* %.276
  br label %.301wc 
.294wn:
  %.435 = load i32, i32* %.274
  %.436 = add i32 %.435, 1
  store i32 %.436, i32* %.274
  %.440 = load i32, i32* %.274
  %.441 = load i32, i32* %.254
  %.442 = icmp sge i32 %.440, %.441
  br i1 %.442, label %.438, label %.439
.301wc:
  %.305 = load i32, i32* %.276
  %.307 = icmp slt i32 %.305, 1000
  br i1 %.307, label %.302wloop., label %.303wn
.302wloop.:
  store i32 0, i32* %.277
  br label %.310wc 
.303wn:
  %.424 = load i32, i32* %.275
  %.425 = add i32 %.424, 1
  store i32 %.425, i32* %.275
  %.429 = load i32, i32* %.275
  %.430 = load i32, i32* %.257
  %.431 = icmp sge i32 %.429, %.430
  br i1 %.431, label %.427, label %.428
.310wc:
  %.314 = load i32, i32* %.277
  %.316 = icmp slt i32 %.314, 10000
  br i1 %.316, label %.311wloop., label %.312wn
.311wloop.:
  store i32 0, i32* %.278
  br label %.319wc 
.312wn:
  %.413 = load i32, i32* %.276
  %.414 = add i32 %.413, 1
  store i32 %.414, i32* %.276
  %.418 = load i32, i32* %.276
  %.419 = load i32, i32* %.260
  %.420 = icmp sge i32 %.418, %.419
  br i1 %.420, label %.416, label %.417
.319wc:
  %.323 = load i32, i32* %.278
  %.325 = icmp slt i32 %.323, 100000
  br i1 %.325, label %.320wloop., label %.321wn
.320wloop.:
  store i32 0, i32* %.279
  br label %.328wc 
.321wn:
  %.402 = load i32, i32* %.277
  %.403 = add i32 %.402, 1
  store i32 %.403, i32* %.277
  %.407 = load i32, i32* %.277
  %.408 = load i32, i32* %.263
  %.409 = icmp sge i32 %.407, %.408
  br i1 %.409, label %.405, label %.406
.328wc:
  %.332 = load i32, i32* %.279
  %.334 = icmp slt i32 %.332, 1000000
  br i1 %.334, label %.329wloop., label %.330wn
.329wloop.:
  store i32 0, i32* %.280
  br label %.337wc 
.330wn:
  %.391 = load i32, i32* %.278
  %.392 = add i32 %.391, 1
  store i32 %.392, i32* %.278
  %.396 = load i32, i32* %.278
  %.397 = load i32, i32* %.266
  %.398 = icmp sge i32 %.396, %.397
  br i1 %.398, label %.394, label %.395
.337wc:
  %.341 = load i32, i32* %.280
  %.343 = icmp slt i32 %.341, 10000000
  br i1 %.343, label %.338wloop., label %.339wn
.338wloop.:
  %.345 = load i32, i32* %.281
  %.347 = srem i32 %.345, 817
  %.348 = load i32, i32* %.274
  %.349 = load i32, i32* %.275
  %.350 = load i32, i32* %.276
  %.351 = load i32, i32* %.277
  %.352 = load i32, i32* %.278
  %.353 = load i32, i32* %.279
  %.354 = load i32, i32* %.280
  %.355 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @.G.arr1, i32 0, i32 %.348, i32 %.349, i32 %.350, i32 %.351, i32 %.352, i32 %.353, i32 %.354
  %.356 = load i32, i32* %.355
  %.357 = add i32 %.347, %.356
  %.358 = load i32, i32* %.274
  %.359 = load i32, i32* %.275
  %.360 = load i32, i32* %.276
  %.361 = load i32, i32* %.277
  %.362 = load i32, i32* %.278
  %.363 = load i32, i32* %.279
  %.364 = load i32, i32* %.280
  %.365 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @.G.arr2, i32 0, i32 %.358, i32 %.359, i32 %.360, i32 %.361, i32 %.362, i32 %.363, i32 %.364
  %.366 = load i32, i32* %.365
  %.367 = add i32 %.357, %.366
  store i32 %.367, i32* %.281
  %.369 = load i32, i32* %.280
  %.370 = add i32 %.369, 1
  store i32 %.370, i32* %.280
  %.374 = load i32, i32* %.280
  %.375 = load i32, i32* %.272
  %.376 = icmp sge i32 %.374, %.375
  br i1 %.376, label %.372, label %.373
.339wn:
  %.380 = load i32, i32* %.279
  %.381 = add i32 %.380, 1
  store i32 %.381, i32* %.279
  %.385 = load i32, i32* %.279
  %.386 = load i32, i32* %.269
  %.387 = icmp sge i32 %.385, %.386
  br i1 %.387, label %.383, label %.384
.372:
  br label %.339wn 
.373:
  br label %.337wc 
.383:
  br label %.330wn 
.384:
  br label %.328wc 
.394:
  br label %.321wn 
.395:
  br label %.319wc 
.405:
  br label %.312wn 
.406:
  br label %.310wc 
.416:
  br label %.303wn 
.417:
  br label %.301wc 
.427:
  br label %.294wn 
.428:
  br label %.292wc 
.438:
  br label %.286wn 
.439:
  br label %.284wc 
}
define i32 @main(){
.448:
  %.474 = alloca i32
  %.471 = alloca i32
  %.468 = alloca i32
  %.465 = alloca i32
  %.462 = alloca i32
  %.459 = alloca i32
  %.456 = alloca i32
  %.453 = alloca i32
  %.449 = alloca i32
  %.451at0 = call i32 @getint()
  store i32 %.451at0, i32* %.449
  %.454at1 = call i32 @getint()
  store i32 %.454at1, i32* %.453
  %.457at2 = call i32 @getint()
  store i32 %.457at2, i32* %.456
  %.460at3 = call i32 @getint()
  store i32 %.460at3, i32* %.459
  %.463at4 = call i32 @getint()
  store i32 %.463at4, i32* %.462
  %.466at5 = call i32 @getint()
  store i32 %.466at5, i32* %.465
  %.469at6 = call i32 @getint()
  store i32 %.469at6, i32* %.468
  %.472at7 = call i32 @getint()
  store i32 %.472at7, i32* %.471
  %.475at8 = call i32 @getint()
  store i32 %.475at8, i32* %.474
  %.477 = load i32, i32* %.449
  %.478 = load i32, i32* %.453
  call void @_user_loop1(i32 %.477, i32 %.478)
  call void @_user_loop2()
  %.481 = load i32, i32* %.456
  %.482 = load i32, i32* %.459
  %.483 = load i32, i32* %.462
  %.484 = load i32, i32* %.465
  %.485 = load i32, i32* %.468
  %.486 = load i32, i32* %.471
  %.487 = load i32, i32* %.474
  %.488at11 = call i32 @_user_loop3(i32 %.481, i32 %.482, i32 %.483, i32 %.484, i32 %.485, i32 %.486, i32 %.487)
  ret i32 %.488at11 
}
