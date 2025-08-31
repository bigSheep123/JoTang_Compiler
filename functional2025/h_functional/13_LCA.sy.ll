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
@.G.maxn = global i32 zeroinitializer
@.G.n = global i32 zeroinitializer
@.G.m = global i32 zeroinitializer
@.G.f = global [10005 x [20 x i32]] zeroinitializer
@.G.dep = global [10005 x i32] zeroinitializer
@.G.to = global [10005 x i32] zeroinitializer
@.G.next = global [10005 x i32] zeroinitializer
@.G.head = global [10005 x i32] zeroinitializer
@.G.cnt = global i32 0
define i32 @_user_quick_read(){
.0:
  %.3at0 = call i32 @getch()
  br label %.10wc 
.10wc:
  %.369 = phi i32 [%.3at0, %.0], [%.32at1, %.24]
  %.366 = phi i32 [0, %.0], [%.367, %.24]
  %.17 = icmp slt i32 %.369, 48
  br i1 %.17, label %.11wloop., label %.14
.11wloop.:
  %.27 = icmp eq i32 %.369, 45
  br i1 %.27, label %.23, label %.24
.12wn:
  br label %.35wc 
.14:
  %.21 = icmp sgt i32 %.369, 57
  br i1 %.21, label %.11wloop., label %.12wn
.23:
  br label %.24 
.24:
  %.367 = phi i32 [%.366, %.11wloop.], [1, %.23]
  %.32at1 = call i32 @getch()
  br label %.10wc 
.35wc:
  %.370 = phi i32 [%.369, %.12wn], [%.53at2, %.36wloop.]
  %.368 = phi i32 [0, %.12wn], [%.51, %.36wloop.]
  %.40 = icmp sge i32 %.370, 48
  br i1 %.40, label %.41, label %.37wn
.36wloop.:
  %.48 = mul i32 %.368, 10
  %.50 = add i32 %.48, %.370
  %.51 = sub i32 %.50, 48
  %.53at2 = call i32 @getch()
  br label %.35wc 
.37wn:
  %.59 = icmp ne i32 %.366, 0
  br i1 %.59, label %.56, label %.57
.41:
  %.44 = icmp sle i32 %.370, 57
  br i1 %.44, label %.36wloop., label %.37wn
.56:
  %.62 = sub i32 0, %.368
  ret i32 %.62 
.57:
  ret i32 %.368 
}
define void @_user_add_edge(i32 %.78, i32 %.81){
.77:
  %.85 = load i32, i32* @.G.cnt
  %.86 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.to, i32 0, i32 %.85
  store i32 %.81, i32* %.86
  %.89 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.head, i32 0, i32 %.78
  %.90 = load i32, i32* %.89
  %.91 = load i32, i32* @.G.cnt
  %.92 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.next, i32 0, i32 %.91
  store i32 %.90, i32* %.92
  %.94 = load i32, i32* @.G.cnt
  %.96 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.head, i32 0, i32 %.78
  store i32 %.94, i32* %.96
  %.98 = load i32, i32* @.G.cnt
  %.99 = add i32 %.98, 1
  store i32 %.99, i32* @.G.cnt
  %.103 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.81, i32 0
  store i32 %.78, i32* %.103
  ret void
}
define void @_user_init(){
.106:
  %.108 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.dep, i32 0, i32 0
  store i32 1061109567, i32* %.108
  br label %.112wc 
.112wc:
  %.372 = phi i32 [1, %.106], [%.125, %.113wloop.]
  %.117 = load i32, i32* @.G.n
  %.118 = icmp sle i32 %.372, %.117
  br i1 %.118, label %.113wloop., label %.114wn
.113wloop.:
  %.122 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.head, i32 0, i32 %.372
  store i32 -1, i32* %.122
  %.125 = add i32 %.372, 1
  br label %.112wc 
.114wn:
  ret void
}
define void @_user_tree(i32 %.130, i32 %.133){
.129:
  %.138 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.dep, i32 0, i32 %.130
  store i32 %.133, i32* %.138
  br label %.142wc 
.142wc:
  %.373 = phi i32 [0, %.129], [%.165, %.143wloop.]
  %.148 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.130, i32 %.373
  %.149 = load i32, i32* %.148
  %.150 = icmp ne i32 %.149, 0
  br i1 %.150, label %.143wloop., label %.144wn
.143wloop.:
  %.154 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.130, i32 %.373
  %.155 = load i32, i32* %.154
  %.157 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.155, i32 %.373
  %.158 = load i32, i32* %.157
  %.161 = add i32 %.373, 1
  %.162 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.130, i32 %.161
  store i32 %.158, i32* %.162
  %.165 = add i32 %.373, 1
  br label %.142wc 
.144wn:
  %.169 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.head, i32 0, i32 %.130
  %.170 = load i32, i32* %.169
  br label %.172wc 
.172wc:
  %.374 = phi i32 [%.170, %.144wn], [%.190, %.173wloop.]
  %.177 = icmp ne i32 %.374, -1
  br i1 %.177, label %.173wloop., label %.174wn
.173wloop.:
  %.181 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.to, i32 0, i32 %.374
  %.182 = load i32, i32* %.181
  %.186 = add i32 %.133, 1
  call void @_user_tree(i32 %.182, i32 %.186)
  %.189 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.next, i32 0, i32 %.374
  %.190 = load i32, i32* %.189
  br label %.172wc 
.174wn:
  ret void
}
define i32 @_user_LCA(i32 %.195, i32 %.198){
.194:
  %.204 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.dep, i32 0, i32 %.195
  %.205 = load i32, i32* %.204
  %.207 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.dep, i32 0, i32 %.198
  %.208 = load i32, i32* %.207
  %.209 = icmp slt i32 %.205, %.208
  br i1 %.209, label %.201, label %.202
.201:
  br label %.202 
.202:
  %.382 = phi i32 [%.198, %.194], [%.195, %.201]
  %.377 = phi i32 [%.195, %.194], [%.198, %.201]
  br label %.222wc 
.222wc:
  %.378 = phi i32 [%.377, %.202], [%.379, %.235]
  %.375 = phi i32 [19, %.202], [%.261, %.235]
  %.227 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.dep, i32 0, i32 %.378
  %.228 = load i32, i32* %.227
  %.230 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.dep, i32 0, i32 %.382
  %.231 = load i32, i32* %.230
  %.232 = icmp sgt i32 %.228, %.231
  br i1 %.232, label %.223wloop., label %.224wn
.223wloop.:
  %.238 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.378, i32 %.375
  %.239 = load i32, i32* %.238
  %.240 = icmp ne i32 %.239, 0
  br i1 %.240, label %.241, label %.235
.224wn:
  %.268 = icmp eq i32 %.378, %.382
  br i1 %.268, label %.264, label %.265
.234:
  %.256 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.378, i32 %.375
  %.257 = load i32, i32* %.256
  br label %.235 
.235:
  %.379 = phi i32 [%.378, %.223wloop.], [%.378, %.241], [%.257, %.234]
  %.261 = sub i32 %.375, 1
  br label %.222wc 
.241:
  %.245 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.378, i32 %.375
  %.246 = load i32, i32* %.245
  %.247 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.dep, i32 0, i32 %.246
  %.248 = load i32, i32* %.247
  %.250 = getelementptr inbounds [10005 x i32], [10005 x i32]* @.G.dep, i32 0, i32 %.382
  %.251 = load i32, i32* %.250
  %.252 = icmp sge i32 %.248, %.251
  br i1 %.252, label %.234, label %.235
.264:
  ret i32 %.378 
.265:
  br label %.273wc 
.273wc:
  %.383 = phi i32 [%.382, %.265], [%.384, %.281]
  %.380 = phi i32 [%.378, %.265], [%.381, %.281]
  %.376 = phi i32 [19, %.265], [%.304, %.281]
  %.278 = icmp sge i32 %.376, 0
  br i1 %.278, label %.274wloop., label %.275wn
.274wloop.:
  %.284 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.380, i32 %.376
  %.285 = load i32, i32* %.284
  %.288 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.383, i32 %.376
  %.289 = load i32, i32* %.288
  %.290 = icmp ne i32 %.285, %.289
  br i1 %.290, label %.280, label %.281
.275wn:
  %.308 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.380, i32 0
  %.309 = load i32, i32* %.308
  ret i32 %.309 
.280:
  %.294 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.380, i32 %.376
  %.295 = load i32, i32* %.294
  %.299 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @.G.f, i32 0, i32 %.383, i32 %.376
  %.300 = load i32, i32* %.299
  br label %.281 
.281:
  %.384 = phi i32 [%.383, %.274wloop.], [%.300, %.280]
  %.381 = phi i32 [%.380, %.274wloop.], [%.295, %.280]
  %.304 = sub i32 %.376, 1
  br label %.273wc 
}
define i32 @main(){
.311:
  %.312at4 = call i32 @_user_quick_read()
  store i32 %.312at4, i32* @.G.n
  %.314at5 = call i32 @_user_quick_read()
  store i32 %.314at5, i32* @.G.m
  call void @_user_init()
  br label %.319wc 
.319wc:
  %.385 = phi i32 [1, %.311], [%.337, %.320wloop.]
  %.324 = load i32, i32* @.G.n
  %.325 = icmp ne i32 %.385, %.324
  br i1 %.325, label %.320wloop., label %.321wn
.320wloop.:
  %.328at7 = call i32 @_user_quick_read()
  %.331at8 = call i32 @_user_quick_read()
  call void @_user_add_edge(i32 %.328at7, i32 %.331at8)
  %.337 = add i32 %.385, 1
  br label %.319wc 
.321wn:
  call void @_user_tree(i32 1, i32 1)
  br label %.341wc 
.341wc:
  %.345 = load i32, i32* @.G.m
  %.346 = icmp ne i32 %.345, 0
  br i1 %.346, label %.342wloop., label %.343wn
.342wloop.:
  %.349at11 = call i32 @_user_quick_read()
  %.352at12 = call i32 @_user_quick_read()
  %.356at13 = call i32 @_user_LCA(i32 %.349at11, i32 %.352at12)
  call void @putint(i32 %.356at13)
  call void @putch(i32 10)
  %.361 = load i32, i32* @.G.m
  %.362 = sub i32 %.361, 1
  store i32 %.362, i32* @.G.m
  br label %.341wc 
.343wn:
  ret i32 0 
}
