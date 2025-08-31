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
define i32 @main(){
.0:
  %.5at0 = call i32 @getint()
  br label %.10wc 
.10wc:
  %.1619 = phi i32 [0, %.0], [%.1615, %.1603]
  %.16 = icmp slt i32 %.1619, %.5at0
  br i1 %.16, label %.11wloop., label %.12wn
.11wloop.:
  %.19at1 = call i32 @getint()
  %.24 = icmp sgt i32 %.19at1, 0
  br i1 %.24, label %.25, label %.22
.12wn:
  ret i32 0 
.21:
  %.34 = icmp sgt i32 %.19at1, 0
  br i1 %.34, label %.35, label %.32
.22:
  br label %.1603 
.25:
  %.29 = icmp slt i32 %.19at1, 100
  br i1 %.29, label %.21, label %.22
.31:
  %.44 = icmp sgt i32 %.19at1, 0
  br i1 %.44, label %.45, label %.42
.32:
  br label %.1597 
.35:
  %.39 = icmp slt i32 %.19at1, 99
  br i1 %.39, label %.31, label %.32
.41:
  %.54 = icmp sgt i32 %.19at1, 0
  br i1 %.54, label %.55, label %.52
.42:
  br label %.1591 
.45:
  %.49 = icmp slt i32 %.19at1, 98
  br i1 %.49, label %.41, label %.42
.51:
  %.64 = icmp sgt i32 %.19at1, 0
  br i1 %.64, label %.65, label %.62
.52:
  br label %.1585 
.55:
  %.59 = icmp slt i32 %.19at1, 97
  br i1 %.59, label %.51, label %.52
.61:
  %.74 = icmp sgt i32 %.19at1, 0
  br i1 %.74, label %.75, label %.72
.62:
  br label %.1579 
.65:
  %.69 = icmp slt i32 %.19at1, 96
  br i1 %.69, label %.61, label %.62
.71:
  %.84 = icmp sgt i32 %.19at1, 0
  br i1 %.84, label %.85, label %.82
.72:
  br label %.1573 
.75:
  %.79 = icmp slt i32 %.19at1, 95
  br i1 %.79, label %.71, label %.72
.81:
  %.94 = icmp sgt i32 %.19at1, 0
  br i1 %.94, label %.95, label %.92
.82:
  br label %.1567 
.85:
  %.89 = icmp slt i32 %.19at1, 94
  br i1 %.89, label %.81, label %.82
.91:
  %.104 = icmp sgt i32 %.19at1, 0
  br i1 %.104, label %.105, label %.102
.92:
  br label %.1561 
.95:
  %.99 = icmp slt i32 %.19at1, 93
  br i1 %.99, label %.91, label %.92
.101:
  %.114 = icmp sgt i32 %.19at1, 0
  br i1 %.114, label %.115, label %.112
.102:
  br label %.1555 
.105:
  %.109 = icmp slt i32 %.19at1, 92
  br i1 %.109, label %.101, label %.102
.111:
  %.124 = icmp sgt i32 %.19at1, 0
  br i1 %.124, label %.125, label %.122
.112:
  br label %.1549 
.115:
  %.119 = icmp slt i32 %.19at1, 91
  br i1 %.119, label %.111, label %.112
.121:
  %.134 = icmp sgt i32 %.19at1, 0
  br i1 %.134, label %.135, label %.132
.122:
  br label %.1543 
.125:
  %.129 = icmp slt i32 %.19at1, 90
  br i1 %.129, label %.121, label %.122
.131:
  %.144 = icmp sgt i32 %.19at1, 0
  br i1 %.144, label %.145, label %.142
.132:
  br label %.1537 
.135:
  %.139 = icmp slt i32 %.19at1, 89
  br i1 %.139, label %.131, label %.132
.141:
  %.154 = icmp sgt i32 %.19at1, 0
  br i1 %.154, label %.155, label %.152
.142:
  br label %.1531 
.145:
  %.149 = icmp slt i32 %.19at1, 88
  br i1 %.149, label %.141, label %.142
.151:
  %.164 = icmp sgt i32 %.19at1, 0
  br i1 %.164, label %.165, label %.162
.152:
  br label %.1525 
.155:
  %.159 = icmp slt i32 %.19at1, 87
  br i1 %.159, label %.151, label %.152
.161:
  %.174 = icmp sgt i32 %.19at1, 0
  br i1 %.174, label %.175, label %.172
.162:
  br label %.1519 
.165:
  %.169 = icmp slt i32 %.19at1, 86
  br i1 %.169, label %.161, label %.162
.171:
  %.184 = icmp sgt i32 %.19at1, 0
  br i1 %.184, label %.185, label %.182
.172:
  br label %.1513 
.175:
  %.179 = icmp slt i32 %.19at1, 85
  br i1 %.179, label %.171, label %.172
.181:
  %.194 = icmp sgt i32 %.19at1, 0
  br i1 %.194, label %.195, label %.192
.182:
  br label %.1507 
.185:
  %.189 = icmp slt i32 %.19at1, 84
  br i1 %.189, label %.181, label %.182
.191:
  %.204 = icmp sgt i32 %.19at1, 0
  br i1 %.204, label %.205, label %.202
.192:
  br label %.1501 
.195:
  %.199 = icmp slt i32 %.19at1, 83
  br i1 %.199, label %.191, label %.192
.201:
  %.214 = icmp sgt i32 %.19at1, 0
  br i1 %.214, label %.215, label %.212
.202:
  br label %.1495 
.205:
  %.209 = icmp slt i32 %.19at1, 82
  br i1 %.209, label %.201, label %.202
.211:
  %.224 = icmp sgt i32 %.19at1, 0
  br i1 %.224, label %.225, label %.222
.212:
  br label %.1489 
.215:
  %.219 = icmp slt i32 %.19at1, 81
  br i1 %.219, label %.211, label %.212
.221:
  %.234 = icmp sgt i32 %.19at1, 0
  br i1 %.234, label %.235, label %.232
.222:
  br label %.1483 
.225:
  %.229 = icmp slt i32 %.19at1, 80
  br i1 %.229, label %.221, label %.222
.231:
  %.244 = icmp sgt i32 %.19at1, 0
  br i1 %.244, label %.245, label %.242
.232:
  br label %.1477 
.235:
  %.239 = icmp slt i32 %.19at1, 79
  br i1 %.239, label %.231, label %.232
.241:
  %.254 = icmp sgt i32 %.19at1, 0
  br i1 %.254, label %.255, label %.252
.242:
  br label %.1471 
.245:
  %.249 = icmp slt i32 %.19at1, 78
  br i1 %.249, label %.241, label %.242
.251:
  %.264 = icmp sgt i32 %.19at1, 0
  br i1 %.264, label %.265, label %.262
.252:
  br label %.1465 
.255:
  %.259 = icmp slt i32 %.19at1, 77
  br i1 %.259, label %.251, label %.252
.261:
  %.274 = icmp sgt i32 %.19at1, 0
  br i1 %.274, label %.275, label %.272
.262:
  br label %.1459 
.265:
  %.269 = icmp slt i32 %.19at1, 76
  br i1 %.269, label %.261, label %.262
.271:
  %.284 = icmp sgt i32 %.19at1, 0
  br i1 %.284, label %.285, label %.282
.272:
  br label %.1453 
.275:
  %.279 = icmp slt i32 %.19at1, 75
  br i1 %.279, label %.271, label %.272
.281:
  %.294 = icmp sgt i32 %.19at1, 0
  br i1 %.294, label %.295, label %.292
.282:
  br label %.1447 
.285:
  %.289 = icmp slt i32 %.19at1, 74
  br i1 %.289, label %.281, label %.282
.291:
  %.304 = icmp sgt i32 %.19at1, 0
  br i1 %.304, label %.305, label %.302
.292:
  br label %.1441 
.295:
  %.299 = icmp slt i32 %.19at1, 73
  br i1 %.299, label %.291, label %.292
.301:
  %.314 = icmp sgt i32 %.19at1, 0
  br i1 %.314, label %.315, label %.312
.302:
  br label %.1435 
.305:
  %.309 = icmp slt i32 %.19at1, 72
  br i1 %.309, label %.301, label %.302
.311:
  %.324 = icmp sgt i32 %.19at1, 0
  br i1 %.324, label %.325, label %.322
.312:
  br label %.1429 
.315:
  %.319 = icmp slt i32 %.19at1, 71
  br i1 %.319, label %.311, label %.312
.321:
  %.334 = icmp sgt i32 %.19at1, 0
  br i1 %.334, label %.335, label %.332
.322:
  br label %.1423 
.325:
  %.329 = icmp slt i32 %.19at1, 70
  br i1 %.329, label %.321, label %.322
.331:
  %.344 = icmp sgt i32 %.19at1, 0
  br i1 %.344, label %.345, label %.342
.332:
  br label %.1417 
.335:
  %.339 = icmp slt i32 %.19at1, 69
  br i1 %.339, label %.331, label %.332
.341:
  %.354 = icmp sgt i32 %.19at1, 0
  br i1 %.354, label %.355, label %.352
.342:
  br label %.1411 
.345:
  %.349 = icmp slt i32 %.19at1, 68
  br i1 %.349, label %.341, label %.342
.351:
  %.364 = icmp sgt i32 %.19at1, 0
  br i1 %.364, label %.365, label %.362
.352:
  br label %.1405 
.355:
  %.359 = icmp slt i32 %.19at1, 67
  br i1 %.359, label %.351, label %.352
.361:
  %.374 = icmp sgt i32 %.19at1, 0
  br i1 %.374, label %.375, label %.372
.362:
  br label %.1399 
.365:
  %.369 = icmp slt i32 %.19at1, 66
  br i1 %.369, label %.361, label %.362
.371:
  %.384 = icmp sgt i32 %.19at1, 0
  br i1 %.384, label %.385, label %.382
.372:
  br label %.1393 
.375:
  %.379 = icmp slt i32 %.19at1, 65
  br i1 %.379, label %.371, label %.372
.381:
  %.394 = icmp sgt i32 %.19at1, 0
  br i1 %.394, label %.395, label %.392
.382:
  br label %.1387 
.385:
  %.389 = icmp slt i32 %.19at1, 64
  br i1 %.389, label %.381, label %.382
.391:
  %.404 = icmp sgt i32 %.19at1, 0
  br i1 %.404, label %.405, label %.402
.392:
  br label %.1381 
.395:
  %.399 = icmp slt i32 %.19at1, 63
  br i1 %.399, label %.391, label %.392
.401:
  %.414 = icmp sgt i32 %.19at1, 0
  br i1 %.414, label %.415, label %.412
.402:
  br label %.1375 
.405:
  %.409 = icmp slt i32 %.19at1, 62
  br i1 %.409, label %.401, label %.402
.411:
  %.424 = icmp sgt i32 %.19at1, 0
  br i1 %.424, label %.425, label %.422
.412:
  br label %.1369 
.415:
  %.419 = icmp slt i32 %.19at1, 61
  br i1 %.419, label %.411, label %.412
.421:
  %.434 = icmp sgt i32 %.19at1, 0
  br i1 %.434, label %.435, label %.432
.422:
  br label %.1363 
.425:
  %.429 = icmp slt i32 %.19at1, 60
  br i1 %.429, label %.421, label %.422
.431:
  %.444 = icmp sgt i32 %.19at1, 0
  br i1 %.444, label %.445, label %.442
.432:
  br label %.1357 
.435:
  %.439 = icmp slt i32 %.19at1, 59
  br i1 %.439, label %.431, label %.432
.441:
  %.454 = icmp sgt i32 %.19at1, 0
  br i1 %.454, label %.455, label %.452
.442:
  br label %.1351 
.445:
  %.449 = icmp slt i32 %.19at1, 58
  br i1 %.449, label %.441, label %.442
.451:
  %.464 = icmp sgt i32 %.19at1, 0
  br i1 %.464, label %.465, label %.462
.452:
  br label %.1345 
.455:
  %.459 = icmp slt i32 %.19at1, 57
  br i1 %.459, label %.451, label %.452
.461:
  %.474 = icmp sgt i32 %.19at1, 0
  br i1 %.474, label %.475, label %.472
.462:
  br label %.1339 
.465:
  %.469 = icmp slt i32 %.19at1, 56
  br i1 %.469, label %.461, label %.462
.471:
  %.484 = icmp sgt i32 %.19at1, 0
  br i1 %.484, label %.485, label %.482
.472:
  br label %.1333 
.475:
  %.479 = icmp slt i32 %.19at1, 55
  br i1 %.479, label %.471, label %.472
.481:
  %.494 = icmp sgt i32 %.19at1, 0
  br i1 %.494, label %.495, label %.492
.482:
  br label %.1327 
.485:
  %.489 = icmp slt i32 %.19at1, 54
  br i1 %.489, label %.481, label %.482
.491:
  %.504 = icmp sgt i32 %.19at1, 0
  br i1 %.504, label %.505, label %.502
.492:
  br label %.1321 
.495:
  %.499 = icmp slt i32 %.19at1, 53
  br i1 %.499, label %.491, label %.492
.501:
  %.514 = icmp sgt i32 %.19at1, 0
  br i1 %.514, label %.515, label %.512
.502:
  br label %.1315 
.505:
  %.509 = icmp slt i32 %.19at1, 52
  br i1 %.509, label %.501, label %.502
.511:
  %.524 = icmp sgt i32 %.19at1, 0
  br i1 %.524, label %.525, label %.522
.512:
  br label %.1309 
.515:
  %.519 = icmp slt i32 %.19at1, 51
  br i1 %.519, label %.511, label %.512
.521:
  %.534 = icmp sgt i32 %.19at1, 0
  br i1 %.534, label %.535, label %.532
.522:
  br label %.1303 
.525:
  %.529 = icmp slt i32 %.19at1, 50
  br i1 %.529, label %.521, label %.522
.531:
  %.544 = icmp sgt i32 %.19at1, 0
  br i1 %.544, label %.545, label %.542
.532:
  br label %.1297 
.535:
  %.539 = icmp slt i32 %.19at1, 49
  br i1 %.539, label %.531, label %.532
.541:
  %.554 = icmp sgt i32 %.19at1, 0
  br i1 %.554, label %.555, label %.552
.542:
  br label %.1291 
.545:
  %.549 = icmp slt i32 %.19at1, 48
  br i1 %.549, label %.541, label %.542
.551:
  %.564 = icmp sgt i32 %.19at1, 0
  br i1 %.564, label %.565, label %.562
.552:
  br label %.1285 
.555:
  %.559 = icmp slt i32 %.19at1, 47
  br i1 %.559, label %.551, label %.552
.561:
  %.574 = icmp sgt i32 %.19at1, 0
  br i1 %.574, label %.575, label %.572
.562:
  br label %.1279 
.565:
  %.569 = icmp slt i32 %.19at1, 46
  br i1 %.569, label %.561, label %.562
.571:
  %.584 = icmp sgt i32 %.19at1, 0
  br i1 %.584, label %.585, label %.582
.572:
  br label %.1273 
.575:
  %.579 = icmp slt i32 %.19at1, 45
  br i1 %.579, label %.571, label %.572
.581:
  %.594 = icmp sgt i32 %.19at1, 0
  br i1 %.594, label %.595, label %.592
.582:
  br label %.1267 
.585:
  %.589 = icmp slt i32 %.19at1, 44
  br i1 %.589, label %.581, label %.582
.591:
  %.604 = icmp sgt i32 %.19at1, 0
  br i1 %.604, label %.605, label %.602
.592:
  br label %.1261 
.595:
  %.599 = icmp slt i32 %.19at1, 43
  br i1 %.599, label %.591, label %.592
.601:
  %.614 = icmp sgt i32 %.19at1, 0
  br i1 %.614, label %.615, label %.612
.602:
  br label %.1255 
.605:
  %.609 = icmp slt i32 %.19at1, 42
  br i1 %.609, label %.601, label %.602
.611:
  %.624 = icmp sgt i32 %.19at1, 0
  br i1 %.624, label %.625, label %.622
.612:
  br label %.1249 
.615:
  %.619 = icmp slt i32 %.19at1, 41
  br i1 %.619, label %.611, label %.612
.621:
  %.634 = icmp sgt i32 %.19at1, 0
  br i1 %.634, label %.635, label %.632
.622:
  br label %.1243 
.625:
  %.629 = icmp slt i32 %.19at1, 40
  br i1 %.629, label %.621, label %.622
.631:
  %.644 = icmp sgt i32 %.19at1, 0
  br i1 %.644, label %.645, label %.642
.632:
  br label %.1237 
.635:
  %.639 = icmp slt i32 %.19at1, 39
  br i1 %.639, label %.631, label %.632
.641:
  %.654 = icmp sgt i32 %.19at1, 0
  br i1 %.654, label %.655, label %.652
.642:
  br label %.1231 
.645:
  %.649 = icmp slt i32 %.19at1, 38
  br i1 %.649, label %.641, label %.642
.651:
  %.664 = icmp sgt i32 %.19at1, 0
  br i1 %.664, label %.665, label %.662
.652:
  br label %.1225 
.655:
  %.659 = icmp slt i32 %.19at1, 37
  br i1 %.659, label %.651, label %.652
.661:
  %.674 = icmp sgt i32 %.19at1, 0
  br i1 %.674, label %.675, label %.672
.662:
  br label %.1219 
.665:
  %.669 = icmp slt i32 %.19at1, 36
  br i1 %.669, label %.661, label %.662
.671:
  %.684 = icmp sgt i32 %.19at1, 0
  br i1 %.684, label %.685, label %.682
.672:
  br label %.1213 
.675:
  %.679 = icmp slt i32 %.19at1, 35
  br i1 %.679, label %.671, label %.672
.681:
  %.694 = icmp sgt i32 %.19at1, 0
  br i1 %.694, label %.695, label %.692
.682:
  br label %.1207 
.685:
  %.689 = icmp slt i32 %.19at1, 34
  br i1 %.689, label %.681, label %.682
.691:
  %.704 = icmp sgt i32 %.19at1, 0
  br i1 %.704, label %.705, label %.702
.692:
  br label %.1201 
.695:
  %.699 = icmp slt i32 %.19at1, 33
  br i1 %.699, label %.691, label %.692
.701:
  %.714 = icmp sgt i32 %.19at1, 0
  br i1 %.714, label %.715, label %.712
.702:
  br label %.1195 
.705:
  %.709 = icmp slt i32 %.19at1, 32
  br i1 %.709, label %.701, label %.702
.711:
  %.724 = icmp sgt i32 %.19at1, 0
  br i1 %.724, label %.725, label %.722
.712:
  br label %.1189 
.715:
  %.719 = icmp slt i32 %.19at1, 31
  br i1 %.719, label %.711, label %.712
.721:
  %.734 = icmp sgt i32 %.19at1, 0
  br i1 %.734, label %.735, label %.732
.722:
  br label %.1183 
.725:
  %.729 = icmp slt i32 %.19at1, 30
  br i1 %.729, label %.721, label %.722
.731:
  %.744 = icmp sgt i32 %.19at1, 0
  br i1 %.744, label %.745, label %.742
.732:
  br label %.1177 
.735:
  %.739 = icmp slt i32 %.19at1, 29
  br i1 %.739, label %.731, label %.732
.741:
  %.754 = icmp sgt i32 %.19at1, 0
  br i1 %.754, label %.755, label %.752
.742:
  br label %.1171 
.745:
  %.749 = icmp slt i32 %.19at1, 28
  br i1 %.749, label %.741, label %.742
.751:
  %.764 = icmp sgt i32 %.19at1, 0
  br i1 %.764, label %.765, label %.762
.752:
  br label %.1165 
.755:
  %.759 = icmp slt i32 %.19at1, 27
  br i1 %.759, label %.751, label %.752
.761:
  %.774 = icmp sgt i32 %.19at1, 0
  br i1 %.774, label %.775, label %.772
.762:
  br label %.1159 
.765:
  %.769 = icmp slt i32 %.19at1, 26
  br i1 %.769, label %.761, label %.762
.771:
  %.784 = icmp sgt i32 %.19at1, 0
  br i1 %.784, label %.785, label %.782
.772:
  br label %.1153 
.775:
  %.779 = icmp slt i32 %.19at1, 25
  br i1 %.779, label %.771, label %.772
.781:
  %.794 = icmp sgt i32 %.19at1, 0
  br i1 %.794, label %.795, label %.792
.782:
  br label %.1147 
.785:
  %.789 = icmp slt i32 %.19at1, 24
  br i1 %.789, label %.781, label %.782
.791:
  %.804 = icmp sgt i32 %.19at1, 0
  br i1 %.804, label %.805, label %.802
.792:
  br label %.1141 
.795:
  %.799 = icmp slt i32 %.19at1, 23
  br i1 %.799, label %.791, label %.792
.801:
  %.814 = icmp sgt i32 %.19at1, 0
  br i1 %.814, label %.815, label %.812
.802:
  br label %.1135 
.805:
  %.809 = icmp slt i32 %.19at1, 22
  br i1 %.809, label %.801, label %.802
.811:
  %.824 = icmp sgt i32 %.19at1, 0
  br i1 %.824, label %.825, label %.822
.812:
  br label %.1129 
.815:
  %.819 = icmp slt i32 %.19at1, 21
  br i1 %.819, label %.811, label %.812
.821:
  %.834 = icmp sgt i32 %.19at1, 0
  br i1 %.834, label %.835, label %.832
.822:
  br label %.1123 
.825:
  %.829 = icmp slt i32 %.19at1, 20
  br i1 %.829, label %.821, label %.822
.831:
  %.844 = icmp sgt i32 %.19at1, 0
  br i1 %.844, label %.845, label %.842
.832:
  br label %.1117 
.835:
  %.839 = icmp slt i32 %.19at1, 19
  br i1 %.839, label %.831, label %.832
.841:
  %.854 = icmp sgt i32 %.19at1, 0
  br i1 %.854, label %.855, label %.852
.842:
  br label %.1111 
.845:
  %.849 = icmp slt i32 %.19at1, 18
  br i1 %.849, label %.841, label %.842
.851:
  %.864 = icmp sgt i32 %.19at1, 0
  br i1 %.864, label %.865, label %.862
.852:
  br label %.1105 
.855:
  %.859 = icmp slt i32 %.19at1, 17
  br i1 %.859, label %.851, label %.852
.861:
  %.874 = icmp sgt i32 %.19at1, 0
  br i1 %.874, label %.875, label %.872
.862:
  br label %.1099 
.865:
  %.869 = icmp slt i32 %.19at1, 16
  br i1 %.869, label %.861, label %.862
.871:
  %.884 = icmp sgt i32 %.19at1, 0
  br i1 %.884, label %.885, label %.882
.872:
  br label %.1093 
.875:
  %.879 = icmp slt i32 %.19at1, 15
  br i1 %.879, label %.871, label %.872
.881:
  %.894 = icmp sgt i32 %.19at1, 0
  br i1 %.894, label %.895, label %.892
.882:
  br label %.1087 
.885:
  %.889 = icmp slt i32 %.19at1, 14
  br i1 %.889, label %.881, label %.882
.891:
  %.904 = icmp sgt i32 %.19at1, 0
  br i1 %.904, label %.905, label %.902
.892:
  br label %.1081 
.895:
  %.899 = icmp slt i32 %.19at1, 13
  br i1 %.899, label %.891, label %.892
.901:
  %.914 = icmp sgt i32 %.19at1, 0
  br i1 %.914, label %.915, label %.912
.902:
  br label %.1075 
.905:
  %.909 = icmp slt i32 %.19at1, 12
  br i1 %.909, label %.901, label %.902
.911:
  %.924 = icmp sgt i32 %.19at1, 0
  br i1 %.924, label %.925, label %.922
.912:
  br label %.1069 
.915:
  %.919 = icmp slt i32 %.19at1, 11
  br i1 %.919, label %.911, label %.912
.921:
  %.934 = icmp sgt i32 %.19at1, 0
  br i1 %.934, label %.935, label %.932
.922:
  br label %.1063 
.925:
  %.929 = icmp slt i32 %.19at1, 10
  br i1 %.929, label %.921, label %.922
.931:
  %.944 = icmp sgt i32 %.19at1, 0
  br i1 %.944, label %.945, label %.942
.932:
  br label %.1057 
.935:
  %.939 = icmp slt i32 %.19at1, 9
  br i1 %.939, label %.931, label %.932
.941:
  %.954 = icmp sgt i32 %.19at1, 0
  br i1 %.954, label %.955, label %.952
.942:
  br label %.1051 
.945:
  %.949 = icmp slt i32 %.19at1, 8
  br i1 %.949, label %.941, label %.942
.951:
  %.964 = icmp sgt i32 %.19at1, 0
  br i1 %.964, label %.965, label %.962
.952:
  br label %.1045 
.955:
  %.959 = icmp slt i32 %.19at1, 7
  br i1 %.959, label %.951, label %.952
.961:
  %.974 = icmp sgt i32 %.19at1, 0
  br i1 %.974, label %.975, label %.972
.962:
  br label %.1039 
.965:
  %.969 = icmp slt i32 %.19at1, 6
  br i1 %.969, label %.961, label %.962
.971:
  %.984 = icmp sgt i32 %.19at1, 0
  br i1 %.984, label %.985, label %.982
.972:
  br label %.1033 
.975:
  %.979 = icmp slt i32 %.19at1, 5
  br i1 %.979, label %.971, label %.972
.981:
  %.994 = icmp sgt i32 %.19at1, 0
  br i1 %.994, label %.995, label %.992
.982:
  br label %.1027 
.985:
  %.989 = icmp slt i32 %.19at1, 4
  br i1 %.989, label %.981, label %.982
.991:
  %.1004 = icmp sgt i32 %.19at1, 0
  br i1 %.1004, label %.1005, label %.1002
.992:
  br label %.1021 
.995:
  %.999 = icmp slt i32 %.19at1, 3
  br i1 %.999, label %.991, label %.992
.1001:
  br label %.1015 
.1002:
  br label %.1015 
.1005:
  %.1009 = icmp slt i32 %.19at1, 2
  br i1 %.1009, label %.1001, label %.1002
.1015:
  %.1620 = phi i32 [2, %.1002], [1, %.1001]
  br label %.1021 
.1021:
  %.1621 = phi i32 [3, %.992], [%.1620, %.1015]
  br label %.1027 
.1027:
  %.1622 = phi i32 [4, %.982], [%.1621, %.1021]
  br label %.1033 
.1033:
  %.1623 = phi i32 [5, %.972], [%.1622, %.1027]
  br label %.1039 
.1039:
  %.1624 = phi i32 [6, %.962], [%.1623, %.1033]
  br label %.1045 
.1045:
  %.1625 = phi i32 [7, %.952], [%.1624, %.1039]
  br label %.1051 
.1051:
  %.1626 = phi i32 [8, %.942], [%.1625, %.1045]
  br label %.1057 
.1057:
  %.1627 = phi i32 [9, %.932], [%.1626, %.1051]
  br label %.1063 
.1063:
  %.1628 = phi i32 [10, %.922], [%.1627, %.1057]
  br label %.1069 
.1069:
  %.1629 = phi i32 [11, %.912], [%.1628, %.1063]
  br label %.1075 
.1075:
  %.1630 = phi i32 [12, %.902], [%.1629, %.1069]
  br label %.1081 
.1081:
  %.1631 = phi i32 [13, %.892], [%.1630, %.1075]
  br label %.1087 
.1087:
  %.1632 = phi i32 [14, %.882], [%.1631, %.1081]
  br label %.1093 
.1093:
  %.1633 = phi i32 [15, %.872], [%.1632, %.1087]
  br label %.1099 
.1099:
  %.1634 = phi i32 [16, %.862], [%.1633, %.1093]
  br label %.1105 
.1105:
  %.1635 = phi i32 [17, %.852], [%.1634, %.1099]
  br label %.1111 
.1111:
  %.1636 = phi i32 [18, %.842], [%.1635, %.1105]
  br label %.1117 
.1117:
  %.1637 = phi i32 [19, %.832], [%.1636, %.1111]
  br label %.1123 
.1123:
  %.1638 = phi i32 [20, %.822], [%.1637, %.1117]
  br label %.1129 
.1129:
  %.1639 = phi i32 [21, %.812], [%.1638, %.1123]
  br label %.1135 
.1135:
  %.1640 = phi i32 [22, %.802], [%.1639, %.1129]
  br label %.1141 
.1141:
  %.1641 = phi i32 [23, %.792], [%.1640, %.1135]
  br label %.1147 
.1147:
  %.1642 = phi i32 [24, %.782], [%.1641, %.1141]
  br label %.1153 
.1153:
  %.1643 = phi i32 [25, %.772], [%.1642, %.1147]
  br label %.1159 
.1159:
  %.1644 = phi i32 [26, %.762], [%.1643, %.1153]
  br label %.1165 
.1165:
  %.1645 = phi i32 [27, %.752], [%.1644, %.1159]
  br label %.1171 
.1171:
  %.1646 = phi i32 [28, %.742], [%.1645, %.1165]
  br label %.1177 
.1177:
  %.1647 = phi i32 [29, %.732], [%.1646, %.1171]
  br label %.1183 
.1183:
  %.1648 = phi i32 [30, %.722], [%.1647, %.1177]
  br label %.1189 
.1189:
  %.1649 = phi i32 [31, %.712], [%.1648, %.1183]
  br label %.1195 
.1195:
  %.1650 = phi i32 [32, %.702], [%.1649, %.1189]
  br label %.1201 
.1201:
  %.1651 = phi i32 [33, %.692], [%.1650, %.1195]
  br label %.1207 
.1207:
  %.1652 = phi i32 [34, %.682], [%.1651, %.1201]
  br label %.1213 
.1213:
  %.1653 = phi i32 [35, %.672], [%.1652, %.1207]
  br label %.1219 
.1219:
  %.1654 = phi i32 [36, %.662], [%.1653, %.1213]
  br label %.1225 
.1225:
  %.1655 = phi i32 [37, %.652], [%.1654, %.1219]
  br label %.1231 
.1231:
  %.1656 = phi i32 [38, %.642], [%.1655, %.1225]
  br label %.1237 
.1237:
  %.1657 = phi i32 [39, %.632], [%.1656, %.1231]
  br label %.1243 
.1243:
  %.1658 = phi i32 [40, %.622], [%.1657, %.1237]
  br label %.1249 
.1249:
  %.1659 = phi i32 [41, %.612], [%.1658, %.1243]
  br label %.1255 
.1255:
  %.1660 = phi i32 [42, %.602], [%.1659, %.1249]
  br label %.1261 
.1261:
  %.1661 = phi i32 [43, %.592], [%.1660, %.1255]
  br label %.1267 
.1267:
  %.1662 = phi i32 [44, %.582], [%.1661, %.1261]
  br label %.1273 
.1273:
  %.1663 = phi i32 [45, %.572], [%.1662, %.1267]
  br label %.1279 
.1279:
  %.1664 = phi i32 [46, %.562], [%.1663, %.1273]
  br label %.1285 
.1285:
  %.1665 = phi i32 [47, %.552], [%.1664, %.1279]
  br label %.1291 
.1291:
  %.1666 = phi i32 [48, %.542], [%.1665, %.1285]
  br label %.1297 
.1297:
  %.1667 = phi i32 [49, %.532], [%.1666, %.1291]
  br label %.1303 
.1303:
  %.1668 = phi i32 [50, %.522], [%.1667, %.1297]
  br label %.1309 
.1309:
  %.1669 = phi i32 [51, %.512], [%.1668, %.1303]
  br label %.1315 
.1315:
  %.1670 = phi i32 [52, %.502], [%.1669, %.1309]
  br label %.1321 
.1321:
  %.1671 = phi i32 [53, %.492], [%.1670, %.1315]
  br label %.1327 
.1327:
  %.1672 = phi i32 [54, %.482], [%.1671, %.1321]
  br label %.1333 
.1333:
  %.1673 = phi i32 [55, %.472], [%.1672, %.1327]
  br label %.1339 
.1339:
  %.1674 = phi i32 [56, %.462], [%.1673, %.1333]
  br label %.1345 
.1345:
  %.1675 = phi i32 [57, %.452], [%.1674, %.1339]
  br label %.1351 
.1351:
  %.1676 = phi i32 [58, %.442], [%.1675, %.1345]
  br label %.1357 
.1357:
  %.1677 = phi i32 [59, %.432], [%.1676, %.1351]
  br label %.1363 
.1363:
  %.1678 = phi i32 [60, %.422], [%.1677, %.1357]
  br label %.1369 
.1369:
  %.1679 = phi i32 [61, %.412], [%.1678, %.1363]
  br label %.1375 
.1375:
  %.1680 = phi i32 [62, %.402], [%.1679, %.1369]
  br label %.1381 
.1381:
  %.1681 = phi i32 [63, %.392], [%.1680, %.1375]
  br label %.1387 
.1387:
  %.1682 = phi i32 [64, %.382], [%.1681, %.1381]
  br label %.1393 
.1393:
  %.1683 = phi i32 [65, %.372], [%.1682, %.1387]
  br label %.1399 
.1399:
  %.1684 = phi i32 [66, %.362], [%.1683, %.1393]
  br label %.1405 
.1405:
  %.1685 = phi i32 [67, %.352], [%.1684, %.1399]
  br label %.1411 
.1411:
  %.1686 = phi i32 [68, %.342], [%.1685, %.1405]
  br label %.1417 
.1417:
  %.1687 = phi i32 [69, %.332], [%.1686, %.1411]
  br label %.1423 
.1423:
  %.1688 = phi i32 [70, %.322], [%.1687, %.1417]
  br label %.1429 
.1429:
  %.1689 = phi i32 [71, %.312], [%.1688, %.1423]
  br label %.1435 
.1435:
  %.1690 = phi i32 [72, %.302], [%.1689, %.1429]
  br label %.1441 
.1441:
  %.1691 = phi i32 [73, %.292], [%.1690, %.1435]
  br label %.1447 
.1447:
  %.1692 = phi i32 [74, %.282], [%.1691, %.1441]
  br label %.1453 
.1453:
  %.1693 = phi i32 [75, %.272], [%.1692, %.1447]
  br label %.1459 
.1459:
  %.1694 = phi i32 [76, %.262], [%.1693, %.1453]
  br label %.1465 
.1465:
  %.1695 = phi i32 [77, %.252], [%.1694, %.1459]
  br label %.1471 
.1471:
  %.1696 = phi i32 [78, %.242], [%.1695, %.1465]
  br label %.1477 
.1477:
  %.1697 = phi i32 [79, %.232], [%.1696, %.1471]
  br label %.1483 
.1483:
  %.1698 = phi i32 [80, %.222], [%.1697, %.1477]
  br label %.1489 
.1489:
  %.1699 = phi i32 [81, %.212], [%.1698, %.1483]
  br label %.1495 
.1495:
  %.1700 = phi i32 [82, %.202], [%.1699, %.1489]
  br label %.1501 
.1501:
  %.1701 = phi i32 [83, %.192], [%.1700, %.1495]
  br label %.1507 
.1507:
  %.1702 = phi i32 [84, %.182], [%.1701, %.1501]
  br label %.1513 
.1513:
  %.1703 = phi i32 [85, %.172], [%.1702, %.1507]
  br label %.1519 
.1519:
  %.1704 = phi i32 [86, %.162], [%.1703, %.1513]
  br label %.1525 
.1525:
  %.1705 = phi i32 [87, %.152], [%.1704, %.1519]
  br label %.1531 
.1531:
  %.1706 = phi i32 [88, %.142], [%.1705, %.1525]
  br label %.1537 
.1537:
  %.1707 = phi i32 [89, %.132], [%.1706, %.1531]
  br label %.1543 
.1543:
  %.1708 = phi i32 [90, %.122], [%.1707, %.1537]
  br label %.1549 
.1549:
  %.1709 = phi i32 [91, %.112], [%.1708, %.1543]
  br label %.1555 
.1555:
  %.1710 = phi i32 [92, %.102], [%.1709, %.1549]
  br label %.1561 
.1561:
  %.1711 = phi i32 [93, %.92], [%.1710, %.1555]
  br label %.1567 
.1567:
  %.1712 = phi i32 [94, %.82], [%.1711, %.1561]
  br label %.1573 
.1573:
  %.1713 = phi i32 [95, %.72], [%.1712, %.1567]
  br label %.1579 
.1579:
  %.1714 = phi i32 [96, %.62], [%.1713, %.1573]
  br label %.1585 
.1585:
  %.1715 = phi i32 [97, %.52], [%.1714, %.1579]
  br label %.1591 
.1591:
  %.1716 = phi i32 [98, %.42], [%.1715, %.1585]
  br label %.1597 
.1597:
  %.1717 = phi i32 [99, %.32], [%.1716, %.1591]
  br label %.1603 
.1603:
  %.1718 = phi i32 [100, %.22], [%.1717, %.1597]
  call void @putint(i32 %.1718)
  call void @putch(i32 10)
  %.1615 = add i32 %.1619, 1
  br label %.10wc 
}
