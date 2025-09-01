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
  %.7 = alloca i32
  %.3 = alloca i32
  %.2 = alloca i32
  %.1 = alloca i32
  %.5at0 = call i32 @getint()
  store i32 %.5at0, i32* %.3
  store i32 0, i32* %.7
  br label %.10wc 
.10wc:
  %.14 = load i32, i32* %.7
  %.15 = load i32, i32* %.3
  %.16 = icmp slt i32 %.14, %.15
  br i1 %.16, label %.11wloop., label %.12wn
.11wloop.:
  store i32 0, i32* %.2
  %.19at1 = call i32 @getint()
  store i32 %.19at1, i32* %.1
  %.23 = load i32, i32* %.1
  %.24 = icmp sgt i32 %.23, 0
  br i1 %.24, label %.25, label %.22
.12wn:
  ret i32 0 
.21:
  %.33 = load i32, i32* %.1
  %.34 = icmp sgt i32 %.33, 0
  br i1 %.34, label %.35, label %.32
.22:
  %.1605 = load i32, i32* %.2
  %.1606 = add i32 %.1605, 100
  store i32 %.1606, i32* %.2
  br label %.1603 
.25:
  %.27 = load i32, i32* %.1
  %.29 = icmp slt i32 %.27, 100
  br i1 %.29, label %.21, label %.22
.31:
  %.43 = load i32, i32* %.1
  %.44 = icmp sgt i32 %.43, 0
  br i1 %.44, label %.45, label %.42
.32:
  %.1599 = load i32, i32* %.2
  %.1600 = add i32 %.1599, 99
  store i32 %.1600, i32* %.2
  br label %.1597 
.35:
  %.37 = load i32, i32* %.1
  %.39 = icmp slt i32 %.37, 99
  br i1 %.39, label %.31, label %.32
.41:
  %.53 = load i32, i32* %.1
  %.54 = icmp sgt i32 %.53, 0
  br i1 %.54, label %.55, label %.52
.42:
  %.1593 = load i32, i32* %.2
  %.1594 = add i32 %.1593, 98
  store i32 %.1594, i32* %.2
  br label %.1591 
.45:
  %.47 = load i32, i32* %.1
  %.49 = icmp slt i32 %.47, 98
  br i1 %.49, label %.41, label %.42
.51:
  %.63 = load i32, i32* %.1
  %.64 = icmp sgt i32 %.63, 0
  br i1 %.64, label %.65, label %.62
.52:
  %.1587 = load i32, i32* %.2
  %.1588 = add i32 %.1587, 97
  store i32 %.1588, i32* %.2
  br label %.1585 
.55:
  %.57 = load i32, i32* %.1
  %.59 = icmp slt i32 %.57, 97
  br i1 %.59, label %.51, label %.52
.61:
  %.73 = load i32, i32* %.1
  %.74 = icmp sgt i32 %.73, 0
  br i1 %.74, label %.75, label %.72
.62:
  %.1581 = load i32, i32* %.2
  %.1582 = add i32 %.1581, 96
  store i32 %.1582, i32* %.2
  br label %.1579 
.65:
  %.67 = load i32, i32* %.1
  %.69 = icmp slt i32 %.67, 96
  br i1 %.69, label %.61, label %.62
.71:
  %.83 = load i32, i32* %.1
  %.84 = icmp sgt i32 %.83, 0
  br i1 %.84, label %.85, label %.82
.72:
  %.1575 = load i32, i32* %.2
  %.1576 = add i32 %.1575, 95
  store i32 %.1576, i32* %.2
  br label %.1573 
.75:
  %.77 = load i32, i32* %.1
  %.79 = icmp slt i32 %.77, 95
  br i1 %.79, label %.71, label %.72
.81:
  %.93 = load i32, i32* %.1
  %.94 = icmp sgt i32 %.93, 0
  br i1 %.94, label %.95, label %.92
.82:
  %.1569 = load i32, i32* %.2
  %.1570 = add i32 %.1569, 94
  store i32 %.1570, i32* %.2
  br label %.1567 
.85:
  %.87 = load i32, i32* %.1
  %.89 = icmp slt i32 %.87, 94
  br i1 %.89, label %.81, label %.82
.91:
  %.103 = load i32, i32* %.1
  %.104 = icmp sgt i32 %.103, 0
  br i1 %.104, label %.105, label %.102
.92:
  %.1563 = load i32, i32* %.2
  %.1564 = add i32 %.1563, 93
  store i32 %.1564, i32* %.2
  br label %.1561 
.95:
  %.97 = load i32, i32* %.1
  %.99 = icmp slt i32 %.97, 93
  br i1 %.99, label %.91, label %.92
.101:
  %.113 = load i32, i32* %.1
  %.114 = icmp sgt i32 %.113, 0
  br i1 %.114, label %.115, label %.112
.102:
  %.1557 = load i32, i32* %.2
  %.1558 = add i32 %.1557, 92
  store i32 %.1558, i32* %.2
  br label %.1555 
.105:
  %.107 = load i32, i32* %.1
  %.109 = icmp slt i32 %.107, 92
  br i1 %.109, label %.101, label %.102
.111:
  %.123 = load i32, i32* %.1
  %.124 = icmp sgt i32 %.123, 0
  br i1 %.124, label %.125, label %.122
.112:
  %.1551 = load i32, i32* %.2
  %.1552 = add i32 %.1551, 91
  store i32 %.1552, i32* %.2
  br label %.1549 
.115:
  %.117 = load i32, i32* %.1
  %.119 = icmp slt i32 %.117, 91
  br i1 %.119, label %.111, label %.112
.121:
  %.133 = load i32, i32* %.1
  %.134 = icmp sgt i32 %.133, 0
  br i1 %.134, label %.135, label %.132
.122:
  %.1545 = load i32, i32* %.2
  %.1546 = add i32 %.1545, 90
  store i32 %.1546, i32* %.2
  br label %.1543 
.125:
  %.127 = load i32, i32* %.1
  %.129 = icmp slt i32 %.127, 90
  br i1 %.129, label %.121, label %.122
.131:
  %.143 = load i32, i32* %.1
  %.144 = icmp sgt i32 %.143, 0
  br i1 %.144, label %.145, label %.142
.132:
  %.1539 = load i32, i32* %.2
  %.1540 = add i32 %.1539, 89
  store i32 %.1540, i32* %.2
  br label %.1537 
.135:
  %.137 = load i32, i32* %.1
  %.139 = icmp slt i32 %.137, 89
  br i1 %.139, label %.131, label %.132
.141:
  %.153 = load i32, i32* %.1
  %.154 = icmp sgt i32 %.153, 0
  br i1 %.154, label %.155, label %.152
.142:
  %.1533 = load i32, i32* %.2
  %.1534 = add i32 %.1533, 88
  store i32 %.1534, i32* %.2
  br label %.1531 
.145:
  %.147 = load i32, i32* %.1
  %.149 = icmp slt i32 %.147, 88
  br i1 %.149, label %.141, label %.142
.151:
  %.163 = load i32, i32* %.1
  %.164 = icmp sgt i32 %.163, 0
  br i1 %.164, label %.165, label %.162
.152:
  %.1527 = load i32, i32* %.2
  %.1528 = add i32 %.1527, 87
  store i32 %.1528, i32* %.2
  br label %.1525 
.155:
  %.157 = load i32, i32* %.1
  %.159 = icmp slt i32 %.157, 87
  br i1 %.159, label %.151, label %.152
.161:
  %.173 = load i32, i32* %.1
  %.174 = icmp sgt i32 %.173, 0
  br i1 %.174, label %.175, label %.172
.162:
  %.1521 = load i32, i32* %.2
  %.1522 = add i32 %.1521, 86
  store i32 %.1522, i32* %.2
  br label %.1519 
.165:
  %.167 = load i32, i32* %.1
  %.169 = icmp slt i32 %.167, 86
  br i1 %.169, label %.161, label %.162
.171:
  %.183 = load i32, i32* %.1
  %.184 = icmp sgt i32 %.183, 0
  br i1 %.184, label %.185, label %.182
.172:
  %.1515 = load i32, i32* %.2
  %.1516 = add i32 %.1515, 85
  store i32 %.1516, i32* %.2
  br label %.1513 
.175:
  %.177 = load i32, i32* %.1
  %.179 = icmp slt i32 %.177, 85
  br i1 %.179, label %.171, label %.172
.181:
  %.193 = load i32, i32* %.1
  %.194 = icmp sgt i32 %.193, 0
  br i1 %.194, label %.195, label %.192
.182:
  %.1509 = load i32, i32* %.2
  %.1510 = add i32 %.1509, 84
  store i32 %.1510, i32* %.2
  br label %.1507 
.185:
  %.187 = load i32, i32* %.1
  %.189 = icmp slt i32 %.187, 84
  br i1 %.189, label %.181, label %.182
.191:
  %.203 = load i32, i32* %.1
  %.204 = icmp sgt i32 %.203, 0
  br i1 %.204, label %.205, label %.202
.192:
  %.1503 = load i32, i32* %.2
  %.1504 = add i32 %.1503, 83
  store i32 %.1504, i32* %.2
  br label %.1501 
.195:
  %.197 = load i32, i32* %.1
  %.199 = icmp slt i32 %.197, 83
  br i1 %.199, label %.191, label %.192
.201:
  %.213 = load i32, i32* %.1
  %.214 = icmp sgt i32 %.213, 0
  br i1 %.214, label %.215, label %.212
.202:
  %.1497 = load i32, i32* %.2
  %.1498 = add i32 %.1497, 82
  store i32 %.1498, i32* %.2
  br label %.1495 
.205:
  %.207 = load i32, i32* %.1
  %.209 = icmp slt i32 %.207, 82
  br i1 %.209, label %.201, label %.202
.211:
  %.223 = load i32, i32* %.1
  %.224 = icmp sgt i32 %.223, 0
  br i1 %.224, label %.225, label %.222
.212:
  %.1491 = load i32, i32* %.2
  %.1492 = add i32 %.1491, 81
  store i32 %.1492, i32* %.2
  br label %.1489 
.215:
  %.217 = load i32, i32* %.1
  %.219 = icmp slt i32 %.217, 81
  br i1 %.219, label %.211, label %.212
.221:
  %.233 = load i32, i32* %.1
  %.234 = icmp sgt i32 %.233, 0
  br i1 %.234, label %.235, label %.232
.222:
  %.1485 = load i32, i32* %.2
  %.1486 = add i32 %.1485, 80
  store i32 %.1486, i32* %.2
  br label %.1483 
.225:
  %.227 = load i32, i32* %.1
  %.229 = icmp slt i32 %.227, 80
  br i1 %.229, label %.221, label %.222
.231:
  %.243 = load i32, i32* %.1
  %.244 = icmp sgt i32 %.243, 0
  br i1 %.244, label %.245, label %.242
.232:
  %.1479 = load i32, i32* %.2
  %.1480 = add i32 %.1479, 79
  store i32 %.1480, i32* %.2
  br label %.1477 
.235:
  %.237 = load i32, i32* %.1
  %.239 = icmp slt i32 %.237, 79
  br i1 %.239, label %.231, label %.232
.241:
  %.253 = load i32, i32* %.1
  %.254 = icmp sgt i32 %.253, 0
  br i1 %.254, label %.255, label %.252
.242:
  %.1473 = load i32, i32* %.2
  %.1474 = add i32 %.1473, 78
  store i32 %.1474, i32* %.2
  br label %.1471 
.245:
  %.247 = load i32, i32* %.1
  %.249 = icmp slt i32 %.247, 78
  br i1 %.249, label %.241, label %.242
.251:
  %.263 = load i32, i32* %.1
  %.264 = icmp sgt i32 %.263, 0
  br i1 %.264, label %.265, label %.262
.252:
  %.1467 = load i32, i32* %.2
  %.1468 = add i32 %.1467, 77
  store i32 %.1468, i32* %.2
  br label %.1465 
.255:
  %.257 = load i32, i32* %.1
  %.259 = icmp slt i32 %.257, 77
  br i1 %.259, label %.251, label %.252
.261:
  %.273 = load i32, i32* %.1
  %.274 = icmp sgt i32 %.273, 0
  br i1 %.274, label %.275, label %.272
.262:
  %.1461 = load i32, i32* %.2
  %.1462 = add i32 %.1461, 76
  store i32 %.1462, i32* %.2
  br label %.1459 
.265:
  %.267 = load i32, i32* %.1
  %.269 = icmp slt i32 %.267, 76
  br i1 %.269, label %.261, label %.262
.271:
  %.283 = load i32, i32* %.1
  %.284 = icmp sgt i32 %.283, 0
  br i1 %.284, label %.285, label %.282
.272:
  %.1455 = load i32, i32* %.2
  %.1456 = add i32 %.1455, 75
  store i32 %.1456, i32* %.2
  br label %.1453 
.275:
  %.277 = load i32, i32* %.1
  %.279 = icmp slt i32 %.277, 75
  br i1 %.279, label %.271, label %.272
.281:
  %.293 = load i32, i32* %.1
  %.294 = icmp sgt i32 %.293, 0
  br i1 %.294, label %.295, label %.292
.282:
  %.1449 = load i32, i32* %.2
  %.1450 = add i32 %.1449, 74
  store i32 %.1450, i32* %.2
  br label %.1447 
.285:
  %.287 = load i32, i32* %.1
  %.289 = icmp slt i32 %.287, 74
  br i1 %.289, label %.281, label %.282
.291:
  %.303 = load i32, i32* %.1
  %.304 = icmp sgt i32 %.303, 0
  br i1 %.304, label %.305, label %.302
.292:
  %.1443 = load i32, i32* %.2
  %.1444 = add i32 %.1443, 73
  store i32 %.1444, i32* %.2
  br label %.1441 
.295:
  %.297 = load i32, i32* %.1
  %.299 = icmp slt i32 %.297, 73
  br i1 %.299, label %.291, label %.292
.301:
  %.313 = load i32, i32* %.1
  %.314 = icmp sgt i32 %.313, 0
  br i1 %.314, label %.315, label %.312
.302:
  %.1437 = load i32, i32* %.2
  %.1438 = add i32 %.1437, 72
  store i32 %.1438, i32* %.2
  br label %.1435 
.305:
  %.307 = load i32, i32* %.1
  %.309 = icmp slt i32 %.307, 72
  br i1 %.309, label %.301, label %.302
.311:
  %.323 = load i32, i32* %.1
  %.324 = icmp sgt i32 %.323, 0
  br i1 %.324, label %.325, label %.322
.312:
  %.1431 = load i32, i32* %.2
  %.1432 = add i32 %.1431, 71
  store i32 %.1432, i32* %.2
  br label %.1429 
.315:
  %.317 = load i32, i32* %.1
  %.319 = icmp slt i32 %.317, 71
  br i1 %.319, label %.311, label %.312
.321:
  %.333 = load i32, i32* %.1
  %.334 = icmp sgt i32 %.333, 0
  br i1 %.334, label %.335, label %.332
.322:
  %.1425 = load i32, i32* %.2
  %.1426 = add i32 %.1425, 70
  store i32 %.1426, i32* %.2
  br label %.1423 
.325:
  %.327 = load i32, i32* %.1
  %.329 = icmp slt i32 %.327, 70
  br i1 %.329, label %.321, label %.322
.331:
  %.343 = load i32, i32* %.1
  %.344 = icmp sgt i32 %.343, 0
  br i1 %.344, label %.345, label %.342
.332:
  %.1419 = load i32, i32* %.2
  %.1420 = add i32 %.1419, 69
  store i32 %.1420, i32* %.2
  br label %.1417 
.335:
  %.337 = load i32, i32* %.1
  %.339 = icmp slt i32 %.337, 69
  br i1 %.339, label %.331, label %.332
.341:
  %.353 = load i32, i32* %.1
  %.354 = icmp sgt i32 %.353, 0
  br i1 %.354, label %.355, label %.352
.342:
  %.1413 = load i32, i32* %.2
  %.1414 = add i32 %.1413, 68
  store i32 %.1414, i32* %.2
  br label %.1411 
.345:
  %.347 = load i32, i32* %.1
  %.349 = icmp slt i32 %.347, 68
  br i1 %.349, label %.341, label %.342
.351:
  %.363 = load i32, i32* %.1
  %.364 = icmp sgt i32 %.363, 0
  br i1 %.364, label %.365, label %.362
.352:
  %.1407 = load i32, i32* %.2
  %.1408 = add i32 %.1407, 67
  store i32 %.1408, i32* %.2
  br label %.1405 
.355:
  %.357 = load i32, i32* %.1
  %.359 = icmp slt i32 %.357, 67
  br i1 %.359, label %.351, label %.352
.361:
  %.373 = load i32, i32* %.1
  %.374 = icmp sgt i32 %.373, 0
  br i1 %.374, label %.375, label %.372
.362:
  %.1401 = load i32, i32* %.2
  %.1402 = add i32 %.1401, 66
  store i32 %.1402, i32* %.2
  br label %.1399 
.365:
  %.367 = load i32, i32* %.1
  %.369 = icmp slt i32 %.367, 66
  br i1 %.369, label %.361, label %.362
.371:
  %.383 = load i32, i32* %.1
  %.384 = icmp sgt i32 %.383, 0
  br i1 %.384, label %.385, label %.382
.372:
  %.1395 = load i32, i32* %.2
  %.1396 = add i32 %.1395, 65
  store i32 %.1396, i32* %.2
  br label %.1393 
.375:
  %.377 = load i32, i32* %.1
  %.379 = icmp slt i32 %.377, 65
  br i1 %.379, label %.371, label %.372
.381:
  %.393 = load i32, i32* %.1
  %.394 = icmp sgt i32 %.393, 0
  br i1 %.394, label %.395, label %.392
.382:
  %.1389 = load i32, i32* %.2
  %.1390 = add i32 %.1389, 64
  store i32 %.1390, i32* %.2
  br label %.1387 
.385:
  %.387 = load i32, i32* %.1
  %.389 = icmp slt i32 %.387, 64
  br i1 %.389, label %.381, label %.382
.391:
  %.403 = load i32, i32* %.1
  %.404 = icmp sgt i32 %.403, 0
  br i1 %.404, label %.405, label %.402
.392:
  %.1383 = load i32, i32* %.2
  %.1384 = add i32 %.1383, 63
  store i32 %.1384, i32* %.2
  br label %.1381 
.395:
  %.397 = load i32, i32* %.1
  %.399 = icmp slt i32 %.397, 63
  br i1 %.399, label %.391, label %.392
.401:
  %.413 = load i32, i32* %.1
  %.414 = icmp sgt i32 %.413, 0
  br i1 %.414, label %.415, label %.412
.402:
  %.1377 = load i32, i32* %.2
  %.1378 = add i32 %.1377, 62
  store i32 %.1378, i32* %.2
  br label %.1375 
.405:
  %.407 = load i32, i32* %.1
  %.409 = icmp slt i32 %.407, 62
  br i1 %.409, label %.401, label %.402
.411:
  %.423 = load i32, i32* %.1
  %.424 = icmp sgt i32 %.423, 0
  br i1 %.424, label %.425, label %.422
.412:
  %.1371 = load i32, i32* %.2
  %.1372 = add i32 %.1371, 61
  store i32 %.1372, i32* %.2
  br label %.1369 
.415:
  %.417 = load i32, i32* %.1
  %.419 = icmp slt i32 %.417, 61
  br i1 %.419, label %.411, label %.412
.421:
  %.433 = load i32, i32* %.1
  %.434 = icmp sgt i32 %.433, 0
  br i1 %.434, label %.435, label %.432
.422:
  %.1365 = load i32, i32* %.2
  %.1366 = add i32 %.1365, 60
  store i32 %.1366, i32* %.2
  br label %.1363 
.425:
  %.427 = load i32, i32* %.1
  %.429 = icmp slt i32 %.427, 60
  br i1 %.429, label %.421, label %.422
.431:
  %.443 = load i32, i32* %.1
  %.444 = icmp sgt i32 %.443, 0
  br i1 %.444, label %.445, label %.442
.432:
  %.1359 = load i32, i32* %.2
  %.1360 = add i32 %.1359, 59
  store i32 %.1360, i32* %.2
  br label %.1357 
.435:
  %.437 = load i32, i32* %.1
  %.439 = icmp slt i32 %.437, 59
  br i1 %.439, label %.431, label %.432
.441:
  %.453 = load i32, i32* %.1
  %.454 = icmp sgt i32 %.453, 0
  br i1 %.454, label %.455, label %.452
.442:
  %.1353 = load i32, i32* %.2
  %.1354 = add i32 %.1353, 58
  store i32 %.1354, i32* %.2
  br label %.1351 
.445:
  %.447 = load i32, i32* %.1
  %.449 = icmp slt i32 %.447, 58
  br i1 %.449, label %.441, label %.442
.451:
  %.463 = load i32, i32* %.1
  %.464 = icmp sgt i32 %.463, 0
  br i1 %.464, label %.465, label %.462
.452:
  %.1347 = load i32, i32* %.2
  %.1348 = add i32 %.1347, 57
  store i32 %.1348, i32* %.2
  br label %.1345 
.455:
  %.457 = load i32, i32* %.1
  %.459 = icmp slt i32 %.457, 57
  br i1 %.459, label %.451, label %.452
.461:
  %.473 = load i32, i32* %.1
  %.474 = icmp sgt i32 %.473, 0
  br i1 %.474, label %.475, label %.472
.462:
  %.1341 = load i32, i32* %.2
  %.1342 = add i32 %.1341, 56
  store i32 %.1342, i32* %.2
  br label %.1339 
.465:
  %.467 = load i32, i32* %.1
  %.469 = icmp slt i32 %.467, 56
  br i1 %.469, label %.461, label %.462
.471:
  %.483 = load i32, i32* %.1
  %.484 = icmp sgt i32 %.483, 0
  br i1 %.484, label %.485, label %.482
.472:
  %.1335 = load i32, i32* %.2
  %.1336 = add i32 %.1335, 55
  store i32 %.1336, i32* %.2
  br label %.1333 
.475:
  %.477 = load i32, i32* %.1
  %.479 = icmp slt i32 %.477, 55
  br i1 %.479, label %.471, label %.472
.481:
  %.493 = load i32, i32* %.1
  %.494 = icmp sgt i32 %.493, 0
  br i1 %.494, label %.495, label %.492
.482:
  %.1329 = load i32, i32* %.2
  %.1330 = add i32 %.1329, 54
  store i32 %.1330, i32* %.2
  br label %.1327 
.485:
  %.487 = load i32, i32* %.1
  %.489 = icmp slt i32 %.487, 54
  br i1 %.489, label %.481, label %.482
.491:
  %.503 = load i32, i32* %.1
  %.504 = icmp sgt i32 %.503, 0
  br i1 %.504, label %.505, label %.502
.492:
  %.1323 = load i32, i32* %.2
  %.1324 = add i32 %.1323, 53
  store i32 %.1324, i32* %.2
  br label %.1321 
.495:
  %.497 = load i32, i32* %.1
  %.499 = icmp slt i32 %.497, 53
  br i1 %.499, label %.491, label %.492
.501:
  %.513 = load i32, i32* %.1
  %.514 = icmp sgt i32 %.513, 0
  br i1 %.514, label %.515, label %.512
.502:
  %.1317 = load i32, i32* %.2
  %.1318 = add i32 %.1317, 52
  store i32 %.1318, i32* %.2
  br label %.1315 
.505:
  %.507 = load i32, i32* %.1
  %.509 = icmp slt i32 %.507, 52
  br i1 %.509, label %.501, label %.502
.511:
  %.523 = load i32, i32* %.1
  %.524 = icmp sgt i32 %.523, 0
  br i1 %.524, label %.525, label %.522
.512:
  %.1311 = load i32, i32* %.2
  %.1312 = add i32 %.1311, 51
  store i32 %.1312, i32* %.2
  br label %.1309 
.515:
  %.517 = load i32, i32* %.1
  %.519 = icmp slt i32 %.517, 51
  br i1 %.519, label %.511, label %.512
.521:
  %.533 = load i32, i32* %.1
  %.534 = icmp sgt i32 %.533, 0
  br i1 %.534, label %.535, label %.532
.522:
  %.1305 = load i32, i32* %.2
  %.1306 = add i32 %.1305, 50
  store i32 %.1306, i32* %.2
  br label %.1303 
.525:
  %.527 = load i32, i32* %.1
  %.529 = icmp slt i32 %.527, 50
  br i1 %.529, label %.521, label %.522
.531:
  %.543 = load i32, i32* %.1
  %.544 = icmp sgt i32 %.543, 0
  br i1 %.544, label %.545, label %.542
.532:
  %.1299 = load i32, i32* %.2
  %.1300 = add i32 %.1299, 49
  store i32 %.1300, i32* %.2
  br label %.1297 
.535:
  %.537 = load i32, i32* %.1
  %.539 = icmp slt i32 %.537, 49
  br i1 %.539, label %.531, label %.532
.541:
  %.553 = load i32, i32* %.1
  %.554 = icmp sgt i32 %.553, 0
  br i1 %.554, label %.555, label %.552
.542:
  %.1293 = load i32, i32* %.2
  %.1294 = add i32 %.1293, 48
  store i32 %.1294, i32* %.2
  br label %.1291 
.545:
  %.547 = load i32, i32* %.1
  %.549 = icmp slt i32 %.547, 48
  br i1 %.549, label %.541, label %.542
.551:
  %.563 = load i32, i32* %.1
  %.564 = icmp sgt i32 %.563, 0
  br i1 %.564, label %.565, label %.562
.552:
  %.1287 = load i32, i32* %.2
  %.1288 = add i32 %.1287, 47
  store i32 %.1288, i32* %.2
  br label %.1285 
.555:
  %.557 = load i32, i32* %.1
  %.559 = icmp slt i32 %.557, 47
  br i1 %.559, label %.551, label %.552
.561:
  %.573 = load i32, i32* %.1
  %.574 = icmp sgt i32 %.573, 0
  br i1 %.574, label %.575, label %.572
.562:
  %.1281 = load i32, i32* %.2
  %.1282 = add i32 %.1281, 46
  store i32 %.1282, i32* %.2
  br label %.1279 
.565:
  %.567 = load i32, i32* %.1
  %.569 = icmp slt i32 %.567, 46
  br i1 %.569, label %.561, label %.562
.571:
  %.583 = load i32, i32* %.1
  %.584 = icmp sgt i32 %.583, 0
  br i1 %.584, label %.585, label %.582
.572:
  %.1275 = load i32, i32* %.2
  %.1276 = add i32 %.1275, 45
  store i32 %.1276, i32* %.2
  br label %.1273 
.575:
  %.577 = load i32, i32* %.1
  %.579 = icmp slt i32 %.577, 45
  br i1 %.579, label %.571, label %.572
.581:
  %.593 = load i32, i32* %.1
  %.594 = icmp sgt i32 %.593, 0
  br i1 %.594, label %.595, label %.592
.582:
  %.1269 = load i32, i32* %.2
  %.1270 = add i32 %.1269, 44
  store i32 %.1270, i32* %.2
  br label %.1267 
.585:
  %.587 = load i32, i32* %.1
  %.589 = icmp slt i32 %.587, 44
  br i1 %.589, label %.581, label %.582
.591:
  %.603 = load i32, i32* %.1
  %.604 = icmp sgt i32 %.603, 0
  br i1 %.604, label %.605, label %.602
.592:
  %.1263 = load i32, i32* %.2
  %.1264 = add i32 %.1263, 43
  store i32 %.1264, i32* %.2
  br label %.1261 
.595:
  %.597 = load i32, i32* %.1
  %.599 = icmp slt i32 %.597, 43
  br i1 %.599, label %.591, label %.592
.601:
  %.613 = load i32, i32* %.1
  %.614 = icmp sgt i32 %.613, 0
  br i1 %.614, label %.615, label %.612
.602:
  %.1257 = load i32, i32* %.2
  %.1258 = add i32 %.1257, 42
  store i32 %.1258, i32* %.2
  br label %.1255 
.605:
  %.607 = load i32, i32* %.1
  %.609 = icmp slt i32 %.607, 42
  br i1 %.609, label %.601, label %.602
.611:
  %.623 = load i32, i32* %.1
  %.624 = icmp sgt i32 %.623, 0
  br i1 %.624, label %.625, label %.622
.612:
  %.1251 = load i32, i32* %.2
  %.1252 = add i32 %.1251, 41
  store i32 %.1252, i32* %.2
  br label %.1249 
.615:
  %.617 = load i32, i32* %.1
  %.619 = icmp slt i32 %.617, 41
  br i1 %.619, label %.611, label %.612
.621:
  %.633 = load i32, i32* %.1
  %.634 = icmp sgt i32 %.633, 0
  br i1 %.634, label %.635, label %.632
.622:
  %.1245 = load i32, i32* %.2
  %.1246 = add i32 %.1245, 40
  store i32 %.1246, i32* %.2
  br label %.1243 
.625:
  %.627 = load i32, i32* %.1
  %.629 = icmp slt i32 %.627, 40
  br i1 %.629, label %.621, label %.622
.631:
  %.643 = load i32, i32* %.1
  %.644 = icmp sgt i32 %.643, 0
  br i1 %.644, label %.645, label %.642
.632:
  %.1239 = load i32, i32* %.2
  %.1240 = add i32 %.1239, 39
  store i32 %.1240, i32* %.2
  br label %.1237 
.635:
  %.637 = load i32, i32* %.1
  %.639 = icmp slt i32 %.637, 39
  br i1 %.639, label %.631, label %.632
.641:
  %.653 = load i32, i32* %.1
  %.654 = icmp sgt i32 %.653, 0
  br i1 %.654, label %.655, label %.652
.642:
  %.1233 = load i32, i32* %.2
  %.1234 = add i32 %.1233, 38
  store i32 %.1234, i32* %.2
  br label %.1231 
.645:
  %.647 = load i32, i32* %.1
  %.649 = icmp slt i32 %.647, 38
  br i1 %.649, label %.641, label %.642
.651:
  %.663 = load i32, i32* %.1
  %.664 = icmp sgt i32 %.663, 0
  br i1 %.664, label %.665, label %.662
.652:
  %.1227 = load i32, i32* %.2
  %.1228 = add i32 %.1227, 37
  store i32 %.1228, i32* %.2
  br label %.1225 
.655:
  %.657 = load i32, i32* %.1
  %.659 = icmp slt i32 %.657, 37
  br i1 %.659, label %.651, label %.652
.661:
  %.673 = load i32, i32* %.1
  %.674 = icmp sgt i32 %.673, 0
  br i1 %.674, label %.675, label %.672
.662:
  %.1221 = load i32, i32* %.2
  %.1222 = add i32 %.1221, 36
  store i32 %.1222, i32* %.2
  br label %.1219 
.665:
  %.667 = load i32, i32* %.1
  %.669 = icmp slt i32 %.667, 36
  br i1 %.669, label %.661, label %.662
.671:
  %.683 = load i32, i32* %.1
  %.684 = icmp sgt i32 %.683, 0
  br i1 %.684, label %.685, label %.682
.672:
  %.1215 = load i32, i32* %.2
  %.1216 = add i32 %.1215, 35
  store i32 %.1216, i32* %.2
  br label %.1213 
.675:
  %.677 = load i32, i32* %.1
  %.679 = icmp slt i32 %.677, 35
  br i1 %.679, label %.671, label %.672
.681:
  %.693 = load i32, i32* %.1
  %.694 = icmp sgt i32 %.693, 0
  br i1 %.694, label %.695, label %.692
.682:
  %.1209 = load i32, i32* %.2
  %.1210 = add i32 %.1209, 34
  store i32 %.1210, i32* %.2
  br label %.1207 
.685:
  %.687 = load i32, i32* %.1
  %.689 = icmp slt i32 %.687, 34
  br i1 %.689, label %.681, label %.682
.691:
  %.703 = load i32, i32* %.1
  %.704 = icmp sgt i32 %.703, 0
  br i1 %.704, label %.705, label %.702
.692:
  %.1203 = load i32, i32* %.2
  %.1204 = add i32 %.1203, 33
  store i32 %.1204, i32* %.2
  br label %.1201 
.695:
  %.697 = load i32, i32* %.1
  %.699 = icmp slt i32 %.697, 33
  br i1 %.699, label %.691, label %.692
.701:
  %.713 = load i32, i32* %.1
  %.714 = icmp sgt i32 %.713, 0
  br i1 %.714, label %.715, label %.712
.702:
  %.1197 = load i32, i32* %.2
  %.1198 = add i32 %.1197, 32
  store i32 %.1198, i32* %.2
  br label %.1195 
.705:
  %.707 = load i32, i32* %.1
  %.709 = icmp slt i32 %.707, 32
  br i1 %.709, label %.701, label %.702
.711:
  %.723 = load i32, i32* %.1
  %.724 = icmp sgt i32 %.723, 0
  br i1 %.724, label %.725, label %.722
.712:
  %.1191 = load i32, i32* %.2
  %.1192 = add i32 %.1191, 31
  store i32 %.1192, i32* %.2
  br label %.1189 
.715:
  %.717 = load i32, i32* %.1
  %.719 = icmp slt i32 %.717, 31
  br i1 %.719, label %.711, label %.712
.721:
  %.733 = load i32, i32* %.1
  %.734 = icmp sgt i32 %.733, 0
  br i1 %.734, label %.735, label %.732
.722:
  %.1185 = load i32, i32* %.2
  %.1186 = add i32 %.1185, 30
  store i32 %.1186, i32* %.2
  br label %.1183 
.725:
  %.727 = load i32, i32* %.1
  %.729 = icmp slt i32 %.727, 30
  br i1 %.729, label %.721, label %.722
.731:
  %.743 = load i32, i32* %.1
  %.744 = icmp sgt i32 %.743, 0
  br i1 %.744, label %.745, label %.742
.732:
  %.1179 = load i32, i32* %.2
  %.1180 = add i32 %.1179, 29
  store i32 %.1180, i32* %.2
  br label %.1177 
.735:
  %.737 = load i32, i32* %.1
  %.739 = icmp slt i32 %.737, 29
  br i1 %.739, label %.731, label %.732
.741:
  %.753 = load i32, i32* %.1
  %.754 = icmp sgt i32 %.753, 0
  br i1 %.754, label %.755, label %.752
.742:
  %.1173 = load i32, i32* %.2
  %.1174 = add i32 %.1173, 28
  store i32 %.1174, i32* %.2
  br label %.1171 
.745:
  %.747 = load i32, i32* %.1
  %.749 = icmp slt i32 %.747, 28
  br i1 %.749, label %.741, label %.742
.751:
  %.763 = load i32, i32* %.1
  %.764 = icmp sgt i32 %.763, 0
  br i1 %.764, label %.765, label %.762
.752:
  %.1167 = load i32, i32* %.2
  %.1168 = add i32 %.1167, 27
  store i32 %.1168, i32* %.2
  br label %.1165 
.755:
  %.757 = load i32, i32* %.1
  %.759 = icmp slt i32 %.757, 27
  br i1 %.759, label %.751, label %.752
.761:
  %.773 = load i32, i32* %.1
  %.774 = icmp sgt i32 %.773, 0
  br i1 %.774, label %.775, label %.772
.762:
  %.1161 = load i32, i32* %.2
  %.1162 = add i32 %.1161, 26
  store i32 %.1162, i32* %.2
  br label %.1159 
.765:
  %.767 = load i32, i32* %.1
  %.769 = icmp slt i32 %.767, 26
  br i1 %.769, label %.761, label %.762
.771:
  %.783 = load i32, i32* %.1
  %.784 = icmp sgt i32 %.783, 0
  br i1 %.784, label %.785, label %.782
.772:
  %.1155 = load i32, i32* %.2
  %.1156 = add i32 %.1155, 25
  store i32 %.1156, i32* %.2
  br label %.1153 
.775:
  %.777 = load i32, i32* %.1
  %.779 = icmp slt i32 %.777, 25
  br i1 %.779, label %.771, label %.772
.781:
  %.793 = load i32, i32* %.1
  %.794 = icmp sgt i32 %.793, 0
  br i1 %.794, label %.795, label %.792
.782:
  %.1149 = load i32, i32* %.2
  %.1150 = add i32 %.1149, 24
  store i32 %.1150, i32* %.2
  br label %.1147 
.785:
  %.787 = load i32, i32* %.1
  %.789 = icmp slt i32 %.787, 24
  br i1 %.789, label %.781, label %.782
.791:
  %.803 = load i32, i32* %.1
  %.804 = icmp sgt i32 %.803, 0
  br i1 %.804, label %.805, label %.802
.792:
  %.1143 = load i32, i32* %.2
  %.1144 = add i32 %.1143, 23
  store i32 %.1144, i32* %.2
  br label %.1141 
.795:
  %.797 = load i32, i32* %.1
  %.799 = icmp slt i32 %.797, 23
  br i1 %.799, label %.791, label %.792
.801:
  %.813 = load i32, i32* %.1
  %.814 = icmp sgt i32 %.813, 0
  br i1 %.814, label %.815, label %.812
.802:
  %.1137 = load i32, i32* %.2
  %.1138 = add i32 %.1137, 22
  store i32 %.1138, i32* %.2
  br label %.1135 
.805:
  %.807 = load i32, i32* %.1
  %.809 = icmp slt i32 %.807, 22
  br i1 %.809, label %.801, label %.802
.811:
  %.823 = load i32, i32* %.1
  %.824 = icmp sgt i32 %.823, 0
  br i1 %.824, label %.825, label %.822
.812:
  %.1131 = load i32, i32* %.2
  %.1132 = add i32 %.1131, 21
  store i32 %.1132, i32* %.2
  br label %.1129 
.815:
  %.817 = load i32, i32* %.1
  %.819 = icmp slt i32 %.817, 21
  br i1 %.819, label %.811, label %.812
.821:
  %.833 = load i32, i32* %.1
  %.834 = icmp sgt i32 %.833, 0
  br i1 %.834, label %.835, label %.832
.822:
  %.1125 = load i32, i32* %.2
  %.1126 = add i32 %.1125, 20
  store i32 %.1126, i32* %.2
  br label %.1123 
.825:
  %.827 = load i32, i32* %.1
  %.829 = icmp slt i32 %.827, 20
  br i1 %.829, label %.821, label %.822
.831:
  %.843 = load i32, i32* %.1
  %.844 = icmp sgt i32 %.843, 0
  br i1 %.844, label %.845, label %.842
.832:
  %.1119 = load i32, i32* %.2
  %.1120 = add i32 %.1119, 19
  store i32 %.1120, i32* %.2
  br label %.1117 
.835:
  %.837 = load i32, i32* %.1
  %.839 = icmp slt i32 %.837, 19
  br i1 %.839, label %.831, label %.832
.841:
  %.853 = load i32, i32* %.1
  %.854 = icmp sgt i32 %.853, 0
  br i1 %.854, label %.855, label %.852
.842:
  %.1113 = load i32, i32* %.2
  %.1114 = add i32 %.1113, 18
  store i32 %.1114, i32* %.2
  br label %.1111 
.845:
  %.847 = load i32, i32* %.1
  %.849 = icmp slt i32 %.847, 18
  br i1 %.849, label %.841, label %.842
.851:
  %.863 = load i32, i32* %.1
  %.864 = icmp sgt i32 %.863, 0
  br i1 %.864, label %.865, label %.862
.852:
  %.1107 = load i32, i32* %.2
  %.1108 = add i32 %.1107, 17
  store i32 %.1108, i32* %.2
  br label %.1105 
.855:
  %.857 = load i32, i32* %.1
  %.859 = icmp slt i32 %.857, 17
  br i1 %.859, label %.851, label %.852
.861:
  %.873 = load i32, i32* %.1
  %.874 = icmp sgt i32 %.873, 0
  br i1 %.874, label %.875, label %.872
.862:
  %.1101 = load i32, i32* %.2
  %.1102 = add i32 %.1101, 16
  store i32 %.1102, i32* %.2
  br label %.1099 
.865:
  %.867 = load i32, i32* %.1
  %.869 = icmp slt i32 %.867, 16
  br i1 %.869, label %.861, label %.862
.871:
  %.883 = load i32, i32* %.1
  %.884 = icmp sgt i32 %.883, 0
  br i1 %.884, label %.885, label %.882
.872:
  %.1095 = load i32, i32* %.2
  %.1096 = add i32 %.1095, 15
  store i32 %.1096, i32* %.2
  br label %.1093 
.875:
  %.877 = load i32, i32* %.1
  %.879 = icmp slt i32 %.877, 15
  br i1 %.879, label %.871, label %.872
.881:
  %.893 = load i32, i32* %.1
  %.894 = icmp sgt i32 %.893, 0
  br i1 %.894, label %.895, label %.892
.882:
  %.1089 = load i32, i32* %.2
  %.1090 = add i32 %.1089, 14
  store i32 %.1090, i32* %.2
  br label %.1087 
.885:
  %.887 = load i32, i32* %.1
  %.889 = icmp slt i32 %.887, 14
  br i1 %.889, label %.881, label %.882
.891:
  %.903 = load i32, i32* %.1
  %.904 = icmp sgt i32 %.903, 0
  br i1 %.904, label %.905, label %.902
.892:
  %.1083 = load i32, i32* %.2
  %.1084 = add i32 %.1083, 13
  store i32 %.1084, i32* %.2
  br label %.1081 
.895:
  %.897 = load i32, i32* %.1
  %.899 = icmp slt i32 %.897, 13
  br i1 %.899, label %.891, label %.892
.901:
  %.913 = load i32, i32* %.1
  %.914 = icmp sgt i32 %.913, 0
  br i1 %.914, label %.915, label %.912
.902:
  %.1077 = load i32, i32* %.2
  %.1078 = add i32 %.1077, 12
  store i32 %.1078, i32* %.2
  br label %.1075 
.905:
  %.907 = load i32, i32* %.1
  %.909 = icmp slt i32 %.907, 12
  br i1 %.909, label %.901, label %.902
.911:
  %.923 = load i32, i32* %.1
  %.924 = icmp sgt i32 %.923, 0
  br i1 %.924, label %.925, label %.922
.912:
  %.1071 = load i32, i32* %.2
  %.1072 = add i32 %.1071, 11
  store i32 %.1072, i32* %.2
  br label %.1069 
.915:
  %.917 = load i32, i32* %.1
  %.919 = icmp slt i32 %.917, 11
  br i1 %.919, label %.911, label %.912
.921:
  %.933 = load i32, i32* %.1
  %.934 = icmp sgt i32 %.933, 0
  br i1 %.934, label %.935, label %.932
.922:
  %.1065 = load i32, i32* %.2
  %.1066 = add i32 %.1065, 10
  store i32 %.1066, i32* %.2
  br label %.1063 
.925:
  %.927 = load i32, i32* %.1
  %.929 = icmp slt i32 %.927, 10
  br i1 %.929, label %.921, label %.922
.931:
  %.943 = load i32, i32* %.1
  %.944 = icmp sgt i32 %.943, 0
  br i1 %.944, label %.945, label %.942
.932:
  %.1059 = load i32, i32* %.2
  %.1060 = add i32 %.1059, 9
  store i32 %.1060, i32* %.2
  br label %.1057 
.935:
  %.937 = load i32, i32* %.1
  %.939 = icmp slt i32 %.937, 9
  br i1 %.939, label %.931, label %.932
.941:
  %.953 = load i32, i32* %.1
  %.954 = icmp sgt i32 %.953, 0
  br i1 %.954, label %.955, label %.952
.942:
  %.1053 = load i32, i32* %.2
  %.1054 = add i32 %.1053, 8
  store i32 %.1054, i32* %.2
  br label %.1051 
.945:
  %.947 = load i32, i32* %.1
  %.949 = icmp slt i32 %.947, 8
  br i1 %.949, label %.941, label %.942
.951:
  %.963 = load i32, i32* %.1
  %.964 = icmp sgt i32 %.963, 0
  br i1 %.964, label %.965, label %.962
.952:
  %.1047 = load i32, i32* %.2
  %.1048 = add i32 %.1047, 7
  store i32 %.1048, i32* %.2
  br label %.1045 
.955:
  %.957 = load i32, i32* %.1
  %.959 = icmp slt i32 %.957, 7
  br i1 %.959, label %.951, label %.952
.961:
  %.973 = load i32, i32* %.1
  %.974 = icmp sgt i32 %.973, 0
  br i1 %.974, label %.975, label %.972
.962:
  %.1041 = load i32, i32* %.2
  %.1042 = add i32 %.1041, 6
  store i32 %.1042, i32* %.2
  br label %.1039 
.965:
  %.967 = load i32, i32* %.1
  %.969 = icmp slt i32 %.967, 6
  br i1 %.969, label %.961, label %.962
.971:
  %.983 = load i32, i32* %.1
  %.984 = icmp sgt i32 %.983, 0
  br i1 %.984, label %.985, label %.982
.972:
  %.1035 = load i32, i32* %.2
  %.1036 = add i32 %.1035, 5
  store i32 %.1036, i32* %.2
  br label %.1033 
.975:
  %.977 = load i32, i32* %.1
  %.979 = icmp slt i32 %.977, 5
  br i1 %.979, label %.971, label %.972
.981:
  %.993 = load i32, i32* %.1
  %.994 = icmp sgt i32 %.993, 0
  br i1 %.994, label %.995, label %.992
.982:
  %.1029 = load i32, i32* %.2
  %.1030 = add i32 %.1029, 4
  store i32 %.1030, i32* %.2
  br label %.1027 
.985:
  %.987 = load i32, i32* %.1
  %.989 = icmp slt i32 %.987, 4
  br i1 %.989, label %.981, label %.982
.991:
  %.1003 = load i32, i32* %.1
  %.1004 = icmp sgt i32 %.1003, 0
  br i1 %.1004, label %.1005, label %.1002
.992:
  %.1023 = load i32, i32* %.2
  %.1024 = add i32 %.1023, 3
  store i32 %.1024, i32* %.2
  br label %.1021 
.995:
  %.997 = load i32, i32* %.1
  %.999 = icmp slt i32 %.997, 3
  br i1 %.999, label %.991, label %.992
.1001:
  %.1011 = load i32, i32* %.2
  %.1013 = add i32 %.1011, 1
  store i32 %.1013, i32* %.2
  br label %.1015 
.1002:
  %.1017 = load i32, i32* %.2
  %.1018 = add i32 %.1017, 2
  store i32 %.1018, i32* %.2
  br label %.1015 
.1005:
  %.1007 = load i32, i32* %.1
  %.1009 = icmp slt i32 %.1007, 2
  br i1 %.1009, label %.1001, label %.1002
.1015:
  br label %.1021 
.1021:
  br label %.1027 
.1027:
  br label %.1033 
.1033:
  br label %.1039 
.1039:
  br label %.1045 
.1045:
  br label %.1051 
.1051:
  br label %.1057 
.1057:
  br label %.1063 
.1063:
  br label %.1069 
.1069:
  br label %.1075 
.1075:
  br label %.1081 
.1081:
  br label %.1087 
.1087:
  br label %.1093 
.1093:
  br label %.1099 
.1099:
  br label %.1105 
.1105:
  br label %.1111 
.1111:
  br label %.1117 
.1117:
  br label %.1123 
.1123:
  br label %.1129 
.1129:
  br label %.1135 
.1135:
  br label %.1141 
.1141:
  br label %.1147 
.1147:
  br label %.1153 
.1153:
  br label %.1159 
.1159:
  br label %.1165 
.1165:
  br label %.1171 
.1171:
  br label %.1177 
.1177:
  br label %.1183 
.1183:
  br label %.1189 
.1189:
  br label %.1195 
.1195:
  br label %.1201 
.1201:
  br label %.1207 
.1207:
  br label %.1213 
.1213:
  br label %.1219 
.1219:
  br label %.1225 
.1225:
  br label %.1231 
.1231:
  br label %.1237 
.1237:
  br label %.1243 
.1243:
  br label %.1249 
.1249:
  br label %.1255 
.1255:
  br label %.1261 
.1261:
  br label %.1267 
.1267:
  br label %.1273 
.1273:
  br label %.1279 
.1279:
  br label %.1285 
.1285:
  br label %.1291 
.1291:
  br label %.1297 
.1297:
  br label %.1303 
.1303:
  br label %.1309 
.1309:
  br label %.1315 
.1315:
  br label %.1321 
.1321:
  br label %.1327 
.1327:
  br label %.1333 
.1333:
  br label %.1339 
.1339:
  br label %.1345 
.1345:
  br label %.1351 
.1351:
  br label %.1357 
.1357:
  br label %.1363 
.1363:
  br label %.1369 
.1369:
  br label %.1375 
.1375:
  br label %.1381 
.1381:
  br label %.1387 
.1387:
  br label %.1393 
.1393:
  br label %.1399 
.1399:
  br label %.1405 
.1405:
  br label %.1411 
.1411:
  br label %.1417 
.1417:
  br label %.1423 
.1423:
  br label %.1429 
.1429:
  br label %.1435 
.1435:
  br label %.1441 
.1441:
  br label %.1447 
.1447:
  br label %.1453 
.1453:
  br label %.1459 
.1459:
  br label %.1465 
.1465:
  br label %.1471 
.1471:
  br label %.1477 
.1477:
  br label %.1483 
.1483:
  br label %.1489 
.1489:
  br label %.1495 
.1495:
  br label %.1501 
.1501:
  br label %.1507 
.1507:
  br label %.1513 
.1513:
  br label %.1519 
.1519:
  br label %.1525 
.1525:
  br label %.1531 
.1531:
  br label %.1537 
.1537:
  br label %.1543 
.1543:
  br label %.1549 
.1549:
  br label %.1555 
.1555:
  br label %.1561 
.1561:
  br label %.1567 
.1567:
  br label %.1573 
.1573:
  br label %.1579 
.1579:
  br label %.1585 
.1585:
  br label %.1591 
.1591:
  br label %.1597 
.1597:
  br label %.1603 
.1603:
  %.1609 = load i32, i32* %.2
  call void @putint(i32 %.1609)
  call void @putch(i32 10)
  %.1614 = load i32, i32* %.7
  %.1615 = add i32 %.1614, 1
  store i32 %.1615, i32* %.7
  br label %.10wc 
}
