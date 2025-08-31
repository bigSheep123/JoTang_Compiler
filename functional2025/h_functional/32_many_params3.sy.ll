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
define i32 @_user_func(i32 %.1, i32 %.4, i32 %.7, i32 %.10, i32 %.13, i32 %.16, i32 %.19, i32 %.22, i32 %.25, i32 %.28, i32 %.31, i32 %.34, i32 %.37, i32 %.40, i32 %.43, i32 %.46, i32 %.49, i32 %.52, i32 %.55, i32 %.58, i32 %.61, i32 %.64, i32 %.67, i32 %.70, i32 %.73, i32 %.76, i32 %.79, i32 %.82, i32 %.85, i32 %.88, i32 %.91, i32 %.94, i32 %.97, i32 %.100, i32 %.103, i32 %.106, i32 %.109, i32 %.112, i32 %.115, i32 %.118, i32 %.121, i32 %.124, i32 %.127, i32 %.130, i32 %.133, i32 %.136, i32 %.139, i32 %.142, i32 %.145, i32 %.148, i32 %.151, i32 %.154, i32 %.157, i32 %.160, i32 %.163, i32 %.166, i32 %.169, i32 %.172, i32 %.175, i32 %.178, i32 %.181, i32 %.184, i32 %.187, i32 %.190, i32 %.193, i32 %.196, i32 %.199, i32 %.202, i32 %.205, i32 %.208, i32 %.211, i32 %.214, i32 %.217, i32 %.220, i32 %.223, i32 %.226, i32 %.229, i32 %.232, i32 %.235, i32 %.238, i32 %.241, i32 %.244, i32 %.247, i32 %.250, i32 %.253, i32 %.256, i32 %.259, i32 %.262, i32 %.265, i32 %.268, i32 %.271, i32 %.274, i32 %.277, i32 %.280, i32 %.283, i32 %.286, i32 %.289, i32 %.292, i32 %.295, i32 %.298, i32 %.301, i32 %.304, i32 %.307, i32 %.310, i32 %.313, i32 %.316, i32 %.319, i32 %.322, i32 %.325, i32 %.328, i32 %.331, i32 %.334, i32 %.337, i32 %.340, i32 %.343, i32 %.346, i32 %.349, i32 %.352, i32 %.355, i32 %.358, i32 %.361, i32 %.364, i32 %.367, i32 %.370, i32 %.373, i32 %.376, i32 %.379, i32 %.382, i32 %.385, i32 %.388, i32 %.391, i32 %.394, i32 %.397, i32 %.400, i32 %.403, i32 %.406, i32 %.409, i32 %.412, i32 %.415, i32 %.418, i32 %.421, i32 %.424, i32 %.427, i32 %.430, i32 %.433, i32 %.436, i32 %.439, i32 %.442, i32 %.445, i32 %.448, i32 %.451, i32 %.454, i32 %.457, i32 %.460, i32 %.463, i32 %.466, i32 %.469, i32 %.472, i32 %.475, i32 %.478, i32 %.481, i32 %.484, i32 %.487, i32 %.490, i32 %.493, i32 %.496, i32 %.499, i32 %.502, i32 %.505, i32 %.508, i32 %.511, i32 %.514, i32 %.517, i32 %.520, i32 %.523, i32 %.526, i32 %.529, i32 %.532, i32 %.535, i32 %.538, i32 %.541, i32 %.544, i32 %.547, i32 %.550, i32 %.553, i32 %.556, i32 %.559, i32 %.562, i32 %.565, i32 %.568, i32 %.571, i32 %.574, i32 %.577, i32 %.580, i32 %.583, i32 %.586, i32 %.589, i32 %.592, i32 %.595, i32 %.598, i32 %.601, i32 %.604, i32 %.607, i32 %.610, i32 %.613, i32 %.616, i32 %.619, i32 %.622, i32 %.625, i32 %.628, i32 %.631, i32 %.634, i32 %.637, i32 %.640, i32 %.643, i32 %.646, i32 %.649, i32 %.652, i32 %.655, i32 %.658, i32 %.661, i32 %.664, i32 %.667, i32 %.670, i32 %.673, i32 %.676, i32 %.679, i32 %.682, i32 %.685, i32 %.688, i32 %.691, i32 %.694, i32 %.697, i32 %.700, i32 %.703, i32 %.706, i32 %.709, i32 %.712, i32 %.715, i32 %.718, i32 %.721, i32 %.724, i32 %.727, i32 %.730, i32 %.733, i32 %.736, i32 %.739, i32 %.742, i32 %.745, i32 %.748, i32 %.751, i32 %.754, i32 %.757, i32 %.760, i32 %.763, i32 %.766, i32 %.769, i32 %.772, i32 %.775, i32 %.778, i32 %.781, i32 %.784, i32 %.787, i32 %.790, i32 %.793, i32 %.796, i32 %.799, i32 %.802, i32 %.805, i32 %.808, i32 %.811, i32 %.814, i32 %.817, i32 %.820, i32 %.823, i32 %.826, i32 %.829, i32 %.832, i32 %.835, i32 %.838, i32 %.841, i32 %.844, i32 %.847, i32 %.850, i32 %.853, i32 %.856, i32 %.859, i32 %.862, i32 %.865, i32 %.868, i32 %.871, i32 %.874, i32 %.877, i32 %.880, i32 %.883, i32 %.886, i32 %.889, i32 %.892, i32 %.895, i32 %.898, i32 %.901, i32 %.904, i32 %.907, i32 %.910, i32 %.913, i32 %.916, i32 %.919, i32 %.922, i32 %.925, i32 %.928, i32 %.931, i32 %.934, i32 %.937, i32 %.940, i32 %.943, i32 %.946, i32 %.949, i32 %.952, i32 %.955, i32 %.958, i32 %.961, i32 %.964, i32 %.967, i32 %.970, i32 %.973, i32 %.976, i32 %.979, i32 %.982, i32 %.985, i32 %.988, i32 %.991, i32 %.994, i32 %.997, i32 %.1000, i32 %.1003, i32 %.1006, i32 %.1009, i32 %.1012, i32 %.1015, i32 %.1018, i32 %.1021, i32 %.1024, i32 %.1027, i32 %.1030, i32 %.1033, i32 %.1036, i32 %.1039, i32 %.1042, i32 %.1045, i32 %.1048, i32 %.1051, i32 %.1054, i32 %.1057, i32 %.1060, i32 %.1063, i32 %.1066, i32 %.1069, i32 %.1072, i32 %.1075, i32 %.1078, i32 %.1081, i32 %.1084, i32 %.1087, i32 %.1090, i32 %.1093, i32 %.1096, i32 %.1099, i32 %.1102, i32 %.1105, i32 %.1108, i32 %.1111, i32 %.1114, i32 %.1117, i32 %.1120, i32 %.1123, i32 %.1126, i32 %.1129, i32 %.1132, i32 %.1135, i32 %.1138, i32 %.1141, i32 %.1144, i32 %.1147, i32 %.1150, i32 %.1153, i32 %.1156, i32 %.1159, i32 %.1162, i32 %.1165, i32 %.1168, i32 %.1171, i32 %.1174, i32 %.1177, i32 %.1180, i32 %.1183, i32 %.1186, i32 %.1189, i32 %.1192, i32 %.1195, i32 %.1198, i32 %.1201, i32 %.1204, i32 %.1207, i32 %.1210, i32 %.1213, i32 %.1216, i32 %.1219, i32 %.1222, i32 %.1225, i32 %.1228, i32 %.1231, i32 %.1234, i32 %.1237, i32 %.1240, i32 %.1243, i32 %.1246, i32 %.1249, i32 %.1252, i32 %.1255, i32 %.1258, i32 %.1261, i32 %.1264, i32 %.1267, i32 %.1270, i32 %.1273, i32 %.1276, i32 %.1279, i32 %.1282, i32 %.1285, i32 %.1288, i32 %.1291, i32 %.1294, i32 %.1297, i32 %.1300, i32 %.1303, i32 %.1306, i32 %.1309, i32 %.1312, i32 %.1315, i32 %.1318, i32 %.1321, i32 %.1324, i32 %.1327, i32 %.1330, i32 %.1333, i32 %.1336, i32 %.1339, i32 %.1342, i32 %.1345, i32 %.1348, i32 %.1351, i32 %.1354, i32 %.1357, i32 %.1360, i32 %.1363, i32 %.1366, i32 %.1369, i32 %.1372, i32 %.1375, i32 %.1378, i32 %.1381, i32 %.1384, i32 %.1387, i32 %.1390, i32 %.1393, i32 %.1396, i32 %.1399, i32 %.1402, i32 %.1405, i32 %.1408, i32 %.1411, i32 %.1414, i32 %.1417, i32 %.1420, i32 %.1423, i32 %.1426, i32 %.1429, i32 %.1432, i32 %.1435, i32 %.1438, i32 %.1441, i32 %.1444, i32 %.1447, i32 %.1450, i32 %.1453, i32 %.1456, i32 %.1459, i32 %.1462, i32 %.1465, i32 %.1468, i32 %.1471, i32 %.1474, i32 %.1477, i32 %.1480, i32 %.1483, i32 %.1486, i32 %.1489, i32 %.1492, i32 %.1495, i32 %.1498, i32 %.1501, i32 %.1504, i32 %.1507, i32 %.1510, i32 %.1513, i32 %.1516, i32 %.1519, i32 %.1522, i32 %.1525, i32 %.1528, i32 %.1531, i32 %.1534, i32 %.1537, i32 %.1540, i32 %.1543, i32 %.1546, i32 %.1549, i32 %.1552, i32 %.1555, i32 %.1558, i32 %.1561, i32 %.1564, i32 %.1567, i32 %.1570, i32 %.1573, i32 %.1576, i32 %.1579, i32 %.1582, i32 %.1585, i32 %.1588, i32 %.1591, i32 %.1594, i32 %.1597, i32 %.1600, i32 %.1603, i32 %.1606, i32 %.1609, i32 %.1612, i32 %.1615, i32 %.1618, i32 %.1621, i32 %.1624, i32 %.1627, i32 %.1630, i32 %.1633, i32 %.1636, i32 %.1639, i32 %.1642, i32 %.1645, i32 %.1648, i32 %.1651, i32 %.1654, i32 %.1657, i32 %.1660, i32 %.1663, i32 %.1666, i32 %.1669, i32 %.1672, i32 %.1675, i32 %.1678, i32 %.1681, i32 %.1684, i32 %.1687, i32 %.1690, i32 %.1693, i32 %.1696, i32 %.1699, i32 %.1702, i32 %.1705, i32 %.1708, i32 %.1711, i32 %.1714, i32 %.1717, i32 %.1720, i32 %.1723, i32 %.1726, i32 %.1729, i32 %.1732, i32 %.1735, i32 %.1738, i32 %.1741, i32 %.1744, i32 %.1747, i32 %.1750, i32 %.1753, i32 %.1756, i32 %.1759, i32 %.1762, i32 %.1765, i32 %.1768, i32 %.1771, i32 %.1774, i32 %.1777, i32 %.1780, i32 %.1783, i32 %.1786, i32 %.1789, i32 %.1792, i32 %.1795, i32 %.1798, i32 %.1801, i32 %.1804, i32 %.1807, i32 %.1810, i32 %.1813, i32 %.1816, i32 %.1819, i32 %.1822, i32 %.1825, i32 %.1828, i32 %.1831, i32 %.1834, i32 %.1837, i32 %.1840, i32 %.1843, i32 %.1846, i32 %.1849, i32 %.1852, i32 %.1855, i32 %.1858, i32 %.1861, i32 %.1864, i32 %.1867, i32 %.1870, i32 %.1873, i32 %.1876, i32 %.1879, i32 %.1882, i32 %.1885, i32 %.1888, i32 %.1891, i32 %.1894, i32 %.1897, i32 %.1900, i32 %.1903, i32 %.1906, i32 %.1909, i32 %.1912, i32 %.1915, i32 %.1918, i32 %.1921, i32 %.1924, i32 %.1927, i32 %.1930, i32 %.1933, i32 %.1936, i32 %.1939, i32 %.1942, i32 %.1945, i32 %.1948, i32 %.1951, i32 %.1954, i32 %.1957, i32 %.1960, i32 %.1963, i32 %.1966, i32 %.1969, i32 %.1972, i32 %.1975, i32 %.1978, i32 %.1981, i32 %.1984, i32 %.1987, i32 %.1990, i32 %.1993, i32 %.1996, i32 %.1999, i32 %.2002, i32 %.2005, i32 %.2008, i32 %.2011, i32 %.2014, i32 %.2017, i32 %.2020, i32 %.2023, i32 %.2026){
.0:
  %.2031 = mul i32 %.1975, %.1867
  %.2033 = mul i32 %.2031, %.1651
  %.2035 = mul i32 %.2033, %.1984
  %.2037 = mul i32 %.2035, %.265
  %.2039 = add i32 %.2037, %.1585
  %.2042 = mul i32 %.1414, %.148
  %.2044 = mul i32 %.2042, %.1300
  %.2046 = mul i32 %.2044, %.811
  %.2048 = mul i32 %.2046, %.1279
  %.2050 = mul i32 %.2048, %.760
  %.2052 = mul i32 %.2050, %.1822
  %.2053 = add i32 %.2039, %.2052
  %.2056 = mul i32 %.1750, %.1735
  %.2057 = add i32 %.2053, %.2056
  %.2059 = add i32 %.2057, %.784
  %.2062 = mul i32 %.649, %.1666
  %.2064 = mul i32 %.2062, %.1093
  %.2065 = add i32 %.2059, %.2064
  %.2068 = mul i32 %.1174, %.841
  %.2069 = add i32 %.2065, %.2068
  %.2072 = mul i32 %.325, %.454
  %.2073 = add i32 %.2069, %.2072
  %.2075 = add i32 %.2073, %.547
  %.2078 = mul i32 %.115, %.766
  %.2080 = mul i32 %.2078, %.781
  %.2082 = mul i32 %.2080, %.988
  %.2083 = add i32 %.2075, %.2082
  %.2085 = add i32 %.2083, %.532
  %.2087 = add i32 %.2085, %.1270
  %.2089 = add i32 %.2087, %.181
  %.2092 = mul i32 %.76, %.886
  %.2094 = mul i32 %.2092, %.637
  %.2095 = add i32 %.2089, %.2094
  %.2098 = mul i32 %.1246, %.1969
  %.2099 = add i32 %.2095, %.2098
  %.2102 = mul i32 %.757, %.1744
  %.2104 = mul i32 %.2102, %.658
  %.2106 = mul i32 %.2104, %.460
  %.2108 = mul i32 %.2106, %.1693
  %.2109 = add i32 %.2099, %.2108
  %.2111 = add i32 %.2109, %.322
  %.2113 = add i32 %.2111, %.1495
  %.2115 = add i32 %.2113, %.793
  %.2118 = mul i32 %.1453, %.595
  %.2120 = mul i32 %.2118, %.235
  %.2121 = add i32 %.2115, %.2120
  %.2124 = mul i32 %.1642, %.514
  %.2125 = add i32 %.2121, %.2124
  %.2128 = mul i32 %.4, %.850
  %.2130 = mul i32 %.2128, %.865
  %.2131 = add i32 %.2125, %.2130
  %.2134 = mul i32 %.1210, %.13
  %.2135 = add i32 %.2131, %.2134
  %.2138 = mul i32 %.211, %.1132
  %.2139 = add i32 %.2135, %.2138
  %.2141 = add i32 %.2139, %.1807
  %.2143 = add i32 %.2141, %.1975
  %.2145 = add i32 %.2143, %.952
  %.2148 = mul i32 %.1411, %.31
  %.2150 = mul i32 %.2148, %.823
  %.2151 = add i32 %.2145, %.2150
  %.2154 = mul i32 %.616, %.70
  %.2155 = add i32 %.2151, %.2154
  %.2158 = mul i32 %.475, %.193
  %.2159 = add i32 %.2155, %.2158
  %.2162 = mul i32 %.130, %.424
  %.2163 = add i32 %.2159, %.2162
  %.2165 = add i32 %.2163, %.1594
  %.2167 = add i32 %.2165, %.346
  %.2169 = add i32 %.2167, %.1072
  %.2172 = mul i32 %.1540, %.334
  %.2173 = add i32 %.2169, %.2172
  %.2175 = add i32 %.2173, %.517
  %.2178 = mul i32 %.1606, %.1588
  %.2180 = mul i32 %.2178, %.856
  %.2181 = add i32 %.2175, %.2180
  %.2183 = add i32 %.2181, %.1900
  %.2186 = mul i32 %.22, %.268
  %.2188 = mul i32 %.2186, %.1870
  %.2190 = mul i32 %.2188, %.658
  %.2192 = mul i32 %.2190, %.817
  %.2194 = mul i32 %.2192, %.1294
  %.2196 = mul i32 %.2194, %.1942
  %.2197 = add i32 %.2183, %.2196
  %.2199 = add i32 %.2197, %.865
  %.2202 = mul i32 %.1339, %.1252
  %.2203 = add i32 %.2199, %.2202
  %.2205 = add i32 %.2203, %.1048
  %.2207 = add i32 %.2205, %.1132
  %.2209 = add i32 %.2207, %.517
  %.2211 = add i32 %.2209, %.2005
  %.2214 = mul i32 %.157, %.880
  %.2215 = add i32 %.2211, %.2214
  %.2217 = add i32 %.2215, %.1327
  %.2220 = mul i32 %.277, %.1138
  %.2221 = add i32 %.2217, %.2220
  %.2224 = mul i32 %.190, %.370
  %.2226 = mul i32 %.2224, %.10
  %.2227 = add i32 %.2221, %.2226
  %.2229 = add i32 %.2227, %.784
  %.2231 = add i32 %.2229, %.1489
  %.2234 = mul i32 %.82, %.1135
  %.2235 = add i32 %.2231, %.2234
  %.2237 = add i32 %.2235, %.955
  %.2240 = mul i32 %.1771, %.1822
  %.2241 = add i32 %.2237, %.2240
  %.2244 = mul i32 %.1351, %.1555
  %.2246 = mul i32 %.2244, %.997
  %.2247 = add i32 %.2241, %.2246
  %.2249 = add i32 %.2247, %.229
  %.2252 = mul i32 %.280, %.1753
  %.2254 = mul i32 %.2252, %.1774
  %.2255 = add i32 %.2249, %.2254
  %.2257 = add i32 %.2255, %.301
  %.2259 = add i32 %.2257, %.1234
  %.2261 = add i32 %.2259, %.682
  %.2263 = add i32 %.2261, %.697
  %.2265 = add i32 %.2263, %.682
  %.2268 = mul i32 %.1951, %.613
  %.2269 = add i32 %.2265, %.2268
  %.2272 = mul i32 %.850, %.1177
  %.2274 = mul i32 %.2272, %.2005
  %.2276 = mul i32 %.2274, %.604
  %.2278 = mul i32 %.2276, %.1468
  %.2280 = mul i32 %.2278, %.775
  %.2281 = add i32 %.2269, %.2280
  %.2283 = add i32 %.2281, %.499
  %.2286 = mul i32 %.205, %.1909
  %.2288 = mul i32 %.2286, %.1714
  %.2290 = mul i32 %.2288, %.247
  %.2292 = mul i32 %.2290, %.487
  %.2293 = add i32 %.2283, %.2292
  %.2296 = mul i32 %.397, %.265
  %.2298 = mul i32 %.2296, %.1876
  %.2300 = mul i32 %.2298, %.1753
  %.2301 = add i32 %.2293, %.2300
  %.2303 = add i32 %.2301, %.2011
  %.2306 = mul i32 %.1504, %.118
  %.2308 = mul i32 %.2306, %.697
  %.2310 = mul i32 %.2308, %.277
  %.2311 = add i32 %.2303, %.2310
  %.2313 = add i32 %.2311, %.34
  %.2316 = mul i32 %.1666, %.382
  %.2318 = mul i32 %.2316, %.259
  %.2320 = mul i32 %.2318, %.706
  %.2322 = mul i32 %.2320, %.1459
  %.2324 = mul i32 %.2322, %.88
  %.2326 = mul i32 %.2324, %.820
  %.2327 = add i32 %.2313, %.2326
  %.2329 = add i32 %.2327, %.1948
  %.2331 = add i32 %.2329, %.847
  %.2334 = mul i32 %.1546, %.1579
  %.2335 = add i32 %.2331, %.2334
  %.2338 = mul i32 %.640, %.1786
  %.2340 = mul i32 %.2338, %.430
  %.2342 = mul i32 %.2340, %.1594
  %.2344 = mul i32 %.2342, %.1540
  %.2346 = mul i32 %.2344, %.436
  %.2348 = mul i32 %.2346, %.586
  %.2350 = mul i32 %.2348, %.298
  %.2352 = mul i32 %.2350, %.2014
  %.2354 = mul i32 %.2352, %.34
  %.2356 = mul i32 %.2354, %.1768
  %.2357 = add i32 %.2335, %.2356
  %.2360 = mul i32 %.391, %.1702
  %.2361 = add i32 %.2357, %.2360
  %.2363 = add i32 %.2361, %.913
  %.2366 = mul i32 %.625, %.670
  %.2368 = mul i32 %.2366, %.1624
  %.2369 = add i32 %.2363, %.2368
  %.2371 = add i32 %.2369, %.883
  %.2373 = add i32 %.2371, %.2005
  %.2375 = add i32 %.2373, %.349
  %.2378 = mul i32 %.1171, %.1966
  %.2379 = add i32 %.2375, %.2378
  %.2381 = add i32 %.2379, %.1954
  %.2383 = add i32 %.2381, %.136
  %.2385 = add i32 %.2383, %.10
  %.2387 = add i32 %.2385, %.748
  %.2389 = add i32 %.2387, %.1618
  %.2391 = add i32 %.2389, %.1519
  %.2393 = add i32 %.2391, %.370
  %.2395 = add i32 %.2393, %.214
  %.2397 = add i32 %.2395, %.553
  %.2400 = mul i32 %.352, %.556
  %.2402 = mul i32 %.2400, %.562
  %.2404 = mul i32 %.2402, %.208
  %.2406 = mul i32 %.2404, %.895
  %.2407 = add i32 %.2397, %.2406
  %.2410 = mul i32 %.1216, %.1744
  %.2412 = mul i32 %.2410, %.1024
  %.2414 = mul i32 %.2412, %.781
  %.2416 = mul i32 %.2414, %.1483
  %.2417 = add i32 %.2407, %.2416
  %.2420 = mul i32 %.1387, %.742
  %.2421 = add i32 %.2417, %.2420
  %.2423 = add i32 %.2421, %.352
  %.2426 = mul i32 %.475, %.706
  %.2427 = add i32 %.2423, %.2426
  %.2430 = mul i32 %.799, %.94
  %.2431 = add i32 %.2427, %.2430
  %.2433 = add i32 %.2431, %.1438
  %.2435 = add i32 %.2433, %.1222
  %.2437 = add i32 %.2435, %.1567
  %.2439 = add i32 %.2437, %.1936
  %.2442 = mul i32 %.1648, %.1492
  %.2444 = mul i32 %.2442, %.1813
  %.2445 = add i32 %.2439, %.2444
  %.2448 = mul i32 %.202, %.1354
  %.2449 = add i32 %.2445, %.2448
  %.2451 = add i32 %.2449, %.1309
  %.2454 = mul i32 %.1705, %.43
  %.2456 = mul i32 %.2454, %.1168
  %.2457 = add i32 %.2451, %.2456
  %.2459 = add i32 %.2457, %.1966
  %.2461 = add i32 %.2459, %.1276
  %.2464 = mul i32 %.814, %.1462
  %.2466 = mul i32 %.2464, %.1132
  %.2468 = mul i32 %.2466, %.1297
  %.2469 = add i32 %.2461, %.2468
  %.2472 = mul i32 %.1000, %.373
  %.2474 = mul i32 %.2472, %.73
  %.2476 = mul i32 %.2474, %.646
  %.2478 = mul i32 %.2476, %.1483
  %.2480 = mul i32 %.2478, %.1519
  %.2481 = add i32 %.2469, %.2480
  %.2483 = add i32 %.2481, %.1660
  %.2485 = add i32 %.2483, %.1402
  %.2488 = mul i32 %.1912, %.124
  %.2489 = add i32 %.2485, %.2488
  %.2491 = add i32 %.2489, %.1222
  %.2494 = mul i32 %.1852, %.925
  %.2495 = add i32 %.2491, %.2494
  %.2498 = mul i32 %.1603, %.1984
  %.2500 = mul i32 %.2498, %.1390
  %.2501 = add i32 %.2495, %.2500
  %.2504 = mul i32 %.466, %.1402
  %.2506 = mul i32 %.2504, %.466
  %.2507 = add i32 %.2501, %.2506
  %.2510 = mul i32 %.952, %.1432
  %.2511 = add i32 %.2507, %.2510
  %.2514 = mul i32 %.1870, %.1930
  %.2515 = add i32 %.2511, %.2514
  %.2517 = add i32 %.2515, %.1276
  %.2520 = mul i32 %.805, %.484
  %.2521 = add i32 %.2517, %.2520
  %.2523 = add i32 %.2521, %.1027
  %.2525 = add i32 %.2523, %.478
  %.2527 = add i32 %.2525, %.1714
  %.2529 = add i32 %.2527, %.1114
  %.2531 = add i32 %.2529, %.568
  %.2533 = add i32 %.2531, %.406
  %.2536 = mul i32 %.319, %.1825
  %.2537 = add i32 %.2533, %.2536
  %.2539 = add i32 %.2537, %.550
  %.2541 = add i32 %.2539, %.1183
  %.2544 = mul i32 %.1012, %.1942
  %.2546 = mul i32 %.2544, %.67
  %.2547 = add i32 %.2541, %.2546
  %.2549 = add i32 %.2547, %.652
  %.2551 = add i32 %.2549, %.274
  %.2554 = mul i32 %.1978, %.1051
  %.2555 = add i32 %.2551, %.2554
  %.2558 = mul i32 %.730, %.856
  %.2560 = mul i32 %.2558, %.631
  %.2562 = mul i32 %.2560, %.1423
  %.2563 = add i32 %.2555, %.2562
  %.2566 = mul i32 %.1573, %.1915
  %.2567 = add i32 %.2563, %.2566
  %.2569 = add i32 %.2567, %.871
  %.2572 = mul i32 %.409, %.838
  %.2574 = mul i32 %.2572, %.130
  %.2576 = mul i32 %.2574, %.1942
  %.2577 = add i32 %.2569, %.2576
  %.2580 = mul i32 %.1447, %.1321
  %.2581 = add i32 %.2577, %.2580
  %.2583 = add i32 %.2581, %.88
  %.2585 = add i32 %.2583, %.235
  %.2587 = add i32 %.2585, %.673
  %.2589 = add i32 %.2587, %.511
  %.2591 = add i32 %.2589, %.1621
  %.2594 = mul i32 %.730, %.871
  %.2595 = add i32 %.2591, %.2594
  %.2597 = add i32 %.2595, %.1795
  %.2600 = mul i32 %.1693, %.1303
  %.2601 = add i32 %.2597, %.2600
  %.2603 = add i32 %.2601, %.985
  %.2605 = add i32 %.2603, %.1690
  %.2607 = add i32 %.2605, %.1561
  %.2610 = mul i32 %.616, %.1168
  %.2612 = mul i32 %.2610, %.1438
  %.2614 = mul i32 %.2612, %.184
  %.2616 = mul i32 %.2614, %.565
  %.2617 = add i32 %.2607, %.2616
  %.2620 = mul i32 %.1336, %.154
  %.2621 = add i32 %.2617, %.2620
  %.2624 = mul i32 %.1669, %.631
  %.2625 = add i32 %.2621, %.2624
  %.2627 = add i32 %.2625, %.628
  %.2630 = mul i32 %.418, %.61
  %.2632 = mul i32 %.2630, %.271
  %.2633 = add i32 %.2627, %.2632
  %.2636 = mul i32 %.1651, %.835
  %.2637 = add i32 %.2633, %.2636
  %.2640 = mul i32 %.1204, %.1117
  %.2642 = mul i32 %.2640, %.790
  %.2644 = mul i32 %.2642, %.685
  %.2645 = add i32 %.2637, %.2644
  %.2648 = mul i32 %.91, %.1378
  %.2649 = add i32 %.2645, %.2648
  %.2652 = mul i32 %.1639, %.553
  %.2654 = mul i32 %.2652, %.1516
  %.2655 = add i32 %.2649, %.2654
  %.2657 = add i32 %.2655, %.1753
  %.2659 = add i32 %.2657, %.1375
  %.2661 = add i32 %.2659, %.1096
  %.2664 = mul i32 %.1189, %.595
  %.2665 = add i32 %.2661, %.2664
  %.2668 = mul i32 %.1183, %.1783
  %.2670 = mul i32 %.2668, %.337
  %.2672 = mul i32 %.2670, %.1366
  %.2673 = add i32 %.2665, %.2672
  %.2675 = add i32 %.2673, %.1903
  %.2678 = mul i32 %.1099, %.1426
  %.2680 = mul i32 %.2678, %.643
  %.2682 = mul i32 %.2680, %.1621
  %.2683 = add i32 %.2675, %.2682
  %.2686 = mul i32 %.175, %.1699
  %.2688 = mul i32 %.2686, %.1912
  %.2689 = add i32 %.2683, %.2688
  %.2692 = mul i32 %.1822, %.1738
  %.2693 = add i32 %.2689, %.2692
  %.2695 = add i32 %.2693, %.1810
  %.2697 = add i32 %.2695, %.1759
  %.2699 = add i32 %.2697, %.1066
  %.2702 = mul i32 %.1654, %.1405
  %.2704 = mul i32 %.2702, %.1891
  %.2705 = add i32 %.2699, %.2704
  %.2707 = add i32 %.2705, %.1588
  %.2709 = add i32 %.2707, %.1408
  %.2711 = add i32 %.2709, %.292
  %.2713 = add i32 %.2711, %.1210
  %.2715 = add i32 %.2713, %.1585
  %.2718 = mul i32 %.1021, %.142
  %.2719 = add i32 %.2715, %.2718
  %.2722 = mul i32 %.1249, %.1963
  %.2724 = mul i32 %.2722, %.820
  %.2725 = add i32 %.2719, %.2724
  %.2728 = mul i32 %.2008, %.235
  %.2729 = add i32 %.2725, %.2728
  %.2732 = mul i32 %.847, %.1840
  %.2733 = add i32 %.2729, %.2732
  %.2736 = mul i32 %.619, %.601
  %.2737 = add i32 %.2733, %.2736
  %.2739 = add i32 %.2737, %.1174
  %.2742 = mul i32 %.1162, %.1636
  %.2744 = mul i32 %.2742, %.1183
  %.2745 = add i32 %.2739, %.2744
  %.2748 = mul i32 %.91, %.661
  %.2749 = add i32 %.2745, %.2748
  %.2751 = add i32 %.2749, %.1423
  %.2754 = mul i32 %.1519, %.661
  %.2755 = add i32 %.2751, %.2754
  %.2758 = mul i32 %.490, %.763
  %.2760 = mul i32 %.2758, %.2020
  %.2761 = add i32 %.2755, %.2760
  %.2763 = add i32 %.2761, %.397
  %.2766 = mul i32 %.1210, %.337
  %.2768 = mul i32 %.2766, %.1729
  %.2769 = add i32 %.2763, %.2768
  %.2772 = mul i32 %.13, %.1339
  %.2773 = add i32 %.2769, %.2772
  %.2776 = mul i32 %.1762, %.28
  %.2777 = add i32 %.2773, %.2776
  %.2780 = mul i32 %.1177, %.817
  %.2782 = mul i32 %.2780, %.1207
  %.2783 = add i32 %.2777, %.2782
  %.2786 = mul i32 %.553, %.136
  %.2788 = mul i32 %.2786, %.46
  %.2790 = mul i32 %.2788, %.655
  %.2792 = mul i32 %.2790, %.37
  %.2793 = add i32 %.2783, %.2792
  %.2795 = add i32 %.2793, %.1933
  %.2797 = add i32 %.2795, %.1009
  %.2800 = mul i32 %.1738, %.22
  %.2802 = mul i32 %.2800, %.1540
  %.2804 = mul i32 %.2802, %.433
  %.2805 = add i32 %.2797, %.2804
  %.2808 = mul i32 %.1396, %.1495
  %.2810 = mul i32 %.2808, %.34
  %.2811 = add i32 %.2805, %.2810
  %.2813 = add i32 %.2811, %.1531
  %.2815 = add i32 %.2813, %.418
  %.2818 = mul i32 %.250, %.1537
  %.2819 = add i32 %.2815, %.2818
  %.2821 = add i32 %.2819, %.736
  %.2823 = add i32 %.2821, %.928
  %.2825 = add i32 %.2823, %.1156
  %.2827 = add i32 %.2825, %.664
  ret i32 %.2827 
}
define i32 @main(){
.2829:
  %.2840at0 = call i32 @_user_func(i32 0, i32 1, i32 1, i32 8, i32 9, i32 5, i32 2, i32 0, i32 6, i32 2, i32 4, i32 7, i32 1, i32 6, i32 9, i32 3, i32 3, i32 5, i32 0, i32 8, i32 9, i32 3, i32 4, i32 5, i32 9, i32 0, i32 8, i32 9, i32 5, i32 5, i32 4, i32 1, i32 4, i32 3, i32 5, i32 9, i32 7, i32 6, i32 1, i32 7, i32 5, i32 4, i32 0, i32 7, i32 5, i32 5, i32 6, i32 4, i32 9, i32 6, i32 6, i32 6, i32 8, i32 0, i32 4, i32 2, i32 3, i32 3, i32 0, i32 5, i32 4, i32 3, i32 9, i32 5, i32 9, i32 3, i32 3, i32 6, i32 4, i32 3, i32 3, i32 0, i32 5, i32 0, i32 2, i32 5, i32 6, i32 6, i32 9, i32 4, i32 0, i32 3, i32 7, i32 2, i32 1, i32 1, i32 9, i32 8, i32 4, i32 8, i32 5, i32 2, i32 5, i32 4, i32 5, i32 0, i32 3, i32 5, i32 0, i32 7, i32 0, i32 7, i32 5, i32 6, i32 7, i32 7, i32 8, i32 2, i32 6, i32 8, i32 9, i32 4, i32 6, i32 7, i32 2, i32 9, i32 8, i32 8, i32 0, i32 0, i32 3, i32 4, i32 8, i32 9, i32 0, i32 5, i32 9, i32 8, i32 5, i32 1, i32 2, i32 7, i32 3, i32 2, i32 5, i32 4, i32 9, i32 9, i32 6, i32 9, i32 2, i32 5, i32 5, i32 7, i32 8, i32 3, i32 8, i32 9, i32 4, i32 9, i32 0, i32 5, i32 9, i32 8, i32 4, i32 2, i32 5, i32 0, i32 7, i32 8, i32 8, i32 4, i32 6, i32 7, i32 9, i32 8, i32 2, i32 4, i32 4, i32 2, i32 9, i32 9, i32 8, i32 1, i32 2, i32 3, i32 7, i32 2, i32 2, i32 1, i32 7, i32 1, i32 2, i32 4, i32 0, i32 6, i32 6, i32 0, i32 9, i32 9, i32 0, i32 7, i32 8, i32 9, i32 8, i32 5, i32 1, i32 8, i32 9, i32 2, i32 4, i32 7, i32 3, i32 4, i32 7, i32 9, i32 9, i32 4, i32 7, i32 1, i32 9, i32 0, i32 6, i32 0, i32 6, i32 9, i32 8, i32 4, i32 3, i32 6, i32 2, i32 9, i32 7, i32 5, i32 6, i32 9, i32 8, i32 6, i32 5, i32 8, i32 4, i32 0, i32 5, i32 2, i32 3, i32 2, i32 4, i32 0, i32 0, i32 9, i32 5, i32 8, i32 9, i32 2, i32 5, i32 2, i32 5, i32 0, i32 9, i32 4, i32 2, i32 0, i32 0, i32 1, i32 5, i32 0, i32 4, i32 9, i32 4, i32 9, i32 4, i32 6, i32 0, i32 0, i32 4, i32 2, i32 6, i32 9, i32 3, i32 7, i32 8, i32 5, i32 5, i32 7, i32 1, i32 0, i32 5, i32 3, i32 6, i32 0, i32 3, i32 3, i32 6, i32 2, i32 9, i32 9, i32 1, i32 9, i32 6, i32 2, i32 4, i32 1, i32 5, i32 1, i32 5, i32 0, i32 8, i32 5, i32 7, i32 9, i32 4, i32 6, i32 1, i32 3, i32 9, i32 4, i32 2, i32 3, i32 0, i32 8, i32 6, i32 0, i32 9, i32 7, i32 3, i32 1, i32 3, i32 7, i32 0, i32 9, i32 2, i32 3, i32 1, i32 2, i32 9, i32 3, i32 8, i32 5, i32 7, i32 3, i32 9, i32 6, i32 7, i32 1, i32 9, i32 6, i32 3, i32 8, i32 1, i32 8, i32 8, i32 2, i32 8, i32 7, i32 5, i32 4, i32 2, i32 0, i32 4, i32 0, i32 7, i32 7, i32 8, i32 9, i32 6, i32 6, i32 7, i32 7, i32 1, i32 6, i32 0, i32 5, i32 3, i32 4, i32 2, i32 6, i32 3, i32 6, i32 3, i32 4, i32 1, i32 3, i32 6, i32 9, i32 4, i32 3, i32 0, i32 9, i32 0, i32 2, i32 2, i32 0, i32 8, i32 8, i32 4, i32 5, i32 8, i32 2, i32 3, i32 3, i32 7, i32 2, i32 5, i32 9, i32 6, i32 7, i32 0, i32 1, i32 8, i32 5, i32 7, i32 8, i32 3, i32 0, i32 2, i32 9, i32 1, i32 5, i32 4, i32 9, i32 4, i32 5, i32 3, i32 7, i32 4, i32 0, i32 2, i32 7, i32 1, i32 3, i32 2, i32 7, i32 1, i32 7, i32 0, i32 0, i32 6, i32 7, i32 8, i32 9, i32 0, i32 2, i32 5, i32 4, i32 6, i32 2, i32 9, i32 2, i32 1, i32 0, i32 2, i32 2, i32 7, i32 3, i32 8, i32 9, i32 6, i32 3, i32 6, i32 9, i32 0, i32 8, i32 1, i32 2, i32 2, i32 9, i32 5, i32 8, i32 2, i32 5, i32 0, i32 4, i32 7, i32 0, i32 8, i32 2, i32 9, i32 6, i32 7, i32 7, i32 5, i32 2, i32 6, i32 6, i32 8, i32 8, i32 9, i32 7, i32 7, i32 4, i32 9, i32 0, i32 8, i32 7, i32 6, i32 8, i32 3, i32 1, i32 6, i32 7, i32 4, i32 6, i32 5, i32 6, i32 2, i32 8, i32 8, i32 5, i32 9, i32 0, i32 3, i32 1, i32 9, i32 1, i32 4, i32 9, i32 6, i32 4, i32 7, i32 6, i32 6, i32 8, i32 9, i32 6, i32 6, i32 1, i32 2, i32 5, i32 2, i32 0, i32 3, i32 8, i32 2, i32 9, i32 1, i32 3, i32 9, i32 6, i32 2, i32 3, i32 2, i32 9, i32 9, i32 3, i32 8, i32 8, i32 1, i32 9, i32 8, i32 5, i32 1, i32 1, i32 2, i32 7, i32 9, i32 3, i32 7, i32 4, i32 3, i32 4, i32 0, i32 7, i32 4, i32 9, i32 1, i32 4, i32 6, i32 4, i32 3, i32 8, i32 3, i32 8, i32 7, i32 6, i32 3, i32 2, i32 1, i32 8, i32 5, i32 2, i32 3, i32 1, i32 3, i32 7, i32 6, i32 2, i32 4, i32 0, i32 9, i32 9, i32 7, i32 8, i32 3, i32 7, i32 5, i32 8, i32 8, i32 5, i32 6, i32 7, i32 3, i32 2, i32 9, i32 5, i32 5, i32 1, i32 5, i32 7, i32 9, i32 7, i32 9, i32 0, i32 5, i32 4, i32 3, i32 3, i32 0, i32 0, i32 0, i32 3, i32 5, i32 1, i32 6, i32 2, i32 0, i32 4, i32 7, i32 4, i32 9, i32 7, i32 3, i32 4, i32 0, i32 6, i32 0, i32 3, i32 1, i32 3, i32 5, i32 7, i32 3, i32 8, i32 3, i32 1, i32 9, i32 6, i32 8, i32 6, i32 7, i32 7, i32 3, i32 2, i32 9, i32 8, i32 1, i32 9, i32 5, i32 8, i32 4, i32 7, i32 8, i32 9, i32 9, i32 0, i32 9, i32 2, i32 9, i32 0, i32 0, i32 7, i32 4, i32 3, i32 9, i32 2, i32 2, i32 7, i32 8, i32 7, i32 1, i32 3, i32 5, i32 8, i32 4, i32 4, i32 0, i32 9)
  ret i32 %.2840at0 
}
