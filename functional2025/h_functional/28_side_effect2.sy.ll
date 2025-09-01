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
@.G.sum = global i32 0
@.G.array = global [20 x i32] zeroinitializer
define i32 @_user_f(i32 %.5, i32 %.8){
.4:
  %.9 = alloca i32
  %.6 = alloca i32
  store i32 %.5, i32* %.6
  store i32 %.8, i32* %.9
  %.11 = load i32, i32* @.G.sum
  %.13 = add i32 %.11, 1
  store i32 %.13, i32* @.G.sum
  %.18 = load i32, i32* %.6
  %.19 = load i32, i32* %.9
  %.20 = icmp sge i32 %.18, %.19
  br i1 %.20, label %.15, label %.17
.15:
  ret i32 0 
.16:
  %.26 = load i32, i32* %.6
  %.27 = getelementptr inbounds [20 x i32], [20 x i32]* @.G.array, i32 0, i32 %.26
  store i32 1, i32* %.27
  %.31 = load i32, i32* %.6
  %.32 = icmp eq i32 %.31, 0
  br i1 %.32, label %.29, label %.30
.17:
  %.22 = load i32, i32* %.6
  %.23 = icmp sge i32 %.22, 20
  br i1 %.23, label %.15, label %.16
.29:
  %.34 = getelementptr inbounds [20 x i32], [20 x i32]* @.G.array, i32 0, i32 0
  %.35 = load i32, i32* %.34
  ret i32 %.35 
.30:
  %.37 = load i32, i32* %.6
  %.38 = sub i32 %.37, 1
  %.39 = getelementptr inbounds [20 x i32], [20 x i32]* @.G.array, i32 0, i32 %.38
  %.40 = load i32, i32* %.39
  ret i32 %.40 
}
define i32 @_user_g(i32 %.43, i32 %.46){
.42:
  %.47 = alloca i32
  %.44 = alloca i32
  store i32 %.43, i32* %.44
  store i32 %.46, i32* %.47
  %.49 = load i32, i32* @.G.sum
  %.51 = add i32 %.49, 2
  store i32 %.51, i32* @.G.sum
  %.56 = load i32, i32* %.44
  %.57 = load i32, i32* %.47
  %.58 = icmp sge i32 %.56, %.57
  br i1 %.58, label %.53, label %.55
.53:
  ret i32 1 
.54:
  %.64 = load i32, i32* %.44
  %.65 = getelementptr inbounds [20 x i32], [20 x i32]* @.G.array, i32 0, i32 %.64
  store i32 0, i32* %.65
  %.69 = load i32, i32* %.44
  %.70 = icmp eq i32 %.69, 0
  br i1 %.70, label %.67, label %.68
.55:
  %.60 = load i32, i32* %.44
  %.61 = icmp sge i32 %.60, 20
  br i1 %.61, label %.53, label %.54
.67:
  %.72 = getelementptr inbounds [20 x i32], [20 x i32]* @.G.array, i32 0, i32 0
  %.73 = load i32, i32* %.72
  ret i32 %.73 
.68:
  %.75 = load i32, i32* %.44
  %.76 = sub i32 %.75, 1
  %.77 = getelementptr inbounds [20 x i32], [20 x i32]* @.G.array, i32 0, i32 %.76
  %.78 = load i32, i32* %.77
  ret i32 %.78 
}
define i32 @_user_h(i32 %.81){
.80:
  %.82 = alloca i32
  store i32 %.81, i32* %.82
  %.84 = load i32, i32* @.G.sum
  %.86 = add i32 %.84, 3
  store i32 %.86, i32* @.G.sum
  %.91 = load i32, i32* %.82
  %.92 = icmp slt i32 %.91, 0
  br i1 %.92, label %.88, label %.90
.88:
  ret i32 0 
.89:
  %.98 = load i32, i32* %.82
  %.99 = getelementptr inbounds [20 x i32], [20 x i32]* @.G.array, i32 0, i32 %.98
  %.100 = load i32, i32* %.99
  ret i32 %.100 
.90:
  %.94 = load i32, i32* %.82
  %.95 = icmp sge i32 %.94, 20
  br i1 %.95, label %.88, label %.89
}
define i32 @main(){
.102:
  %.367 = alloca i32
  %.103 = alloca i32
  store i32 0, i32* %.103
  br label %.105wc 
.105wc:
  %.109 = load i32, i32* %.103
  %.110 = icmp slt i32 %.109, 20
  br i1 %.110, label %.106wloop., label %.107wn
.106wloop.:
  %.114 = load i32, i32* %.103
  %.115at0 = call i32 @_user_f(i32 0, i32 %.114)
  %.116 = icmp ne i32 %.115at0, 0
  br i1 %.116, label %.117, label %.113
.107wn:
  store i32 0, i32* %.103
  br label %.235wc 
.112:
  br label %.113 
.113:
  %.230 = load i32, i32* %.103
  %.231 = add i32 %.230, 1
  store i32 %.231, i32* %.103
  br label %.105wc 
.117:
  %.119 = load i32, i32* %.103
  %.120at1 = call i32 @_user_f(i32 1, i32 %.119)
  %.121 = icmp ne i32 %.120at1, 0
  br i1 %.121, label %.122, label %.113
.122:
  %.124 = load i32, i32* %.103
  %.125at2 = call i32 @_user_f(i32 2, i32 %.124)
  %.126 = icmp ne i32 %.125at2, 0
  br i1 %.126, label %.127, label %.113
.127:
  %.129 = load i32, i32* %.103
  %.130at3 = call i32 @_user_f(i32 3, i32 %.129)
  %.131 = icmp ne i32 %.130at3, 0
  br i1 %.131, label %.132, label %.113
.132:
  %.135 = load i32, i32* %.103
  %.136at4 = call i32 @_user_f(i32 4, i32 %.135)
  %.137 = icmp ne i32 %.136at4, 0
  br i1 %.137, label %.138, label %.113
.138:
  %.141 = load i32, i32* %.103
  %.142at5 = call i32 @_user_f(i32 5, i32 %.141)
  %.143 = icmp ne i32 %.142at5, 0
  br i1 %.143, label %.144, label %.113
.144:
  %.147 = load i32, i32* %.103
  %.148at6 = call i32 @_user_f(i32 6, i32 %.147)
  %.149 = icmp ne i32 %.148at6, 0
  br i1 %.149, label %.150, label %.113
.150:
  %.153 = load i32, i32* %.103
  %.154at7 = call i32 @_user_f(i32 7, i32 %.153)
  %.155 = icmp ne i32 %.154at7, 0
  br i1 %.155, label %.156, label %.113
.156:
  %.159 = load i32, i32* %.103
  %.160at8 = call i32 @_user_f(i32 8, i32 %.159)
  %.161 = icmp ne i32 %.160at8, 0
  br i1 %.161, label %.162, label %.113
.162:
  %.165 = load i32, i32* %.103
  %.166at9 = call i32 @_user_f(i32 9, i32 %.165)
  %.167 = icmp ne i32 %.166at9, 0
  br i1 %.167, label %.168, label %.113
.168:
  %.171 = load i32, i32* %.103
  %.172at10 = call i32 @_user_f(i32 10, i32 %.171)
  %.173 = icmp ne i32 %.172at10, 0
  br i1 %.173, label %.174, label %.113
.174:
  %.177 = load i32, i32* %.103
  %.178at11 = call i32 @_user_f(i32 11, i32 %.177)
  %.179 = icmp ne i32 %.178at11, 0
  br i1 %.179, label %.180, label %.113
.180:
  %.183 = load i32, i32* %.103
  %.184at12 = call i32 @_user_f(i32 12, i32 %.183)
  %.185 = icmp ne i32 %.184at12, 0
  br i1 %.185, label %.186, label %.113
.186:
  %.189 = load i32, i32* %.103
  %.190at13 = call i32 @_user_f(i32 13, i32 %.189)
  %.191 = icmp ne i32 %.190at13, 0
  br i1 %.191, label %.192, label %.113
.192:
  %.195 = load i32, i32* %.103
  %.196at14 = call i32 @_user_f(i32 14, i32 %.195)
  %.197 = icmp ne i32 %.196at14, 0
  br i1 %.197, label %.198, label %.113
.198:
  %.201 = load i32, i32* %.103
  %.202at15 = call i32 @_user_f(i32 15, i32 %.201)
  %.203 = icmp ne i32 %.202at15, 0
  br i1 %.203, label %.204, label %.113
.204:
  %.207 = load i32, i32* %.103
  %.208at16 = call i32 @_user_f(i32 16, i32 %.207)
  %.209 = icmp ne i32 %.208at16, 0
  br i1 %.209, label %.210, label %.113
.210:
  %.213 = load i32, i32* %.103
  %.214at17 = call i32 @_user_f(i32 17, i32 %.213)
  %.215 = icmp ne i32 %.214at17, 0
  br i1 %.215, label %.216, label %.113
.216:
  %.219 = load i32, i32* %.103
  %.220at18 = call i32 @_user_f(i32 18, i32 %.219)
  %.221 = icmp ne i32 %.220at18, 0
  br i1 %.221, label %.222, label %.113
.222:
  %.225 = load i32, i32* %.103
  %.226at19 = call i32 @_user_f(i32 19, i32 %.225)
  %.227 = icmp ne i32 %.226at19, 0
  br i1 %.227, label %.112, label %.113
.235wc:
  %.239 = load i32, i32* %.103
  %.240 = icmp slt i32 %.239, 20
  br i1 %.240, label %.236wloop., label %.237wn
.236wloop.:
  %.245 = load i32, i32* %.103
  %.246at20 = call i32 @_user_g(i32 0, i32 %.245)
  %.247 = icmp ne i32 %.246at20, 0
  br i1 %.247, label %.242, label %.244
.237wn:
  store i32 1, i32* %.103
  br label %.349wc 
.242:
  br label %.243 
.243:
  %.344 = load i32, i32* %.103
  %.345 = add i32 %.344, 1
  store i32 %.345, i32* %.103
  br label %.235wc 
.244:
  %.250 = load i32, i32* %.103
  %.251at21 = call i32 @_user_g(i32 1, i32 %.250)
  %.252 = icmp ne i32 %.251at21, 0
  br i1 %.252, label %.242, label %.249
.249:
  %.255 = load i32, i32* %.103
  %.256at22 = call i32 @_user_g(i32 2, i32 %.255)
  %.257 = icmp ne i32 %.256at22, 0
  br i1 %.257, label %.242, label %.254
.254:
  %.260 = load i32, i32* %.103
  %.261at23 = call i32 @_user_g(i32 3, i32 %.260)
  %.262 = icmp ne i32 %.261at23, 0
  br i1 %.262, label %.242, label %.259
.259:
  %.265 = load i32, i32* %.103
  %.266at24 = call i32 @_user_g(i32 4, i32 %.265)
  %.267 = icmp ne i32 %.266at24, 0
  br i1 %.267, label %.242, label %.264
.264:
  %.270 = load i32, i32* %.103
  %.271at25 = call i32 @_user_g(i32 5, i32 %.270)
  %.272 = icmp ne i32 %.271at25, 0
  br i1 %.272, label %.242, label %.269
.269:
  %.275 = load i32, i32* %.103
  %.276at26 = call i32 @_user_g(i32 6, i32 %.275)
  %.277 = icmp ne i32 %.276at26, 0
  br i1 %.277, label %.242, label %.274
.274:
  %.280 = load i32, i32* %.103
  %.281at27 = call i32 @_user_g(i32 7, i32 %.280)
  %.282 = icmp ne i32 %.281at27, 0
  br i1 %.282, label %.242, label %.279
.279:
  %.285 = load i32, i32* %.103
  %.286at28 = call i32 @_user_g(i32 8, i32 %.285)
  %.287 = icmp ne i32 %.286at28, 0
  br i1 %.287, label %.242, label %.284
.284:
  %.290 = load i32, i32* %.103
  %.291at29 = call i32 @_user_g(i32 9, i32 %.290)
  %.292 = icmp ne i32 %.291at29, 0
  br i1 %.292, label %.242, label %.289
.289:
  %.295 = load i32, i32* %.103
  %.296at30 = call i32 @_user_g(i32 10, i32 %.295)
  %.297 = icmp ne i32 %.296at30, 0
  br i1 %.297, label %.242, label %.294
.294:
  %.300 = load i32, i32* %.103
  %.301at31 = call i32 @_user_g(i32 11, i32 %.300)
  %.302 = icmp ne i32 %.301at31, 0
  br i1 %.302, label %.242, label %.299
.299:
  %.305 = load i32, i32* %.103
  %.306at32 = call i32 @_user_g(i32 12, i32 %.305)
  %.307 = icmp ne i32 %.306at32, 0
  br i1 %.307, label %.242, label %.304
.304:
  %.310 = load i32, i32* %.103
  %.311at33 = call i32 @_user_g(i32 13, i32 %.310)
  %.312 = icmp ne i32 %.311at33, 0
  br i1 %.312, label %.242, label %.309
.309:
  %.315 = load i32, i32* %.103
  %.316at34 = call i32 @_user_g(i32 14, i32 %.315)
  %.317 = icmp ne i32 %.316at34, 0
  br i1 %.317, label %.242, label %.314
.314:
  %.320 = load i32, i32* %.103
  %.321at35 = call i32 @_user_g(i32 15, i32 %.320)
  %.322 = icmp ne i32 %.321at35, 0
  br i1 %.322, label %.242, label %.319
.319:
  %.325 = load i32, i32* %.103
  %.326at36 = call i32 @_user_g(i32 16, i32 %.325)
  %.327 = icmp ne i32 %.326at36, 0
  br i1 %.327, label %.242, label %.324
.324:
  %.330 = load i32, i32* %.103
  %.331at37 = call i32 @_user_g(i32 17, i32 %.330)
  %.332 = icmp ne i32 %.331at37, 0
  br i1 %.332, label %.242, label %.329
.329:
  %.335 = load i32, i32* %.103
  %.336at38 = call i32 @_user_g(i32 18, i32 %.335)
  %.337 = icmp ne i32 %.336at38, 0
  br i1 %.337, label %.242, label %.334
.334:
  %.339 = load i32, i32* %.103
  %.340at39 = call i32 @_user_g(i32 19, i32 %.339)
  %.341 = icmp ne i32 %.340at39, 0
  br i1 %.341, label %.242, label %.243
.349wc:
  %.353 = load i32, i32* %.103
  %.354 = icmp slt i32 %.353, 20
  br i1 %.354, label %.355, label %.351wn
.350wloop.:
  %.363 = load i32, i32* %.103
  %.364 = add i32 %.363, 1
  store i32 %.364, i32* %.103
  br label %.349wc 
.351wn:
  store i32 0, i32* %.367
  %.372at41 = call i32 @_user_h(i32 0)
  %.373 = icmp ne i32 %.372at41, 0
  br i1 %.373, label %.374, label %.371
.355:
  %.357 = load i32, i32* %.103
  %.358 = sub i32 %.357, 1
  %.359 = load i32, i32* %.103
  %.360at40 = call i32 @_user_f(i32 %.358, i32 %.359)
  %.361 = icmp ne i32 %.360at40, 0
  br i1 %.361, label %.350wloop., label %.351wn
.369:
  store i32 1, i32* %.367
  br label %.370 
.370:
  %.388 = load i32, i32* @.G.sum
  %.389 = load i32, i32* %.367
  %.390 = add i32 %.388, %.389
  store i32 0, i32* %.367
  %.395at45 = call i32 @_user_h(i32 4)
  %.396 = icmp eq i32 %.395at45, 0
  br i1 %.396, label %.392, label %.394
.371:
  %.380at43 = call i32 @_user_h(i32 2)
  %.381 = icmp eq i32 %.380at43, 0
  br i1 %.381, label %.369, label %.379
.374:
  %.376at42 = call i32 @_user_h(i32 1)
  %.377 = icmp ne i32 %.376at42, 0
  br i1 %.377, label %.369, label %.371
.379:
  %.383at44 = call i32 @_user_h(i32 3)
  %.384 = icmp ne i32 %.383at44, 0
  br i1 %.384, label %.369, label %.370
.392:
  store i32 1, i32* %.367
  br label %.393 
.393:
  %.415 = load i32, i32* @.G.sum
  %.416 = load i32, i32* %.367
  %.417 = mul i32 %.415, %.416
  store i32 0, i32* %.367
  %.422at50 = call i32 @_user_h(i32 9)
  %.423 = icmp ne i32 %.422at50, 0
  br i1 %.423, label %.424, label %.421
.394:
  %.399at46 = call i32 @_user_h(i32 5)
  %.400 = icmp ne i32 %.399at46, 0
  br i1 %.400, label %.401, label %.398
.398:
  %.410at49 = call i32 @_user_h(i32 8)
  %.411 = icmp eq i32 %.410at49, 0
  br i1 %.411, label %.392, label %.393
.401:
  %.403at47 = call i32 @_user_h(i32 6)
  %.404 = icmp eq i32 %.403at47, 0
  br i1 %.404, label %.405, label %.398
.405:
  %.407at48 = call i32 @_user_h(i32 7)
  %.408 = icmp ne i32 %.407at48, 0
  br i1 %.408, label %.392, label %.398
.419:
  store i32 1, i32* %.367
  br label %.420 
.420:
  %.450 = load i32, i32* @.G.sum
  %.451 = load i32, i32* %.367
  %.452 = sub i32 %.450, %.451
  store i32 0, i32* %.367
  %.457at57 = call i32 @_user_h(i32 0)
  %.458 = icmp ne i32 %.457at57, 0
  br i1 %.458, label %.459, label %.456
.421:
  %.430at52 = call i32 @_user_h(i32 11)
  %.431 = icmp eq i32 %.430at52, 0
  br i1 %.431, label %.419, label %.429
.424:
  %.426at51 = call i32 @_user_h(i32 10)
  %.427 = icmp eq i32 %.426at51, 0
  br i1 %.427, label %.419, label %.421
.429:
  %.434at53 = call i32 @_user_h(i32 12)
  %.435 = icmp eq i32 %.434at53, 0
  br i1 %.435, label %.419, label %.433
.433:
  %.438at54 = call i32 @_user_h(i32 13)
  %.439 = icmp eq i32 %.438at54, 0
  br i1 %.439, label %.419, label %.437
.437:
  %.441at55 = call i32 @_user_h(i32 14)
  %.442 = icmp ne i32 %.441at55, 0
  br i1 %.442, label %.443, label %.420
.443:
  %.445at56 = call i32 @_user_h(i32 15)
  %.446 = icmp ne i32 %.445at56, 0
  br i1 %.446, label %.419, label %.420
.454:
  store i32 1, i32* %.367
  br label %.455 
.455:
  %.489 = load i32, i32* @.G.sum
  %.490 = load i32, i32* %.367
  %.491 = add i32 %.489, %.490
  call void @putint(i32 %.491)
  ret i32 0 
.456:
  %.473at61 = call i32 @_user_h(i32 5)
  %.474 = icmp ne i32 %.473at61, 0
  br i1 %.474, label %.454, label %.472
.459:
  %.461at58 = call i32 @_user_h(i32 2)
  %.462 = icmp ne i32 %.461at58, 0
  br i1 %.462, label %.463, label %.456
.463:
  %.465at59 = call i32 @_user_h(i32 3)
  %.466 = icmp eq i32 %.465at59, 0
  br i1 %.466, label %.467, label %.456
.467:
  %.469at60 = call i32 @_user_h(i32 4)
  %.470 = icmp eq i32 %.469at60, 0
  br i1 %.470, label %.454, label %.456
.472:
  %.477at62 = call i32 @_user_h(i32 6)
  %.478 = icmp ne i32 %.477at62, 0
  br i1 %.478, label %.479, label %.476
.476:
  %.484at64 = call i32 @_user_h(i32 8)
  %.485 = icmp ne i32 %.484at64, 0
  br i1 %.485, label %.454, label %.455
.479:
  %.481at63 = call i32 @_user_h(i32 7)
  %.482 = icmp eq i32 %.481at63, 0
  br i1 %.482, label %.454, label %.476
}
