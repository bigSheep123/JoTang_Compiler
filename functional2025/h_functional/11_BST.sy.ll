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
@.G.space = global i32 zeroinitializer
@.G.LF = global i32 zeroinitializer
@.G.maxNode = global i32 zeroinitializer
@.G.value = global [10000 x i32] zeroinitializer
@.G.left_child = global [10000 x i32] zeroinitializer
@.G.right_child = global [10000 x i32] zeroinitializer
@.G.now = global i32 zeroinitializer
define i32 @_user_search(i32 %.11, i32 %.14){
.10:
  %.15 = alloca i32
  %.12 = alloca i32
  store i32 %.11, i32* %.12
  store i32 %.14, i32* %.15
  %.20 = load i32, i32* %.12
  %.24 = icmp eq i32 %.20, -1
  br i1 %.24, label %.17, label %.19
.17:
  %.32 = load i32, i32* %.12
  ret i32 %.32 
.18:
  %.36 = load i32, i32* %.15
  %.37 = load i32, i32* %.12
  %.38 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.value, i32 0, i32 %.37
  %.39 = load i32, i32* %.38
  %.40 = icmp sgt i32 %.36, %.39
  br i1 %.40, label %.34, label %.35
.19:
  %.26 = load i32, i32* %.12
  %.27 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.value, i32 0, i32 %.26
  %.28 = load i32, i32* %.27
  %.29 = load i32, i32* %.15
  %.30 = icmp eq i32 %.28, %.29
  br i1 %.30, label %.17, label %.18
.34:
  %.42 = load i32, i32* %.12
  %.43 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.42
  %.44 = load i32, i32* %.43
  %.45 = load i32, i32* %.15
  %.46at0 = call i32 @_user_search(i32 %.44, i32 %.45)
  ret i32 %.46at0 
.35:
  %.48 = load i32, i32* %.12
  %.49 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.48
  %.50 = load i32, i32* %.49
  %.51 = load i32, i32* %.15
  %.52at1 = call i32 @_user_search(i32 %.50, i32 %.51)
  ret i32 %.52at1 
}
define i32 @_user_find_minimum(i32 %.55){
.54:
  %.56 = alloca i32
  store i32 %.55, i32* %.56
  %.60 = load i32, i32* %.56
  %.61 = icmp eq i32 %.60, -1
  br i1 %.61, label %.58, label %.59
.58:
  ret i32 -1 
.59:
  %.66 = load i32, i32* %.56
  %.67 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.66
  %.68 = load i32, i32* %.67
  %.69 = icmp ne i32 %.68, -1
  br i1 %.69, label %.64, label %.65
.64:
  %.71 = load i32, i32* %.56
  %.72 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.71
  %.73 = load i32, i32* %.72
  %.74at2 = call i32 @_user_find_minimum(i32 %.73)
  ret i32 %.74at2 
.65:
  br label %.76 
.76:
  %.78 = load i32, i32* %.56
  ret i32 %.78 
}
define i32 @_user_new_node(i32 %.81){
.80:
  %.82 = alloca i32
  store i32 %.81, i32* %.82
  %.84 = load i32, i32* %.82
  %.85 = load i32, i32* @.G.now
  %.86 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.value, i32 0, i32 %.85
  store i32 %.84, i32* %.86
  %.88 = load i32, i32* @.G.now
  %.89 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.88
  store i32 -1, i32* %.89
  %.91 = load i32, i32* @.G.now
  %.92 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.91
  store i32 -1, i32* %.92
  %.94 = load i32, i32* @.G.now
  %.95 = add i32 %.94, 1
  store i32 %.95, i32* @.G.now
  %.97 = load i32, i32* @.G.now
  %.98 = sub i32 %.97, 1
  ret i32 %.98 
}
define i32 @_user_insert(i32 %.101, i32 %.104){
.100:
  %.105 = alloca i32
  %.102 = alloca i32
  store i32 %.101, i32* %.102
  store i32 %.104, i32* %.105
  %.109 = load i32, i32* %.102
  %.110 = icmp eq i32 %.109, -1
  br i1 %.110, label %.107, label %.108
.107:
  %.112 = load i32, i32* %.105
  %.113at3 = call i32 @_user_new_node(i32 %.112)
  ret i32 %.113at3 
.108:
  %.117 = load i32, i32* %.105
  %.118 = load i32, i32* %.102
  %.119 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.value, i32 0, i32 %.118
  %.120 = load i32, i32* %.119
  %.121 = icmp sgt i32 %.117, %.120
  br i1 %.121, label %.115, label %.116
.115:
  %.123 = load i32, i32* %.102
  %.124 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.123
  %.125 = load i32, i32* %.124
  %.126 = load i32, i32* %.105
  %.127at4 = call i32 @_user_insert(i32 %.125, i32 %.126)
  %.128 = load i32, i32* %.102
  %.129 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.128
  store i32 %.127at4, i32* %.129
  br label %.131 
.116:
  %.133 = load i32, i32* %.102
  %.134 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.133
  %.135 = load i32, i32* %.134
  %.136 = load i32, i32* %.105
  %.137at5 = call i32 @_user_insert(i32 %.135, i32 %.136)
  %.138 = load i32, i32* %.102
  %.139 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.138
  store i32 %.137at5, i32* %.139
  br label %.131 
.131:
  br label %.142 
.142:
  %.144 = load i32, i32* %.102
  ret i32 %.144 
}
define i32 @_user_delete(i32 %.147, i32 %.150){
.146:
  %.237 = alloca i32
  %.151 = alloca i32
  %.148 = alloca i32
  store i32 %.147, i32* %.148
  store i32 %.150, i32* %.151
  %.155 = load i32, i32* %.148
  %.156 = icmp eq i32 %.155, -1
  br i1 %.156, label %.153, label %.154
.153:
  ret i32 -1 
.154:
  %.161 = load i32, i32* %.151
  %.162 = load i32, i32* %.148
  %.163 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.value, i32 0, i32 %.162
  %.164 = load i32, i32* %.163
  %.165 = icmp sgt i32 %.161, %.164
  br i1 %.165, label %.159, label %.160
.159:
  %.167 = load i32, i32* %.148
  %.168 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.167
  %.169 = load i32, i32* %.168
  %.170 = load i32, i32* %.151
  %.171at6 = call i32 @_user_delete(i32 %.169, i32 %.170)
  %.172 = load i32, i32* %.148
  %.173 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.172
  store i32 %.171at6, i32* %.173
  br label %.175 
.160:
  %.179 = load i32, i32* %.151
  %.180 = load i32, i32* %.148
  %.181 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.value, i32 0, i32 %.180
  %.182 = load i32, i32* %.181
  %.183 = icmp slt i32 %.179, %.182
  br i1 %.183, label %.177, label %.178
.175:
  %.265 = load i32, i32* %.148
  ret i32 %.265 
.177:
  %.185 = load i32, i32* %.148
  %.186 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.185
  %.187 = load i32, i32* %.186
  %.188 = load i32, i32* %.151
  %.189at7 = call i32 @_user_delete(i32 %.187, i32 %.188)
  %.190 = load i32, i32* %.148
  %.191 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.190
  store i32 %.189at7, i32* %.191
  br label %.193 
.178:
  %.197 = load i32, i32* %.148
  %.198 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.197
  %.199 = load i32, i32* %.198
  %.200 = icmp eq i32 %.199, -1
  br i1 %.200, label %.201, label %.196
.193:
  br label %.175 
.195:
  ret i32 -1 
.196:
  %.212 = load i32, i32* %.148
  %.213 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.212
  %.214 = load i32, i32* %.213
  %.215 = icmp eq i32 %.214, -1
  br i1 %.215, label %.209, label %.211
.201:
  %.203 = load i32, i32* %.148
  %.204 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.203
  %.205 = load i32, i32* %.204
  %.206 = icmp eq i32 %.205, -1
  br i1 %.206, label %.195, label %.196
.209:
  %.224 = load i32, i32* %.148
  %.225 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.224
  %.226 = load i32, i32* %.225
  %.227 = icmp eq i32 %.226, -1
  br i1 %.227, label %.222, label %.223
.210:
  %.238 = load i32, i32* %.148
  %.239 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.238
  %.240 = load i32, i32* %.239
  %.241at8 = call i32 @_user_find_minimum(i32 %.240)
  store i32 %.241at8, i32* %.237
  %.243 = load i32, i32* %.237
  %.244 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.value, i32 0, i32 %.243
  %.245 = load i32, i32* %.244
  %.246 = load i32, i32* %.148
  %.247 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.value, i32 0, i32 %.246
  store i32 %.245, i32* %.247
  %.249 = load i32, i32* %.148
  %.250 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.249
  %.251 = load i32, i32* %.250
  %.252 = load i32, i32* %.237
  %.253 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.value, i32 0, i32 %.252
  %.254 = load i32, i32* %.253
  %.255at9 = call i32 @_user_delete(i32 %.251, i32 %.254)
  %.256 = load i32, i32* %.148
  %.257 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.256
  store i32 %.255at9, i32* %.257
  br label %.259 
.211:
  %.217 = load i32, i32* %.148
  %.218 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.217
  %.219 = load i32, i32* %.218
  %.220 = icmp eq i32 %.219, -1
  br i1 %.220, label %.209, label %.210
.222:
  %.229 = load i32, i32* %.148
  %.230 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.229
  %.231 = load i32, i32* %.230
  ret i32 %.231 
.223:
  %.233 = load i32, i32* %.148
  %.234 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.233
  %.235 = load i32, i32* %.234
  ret i32 %.235 
.259:
  br label %.261 
.261:
  br label %.193 
}
define void @_user_inorder(i32 %.268){
.267:
  %.269 = alloca i32
  store i32 %.268, i32* %.269
  %.273 = load i32, i32* %.269
  %.274 = icmp ne i32 %.273, -1
  br i1 %.274, label %.271, label %.272
.271:
  %.276 = load i32, i32* %.269
  %.277 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.left_child, i32 0, i32 %.276
  %.278 = load i32, i32* %.277
  call void @_user_inorder(i32 %.278)
  %.280 = load i32, i32* %.269
  %.281 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.value, i32 0, i32 %.280
  %.282 = load i32, i32* %.281
  call void @putint(i32 %.282)
  call void @putch(i32 32)
  %.287 = load i32, i32* %.269
  %.288 = getelementptr inbounds [10000 x i32], [10000 x i32]* @.G.right_child, i32 0, i32 %.287
  %.289 = load i32, i32* %.288
  call void @_user_inorder(i32 %.289)
  br label %.272 
.272:
  ret void
}
define i32 @main(){
.293:
  %.309 = alloca i32
  %.305 = alloca i32
  %.295 = alloca i32
  store i32 0, i32* @.G.now
  %.297at14 = call i32 @getint()
  store i32 %.297at14, i32* %.295
  %.301 = load i32, i32* %.295
  %.302 = icmp eq i32 %.301, 0
  br i1 %.302, label %.299, label %.300
.299:
  ret i32 0 
.300:
  %.306at15 = call i32 @getint()
  %.307at16 = call i32 @_user_new_node(i32 %.306at15)
  store i32 %.307at16, i32* %.305
  store i32 1, i32* %.309
  br label %.311wc 
.311wc:
  %.315 = load i32, i32* %.309
  %.316 = load i32, i32* %.295
  %.317 = icmp slt i32 %.315, %.316
  br i1 %.317, label %.312wloop., label %.313wn
.312wloop.:
  %.319 = load i32, i32* %.305
  %.320at17 = call i32 @getint()
  %.321at18 = call i32 @_user_insert(i32 %.319, i32 %.320at17)
  %.322 = load i32, i32* %.309
  %.323 = add i32 %.322, 1
  store i32 %.323, i32* %.309
  br label %.311wc 
.313wn:
  %.326 = load i32, i32* %.305
  call void @_user_inorder(i32 %.326)
  call void @putch(i32 10)
  %.329at21 = call i32 @getint()
  store i32 %.329at21, i32* %.295
  store i32 0, i32* %.309
  br label %.332wc 
.332wc:
  %.336 = load i32, i32* %.309
  %.337 = load i32, i32* %.295
  %.338 = icmp slt i32 %.336, %.337
  br i1 %.338, label %.333wloop., label %.334wn
.333wloop.:
  %.340 = load i32, i32* %.305
  %.341at22 = call i32 @getint()
  %.342at23 = call i32 @_user_delete(i32 %.340, i32 %.341at22)
  store i32 %.342at23, i32* %.305
  %.344 = load i32, i32* %.309
  %.345 = add i32 %.344, 1
  store i32 %.345, i32* %.309
  br label %.332wc 
.334wn:
  %.348 = load i32, i32* %.305
  call void @_user_inorder(i32 %.348)
  call void @putch(i32 10)
  ret i32 0 
}
