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
@.G.maxn = global i32 zeroinitializer
@.G.cnt = global [400020 x i32] zeroinitializer
@.G.x = global [100005 x i32] zeroinitializer
@.G.a = global [100005 x i32] zeroinitializer
@.G.b = global [100005 x i32] zeroinitializer
@.G.c = global [100005 x i32] zeroinitializer
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
define void @_user_sortA(i32* %.70){
.69:
  %.107 = alloca i32
  %.75 = alloca i32
  %.73 = alloca i32
  %.71 = alloca i32*
  store i32* %.70, i32** %.71
  store i32 0, i32* %.73
  br label %.76wc 
.76wc:
  %.80 = load i32, i32* %.73
  %.81 = load i32, i32* @.G.n
  %.82 = icmp slt i32 %.80, %.81
  br i1 %.82, label %.77wloop., label %.78wn
.77wloop.:
  %.84 = load i32, i32* %.73
  %.85 = add i32 %.84, 1
  store i32 %.85, i32* %.75
  br label %.87wc 
.78wn:
  ret void
.87wc:
  %.91 = load i32, i32* %.75
  %.92 = load i32, i32* @.G.n
  %.93 = icmp slt i32 %.91, %.92
  br i1 %.93, label %.88wloop., label %.89wn
.88wloop.:
  %.97 = load i32, i32* %.73
  %.98 = load i32*, i32** %.71
  %.99 = getelementptr inbounds i32, i32* %.98, i32 %.97
  %.100 = load i32, i32* %.99
  %.101 = load i32, i32* %.75
  %.102 = load i32*, i32** %.71
  %.103 = getelementptr inbounds i32, i32* %.102, i32 %.101
  %.104 = load i32, i32* %.103
  %.105 = icmp sgt i32 %.100, %.104
  br i1 %.105, label %.95, label %.96
.89wn:
  %.131 = load i32, i32* %.73
  %.132 = add i32 %.131, 1
  store i32 %.132, i32* %.73
  br label %.76wc 
.95:
  %.108 = load i32, i32* %.73
  %.109 = load i32*, i32** %.71
  %.110 = getelementptr inbounds i32, i32* %.109, i32 %.108
  %.111 = load i32, i32* %.110
  store i32 %.111, i32* %.107
  %.113 = load i32, i32* %.75
  %.114 = load i32*, i32** %.71
  %.115 = getelementptr inbounds i32, i32* %.114, i32 %.113
  %.116 = load i32, i32* %.115
  %.117 = load i32, i32* %.73
  %.118 = load i32*, i32** %.71
  %.119 = getelementptr inbounds i32, i32* %.118, i32 %.117
  store i32 %.116, i32* %.119
  %.121 = load i32, i32* %.107
  %.122 = load i32, i32* %.75
  %.123 = load i32*, i32** %.71
  %.124 = getelementptr inbounds i32, i32* %.123, i32 %.122
  store i32 %.121, i32* %.124
  br label %.96 
.96:
  %.127 = load i32, i32* %.75
  %.128 = add i32 %.127, 1
  store i32 %.128, i32* %.75
  br label %.87wc 
}
define void @_user_sortB(i32* %.140){
.139:
  %.200 = alloca i32
  %.190 = alloca i32
  %.145 = alloca i32
  %.143 = alloca i32
  %.141 = alloca i32*
  store i32* %.140, i32** %.141
  store i32 0, i32* %.143
  store i32 -100, i32* %.145
  br label %.149wc 
.149wc:
  %.153 = load i32, i32* %.143
  %.154 = load i32, i32* @.G.n
  %.155 = icmp slt i32 %.153, %.154
  br i1 %.155, label %.150wloop., label %.151wn
.150wloop.:
  %.157 = load i32, i32* %.143
  %.158 = load i32*, i32** %.141
  %.159 = getelementptr inbounds i32, i32* %.158, i32 %.157
  %.160 = load i32, i32* %.159
  %.161 = getelementptr inbounds [400020 x i32], [400020 x i32]* @.G.cnt, i32 0, i32 %.160
  %.162 = load i32, i32* %.161
  %.163 = add i32 %.162, 1
  %.164 = load i32, i32* %.143
  %.165 = load i32*, i32** %.141
  %.166 = getelementptr inbounds i32, i32* %.165, i32 %.164
  %.167 = load i32, i32* %.166
  %.168 = getelementptr inbounds [400020 x i32], [400020 x i32]* @.G.cnt, i32 0, i32 %.167
  store i32 %.163, i32* %.168
  %.172 = load i32, i32* %.143
  %.173 = load i32*, i32** %.141
  %.174 = getelementptr inbounds i32, i32* %.173, i32 %.172
  %.175 = load i32, i32* %.174
  %.176 = load i32, i32* %.145
  %.177 = icmp sgt i32 %.175, %.176
  br i1 %.177, label %.170, label %.171
.151wn:
  store i32 0, i32* %.143
  store i32 0, i32* %.190
  br label %.192wc 
.170:
  %.179 = load i32, i32* %.143
  %.180 = load i32*, i32** %.141
  %.181 = getelementptr inbounds i32, i32* %.180, i32 %.179
  %.182 = load i32, i32* %.181
  store i32 %.182, i32* %.145
  br label %.171 
.171:
  %.185 = load i32, i32* %.143
  %.186 = add i32 %.185, 1
  store i32 %.186, i32* %.143
  br label %.149wc 
.192wc:
  %.196 = load i32, i32* %.143
  %.197 = load i32, i32* %.145
  %.198 = icmp sle i32 %.196, %.197
  br i1 %.198, label %.193wloop., label %.194wn
.193wloop.:
  %.201 = load i32, i32* %.143
  %.202 = getelementptr inbounds [400020 x i32], [400020 x i32]* @.G.cnt, i32 0, i32 %.201
  %.203 = load i32, i32* %.202
  store i32 %.203, i32* %.200
  br label %.205wc 
.194wn:
  ret void
.205wc:
  %.209 = load i32, i32* %.200
  %.210 = icmp ne i32 %.209, 0
  br i1 %.210, label %.206wloop., label %.207wn
.206wloop.:
  %.212 = load i32, i32* %.143
  %.213 = load i32, i32* %.190
  %.214 = load i32*, i32** %.141
  %.215 = getelementptr inbounds i32, i32* %.214, i32 %.213
  store i32 %.212, i32* %.215
  %.217 = load i32, i32* %.190
  %.218 = add i32 %.217, 1
  store i32 %.218, i32* %.190
  %.220 = load i32, i32* %.200
  %.221 = sub i32 %.220, 1
  store i32 %.221, i32* %.200
  br label %.205wc 
.207wn:
  %.224 = load i32, i32* %.143
  %.225 = add i32 %.224, 1
  store i32 %.225, i32* %.143
  br label %.192wc 
}
define void @_user_sortC(i32* %.230){
.229:
  %.277 = alloca i32
  %.246 = alloca i32
  %.243 = alloca i32
  %.233 = alloca i32
  %.231 = alloca i32*
  store i32* %.230, i32** %.231
  store i32 0, i32* %.233
  br label %.235wc 
.235wc:
  %.239 = load i32, i32* %.233
  %.240 = load i32, i32* @.G.n
  %.241 = icmp slt i32 %.239, %.240
  br i1 %.241, label %.236wloop., label %.237wn
.236wloop.:
  %.244 = load i32, i32* %.233
  store i32 %.244, i32* %.243
  %.247 = load i32, i32* %.233
  %.248 = add i32 %.247, 1
  store i32 %.248, i32* %.246
  br label %.250wc 
.237wn:
  ret void
.250wc:
  %.254 = load i32, i32* %.246
  %.255 = load i32, i32* @.G.n
  %.256 = icmp slt i32 %.254, %.255
  br i1 %.256, label %.251wloop., label %.252wn
.251wloop.:
  %.260 = load i32, i32* %.246
  %.261 = load i32*, i32** %.231
  %.262 = getelementptr inbounds i32, i32* %.261, i32 %.260
  %.263 = load i32, i32* %.262
  %.264 = load i32, i32* %.243
  %.265 = load i32*, i32** %.231
  %.266 = getelementptr inbounds i32, i32* %.265, i32 %.264
  %.267 = load i32, i32* %.266
  %.268 = icmp slt i32 %.263, %.267
  br i1 %.268, label %.258, label %.259
.252wn:
  %.278 = load i32, i32* %.233
  %.279 = load i32*, i32** %.231
  %.280 = getelementptr inbounds i32, i32* %.279, i32 %.278
  %.281 = load i32, i32* %.280
  store i32 %.281, i32* %.277
  %.283 = load i32, i32* %.243
  %.284 = load i32*, i32** %.231
  %.285 = getelementptr inbounds i32, i32* %.284, i32 %.283
  %.286 = load i32, i32* %.285
  %.287 = load i32, i32* %.233
  %.288 = load i32*, i32** %.231
  %.289 = getelementptr inbounds i32, i32* %.288, i32 %.287
  store i32 %.286, i32* %.289
  %.291 = load i32, i32* %.277
  %.292 = load i32, i32* %.243
  %.293 = load i32*, i32** %.231
  %.294 = getelementptr inbounds i32, i32* %.293, i32 %.292
  store i32 %.291, i32* %.294
  %.296 = load i32, i32* %.233
  %.297 = add i32 %.296, 1
  store i32 %.297, i32* %.233
  br label %.235wc 
.258:
  %.270 = load i32, i32* %.246
  store i32 %.270, i32* %.243
  br label %.259 
.259:
  %.273 = load i32, i32* %.246
  %.274 = add i32 %.273, 1
  store i32 %.274, i32* %.246
  br label %.250wc 
}
define i32 @main(){
.305:
  %.308 = alloca i32
  %.306at3 = call i32 @_user_quick_read()
  store i32 %.306at3, i32* @.G.n
  store i32 0, i32* %.308
  br label %.310wc 
.310wc:
  %.314 = load i32, i32* %.308
  %.315 = load i32, i32* @.G.n
  %.316 = icmp ne i32 %.314, %.315
  br i1 %.316, label %.311wloop., label %.312wn
.311wloop.:
  %.318at4 = call i32 @_user_quick_read()
  %.319 = load i32, i32* %.308
  %.320 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.a, i32 0, i32 %.319
  store i32 %.318at4, i32* %.320
  %.322 = load i32, i32* %.308
  %.323 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.a, i32 0, i32 %.322
  %.324 = load i32, i32* %.323
  %.325 = load i32, i32* %.308
  %.326 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.b, i32 0, i32 %.325
  store i32 %.324, i32* %.326
  %.328 = load i32, i32* %.308
  %.329 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.b, i32 0, i32 %.328
  %.330 = load i32, i32* %.329
  %.331 = load i32, i32* %.308
  %.332 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.c, i32 0, i32 %.331
  store i32 %.330, i32* %.332
  %.334 = load i32, i32* %.308
  %.335 = add i32 %.334, 1
  store i32 %.335, i32* %.308
  br label %.310wc 
.312wn:
  %.338 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.a, i32 0, i32 0
  call void @_user_sortA(i32* %.338)
  %.340 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.b, i32 0, i32 0
  call void @_user_sortB(i32* %.340)
  %.342 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.c, i32 0, i32 0
  call void @_user_sortC(i32* %.342)
  store i32 0, i32* %.308
  br label %.345wc 
.345wc:
  %.349 = load i32, i32* @.G.n
  %.350 = load i32, i32* %.308
  %.351 = sub i32 %.349, %.350
  %.352 = icmp ne i32 %.351, 0
  br i1 %.352, label %.346wloop., label %.347wn
.346wloop.:
  %.354 = load i32, i32* %.308
  %.355 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.b, i32 0, i32 %.354
  %.356 = load i32, i32* %.355
  %.357 = load i32, i32* %.308
  %.358 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.a, i32 0, i32 %.357
  %.359 = load i32, i32* %.358
  %.360 = sub i32 %.356, %.359
  %.361 = load i32, i32* %.308
  %.362 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.b, i32 0, i32 %.361
  store i32 %.360, i32* %.362
  %.364 = load i32, i32* %.308
  %.365 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.c, i32 0, i32 %.364
  %.366 = load i32, i32* %.365
  %.367 = load i32, i32* %.308
  %.368 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.b, i32 0, i32 %.367
  %.369 = load i32, i32* %.368
  %.370 = sub i32 %.366, %.369
  %.371 = load i32, i32* %.308
  %.372 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.a, i32 0, i32 %.371
  %.373 = load i32, i32* %.372
  %.374 = sub i32 %.370, %.373
  %.375 = load i32, i32* %.308
  %.376 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.c, i32 0, i32 %.375
  store i32 %.374, i32* %.376
  %.378 = load i32, i32* %.308
  %.379 = add i32 %.378, 1
  store i32 %.379, i32* %.308
  br label %.345wc 
.347wn:
  store i32 0, i32* %.308
  br label %.383wc 
.383wc:
  %.387 = load i32, i32* %.308
  %.388 = load i32, i32* @.G.n
  %.389 = sub i32 %.387, %.388
  %.390 = icmp ne i32 %.389, 0
  br i1 %.390, label %.384wloop., label %.385wn
.384wloop.:
  %.394 = load i32, i32* %.308
  %.395 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.b, i32 0, i32 %.394
  %.396 = load i32, i32* %.395
  %.397 = icmp ne i32 %.396, 0
  br i1 %.397, label %.392, label %.393
.385wn:
  ret i32 -123 
.392:
  ret i32 1 
.393:
  %.402 = load i32, i32* %.308
  %.403 = getelementptr inbounds [100005 x i32], [100005 x i32]* @.G.c, i32 0, i32 %.402
  %.404 = load i32, i32* %.403
  %.405 = icmp ne i32 %.404, 0
  br i1 %.405, label %.400, label %.401
.400:
  ret i32 2 
.401:
  %.409 = load i32, i32* %.308
  %.410 = add i32 %.409, 1
  store i32 %.410, i32* %.308
  br label %.383wc 
}
