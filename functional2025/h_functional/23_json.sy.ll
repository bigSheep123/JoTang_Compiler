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
@.G.pos = global i32 0
@.C..783 = constant [4 x i32]  [i32 116, i32 114, i32 117, i32 101]
@.C..867 = constant [5 x i32]  [i32 102, i32 97, i32 108, i32 115, i32 101]
@.C..959 = constant [4 x i32]  [i32 110, i32 117, i32 108, i32 108]
@.G.buffer = global [50000000 x i32] zeroinitializer
define i32 @_user_is_number(i32 %.3){
.2:
  %.4 = alloca i32
  store i32 %.3, i32* %.4
  %.8 = load i32, i32* %.4
  %.10 = icmp sge i32 %.8, 48
  br i1 %.10, label %.6, label %.7
.6:
  %.14 = load i32, i32* %.4
  %.16 = icmp sle i32 %.14, 57
  br i1 %.16, label %.12, label %.13
.7:
  ret i32 0 
.12:
  ret i32 1 
.13:
  ret i32 0 
}
define void @_user_skip_space(i32* %.23, i32 %.26){
.22:
  %.27 = alloca i32
  %.24 = alloca i32*
  store i32* %.23, i32** %.24
  store i32 %.26, i32* %.27
  br label %.29wc 
.29wc:
  %.33 = icmp ne i32 1, 0
  br i1 %.33, label %.30wloop., label %.31wn
.30wloop.:
  %.37 = load i32, i32* @.G.pos
  %.38 = load i32, i32* %.27
  %.39 = icmp sge i32 %.37, %.38
  br i1 %.39, label %.35, label %.36
.31wn:
  ret void
.35:
  br label %.31wn 
.36:
  %.44 = load i32, i32* @.G.pos
  %.45 = load i32*, i32** %.24
  %.46 = getelementptr inbounds i32, i32* %.45, i32 %.44
  %.47 = load i32, i32* %.46
  %.49 = icmp eq i32 %.47, 32
  br i1 %.49, label %.42, label %.43
.42:
  %.51 = load i32, i32* @.G.pos
  %.52 = add i32 %.51, 1
  store i32 %.52, i32* @.G.pos
  br label %.54 
.43:
  %.58 = load i32, i32* @.G.pos
  %.59 = load i32*, i32** %.24
  %.60 = getelementptr inbounds i32, i32* %.59, i32 %.58
  %.61 = load i32, i32* %.60
  %.63 = icmp eq i32 %.61, 9
  br i1 %.63, label %.56, label %.57
.54:
  br label %.29wc 
.56:
  %.65 = load i32, i32* @.G.pos
  %.66 = add i32 %.65, 1
  store i32 %.66, i32* @.G.pos
  br label %.68 
.57:
  %.72 = load i32, i32* @.G.pos
  %.73 = load i32*, i32** %.24
  %.74 = getelementptr inbounds i32, i32* %.73, i32 %.72
  %.75 = load i32, i32* %.74
  %.77 = icmp eq i32 %.75, 10
  br i1 %.77, label %.70, label %.71
.68:
  br label %.54 
.70:
  %.79 = load i32, i32* @.G.pos
  %.80 = add i32 %.79, 1
  store i32 %.80, i32* @.G.pos
  br label %.82 
.71:
  %.86 = load i32, i32* @.G.pos
  %.87 = load i32*, i32** %.24
  %.88 = getelementptr inbounds i32, i32* %.87, i32 %.86
  %.89 = load i32, i32* %.88
  %.91 = icmp eq i32 %.89, 13
  br i1 %.91, label %.84, label %.85
.82:
  br label %.68 
.84:
  %.93 = load i32, i32* @.G.pos
  %.94 = add i32 %.93, 1
  store i32 %.94, i32* @.G.pos
  br label %.96 
.85:
  br label %.31wn 
.96:
  br label %.82 
}
define i32 @_user_detect_item(i32 %.105, i32* %.108, i32 %.111){
.104:
  %.957 = alloca [4 x i32]
  %.862 = alloca [5 x i32]
  %.779 = alloca [4 x i32]
  %.112 = alloca i32
  %.109 = alloca i32*
  %.106 = alloca i32
  store i32 %.105, i32* %.106
  store i32* %.108, i32** %.109
  store i32 %.111, i32* %.112
  %.116 = load i32, i32* @.G.pos
  %.117 = load i32, i32* %.112
  %.118 = icmp sge i32 %.116, %.117
  br i1 %.118, label %.114, label %.115
.114:
  ret i32 0 
.115:
  %.121 = load i32*, i32** %.109
  %.122 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.121, i32 %.122)
  %.126 = load i32, i32* %.106
  %.127 = icmp eq i32 %.126, 0
  br i1 %.127, label %.124, label %.125
.124:
  %.131 = load i32, i32* @.G.pos
  %.132 = load i32*, i32** %.109
  %.133 = getelementptr inbounds i32, i32* %.132, i32 %.131
  %.134 = load i32, i32* %.133
  %.136 = icmp eq i32 %.134, 123
  br i1 %.136, label %.129, label %.130
.125:
  %.255 = load i32, i32* %.106
  %.256 = icmp eq i32 %.255, 1
  br i1 %.256, label %.253, label %.254
.129:
  %.139 = load i32*, i32** %.109
  %.140 = load i32, i32* %.112
  %.141at1 = call i32 @_user_detect_item(i32 4, i32* %.139, i32 %.140)
  ret i32 %.141at1 
.130:
  %.145 = load i32, i32* @.G.pos
  %.146 = load i32*, i32** %.109
  %.147 = getelementptr inbounds i32, i32* %.146, i32 %.145
  %.148 = load i32, i32* %.147
  %.150 = icmp eq i32 %.148, 91
  br i1 %.150, label %.143, label %.144
.143:
  %.153 = load i32*, i32** %.109
  %.154 = load i32, i32* %.112
  %.155at2 = call i32 @_user_detect_item(i32 3, i32* %.153, i32 %.154)
  ret i32 %.155at2 
.144:
  %.159 = load i32, i32* @.G.pos
  %.160 = load i32*, i32** %.109
  %.161 = getelementptr inbounds i32, i32* %.160, i32 %.159
  %.162 = load i32, i32* %.161
  %.164 = icmp eq i32 %.162, 34
  br i1 %.164, label %.157, label %.158
.157:
  %.167 = load i32*, i32** %.109
  %.168 = load i32, i32* %.112
  %.169at3 = call i32 @_user_detect_item(i32 2, i32* %.167, i32 %.168)
  ret i32 %.169at3 
.158:
  %.173 = load i32, i32* @.G.pos
  %.174 = load i32*, i32** %.109
  %.175 = getelementptr inbounds i32, i32* %.174, i32 %.173
  %.176 = load i32, i32* %.175
  %.177at4 = call i32 @_user_is_number(i32 %.176)
  %.178 = icmp eq i32 %.177at4, 1
  br i1 %.178, label %.171, label %.172
.171:
  %.180 = load i32*, i32** %.109
  %.181 = load i32, i32* %.112
  %.182at5 = call i32 @_user_detect_item(i32 1, i32* %.180, i32 %.181)
  ret i32 %.182at5 
.172:
  %.186 = load i32, i32* @.G.pos
  %.187 = load i32*, i32** %.109
  %.188 = getelementptr inbounds i32, i32* %.187, i32 %.186
  %.189 = load i32, i32* %.188
  %.191 = icmp eq i32 %.189, 43
  br i1 %.191, label %.184, label %.185
.184:
  %.193 = load i32*, i32** %.109
  %.194 = load i32, i32* %.112
  %.195at6 = call i32 @_user_detect_item(i32 1, i32* %.193, i32 %.194)
  ret i32 %.195at6 
.185:
  %.199 = load i32, i32* @.G.pos
  %.200 = load i32*, i32** %.109
  %.201 = getelementptr inbounds i32, i32* %.200, i32 %.199
  %.202 = load i32, i32* %.201
  %.204 = icmp eq i32 %.202, 45
  br i1 %.204, label %.197, label %.198
.197:
  %.206 = load i32*, i32** %.109
  %.207 = load i32, i32* %.112
  %.208at7 = call i32 @_user_detect_item(i32 1, i32* %.206, i32 %.207)
  ret i32 %.208at7 
.198:
  %.212 = load i32, i32* @.G.pos
  %.213 = load i32*, i32** %.109
  %.214 = getelementptr inbounds i32, i32* %.213, i32 %.212
  %.215 = load i32, i32* %.214
  %.217 = icmp eq i32 %.215, 116
  br i1 %.217, label %.210, label %.211
.210:
  %.220 = load i32*, i32** %.109
  %.221 = load i32, i32* %.112
  %.222at8 = call i32 @_user_detect_item(i32 5, i32* %.220, i32 %.221)
  ret i32 %.222at8 
.211:
  %.226 = load i32, i32* @.G.pos
  %.227 = load i32*, i32** %.109
  %.228 = getelementptr inbounds i32, i32* %.227, i32 %.226
  %.229 = load i32, i32* %.228
  %.231 = icmp eq i32 %.229, 102
  br i1 %.231, label %.224, label %.225
.224:
  %.234 = load i32*, i32** %.109
  %.235 = load i32, i32* %.112
  %.236at9 = call i32 @_user_detect_item(i32 6, i32* %.234, i32 %.235)
  ret i32 %.236at9 
.225:
  %.240 = load i32, i32* @.G.pos
  %.241 = load i32*, i32** %.109
  %.242 = getelementptr inbounds i32, i32* %.241, i32 %.240
  %.243 = load i32, i32* %.242
  %.245 = icmp eq i32 %.243, 110
  br i1 %.245, label %.238, label %.239
.238:
  %.248 = load i32*, i32** %.109
  %.249 = load i32, i32* %.112
  %.250at10 = call i32 @_user_detect_item(i32 7, i32* %.248, i32 %.249)
  ret i32 %.250at10 
.239:
  ret i32 0 
.253:
  %.260 = load i32, i32* @.G.pos
  %.261 = load i32*, i32** %.109
  %.262 = getelementptr inbounds i32, i32* %.261, i32 %.260
  %.263 = load i32, i32* %.262
  %.264 = icmp eq i32 %.263, 43
  br i1 %.264, label %.258, label %.259
.254:
  %.451 = load i32, i32* %.106
  %.452 = icmp eq i32 %.451, 2
  br i1 %.452, label %.449, label %.450
.258:
  %.266 = load i32, i32* @.G.pos
  %.267 = add i32 %.266, 1
  store i32 %.267, i32* @.G.pos
  br label %.269 
.259:
  %.273 = load i32, i32* @.G.pos
  %.274 = load i32*, i32** %.109
  %.275 = getelementptr inbounds i32, i32* %.274, i32 %.273
  %.276 = load i32, i32* %.275
  %.277 = icmp eq i32 %.276, 45
  br i1 %.277, label %.271, label %.272
.269:
  %.286 = load i32, i32* @.G.pos
  %.287 = load i32, i32* %.112
  %.288 = icmp sge i32 %.286, %.287
  br i1 %.288, label %.284, label %.285
.271:
  %.279 = load i32, i32* @.G.pos
  %.280 = add i32 %.279, 1
  store i32 %.280, i32* @.G.pos
  br label %.272 
.272:
  br label %.269 
.284:
  ret i32 0 
.285:
  %.293 = load i32, i32* @.G.pos
  %.294 = load i32*, i32** %.109
  %.295 = getelementptr inbounds i32, i32* %.294, i32 %.293
  %.296 = load i32, i32* %.295
  %.297at11 = call i32 @_user_is_number(i32 %.296)
  %.298 = icmp eq i32 %.297at11, 0
  br i1 %.298, label %.291, label %.292
.291:
  ret i32 0 
.292:
  br label %.301 
.301:
  br label %.303wc 
.303wc:
  %.307 = load i32, i32* @.G.pos
  %.308 = load i32, i32* %.112
  %.309 = icmp slt i32 %.307, %.308
  br i1 %.309, label %.304wloop., label %.305wn
.304wloop.:
  %.313 = load i32, i32* @.G.pos
  %.314 = load i32*, i32** %.109
  %.315 = getelementptr inbounds i32, i32* %.314, i32 %.313
  %.316 = load i32, i32* %.315
  %.317at12 = call i32 @_user_is_number(i32 %.316)
  %.318 = icmp ne i32 %.317at12, 1
  br i1 %.318, label %.311, label %.312
.305wn:
  %.327 = load i32, i32* @.G.pos
  %.328 = load i32, i32* %.112
  %.329 = icmp slt i32 %.327, %.328
  br i1 %.329, label %.325, label %.326
.311:
  br label %.305wn 
.312:
  %.321 = load i32, i32* @.G.pos
  %.322 = add i32 %.321, 1
  store i32 %.322, i32* @.G.pos
  br label %.303wc 
.325:
  %.333 = load i32, i32* @.G.pos
  %.334 = load i32*, i32** %.109
  %.335 = getelementptr inbounds i32, i32* %.334, i32 %.333
  %.336 = load i32, i32* %.335
  %.338 = icmp eq i32 %.336, 46
  br i1 %.338, label %.331, label %.332
.326:
  %.369 = load i32, i32* @.G.pos
  %.370 = load i32, i32* %.112
  %.371 = icmp slt i32 %.369, %.370
  br i1 %.371, label %.367, label %.368
.331:
  %.340 = load i32, i32* @.G.pos
  %.341 = add i32 %.340, 1
  store i32 %.341, i32* @.G.pos
  br label %.343wc 
.332:
  br label %.326 
.343wc:
  %.347 = load i32, i32* @.G.pos
  %.348 = load i32, i32* %.112
  %.349 = icmp slt i32 %.347, %.348
  br i1 %.349, label %.344wloop., label %.345wn
.344wloop.:
  %.353 = load i32, i32* @.G.pos
  %.354 = load i32*, i32** %.109
  %.355 = getelementptr inbounds i32, i32* %.354, i32 %.353
  %.356 = load i32, i32* %.355
  %.357at13 = call i32 @_user_is_number(i32 %.356)
  %.358 = icmp ne i32 %.357at13, 1
  br i1 %.358, label %.351, label %.352
.345wn:
  br label %.332 
.351:
  br label %.345wn 
.352:
  %.361 = load i32, i32* @.G.pos
  %.362 = add i32 %.361, 1
  store i32 %.362, i32* @.G.pos
  br label %.343wc 
.367:
  %.375 = load i32, i32* @.G.pos
  %.376 = load i32*, i32** %.109
  %.377 = getelementptr inbounds i32, i32* %.376, i32 %.375
  %.378 = load i32, i32* %.377
  %.380 = icmp eq i32 %.378, 101
  br i1 %.380, label %.373, label %.374
.368:
  br label %.447 
.373:
  %.382 = load i32, i32* @.G.pos
  %.383 = add i32 %.382, 1
  store i32 %.383, i32* @.G.pos
  %.387 = load i32, i32* @.G.pos
  %.388 = load i32, i32* %.112
  %.389 = icmp slt i32 %.387, %.388
  br i1 %.389, label %.385, label %.386
.374:
  br label %.368 
.385:
  %.393 = load i32, i32* @.G.pos
  %.394 = load i32*, i32** %.109
  %.395 = getelementptr inbounds i32, i32* %.394, i32 %.393
  %.396 = load i32, i32* %.395
  %.397 = icmp eq i32 %.396, 43
  br i1 %.397, label %.391, label %.392
.386:
  %.406 = load i32, i32* @.G.pos
  %.407 = load i32, i32* %.112
  %.408 = icmp slt i32 %.406, %.407
  br i1 %.408, label %.404, label %.405
.391:
  %.399 = load i32, i32* @.G.pos
  %.400 = add i32 %.399, 1
  store i32 %.400, i32* @.G.pos
  br label %.392 
.392:
  br label %.386 
.404:
  %.412 = load i32, i32* @.G.pos
  %.413 = load i32*, i32** %.109
  %.414 = getelementptr inbounds i32, i32* %.413, i32 %.412
  %.415 = load i32, i32* %.414
  %.416 = icmp eq i32 %.415, 45
  br i1 %.416, label %.410, label %.411
.405:
  br label %.423wc 
.410:
  %.418 = load i32, i32* @.G.pos
  %.419 = add i32 %.418, 1
  store i32 %.419, i32* @.G.pos
  br label %.411 
.411:
  br label %.405 
.423wc:
  %.427 = load i32, i32* @.G.pos
  %.428 = load i32, i32* %.112
  %.429 = icmp slt i32 %.427, %.428
  br i1 %.429, label %.424wloop., label %.425wn
.424wloop.:
  %.433 = load i32, i32* @.G.pos
  %.434 = load i32*, i32** %.109
  %.435 = getelementptr inbounds i32, i32* %.434, i32 %.433
  %.436 = load i32, i32* %.435
  %.437at14 = call i32 @_user_is_number(i32 %.436)
  %.438 = icmp ne i32 %.437at14, 1
  br i1 %.438, label %.431, label %.432
.425wn:
  br label %.374 
.431:
  br label %.425wn 
.432:
  %.441 = load i32, i32* @.G.pos
  %.442 = add i32 %.441, 1
  store i32 %.442, i32* @.G.pos
  br label %.423wc 
.447:
  br label %.1036 
.449:
  %.454 = load i32, i32* @.G.pos
  %.455 = add i32 %.454, 1
  store i32 %.455, i32* @.G.pos
  br label %.457wc 
.450:
  %.518 = load i32, i32* %.106
  %.519 = icmp eq i32 %.518, 3
  br i1 %.519, label %.516, label %.517
.457wc:
  %.461 = load i32, i32* @.G.pos
  %.462 = load i32, i32* %.112
  %.463 = icmp slt i32 %.461, %.462
  br i1 %.463, label %.458wloop., label %.459wn
.458wloop.:
  %.467 = load i32, i32* @.G.pos
  %.468 = load i32*, i32** %.109
  %.469 = getelementptr inbounds i32, i32* %.468, i32 %.467
  %.470 = load i32, i32* %.469
  %.471 = icmp eq i32 %.470, 34
  br i1 %.471, label %.465, label %.466
.459wn:
  %.495 = load i32, i32* @.G.pos
  %.496 = load i32, i32* %.112
  %.497 = icmp sge i32 %.495, %.496
  br i1 %.497, label %.493, label %.494
.465:
  br label %.459wn 
.466:
  %.476 = load i32, i32* @.G.pos
  %.477 = load i32*, i32** %.109
  %.478 = getelementptr inbounds i32, i32* %.477, i32 %.476
  %.479 = load i32, i32* %.478
  %.481 = icmp eq i32 %.479, 92
  br i1 %.481, label %.474, label %.475
.474:
  %.483 = load i32, i32* @.G.pos
  %.484 = add i32 %.483, 2
  store i32 %.484, i32* @.G.pos
  br label %.486 
.475:
  %.488 = load i32, i32* @.G.pos
  %.489 = add i32 %.488, 1
  store i32 %.489, i32* @.G.pos
  br label %.486 
.486:
  br label %.457wc 
.493:
  ret i32 0 
.494:
  %.502 = load i32, i32* @.G.pos
  %.503 = load i32*, i32** %.109
  %.504 = getelementptr inbounds i32, i32* %.503, i32 %.502
  %.505 = load i32, i32* %.504
  %.506 = icmp ne i32 %.505, 34
  br i1 %.506, label %.500, label %.501
.500:
  ret i32 0 
.501:
  br label %.509 
.509:
  %.511 = load i32, i32* @.G.pos
  %.512 = add i32 %.511, 1
  store i32 %.512, i32* @.G.pos
  br label %.514 
.514:
  br label %.447 
.516:
  %.521 = load i32, i32* @.G.pos
  %.522 = add i32 %.521, 1
  store i32 %.522, i32* @.G.pos
  %.524 = load i32*, i32** %.109
  %.525 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.524, i32 %.525)
  %.529 = load i32, i32* @.G.pos
  %.530 = load i32, i32* %.112
  %.531 = icmp slt i32 %.529, %.530
  br i1 %.531, label %.527, label %.528
.517:
  %.613 = load i32, i32* %.106
  %.614 = icmp eq i32 %.613, 4
  br i1 %.614, label %.611, label %.612
.527:
  %.535 = load i32, i32* @.G.pos
  %.536 = load i32*, i32** %.109
  %.537 = getelementptr inbounds i32, i32* %.536, i32 %.535
  %.538 = load i32, i32* %.537
  %.540 = icmp eq i32 %.538, 93
  br i1 %.540, label %.533, label %.534
.528:
  %.549 = load i32*, i32** %.109
  %.550 = load i32, i32* %.112
  %.551at16 = call i32 @_user_detect_item(i32 0, i32* %.549, i32 %.550)
  %.552 = icmp eq i32 %.551at16, 0
  br i1 %.552, label %.547, label %.548
.533:
  %.542 = load i32, i32* @.G.pos
  %.543 = add i32 %.542, 1
  store i32 %.543, i32* @.G.pos
  ret i32 1 
.534:
  br label %.528 
.547:
  ret i32 0 
.548:
  %.555 = load i32*, i32** %.109
  %.556 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.555, i32 %.556)
  br label %.558wc 
.558wc:
  %.562 = load i32, i32* @.G.pos
  %.563 = load i32*, i32** %.109
  %.564 = getelementptr inbounds i32, i32* %.563, i32 %.562
  %.565 = load i32, i32* %.564
  %.567 = icmp eq i32 %.565, 44
  br i1 %.567, label %.559wloop., label %.560wn
.559wloop.:
  %.569 = load i32, i32* @.G.pos
  %.570 = add i32 %.569, 1
  store i32 %.570, i32* @.G.pos
  %.572 = load i32*, i32** %.109
  %.573 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.572, i32 %.573)
  %.577 = load i32*, i32** %.109
  %.578 = load i32, i32* %.112
  %.579at19 = call i32 @_user_detect_item(i32 0, i32* %.577, i32 %.578)
  %.580 = icmp eq i32 %.579at19, 0
  br i1 %.580, label %.575, label %.576
.560wn:
  %.587 = load i32*, i32** %.109
  %.588 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.587, i32 %.588)
  %.592 = load i32, i32* @.G.pos
  %.593 = load i32, i32* %.112
  %.594 = icmp sge i32 %.592, %.593
  br i1 %.594, label %.590, label %.591
.575:
  ret i32 0 
.576:
  %.583 = load i32*, i32** %.109
  %.584 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.583, i32 %.584)
  br label %.558wc 
.590:
  ret i32 0 
.591:
  %.599 = load i32, i32* @.G.pos
  %.600 = load i32*, i32** %.109
  %.601 = getelementptr inbounds i32, i32* %.600, i32 %.599
  %.602 = load i32, i32* %.601
  %.603 = icmp ne i32 %.602, 93
  br i1 %.603, label %.597, label %.598
.597:
  ret i32 0 
.598:
  %.606 = load i32, i32* @.G.pos
  %.607 = add i32 %.606, 1
  store i32 %.607, i32* @.G.pos
  br label %.609 
.609:
  br label %.514 
.611:
  %.616 = load i32, i32* @.G.pos
  %.617 = add i32 %.616, 1
  store i32 %.617, i32* @.G.pos
  %.619 = load i32*, i32** %.109
  %.620 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.619, i32 %.620)
  %.624 = load i32, i32* @.G.pos
  %.625 = load i32, i32* %.112
  %.626 = icmp slt i32 %.624, %.625
  br i1 %.626, label %.622, label %.623
.612:
  %.776 = load i32, i32* %.106
  %.777 = icmp eq i32 %.776, 5
  br i1 %.777, label %.774, label %.775
.622:
  %.630 = load i32, i32* @.G.pos
  %.631 = load i32*, i32** %.109
  %.632 = getelementptr inbounds i32, i32* %.631, i32 %.630
  %.633 = load i32, i32* %.632
  %.635 = icmp eq i32 %.633, 125
  br i1 %.635, label %.628, label %.629
.623:
  %.644 = load i32*, i32** %.109
  %.645 = load i32, i32* %.112
  %.646at23 = call i32 @_user_detect_item(i32 2, i32* %.644, i32 %.645)
  %.647 = icmp eq i32 %.646at23, 0
  br i1 %.647, label %.642, label %.643
.628:
  %.637 = load i32, i32* @.G.pos
  %.638 = add i32 %.637, 1
  store i32 %.638, i32* @.G.pos
  ret i32 1 
.629:
  br label %.623 
.642:
  ret i32 0 
.643:
  %.650 = load i32*, i32** %.109
  %.651 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.650, i32 %.651)
  %.655 = load i32, i32* @.G.pos
  %.656 = load i32, i32* %.112
  %.657 = icmp sge i32 %.655, %.656
  br i1 %.657, label %.653, label %.654
.653:
  ret i32 0 
.654:
  %.662 = load i32, i32* @.G.pos
  %.663 = load i32*, i32** %.109
  %.664 = getelementptr inbounds i32, i32* %.663, i32 %.662
  %.665 = load i32, i32* %.664
  %.667 = icmp ne i32 %.665, 58
  br i1 %.667, label %.660, label %.661
.660:
  ret i32 0 
.661:
  %.670 = load i32, i32* @.G.pos
  %.671 = add i32 %.670, 1
  store i32 %.671, i32* @.G.pos
  %.673 = load i32*, i32** %.109
  %.674 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.673, i32 %.674)
  %.678 = load i32*, i32** %.109
  %.679 = load i32, i32* %.112
  %.680at26 = call i32 @_user_detect_item(i32 0, i32* %.678, i32 %.679)
  %.681 = icmp eq i32 %.680at26, 0
  br i1 %.681, label %.676, label %.677
.676:
  ret i32 0 
.677:
  %.684 = load i32*, i32** %.109
  %.685 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.684, i32 %.685)
  br label %.687wc 
.687wc:
  %.691 = load i32, i32* @.G.pos
  %.692 = load i32*, i32** %.109
  %.693 = getelementptr inbounds i32, i32* %.692, i32 %.691
  %.694 = load i32, i32* %.693
  %.695 = icmp eq i32 %.694, 44
  br i1 %.695, label %.688wloop., label %.689wn
.688wloop.:
  %.697 = load i32, i32* @.G.pos
  %.698 = add i32 %.697, 1
  store i32 %.698, i32* @.G.pos
  %.700 = load i32*, i32** %.109
  %.701 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.700, i32 %.701)
  %.705 = load i32*, i32** %.109
  %.706 = load i32, i32* %.112
  %.707at29 = call i32 @_user_detect_item(i32 2, i32* %.705, i32 %.706)
  %.708 = icmp eq i32 %.707at29, 0
  br i1 %.708, label %.703, label %.704
.689wn:
  %.748 = load i32*, i32** %.109
  %.749 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.748, i32 %.749)
  %.753 = load i32, i32* @.G.pos
  %.754 = load i32, i32* %.112
  %.755 = icmp sge i32 %.753, %.754
  br i1 %.755, label %.751, label %.752
.703:
  ret i32 0 
.704:
  %.711 = load i32*, i32** %.109
  %.712 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.711, i32 %.712)
  %.716 = load i32, i32* @.G.pos
  %.717 = load i32, i32* %.112
  %.718 = icmp sge i32 %.716, %.717
  br i1 %.718, label %.714, label %.715
.714:
  ret i32 0 
.715:
  %.723 = load i32, i32* @.G.pos
  %.724 = load i32*, i32** %.109
  %.725 = getelementptr inbounds i32, i32* %.724, i32 %.723
  %.726 = load i32, i32* %.725
  %.727 = icmp ne i32 %.726, 58
  br i1 %.727, label %.721, label %.722
.721:
  ret i32 0 
.722:
  %.730 = load i32, i32* @.G.pos
  %.731 = add i32 %.730, 1
  store i32 %.731, i32* @.G.pos
  %.733 = load i32*, i32** %.109
  %.734 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.733, i32 %.734)
  %.738 = load i32*, i32** %.109
  %.739 = load i32, i32* %.112
  %.740at32 = call i32 @_user_detect_item(i32 0, i32* %.738, i32 %.739)
  %.741 = icmp eq i32 %.740at32, 0
  br i1 %.741, label %.736, label %.737
.736:
  ret i32 0 
.737:
  %.744 = load i32*, i32** %.109
  %.745 = load i32, i32* %.112
  call void @_user_skip_space(i32* %.744, i32 %.745)
  br label %.687wc 
.751:
  ret i32 0 
.752:
  %.760 = load i32, i32* @.G.pos
  %.761 = load i32*, i32** %.109
  %.762 = getelementptr inbounds i32, i32* %.761, i32 %.760
  %.763 = load i32, i32* %.762
  %.764 = icmp ne i32 %.763, 125
  br i1 %.764, label %.758, label %.759
.758:
  ret i32 0 
.759:
  br label %.767 
.767:
  %.769 = load i32, i32* @.G.pos
  %.770 = add i32 %.769, 1
  store i32 %.770, i32* @.G.pos
  br label %.772 
.772:
  br label %.609 
.774:
  call void @llvm.memcpy.p0.p0.i32([4 x i32]* %.779, [4 x i32]* @.C..783, i32 16, i1 false)
  %.791 = load i32, i32* @.G.pos
  %.792 = add i32 %.791, 3
  %.793 = load i32, i32* %.112
  %.794 = icmp sge i32 %.792, %.793
  br i1 %.794, label %.789, label %.790
.775:
  %.859 = load i32, i32* %.106
  %.860 = icmp eq i32 %.859, 6
  br i1 %.860, label %.857, label %.858
.789:
  ret i32 0 
.790:
  %.799 = load i32, i32* @.G.pos
  %.800 = load i32*, i32** %.109
  %.801 = getelementptr inbounds i32, i32* %.800, i32 %.799
  %.802 = load i32, i32* %.801
  %.803 = getelementptr inbounds [4 x i32], [4 x i32]* %.779, i32 0, i32 0
  %.804 = load i32, i32* %.803
  %.805 = icmp ne i32 %.802, %.804
  br i1 %.805, label %.797, label %.798
.797:
  ret i32 0 
.798:
  %.810 = load i32, i32* @.G.pos
  %.811 = add i32 %.810, 1
  %.812 = load i32*, i32** %.109
  %.813 = getelementptr inbounds i32, i32* %.812, i32 %.811
  %.814 = load i32, i32* %.813
  %.815 = getelementptr inbounds [4 x i32], [4 x i32]* %.779, i32 0, i32 1
  %.816 = load i32, i32* %.815
  %.817 = icmp ne i32 %.814, %.816
  br i1 %.817, label %.808, label %.809
.808:
  ret i32 0 
.809:
  %.822 = load i32, i32* @.G.pos
  %.823 = add i32 %.822, 2
  %.824 = load i32*, i32** %.109
  %.825 = getelementptr inbounds i32, i32* %.824, i32 %.823
  %.826 = load i32, i32* %.825
  %.827 = getelementptr inbounds [4 x i32], [4 x i32]* %.779, i32 0, i32 2
  %.828 = load i32, i32* %.827
  %.829 = icmp ne i32 %.826, %.828
  br i1 %.829, label %.820, label %.821
.820:
  ret i32 0 
.821:
  %.834 = load i32, i32* @.G.pos
  %.835 = add i32 %.834, 3
  %.836 = load i32*, i32** %.109
  %.837 = getelementptr inbounds i32, i32* %.836, i32 %.835
  %.838 = load i32, i32* %.837
  %.839 = getelementptr inbounds [4 x i32], [4 x i32]* %.779, i32 0, i32 3
  %.840 = load i32, i32* %.839
  %.841 = icmp ne i32 %.838, %.840
  br i1 %.841, label %.832, label %.833
.832:
  ret i32 0 
.833:
  br label %.844 
.844:
  br label %.846 
.846:
  br label %.848 
.848:
  br label %.850 
.850:
  %.852 = load i32, i32* @.G.pos
  %.853 = add i32 %.852, 4
  store i32 %.853, i32* @.G.pos
  br label %.855 
.855:
  br label %.772 
.857:
  call void @llvm.memcpy.p0.p0.i32([5 x i32]* %.862, [5 x i32]* @.C..867, i32 20, i1 false)
  %.872 = load i32, i32* @.G.pos
  %.873 = add i32 %.872, 4
  %.874 = load i32, i32* %.112
  %.875 = icmp sge i32 %.873, %.874
  br i1 %.875, label %.870, label %.871
.858:
  %.954 = load i32, i32* %.106
  %.955 = icmp eq i32 %.954, 7
  br i1 %.955, label %.952, label %.953
.870:
  ret i32 0 
.871:
  %.880 = load i32, i32* @.G.pos
  %.881 = load i32*, i32** %.109
  %.882 = getelementptr inbounds i32, i32* %.881, i32 %.880
  %.883 = load i32, i32* %.882
  %.884 = getelementptr inbounds [5 x i32], [5 x i32]* %.862, i32 0, i32 0
  %.885 = load i32, i32* %.884
  %.886 = icmp ne i32 %.883, %.885
  br i1 %.886, label %.878, label %.879
.878:
  ret i32 0 
.879:
  %.891 = load i32, i32* @.G.pos
  %.892 = add i32 %.891, 1
  %.893 = load i32*, i32** %.109
  %.894 = getelementptr inbounds i32, i32* %.893, i32 %.892
  %.895 = load i32, i32* %.894
  %.896 = getelementptr inbounds [5 x i32], [5 x i32]* %.862, i32 0, i32 1
  %.897 = load i32, i32* %.896
  %.898 = icmp ne i32 %.895, %.897
  br i1 %.898, label %.889, label %.890
.889:
  ret i32 0 
.890:
  %.903 = load i32, i32* @.G.pos
  %.904 = add i32 %.903, 2
  %.905 = load i32*, i32** %.109
  %.906 = getelementptr inbounds i32, i32* %.905, i32 %.904
  %.907 = load i32, i32* %.906
  %.908 = getelementptr inbounds [5 x i32], [5 x i32]* %.862, i32 0, i32 2
  %.909 = load i32, i32* %.908
  %.910 = icmp ne i32 %.907, %.909
  br i1 %.910, label %.901, label %.902
.901:
  ret i32 0 
.902:
  %.915 = load i32, i32* @.G.pos
  %.916 = add i32 %.915, 3
  %.917 = load i32*, i32** %.109
  %.918 = getelementptr inbounds i32, i32* %.917, i32 %.916
  %.919 = load i32, i32* %.918
  %.920 = getelementptr inbounds [5 x i32], [5 x i32]* %.862, i32 0, i32 3
  %.921 = load i32, i32* %.920
  %.922 = icmp ne i32 %.919, %.921
  br i1 %.922, label %.913, label %.914
.913:
  ret i32 0 
.914:
  %.927 = load i32, i32* @.G.pos
  %.928 = add i32 %.927, 4
  %.929 = load i32*, i32** %.109
  %.930 = getelementptr inbounds i32, i32* %.929, i32 %.928
  %.931 = load i32, i32* %.930
  %.932 = getelementptr inbounds [5 x i32], [5 x i32]* %.862, i32 0, i32 4
  %.933 = load i32, i32* %.932
  %.934 = icmp ne i32 %.931, %.933
  br i1 %.934, label %.925, label %.926
.925:
  ret i32 0 
.926:
  br label %.937 
.937:
  br label %.939 
.939:
  br label %.941 
.941:
  br label %.943 
.943:
  br label %.945 
.945:
  %.947 = load i32, i32* @.G.pos
  %.948 = add i32 %.947, 5
  store i32 %.948, i32* @.G.pos
  br label %.950 
.950:
  br label %.855 
.952:
  call void @llvm.memcpy.p0.p0.i32([4 x i32]* %.957, [4 x i32]* @.C..959, i32 16, i1 false)
  %.963 = load i32, i32* @.G.pos
  %.964 = add i32 %.963, 3
  %.965 = load i32, i32* %.112
  %.966 = icmp sge i32 %.964, %.965
  br i1 %.966, label %.961, label %.962
.953:
  ret i32 0 
.961:
  ret i32 0 
.962:
  %.971 = load i32, i32* @.G.pos
  %.972 = load i32*, i32** %.109
  %.973 = getelementptr inbounds i32, i32* %.972, i32 %.971
  %.974 = load i32, i32* %.973
  %.975 = getelementptr inbounds [4 x i32], [4 x i32]* %.957, i32 0, i32 0
  %.976 = load i32, i32* %.975
  %.977 = icmp ne i32 %.974, %.976
  br i1 %.977, label %.969, label %.970
.969:
  ret i32 0 
.970:
  %.982 = load i32, i32* @.G.pos
  %.983 = add i32 %.982, 1
  %.984 = load i32*, i32** %.109
  %.985 = getelementptr inbounds i32, i32* %.984, i32 %.983
  %.986 = load i32, i32* %.985
  %.987 = getelementptr inbounds [4 x i32], [4 x i32]* %.957, i32 0, i32 1
  %.988 = load i32, i32* %.987
  %.989 = icmp ne i32 %.986, %.988
  br i1 %.989, label %.980, label %.981
.980:
  ret i32 0 
.981:
  %.994 = load i32, i32* @.G.pos
  %.995 = add i32 %.994, 2
  %.996 = load i32*, i32** %.109
  %.997 = getelementptr inbounds i32, i32* %.996, i32 %.995
  %.998 = load i32, i32* %.997
  %.999 = getelementptr inbounds [4 x i32], [4 x i32]* %.957, i32 0, i32 2
  %.1000 = load i32, i32* %.999
  %.1001 = icmp ne i32 %.998, %.1000
  br i1 %.1001, label %.992, label %.993
.992:
  ret i32 0 
.993:
  %.1006 = load i32, i32* @.G.pos
  %.1007 = add i32 %.1006, 3
  %.1008 = load i32*, i32** %.109
  %.1009 = getelementptr inbounds i32, i32* %.1008, i32 %.1007
  %.1010 = load i32, i32* %.1009
  %.1011 = getelementptr inbounds [4 x i32], [4 x i32]* %.957, i32 0, i32 3
  %.1012 = load i32, i32* %.1011
  %.1013 = icmp ne i32 %.1010, %.1012
  br i1 %.1013, label %.1004, label %.1005
.1004:
  ret i32 0 
.1005:
  br label %.1016 
.1016:
  br label %.1018 
.1018:
  br label %.1020 
.1020:
  br label %.1022 
.1022:
  %.1024 = load i32, i32* @.G.pos
  %.1025 = add i32 %.1024, 4
  store i32 %.1025, i32* @.G.pos
  br label %.1027 
.1027:
  br label %.950 
.1036:
  ret i32 1 
}
define i32 @main(){
.1042:
  %.1070 = alloca i32
  %.1047 = alloca i32
  %.1043 = alloca i32
  %.1045at35 = call i32 @getch()
  store i32 %.1045at35, i32* %.1043
  store i32 0, i32* %.1047
  br label %.1049wc 
.1049wc:
  %.1053 = load i32, i32* %.1043
  %.1055 = icmp ne i32 %.1053, 35
  br i1 %.1055, label %.1050wloop., label %.1051wn
.1050wloop.:
  %.1057 = load i32, i32* %.1043
  %.1058 = load i32, i32* %.1047
  %.1059 = getelementptr inbounds [50000000 x i32], [50000000 x i32]* @.G.buffer, i32 0, i32 %.1058
  store i32 %.1057, i32* %.1059
  %.1061 = load i32, i32* %.1047
  %.1062 = add i32 %.1061, 1
  store i32 %.1062, i32* %.1047
  %.1064at36 = call i32 @getch()
  store i32 %.1064at36, i32* %.1043
  br label %.1049wc 
.1051wn:
  %.1067 = getelementptr inbounds [50000000 x i32], [50000000 x i32]* @.G.buffer, i32 0, i32 0
  %.1068 = load i32, i32* %.1047
  call void @_user_skip_space(i32* %.1067, i32 %.1068)
  %.1071 = getelementptr inbounds [50000000 x i32], [50000000 x i32]* @.G.buffer, i32 0, i32 0
  %.1072 = load i32, i32* %.1047
  %.1073at38 = call i32 @_user_detect_item(i32 0, i32* %.1071, i32 %.1072)
  store i32 %.1073at38, i32* %.1070
  %.1075 = getelementptr inbounds [50000000 x i32], [50000000 x i32]* @.G.buffer, i32 0, i32 0
  %.1076 = load i32, i32* %.1047
  call void @_user_skip_space(i32* %.1075, i32 %.1076)
  %.1080 = load i32, i32* %.1070
  %.1081 = icmp ne i32 %.1080, 0
  br i1 %.1081, label %.1078, label %.1079
.1078:
  call void @putch(i32 111)
  call void @putch(i32 107)
  call void @putch(i32 10)
  ret i32 0 
.1079:
  call void @putch(i32 110)
  call void @putch(i32 111)
  call void @putch(i32 116)
  call void @putch(i32 32)
  call void @putch(i32 111)
  call void @putch(i32 107)
  call void @putch(i32 10)
  ret i32 1 
}
