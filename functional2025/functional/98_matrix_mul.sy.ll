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
@.G.M = global i32 zeroinitializer
@.G.L = global i32 zeroinitializer
@.G.N = global i32 zeroinitializer
define i32 @_user_mul(float* %.4, float* %.7, float* %.10, float* %.13, float* %.16, float* %.19, float* %.22, float* %.25, float* %.28){
.3:
  %.31 = alloca i32
  %.29 = alloca float*
  %.26 = alloca float*
  %.23 = alloca float*
  %.20 = alloca float*
  %.17 = alloca float*
  %.14 = alloca float*
  %.11 = alloca float*
  %.8 = alloca float*
  %.5 = alloca float*
  store float* %.4, float** %.5
  store float* %.7, float** %.8
  store float* %.10, float** %.11
  store float* %.13, float** %.14
  store float* %.16, float** %.17
  store float* %.19, float** %.20
  store float* %.22, float** %.23
  store float* %.25, float** %.26
  store float* %.28, float** %.29
  store i32 0, i32* %.31
  %.34 = load float*, float** %.5
  %.35 = getelementptr inbounds float, float* %.34, i32 0
  %.36 = load float, float* %.35
  %.37 = load float*, float** %.14
  %.38 = getelementptr inbounds float, float* %.37, i32 0
  %.39 = load float, float* %.38
  %.40 = fmul float %.36, %.39
  %.42 = load float*, float** %.5
  %.43 = getelementptr inbounds float, float* %.42, i32 1
  %.44 = load float, float* %.43
  %.45 = load float*, float** %.17
  %.46 = getelementptr inbounds float, float* %.45, i32 0
  %.47 = load float, float* %.46
  %.48 = fmul float %.44, %.47
  %.49 = fadd float %.40, %.48
  %.51 = load float*, float** %.5
  %.52 = getelementptr inbounds float, float* %.51, i32 2
  %.53 = load float, float* %.52
  %.54 = load float*, float** %.20
  %.55 = getelementptr inbounds float, float* %.54, i32 0
  %.56 = load float, float* %.55
  %.57 = fmul float %.53, %.56
  %.58 = fadd float %.49, %.57
  %.59 = load float*, float** %.23
  %.60 = getelementptr inbounds float, float* %.59, i32 0
  store float %.58, float* %.60
  %.62 = load float*, float** %.5
  %.63 = getelementptr inbounds float, float* %.62, i32 0
  %.64 = load float, float* %.63
  %.65 = load float*, float** %.14
  %.66 = getelementptr inbounds float, float* %.65, i32 1
  %.67 = load float, float* %.66
  %.68 = fmul float %.64, %.67
  %.69 = load float*, float** %.5
  %.70 = getelementptr inbounds float, float* %.69, i32 1
  %.71 = load float, float* %.70
  %.72 = load float*, float** %.17
  %.73 = getelementptr inbounds float, float* %.72, i32 1
  %.74 = load float, float* %.73
  %.75 = fmul float %.71, %.74
  %.76 = fadd float %.68, %.75
  %.77 = load float*, float** %.5
  %.78 = getelementptr inbounds float, float* %.77, i32 2
  %.79 = load float, float* %.78
  %.80 = load float*, float** %.20
  %.81 = getelementptr inbounds float, float* %.80, i32 1
  %.82 = load float, float* %.81
  %.83 = fmul float %.79, %.82
  %.84 = fadd float %.76, %.83
  %.85 = load float*, float** %.23
  %.86 = getelementptr inbounds float, float* %.85, i32 1
  store float %.84, float* %.86
  %.88 = load float*, float** %.5
  %.89 = getelementptr inbounds float, float* %.88, i32 0
  %.90 = load float, float* %.89
  %.91 = load float*, float** %.14
  %.92 = getelementptr inbounds float, float* %.91, i32 2
  %.93 = load float, float* %.92
  %.94 = fmul float %.90, %.93
  %.95 = load float*, float** %.5
  %.96 = getelementptr inbounds float, float* %.95, i32 1
  %.97 = load float, float* %.96
  %.98 = load float*, float** %.17
  %.99 = getelementptr inbounds float, float* %.98, i32 2
  %.100 = load float, float* %.99
  %.101 = fmul float %.97, %.100
  %.102 = fadd float %.94, %.101
  %.103 = load float*, float** %.5
  %.104 = getelementptr inbounds float, float* %.103, i32 2
  %.105 = load float, float* %.104
  %.106 = load float*, float** %.20
  %.107 = getelementptr inbounds float, float* %.106, i32 2
  %.108 = load float, float* %.107
  %.109 = fmul float %.105, %.108
  %.110 = fadd float %.102, %.109
  %.111 = load float*, float** %.23
  %.112 = getelementptr inbounds float, float* %.111, i32 2
  store float %.110, float* %.112
  %.114 = load float*, float** %.8
  %.115 = getelementptr inbounds float, float* %.114, i32 0
  %.116 = load float, float* %.115
  %.117 = load float*, float** %.14
  %.118 = getelementptr inbounds float, float* %.117, i32 0
  %.119 = load float, float* %.118
  %.120 = fmul float %.116, %.119
  %.121 = load float*, float** %.8
  %.122 = getelementptr inbounds float, float* %.121, i32 1
  %.123 = load float, float* %.122
  %.124 = load float*, float** %.17
  %.125 = getelementptr inbounds float, float* %.124, i32 0
  %.126 = load float, float* %.125
  %.127 = fmul float %.123, %.126
  %.128 = fadd float %.120, %.127
  %.129 = load float*, float** %.8
  %.130 = getelementptr inbounds float, float* %.129, i32 2
  %.131 = load float, float* %.130
  %.132 = load float*, float** %.20
  %.133 = getelementptr inbounds float, float* %.132, i32 0
  %.134 = load float, float* %.133
  %.135 = fmul float %.131, %.134
  %.136 = fadd float %.128, %.135
  %.137 = load float*, float** %.26
  %.138 = getelementptr inbounds float, float* %.137, i32 0
  store float %.136, float* %.138
  %.140 = load float*, float** %.8
  %.141 = getelementptr inbounds float, float* %.140, i32 0
  %.142 = load float, float* %.141
  %.143 = load float*, float** %.14
  %.144 = getelementptr inbounds float, float* %.143, i32 1
  %.145 = load float, float* %.144
  %.146 = fmul float %.142, %.145
  %.147 = load float*, float** %.8
  %.148 = getelementptr inbounds float, float* %.147, i32 1
  %.149 = load float, float* %.148
  %.150 = load float*, float** %.17
  %.151 = getelementptr inbounds float, float* %.150, i32 1
  %.152 = load float, float* %.151
  %.153 = fmul float %.149, %.152
  %.154 = fadd float %.146, %.153
  %.155 = load float*, float** %.8
  %.156 = getelementptr inbounds float, float* %.155, i32 2
  %.157 = load float, float* %.156
  %.158 = load float*, float** %.20
  %.159 = getelementptr inbounds float, float* %.158, i32 1
  %.160 = load float, float* %.159
  %.161 = fmul float %.157, %.160
  %.162 = fadd float %.154, %.161
  %.163 = load float*, float** %.26
  %.164 = getelementptr inbounds float, float* %.163, i32 1
  store float %.162, float* %.164
  %.166 = load float*, float** %.8
  %.167 = getelementptr inbounds float, float* %.166, i32 0
  %.168 = load float, float* %.167
  %.169 = load float*, float** %.14
  %.170 = getelementptr inbounds float, float* %.169, i32 2
  %.171 = load float, float* %.170
  %.172 = fmul float %.168, %.171
  %.173 = load float*, float** %.8
  %.174 = getelementptr inbounds float, float* %.173, i32 1
  %.175 = load float, float* %.174
  %.176 = load float*, float** %.17
  %.177 = getelementptr inbounds float, float* %.176, i32 2
  %.178 = load float, float* %.177
  %.179 = fmul float %.175, %.178
  %.180 = fadd float %.172, %.179
  %.181 = load float*, float** %.8
  %.182 = getelementptr inbounds float, float* %.181, i32 2
  %.183 = load float, float* %.182
  %.184 = load float*, float** %.20
  %.185 = getelementptr inbounds float, float* %.184, i32 2
  %.186 = load float, float* %.185
  %.187 = fmul float %.183, %.186
  %.188 = fadd float %.180, %.187
  %.189 = load float*, float** %.26
  %.190 = getelementptr inbounds float, float* %.189, i32 2
  store float %.188, float* %.190
  %.192 = load float*, float** %.11
  %.193 = getelementptr inbounds float, float* %.192, i32 0
  %.194 = load float, float* %.193
  %.195 = load float*, float** %.14
  %.196 = getelementptr inbounds float, float* %.195, i32 0
  %.197 = load float, float* %.196
  %.198 = fmul float %.194, %.197
  %.199 = load float*, float** %.11
  %.200 = getelementptr inbounds float, float* %.199, i32 1
  %.201 = load float, float* %.200
  %.202 = load float*, float** %.17
  %.203 = getelementptr inbounds float, float* %.202, i32 0
  %.204 = load float, float* %.203
  %.205 = fmul float %.201, %.204
  %.206 = fadd float %.198, %.205
  %.207 = load float*, float** %.11
  %.208 = getelementptr inbounds float, float* %.207, i32 2
  %.209 = load float, float* %.208
  %.210 = load float*, float** %.20
  %.211 = getelementptr inbounds float, float* %.210, i32 0
  %.212 = load float, float* %.211
  %.213 = fmul float %.209, %.212
  %.214 = fadd float %.206, %.213
  %.215 = load float*, float** %.29
  %.216 = getelementptr inbounds float, float* %.215, i32 0
  store float %.214, float* %.216
  %.218 = load float*, float** %.11
  %.219 = getelementptr inbounds float, float* %.218, i32 0
  %.220 = load float, float* %.219
  %.221 = load float*, float** %.14
  %.222 = getelementptr inbounds float, float* %.221, i32 1
  %.223 = load float, float* %.222
  %.224 = fmul float %.220, %.223
  %.225 = load float*, float** %.11
  %.226 = getelementptr inbounds float, float* %.225, i32 1
  %.227 = load float, float* %.226
  %.228 = load float*, float** %.17
  %.229 = getelementptr inbounds float, float* %.228, i32 1
  %.230 = load float, float* %.229
  %.231 = fmul float %.227, %.230
  %.232 = fadd float %.224, %.231
  %.233 = load float*, float** %.11
  %.234 = getelementptr inbounds float, float* %.233, i32 2
  %.235 = load float, float* %.234
  %.236 = load float*, float** %.20
  %.237 = getelementptr inbounds float, float* %.236, i32 1
  %.238 = load float, float* %.237
  %.239 = fmul float %.235, %.238
  %.240 = fadd float %.232, %.239
  %.241 = load float*, float** %.29
  %.242 = getelementptr inbounds float, float* %.241, i32 1
  store float %.240, float* %.242
  %.244 = load float*, float** %.11
  %.245 = getelementptr inbounds float, float* %.244, i32 0
  %.246 = load float, float* %.245
  %.247 = load float*, float** %.14
  %.248 = getelementptr inbounds float, float* %.247, i32 2
  %.249 = load float, float* %.248
  %.250 = fmul float %.246, %.249
  %.251 = load float*, float** %.11
  %.252 = getelementptr inbounds float, float* %.251, i32 1
  %.253 = load float, float* %.252
  %.254 = load float*, float** %.17
  %.255 = getelementptr inbounds float, float* %.254, i32 2
  %.256 = load float, float* %.255
  %.257 = fmul float %.253, %.256
  %.258 = fadd float %.250, %.257
  %.259 = load float*, float** %.11
  %.260 = getelementptr inbounds float, float* %.259, i32 2
  %.261 = load float, float* %.260
  %.262 = load float*, float** %.20
  %.263 = getelementptr inbounds float, float* %.262, i32 2
  %.264 = load float, float* %.263
  %.265 = fmul float %.261, %.264
  %.266 = fadd float %.258, %.265
  %.267 = load float*, float** %.29
  %.268 = getelementptr inbounds float, float* %.267, i32 2
  store float %.266, float* %.268
  ret i32 0 
}
define i32 @main(){
.271:
  %.341 = alloca i32
  %.286 = alloca i32
  %.285 = alloca [3 x float]
  %.284 = alloca [3 x float]
  %.283 = alloca [6 x float]
  %.281 = alloca [3 x float]
  %.280 = alloca [3 x float]
  %.279 = alloca [3 x float]
  %.278 = alloca [3 x float]
  %.277 = alloca [3 x float]
  %.276 = alloca [3 x float]
  store i32 3, i32* @.G.N
  store i32 3, i32* @.G.M
  store i32 3, i32* @.G.L
  store i32 0, i32* %.286
  br label %.288wc 
.288wc:
  %.292 = load i32, i32* %.286
  %.293 = load i32, i32* @.G.M
  %.294 = icmp slt i32 %.292, %.293
  br i1 %.294, label %.289wloop., label %.290wn
.289wloop.:
  %.296 = load i32, i32* %.286
  %.297 = load i32, i32* %.286
  %.298 = getelementptr inbounds [3 x float], [3 x float]* %.276, i32 0, i32 %.297
  %.299 = sitofp i32 %.296 to float
  store float %.299, float* %.298
  %.301 = load i32, i32* %.286
  %.302 = load i32, i32* %.286
  %.303 = getelementptr inbounds [3 x float], [3 x float]* %.277, i32 0, i32 %.302
  %.304 = sitofp i32 %.301 to float
  store float %.304, float* %.303
  %.306 = load i32, i32* %.286
  %.307 = load i32, i32* %.286
  %.308 = getelementptr inbounds [3 x float], [3 x float]* %.278, i32 0, i32 %.307
  %.309 = sitofp i32 %.306 to float
  store float %.309, float* %.308
  %.311 = load i32, i32* %.286
  %.312 = load i32, i32* %.286
  %.313 = getelementptr inbounds [3 x float], [3 x float]* %.279, i32 0, i32 %.312
  %.314 = sitofp i32 %.311 to float
  store float %.314, float* %.313
  %.316 = load i32, i32* %.286
  %.317 = load i32, i32* %.286
  %.318 = getelementptr inbounds [3 x float], [3 x float]* %.280, i32 0, i32 %.317
  %.319 = sitofp i32 %.316 to float
  store float %.319, float* %.318
  %.321 = load i32, i32* %.286
  %.322 = load i32, i32* %.286
  %.323 = getelementptr inbounds [3 x float], [3 x float]* %.281, i32 0, i32 %.322
  %.324 = sitofp i32 %.321 to float
  store float %.324, float* %.323
  %.326 = load i32, i32* %.286
  %.327 = add i32 %.326, 1
  store i32 %.327, i32* %.286
  br label %.288wc 
.290wn:
  %.330 = getelementptr inbounds [3 x float], [3 x float]* %.276, i32 0, i32 0
  %.331 = getelementptr inbounds [3 x float], [3 x float]* %.277, i32 0, i32 0
  %.332 = getelementptr inbounds [3 x float], [3 x float]* %.278, i32 0, i32 0
  %.333 = getelementptr inbounds [3 x float], [3 x float]* %.279, i32 0, i32 0
  %.334 = getelementptr inbounds [3 x float], [3 x float]* %.280, i32 0, i32 0
  %.335 = getelementptr inbounds [3 x float], [3 x float]* %.281, i32 0, i32 0
  %.336 = getelementptr inbounds [6 x float], [6 x float]* %.283, i32 0, i32 0
  %.337 = getelementptr inbounds [3 x float], [3 x float]* %.284, i32 0, i32 0
  %.338 = getelementptr inbounds [3 x float], [3 x float]* %.285, i32 0, i32 0
  %.339at0 = call i32 @_user_mul(float* %.330, float* %.331, float* %.332, float* %.333, float* %.334, float* %.335, float* %.336, float* %.337, float* %.338)
  store i32 %.339at0, i32* %.286
  br label %.342wc 
.342wc:
  %.346 = load i32, i32* %.286
  %.347 = load i32, i32* @.G.N
  %.348 = icmp slt i32 %.346, %.347
  br i1 %.348, label %.343wloop., label %.344wn
.343wloop.:
  %.350 = load i32, i32* %.286
  %.351 = getelementptr inbounds [6 x float], [6 x float]* %.283, i32 0, i32 %.350
  %.352 = load float, float* %.351
  %.353 = fptosi float %.352 to i32
  store i32 %.353, i32* %.341
  %.355 = load i32, i32* %.341
  call void @putint(i32 %.355)
  %.358 = load i32, i32* %.286
  %.359 = add i32 %.358, 1
  store i32 %.359, i32* %.286
  br label %.342wc 
.344wn:
  store i32 10, i32* %.341
  store i32 0, i32* %.286
  %.365 = load i32, i32* %.341
  call void @putch(i32 %.365)
  br label %.368wc 
.368wc:
  %.372 = load i32, i32* %.286
  %.373 = load i32, i32* @.G.N
  %.374 = icmp slt i32 %.372, %.373
  br i1 %.374, label %.369wloop., label %.370wn
.369wloop.:
  %.376 = load i32, i32* %.286
  %.377 = getelementptr inbounds [3 x float], [3 x float]* %.284, i32 0, i32 %.376
  %.378 = load float, float* %.377
  %.379 = fptosi float %.378 to i32
  store i32 %.379, i32* %.341
  %.381 = load i32, i32* %.341
  call void @putint(i32 %.381)
  %.383 = load i32, i32* %.286
  %.384 = add i32 %.383, 1
  store i32 %.384, i32* %.286
  br label %.368wc 
.370wn:
  store i32 10, i32* %.341
  store i32 0, i32* %.286
  %.389 = load i32, i32* %.341
  call void @putch(i32 %.389)
  br label %.391wc 
.391wc:
  %.395 = load i32, i32* %.286
  %.396 = load i32, i32* @.G.N
  %.397 = icmp slt i32 %.395, %.396
  br i1 %.397, label %.392wloop., label %.393wn
.392wloop.:
  %.399 = load i32, i32* %.286
  %.400 = getelementptr inbounds [3 x float], [3 x float]* %.285, i32 0, i32 %.399
  %.401 = load float, float* %.400
  %.402 = fptosi float %.401 to i32
  store i32 %.402, i32* %.341
  %.404 = load i32, i32* %.341
  call void @putint(i32 %.404)
  %.406 = load i32, i32* %.286
  %.407 = add i32 %.406, 1
  store i32 %.407, i32* %.286
  br label %.391wc 
.393wn:
  store i32 10, i32* %.341
  %.411 = load i32, i32* %.341
  call void @putch(i32 %.411)
  ret i32 0 
}
