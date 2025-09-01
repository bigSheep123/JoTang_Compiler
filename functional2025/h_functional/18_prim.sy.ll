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
@.G.maxm = global i32 zeroinitializer
@.G.maxn = global i32 zeroinitializer
@.G.n = global i32 zeroinitializer
@.G.m = global i32 zeroinitializer
@.G.u = global [1005 x i32] zeroinitializer
@.G.v = global [1005 x i32] zeroinitializer
@.G.c = global [1005 x i32] zeroinitializer
@.G.fa = global [1005 x i32] zeroinitializer
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
define i32 @_user_find(i32 %.77){
.76:
  %.90 = alloca i32
  %.78 = alloca i32
  store i32 %.77, i32* %.78
  %.82 = load i32, i32* %.78
  %.83 = load i32, i32* %.78
  %.84 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.fa, i32 0, i32 %.83
  %.85 = load i32, i32* %.84
  %.86 = icmp eq i32 %.82, %.85
  br i1 %.86, label %.80, label %.81
.80:
  %.88 = load i32, i32* %.78
  ret i32 %.88 
.81:
  %.91 = load i32, i32* %.78
  %.92 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.fa, i32 0, i32 %.91
  %.93 = load i32, i32* %.92
  %.94at3 = call i32 @_user_find(i32 %.93)
  store i32 %.94at3, i32* %.90
  %.96 = load i32, i32* %.90
  %.97 = load i32, i32* %.78
  %.98 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.fa, i32 0, i32 %.97
  store i32 %.96, i32* %.98
  %.100 = load i32, i32* %.90
  ret i32 %.100 
}
define i32 @_user_same(i32 %.103, i32 %.106){
.102:
  %.107 = alloca i32
  %.104 = alloca i32
  store i32 %.103, i32* %.104
  store i32 %.106, i32* %.107
  %.109 = load i32, i32* %.104
  %.110at4 = call i32 @_user_find(i32 %.109)
  store i32 %.110at4, i32* %.104
  %.112 = load i32, i32* %.107
  %.113at5 = call i32 @_user_find(i32 %.112)
  store i32 %.113at5, i32* %.107
  %.117 = load i32, i32* %.104
  %.118 = load i32, i32* %.107
  %.119 = icmp eq i32 %.117, %.118
  br i1 %.119, label %.115, label %.116
.115:
  ret i32 1 
.116:
  ret i32 0 
}
define i32 @_user_prim(){
.123:
  %.226 = alloca i32
  %.156 = alloca i32
  %.134 = alloca i32
  %.124 = alloca i32
  store i32 0, i32* %.124
  br label %.126wc 
.126wc:
  %.130 = load i32, i32* %.124
  %.131 = load i32, i32* @.G.m
  %.132 = icmp slt i32 %.130, %.131
  br i1 %.132, label %.127wloop., label %.128wn
.127wloop.:
  %.135 = load i32, i32* %.124
  %.136 = add i32 %.135, 1
  store i32 %.136, i32* %.134
  br label %.138wc 
.128wn:
  store i32 1, i32* %.124
  br label %.209wc 
.138wc:
  %.142 = load i32, i32* %.134
  %.143 = load i32, i32* @.G.m
  %.144 = icmp slt i32 %.142, %.143
  br i1 %.144, label %.139wloop., label %.140wn
.139wloop.:
  %.148 = load i32, i32* %.124
  %.149 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.c, i32 0, i32 %.148
  %.150 = load i32, i32* %.149
  %.151 = load i32, i32* %.134
  %.152 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.c, i32 0, i32 %.151
  %.153 = load i32, i32* %.152
  %.154 = icmp sgt i32 %.150, %.153
  br i1 %.154, label %.146, label %.147
.140wn:
  %.204 = load i32, i32* %.124
  %.205 = add i32 %.204, 1
  store i32 %.205, i32* %.124
  br label %.126wc 
.146:
  %.157 = load i32, i32* %.124
  %.158 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.u, i32 0, i32 %.157
  %.159 = load i32, i32* %.158
  store i32 %.159, i32* %.156
  %.161 = load i32, i32* %.134
  %.162 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.u, i32 0, i32 %.161
  %.163 = load i32, i32* %.162
  %.164 = load i32, i32* %.124
  %.165 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.u, i32 0, i32 %.164
  store i32 %.163, i32* %.165
  %.167 = load i32, i32* %.156
  %.168 = load i32, i32* %.134
  %.169 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.u, i32 0, i32 %.168
  store i32 %.167, i32* %.169
  %.171 = load i32, i32* %.124
  %.172 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.v, i32 0, i32 %.171
  %.173 = load i32, i32* %.172
  store i32 %.173, i32* %.156
  %.175 = load i32, i32* %.134
  %.176 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.v, i32 0, i32 %.175
  %.177 = load i32, i32* %.176
  %.178 = load i32, i32* %.124
  %.179 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.v, i32 0, i32 %.178
  store i32 %.177, i32* %.179
  %.181 = load i32, i32* %.156
  %.182 = load i32, i32* %.134
  %.183 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.v, i32 0, i32 %.182
  store i32 %.181, i32* %.183
  %.185 = load i32, i32* %.124
  %.186 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.c, i32 0, i32 %.185
  %.187 = load i32, i32* %.186
  store i32 %.187, i32* %.156
  %.189 = load i32, i32* %.134
  %.190 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.c, i32 0, i32 %.189
  %.191 = load i32, i32* %.190
  %.192 = load i32, i32* %.124
  %.193 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.c, i32 0, i32 %.192
  store i32 %.191, i32* %.193
  %.195 = load i32, i32* %.156
  %.196 = load i32, i32* %.134
  %.197 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.c, i32 0, i32 %.196
  store i32 %.195, i32* %.197
  br label %.147 
.147:
  %.200 = load i32, i32* %.134
  %.201 = add i32 %.200, 1
  store i32 %.201, i32* %.134
  br label %.138wc 
.209wc:
  %.213 = load i32, i32* %.124
  %.214 = load i32, i32* @.G.n
  %.215 = icmp sle i32 %.213, %.214
  br i1 %.215, label %.210wloop., label %.211wn
.210wloop.:
  %.217 = load i32, i32* %.124
  %.218 = load i32, i32* %.124
  %.219 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.fa, i32 0, i32 %.218
  store i32 %.217, i32* %.219
  %.221 = load i32, i32* %.124
  %.222 = add i32 %.221, 1
  store i32 %.222, i32* %.124
  br label %.209wc 
.211wn:
  store i32 0, i32* %.124
  store i32 0, i32* %.226
  br label %.228wc 
.228wc:
  %.232 = load i32, i32* %.124
  %.233 = load i32, i32* @.G.m
  %.234 = icmp slt i32 %.232, %.233
  br i1 %.234, label %.229wloop., label %.230wn
.229wloop.:
  %.238 = load i32, i32* %.124
  %.239 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.u, i32 0, i32 %.238
  %.240 = load i32, i32* %.239
  %.241 = load i32, i32* %.124
  %.242 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.v, i32 0, i32 %.241
  %.243 = load i32, i32* %.242
  %.244at6 = call i32 @_user_same(i32 %.240, i32 %.243)
  %.245 = icmp ne i32 %.244at6, 0
  br i1 %.245, label %.236, label %.237
.230wn:
  %.267 = load i32, i32* %.226
  ret i32 %.267 
.236:
  br label %.228wc 
.237:
  %.248 = load i32, i32* %.226
  %.249 = load i32, i32* %.124
  %.250 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.c, i32 0, i32 %.249
  %.251 = load i32, i32* %.250
  %.252 = add i32 %.248, %.251
  store i32 %.252, i32* %.226
  %.254 = load i32, i32* %.124
  %.255 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.v, i32 0, i32 %.254
  %.256 = load i32, i32* %.255
  %.257 = load i32, i32* %.124
  %.258 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.u, i32 0, i32 %.257
  %.259 = load i32, i32* %.258
  %.260at7 = call i32 @_user_find(i32 %.259)
  %.261 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.fa, i32 0, i32 %.260at7
  store i32 %.256, i32* %.261
  %.263 = load i32, i32* %.124
  %.264 = add i32 %.263, 1
  store i32 %.264, i32* %.124
  br label %.228wc 
}
define i32 @main(){
.269:
  %.276 = alloca i32
  %.273 = alloca i32
  %.270 = alloca i32
  %.271at8 = call i32 @_user_quick_read()
  store i32 %.271at8, i32* %.270
  %.274at9 = call i32 @_user_quick_read()
  store i32 %.274at9, i32* %.273
  store i32 0, i32* %.276
  br label %.278wc 
.278wc:
  %.282 = load i32, i32* %.276
  %.283 = load i32, i32* %.273
  %.284 = icmp slt i32 %.282, %.283
  br i1 %.284, label %.279wloop., label %.280wn
.279wloop.:
  %.286at10 = call i32 @_user_quick_read()
  %.287 = load i32, i32* %.276
  %.288 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.u, i32 0, i32 %.287
  store i32 %.286at10, i32* %.288
  %.290at11 = call i32 @_user_quick_read()
  %.291 = load i32, i32* %.276
  %.292 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.v, i32 0, i32 %.291
  store i32 %.290at11, i32* %.292
  %.294at12 = call i32 @_user_quick_read()
  %.295 = load i32, i32* %.276
  %.296 = getelementptr inbounds [1005 x i32], [1005 x i32]* @.G.c, i32 0, i32 %.295
  store i32 %.294at12, i32* %.296
  %.298 = load i32, i32* %.276
  %.299 = add i32 %.298, 1
  store i32 %.299, i32* %.276
  br label %.278wc 
.280wn:
  %.302at13 = call i32 @_user_prim()
  ret i32 %.302at13 
}
