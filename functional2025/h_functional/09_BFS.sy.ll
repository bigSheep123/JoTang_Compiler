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
@.G.m = global i32 zeroinitializer
@.G.maxn = global i32 zeroinitializer
@.G.maxm = global i32 zeroinitializer
@.G.to = global [5005 x i32] zeroinitializer
@.G.next = global [5005 x i32] zeroinitializer
@.G.head = global [1005 x i32] zeroinitializer
@.G.cnt = global i32 0
@.G.que = global [1005 x i32] zeroinitializer
@.G.h = global i32 zeroinitializer
@.G.tail = global i32 zeroinitializer
@.G.inq = global [1005 x i32] zeroinitializer
define i32 @_user_quick_read(){
.0:
  %.8 = alloca i32
  %.5 = alloca i32
  %.1 = alloca i32
  %.3at0 = call i32 @getch()
  store i32 %.3at0, i32* %.1
  store i32 0, i32* %.5
  store i32 0, i32* %.8
  br label %.10wc 
.10wc:
  %.15 = load i32, i32* %.1
  %.17 = icmp slt i32 %.15, 48
  br i1 %.17, label %.11wloop., label %.14
.11wloop.:
  %.25 = load i32, i32* %.1
  %.27 = icmp eq i32 %.25, 45
  br i1 %.27, label %.23, label %.24
.12wn:
  br label %.35wc 
.14:
  %.19 = load i32, i32* %.1
  %.21 = icmp sgt i32 %.19, 57
  br i1 %.21, label %.11wloop., label %.12wn
.23:
  store i32 1, i32* %.8
  br label %.24 
.24:
  %.32at1 = call i32 @getch()
  store i32 %.32at1, i32* %.1
  br label %.10wc 
.35wc:
  %.39 = load i32, i32* %.1
  %.40 = icmp sge i32 %.39, 48
  br i1 %.40, label %.41, label %.37wn
.36wloop.:
  %.46 = load i32, i32* %.5
  %.48 = mul i32 %.46, 10
  %.49 = load i32, i32* %.1
  %.50 = add i32 %.48, %.49
  %.51 = sub i32 %.50, 48
  store i32 %.51, i32* %.5
  %.53at2 = call i32 @getch()
  store i32 %.53at2, i32* %.1
  br label %.35wc 
.37wn:
  %.58 = load i32, i32* %.8
  %.59 = icmp ne i32 %.58, 0
  br i1 %.59, label %.56, label %.57
.41:
  %.43 = load i32, i32* %.1
  %.44 = icmp sle i32 %.43, 57
  br i1 %.44, label %.36wloop., label %.37wn
.56:
  %.61 = load i32, i32* %.5
  %.62 = sub i32 0, %.61
  ret i32 %.62 
.57:
  %.64 = load i32, i32* %.5
  ret i32 %.64 
}
define void @_user_add_edge(i32 %.81, i32 %.84){
.80:
  %.85 = alloca i32
  %.82 = alloca i32
  store i32 %.81, i32* %.82
  store i32 %.84, i32* %.85
  %.87 = load i32, i32* %.85
  %.88 = load i32, i32* @.G.cnt
  %.89 = getelementptr inbounds [5005 x i32], [5005 x i32]* @.G.to, i32 0, i32 %.88
  store i32 %.87, i32* %.89
  %.91 = load i32, i32* %.82
  %.92 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.head, i32 0, i32 %.91
  %.93 = load i32, i32* %.92
  %.94 = load i32, i32* @.G.cnt
  %.95 = getelementptr inbounds [5005 x i32], [5005 x i32]* @.G.next, i32 0, i32 %.94
  store i32 %.93, i32* %.95
  %.97 = load i32, i32* @.G.cnt
  %.98 = load i32, i32* %.82
  %.99 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.head, i32 0, i32 %.98
  store i32 %.97, i32* %.99
  %.101 = load i32, i32* @.G.cnt
  %.102 = add i32 %.101, 1
  store i32 %.102, i32* @.G.cnt
  %.104 = load i32, i32* %.82
  %.105 = load i32, i32* @.G.cnt
  %.106 = getelementptr inbounds [5005 x i32], [5005 x i32]* @.G.to, i32 0, i32 %.105
  store i32 %.104, i32* %.106
  %.108 = load i32, i32* %.85
  %.109 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.head, i32 0, i32 %.108
  %.110 = load i32, i32* %.109
  %.111 = load i32, i32* @.G.cnt
  %.112 = getelementptr inbounds [5005 x i32], [5005 x i32]* @.G.next, i32 0, i32 %.111
  store i32 %.110, i32* %.112
  %.114 = load i32, i32* @.G.cnt
  %.115 = load i32, i32* %.85
  %.116 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.head, i32 0, i32 %.115
  store i32 %.114, i32* %.116
  %.118 = load i32, i32* @.G.cnt
  %.119 = add i32 %.118, 1
  store i32 %.119, i32* @.G.cnt
  ret void
}
define void @_user_init(){
.122:
  %.123 = alloca i32
  store i32 0, i32* %.123
  br label %.125wc 
.125wc:
  %.129 = load i32, i32* %.123
  %.130 = icmp slt i32 %.129, 1005
  br i1 %.130, label %.126wloop., label %.127wn
.126wloop.:
  %.133 = load i32, i32* %.123
  %.134 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.head, i32 0, i32 %.133
  store i32 -1, i32* %.134
  %.136 = load i32, i32* %.123
  %.137 = add i32 %.136, 1
  store i32 %.137, i32* %.123
  br label %.125wc 
.127wn:
  ret void
}
define void @_user_inqueue(i32 %.142){
.141:
  %.143 = alloca i32
  store i32 %.142, i32* %.143
  %.145 = load i32, i32* %.143
  %.146 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.inq, i32 0, i32 %.145
  store i32 1, i32* %.146
  %.148 = load i32, i32* @.G.tail
  %.149 = add i32 %.148, 1
  store i32 %.149, i32* @.G.tail
  %.151 = load i32, i32* %.143
  %.152 = load i32, i32* @.G.tail
  %.153 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.que, i32 0, i32 %.152
  store i32 %.151, i32* %.153
  ret void
}
define i32 @_user_pop_queue(){
.156:
  %.160 = alloca i32
  %.157 = load i32, i32* @.G.h
  %.158 = add i32 %.157, 1
  store i32 %.158, i32* @.G.h
  %.161 = load i32, i32* @.G.h
  %.162 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.que, i32 0, i32 %.161
  %.163 = load i32, i32* %.162
  store i32 %.163, i32* %.160
  %.165 = load i32, i32* @.G.h
  %.166 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.que, i32 0, i32 %.165
  %.167 = load i32, i32* %.166
  ret i32 %.167 
}
define i32 @_user_same(i32 %.170, i32 %.173){
.169:
  %.233 = alloca i32
  %.201 = alloca i32
  %.190 = alloca i32
  %.180 = alloca i32
  %.174 = alloca i32
  %.171 = alloca i32
  store i32 %.170, i32* %.171
  store i32 %.173, i32* %.174
  store i32 0, i32* @.G.h
  store i32 0, i32* @.G.tail
  %.178 = load i32, i32* %.171
  call void @_user_inqueue(i32 %.178)
  store i32 0, i32* %.180
  br label %.182wc 
.182wc:
  %.186 = load i32, i32* @.G.h
  %.187 = load i32, i32* @.G.tail
  %.188 = icmp slt i32 %.186, %.187
  br i1 %.188, label %.183wloop., label %.184wn
.183wloop.:
  %.191at4 = call i32 @_user_pop_queue()
  store i32 %.191at4, i32* %.190
  %.195 = load i32, i32* %.190
  %.196 = load i32, i32* %.174
  %.197 = icmp eq i32 %.195, %.196
  br i1 %.197, label %.193, label %.194
.184wn:
  store i32 0, i32* %.233
  br label %.235wc 
.193:
  store i32 1, i32* %.180
  br label %.194 
.194:
  %.202 = load i32, i32* %.190
  %.203 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.head, i32 0, i32 %.202
  %.204 = load i32, i32* %.203
  store i32 %.204, i32* %.201
  br label %.206wc 
.206wc:
  %.210 = load i32, i32* %.201
  %.211 = icmp ne i32 %.210, -1
  br i1 %.211, label %.207wloop., label %.208wn
.207wloop.:
  %.215 = load i32, i32* %.201
  %.216 = getelementptr inbounds [5005 x i32], [5005 x i32]* @.G.to, i32 0, i32 %.215
  %.217 = load i32, i32* %.216
  %.218 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.inq, i32 0, i32 %.217
  %.219 = load i32, i32* %.218
  %.220 = icmp eq i32 %.219, 0
  br i1 %.220, label %.213, label %.214
.208wn:
  br label %.182wc 
.213:
  %.222 = load i32, i32* %.201
  %.223 = getelementptr inbounds [5005 x i32], [5005 x i32]* @.G.to, i32 0, i32 %.222
  %.224 = load i32, i32* %.223
  call void @_user_inqueue(i32 %.224)
  br label %.214 
.214:
  %.227 = load i32, i32* %.201
  %.228 = getelementptr inbounds [5005 x i32], [5005 x i32]* @.G.next, i32 0, i32 %.227
  %.229 = load i32, i32* %.228
  store i32 %.229, i32* %.201
  br label %.206wc 
.235wc:
  %.239 = load i32, i32* %.233
  %.240 = load i32, i32* @.G.tail
  %.241 = icmp sle i32 %.239, %.240
  br i1 %.241, label %.236wloop., label %.237wn
.236wloop.:
  %.243 = load i32, i32* %.233
  %.244 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.que, i32 0, i32 %.243
  %.245 = load i32, i32* %.244
  %.246 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.inq, i32 0, i32 %.245
  store i32 0, i32* %.246
  %.248 = load i32, i32* %.233
  %.249 = add i32 %.248, 1
  store i32 %.249, i32* %.233
  br label %.235wc 
.237wn:
  %.252 = load i32, i32* %.180
  ret i32 %.252 
}
define i32 @main(){
.254:
  %.309 = alloca i32
  %.306 = alloca i32
  %.294 = alloca i32
  %.291 = alloca i32
  %.267 = alloca i32
  %.255at6 = call i32 @_user_quick_read()
  store i32 %.255at6, i32* @.G.n
  %.257at7 = call i32 @_user_quick_read()
  store i32 %.257at7, i32* @.G.m
  call void @_user_init()
  br label %.260wc 
.260wc:
  %.264 = load i32, i32* @.G.m
  %.265 = icmp ne i32 %.264, 0
  br i1 %.265, label %.261wloop., label %.262wn
.261wloop.:
  %.268at9 = call i32 @getch()
  store i32 %.268at9, i32* %.267
  br label %.270wc 
.262wn:
  ret i32 0 
.270wc:
  %.274 = load i32, i32* %.267
  %.276 = icmp ne i32 %.274, 81
  br i1 %.276, label %.277, label %.272wn
.271wloop.:
  %.283at10 = call i32 @getch()
  store i32 %.283at10, i32* %.267
  br label %.270wc 
.272wn:
  %.288 = load i32, i32* %.267
  %.289 = icmp eq i32 %.288, 81
  br i1 %.289, label %.286, label %.287
.277:
  %.279 = load i32, i32* %.267
  %.281 = icmp ne i32 %.279, 85
  br i1 %.281, label %.271wloop., label %.272wn
.286:
  %.292at11 = call i32 @_user_quick_read()
  store i32 %.292at11, i32* %.291
  %.295at12 = call i32 @_user_quick_read()
  store i32 %.295at12, i32* %.294
  %.297 = load i32, i32* %.291
  %.298 = load i32, i32* %.294
  %.299at13 = call i32 @_user_same(i32 %.297, i32 %.298)
  call void @putint(i32 %.299at13)
  call void @putch(i32 10)
  br label %.304 
.287:
  %.307at16 = call i32 @_user_quick_read()
  store i32 %.307at16, i32* %.306
  %.310at17 = call i32 @_user_quick_read()
  store i32 %.310at17, i32* %.309
  %.312 = load i32, i32* %.306
  %.313 = load i32, i32* %.309
  call void @_user_add_edge(i32 %.312, i32 %.313)
  br label %.304 
.304:
  %.316 = load i32, i32* @.G.m
  %.317 = sub i32 %.316, 1
  store i32 %.317, i32* @.G.m
  br label %.260wc 
}
