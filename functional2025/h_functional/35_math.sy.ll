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
@.G.e = global float zeroinitializer
define float @_user_my_fabs(float %.3){
.2:
  %.4 = alloca float
  store float %.3, float* %.4
  %.8 = load float, float* %.4
  %.10 = sitofp i32 0 to float
  %.11 = fcmp ugt float %.8, %.10
  br i1 %.11, label %.6, label %.7
.6:
  %.13 = load float, float* %.4
  ret float %.13 
.7:
  %.15 = load float, float* %.4
  %.17 = fsub float 0x0, %.15
  ret float %.17 
}
define float @_user_my_pow(float %.20, i32 %.23){
.19:
  %.39 = alloca float
  %.24 = alloca i32
  %.21 = alloca float
  store float %.20, float* %.21
  store i32 %.23, i32* %.24
  %.28 = load i32, i32* %.24
  %.29 = icmp slt i32 %.28, 0
  br i1 %.29, label %.26, label %.27
.26:
  %.32 = load float, float* %.21
  %.33 = load i32, i32* %.24
  %.34 = sub i32 0, %.33
  %.35at0 = call float @_user_my_pow(float %.32, i32 %.34)
  %.36 = sitofp i32 1 to float
  %.37 = fdiv float %.36, %.35at0
  ret float %.37 
.27:
  store float 0x3ff0000000000000, float* %.39
  br label %.42wc 
.42wc:
  %.46 = load i32, i32* %.24
  %.47 = icmp ne i32 %.46, 0
  br i1 %.47, label %.43wloop., label %.44wn
.43wloop.:
  %.51 = load i32, i32* %.24
  %.53 = srem i32 %.51, 2
  %.54 = icmp ne i32 %.53, 0
  br i1 %.54, label %.49, label %.50
.44wn:
  %.69 = load float, float* %.39
  ret float %.69 
.49:
  %.56 = load float, float* %.39
  %.57 = load float, float* %.21
  %.58 = fmul float %.56, %.57
  store float %.58, float* %.39
  br label %.50 
.50:
  %.61 = load float, float* %.21
  %.62 = load float, float* %.21
  %.63 = fmul float %.61, %.62
  store float %.63, float* %.21
  %.65 = load i32, i32* %.24
  %.66 = sdiv i32 %.65, 2
  store i32 %.66, i32* %.24
  br label %.42wc 
}
define float @_user_my_sqrt(float %.72){
.71:
  %.106 = alloca i32
  %.89 = alloca float
  %.73 = alloca float
  store float %.72, float* %.73
  %.77 = load float, float* %.73
  %.79 = sitofp i32 100 to float
  %.80 = fcmp ugt float %.77, %.79
  br i1 %.80, label %.75, label %.76
.75:
  %.83 = load float, float* %.73
  %.84 = sitofp i32 100 to float
  %.85 = fdiv float %.83, %.84
  %.86at1 = call float @_user_my_sqrt(float %.85)
  %.87 = fmul float 0x4024000000000000, %.86at1
  ret float %.87 
.76:
  %.90 = load float, float* %.73
  %.92 = sitofp i32 8 to float
  %.93 = fdiv float %.90, %.92
  %.95 = fadd float %.93, 0x3fe0000000000000
  %.96 = load float, float* %.73
  %.97 = sitofp i32 2 to float
  %.98 = fmul float %.97, %.96
  %.100 = load float, float* %.73
  %.101 = sitofp i32 4 to float
  %.102 = fadd float %.101, %.100
  %.103 = fdiv float %.98, %.102
  %.104 = fadd float %.95, %.103
  store float %.104, float* %.89
  store i32 10, i32* %.106
  br label %.109wc 
.109wc:
  %.113 = load i32, i32* %.106
  %.114 = icmp ne i32 %.113, 0
  br i1 %.114, label %.110wloop., label %.111wn
.110wloop.:
  %.116 = load float, float* %.89
  %.117 = load float, float* %.73
  %.118 = load float, float* %.89
  %.119 = fdiv float %.117, %.118
  %.120 = fadd float %.116, %.119
  %.121 = sitofp i32 2 to float
  %.122 = fdiv float %.120, %.121
  store float %.122, float* %.89
  %.124 = load i32, i32* %.106
  %.125 = sub i32 %.124, 1
  store i32 %.125, i32* %.106
  br label %.109wc 
.111wn:
  %.128 = load float, float* %.89
  ret float %.128 
}
define float @_user_F1(float %.131){
.130:
  %.132 = alloca float
  store float %.131, float* %.132
  %.134 = load float, float* %.132
  %.135 = sitofp i32 1 to float
  %.136 = fdiv float %.135, %.134
  ret float %.136 
}
define float @_user_F2(float %.139){
.138:
  %.140 = alloca float
  store float %.139, float* %.140
  %.142 = load float, float* %.140
  %.143 = load float, float* %.140
  %.144 = fmul float %.142, %.143
  %.145 = sitofp i32 1 to float
  %.146 = fsub float %.145, %.144
  %.147at2 = call float @_user_my_sqrt(float %.146)
  %.148 = sitofp i32 1 to float
  %.149 = fdiv float %.148, %.147at2
  ret float %.149 
}
define float @_user_simpson(float %.152, float %.155, i32 %.158){
.151:
  %.161 = alloca float
  %.159 = alloca i32
  %.156 = alloca float
  %.153 = alloca float
  store float %.152, float* %.153
  store float %.155, float* %.156
  store i32 %.158, i32* %.159
  %.162 = load float, float* %.153
  %.163 = load float, float* %.156
  %.164 = load float, float* %.153
  %.165 = fsub float %.163, %.164
  %.166 = sitofp i32 2 to float
  %.167 = fdiv float %.165, %.166
  %.168 = fadd float %.162, %.167
  store float %.168, float* %.161
  %.172 = load i32, i32* %.159
  %.173 = icmp eq i32 %.172, 1
  br i1 %.173, label %.170, label %.171
.170:
  %.175 = load float, float* %.153
  %.176at3 = call float @_user_F1(float %.175)
  %.177 = load float, float* %.161
  %.178at4 = call float @_user_F1(float %.177)
  %.179 = sitofp i32 4 to float
  %.180 = fmul float %.179, %.178at4
  %.181 = fadd float %.176at3, %.180
  %.182 = load float, float* %.156
  %.183at5 = call float @_user_F1(float %.182)
  %.184 = fadd float %.181, %.183at5
  %.185 = load float, float* %.156
  %.186 = load float, float* %.153
  %.187 = fsub float %.185, %.186
  %.188 = fmul float %.184, %.187
  %.190 = sitofp i32 6 to float
  %.191 = fdiv float %.188, %.190
  ret float %.191 
.171:
  %.195 = load i32, i32* %.159
  %.196 = icmp eq i32 %.195, 2
  br i1 %.196, label %.193, label %.194
.193:
  %.198 = load float, float* %.153
  %.199at6 = call float @_user_F2(float %.198)
  %.200 = load float, float* %.161
  %.201at7 = call float @_user_F2(float %.200)
  %.202 = sitofp i32 4 to float
  %.203 = fmul float %.202, %.201at7
  %.204 = fadd float %.199at6, %.203
  %.205 = load float, float* %.156
  %.206at8 = call float @_user_F2(float %.205)
  %.207 = fadd float %.204, %.206at8
  %.208 = load float, float* %.156
  %.209 = load float, float* %.153
  %.210 = fsub float %.208, %.209
  %.211 = fmul float %.207, %.210
  %.212 = sitofp i32 6 to float
  %.213 = fdiv float %.211, %.212
  ret float %.213 
.194:
  %.215 = sitofp i32 0 to float
  ret float %.215 
}
define float @_user_asr5(float %.218, float %.221, float %.224, float %.227, i32 %.230){
.217:
  %.248 = alloca float
  %.242 = alloca float
  %.233 = alloca float
  %.231 = alloca i32
  %.228 = alloca float
  %.225 = alloca float
  %.222 = alloca float
  %.219 = alloca float
  store float %.218, float* %.219
  store float %.221, float* %.222
  store float %.224, float* %.225
  store float %.227, float* %.228
  store i32 %.230, i32* %.231
  %.234 = load float, float* %.219
  %.235 = load float, float* %.222
  %.236 = load float, float* %.219
  %.237 = fsub float %.235, %.236
  %.238 = sitofp i32 2 to float
  %.239 = fdiv float %.237, %.238
  %.240 = fadd float %.234, %.239
  store float %.240, float* %.233
  %.243 = load float, float* %.219
  %.244 = load float, float* %.233
  %.245 = load i32, i32* %.231
  %.246at9 = call float @_user_simpson(float %.243, float %.244, i32 %.245)
  store float %.246at9, float* %.242
  %.249 = load float, float* %.233
  %.250 = load float, float* %.222
  %.251 = load i32, i32* %.231
  %.252at10 = call float @_user_simpson(float %.249, float %.250, i32 %.251)
  store float %.252at10, float* %.248
  %.256 = load float, float* %.242
  %.257 = load float, float* %.248
  %.258 = fadd float %.256, %.257
  %.259 = load float, float* %.228
  %.260 = fsub float %.258, %.259
  %.261at11 = call float @_user_my_fabs(float %.260)
  %.263 = load float, float* %.225
  %.264 = sitofp i32 15 to float
  %.265 = fmul float %.264, %.263
  %.266 = fcmp ule float %.261at11, %.265
  br i1 %.266, label %.254, label %.255
.254:
  %.268 = load float, float* %.242
  %.269 = load float, float* %.248
  %.270 = fadd float %.268, %.269
  %.271 = load float, float* %.242
  %.272 = load float, float* %.248
  %.273 = fadd float %.271, %.272
  %.274 = load float, float* %.228
  %.275 = fsub float %.273, %.274
  %.277 = fdiv float %.275, 0x402e000000000000
  %.278 = fadd float %.270, %.277
  ret float %.278 
.255:
  %.280 = load float, float* %.219
  %.281 = load float, float* %.233
  %.282 = load float, float* %.225
  %.283 = sitofp i32 2 to float
  %.284 = fdiv float %.282, %.283
  %.285 = load float, float* %.242
  %.286 = load i32, i32* %.231
  %.287at12 = call float @_user_asr5(float %.280, float %.281, float %.284, float %.285, i32 %.286)
  %.288 = load float, float* %.233
  %.289 = load float, float* %.222
  %.290 = load float, float* %.225
  %.291 = sitofp i32 2 to float
  %.292 = fdiv float %.290, %.291
  %.293 = load float, float* %.248
  %.294 = load i32, i32* %.231
  %.295at13 = call float @_user_asr5(float %.288, float %.289, float %.292, float %.293, i32 %.294)
  %.296 = fadd float %.287at12, %.295at13
  ret float %.296 
}
define float @_user_asr4(float %.299, float %.302, float %.305, i32 %.308){
.298:
  %.309 = alloca i32
  %.306 = alloca float
  %.303 = alloca float
  %.300 = alloca float
  store float %.299, float* %.300
  store float %.302, float* %.303
  store float %.305, float* %.306
  store i32 %.308, i32* %.309
  %.311 = load float, float* %.300
  %.312 = load float, float* %.303
  %.313 = load float, float* %.306
  %.314 = load float, float* %.300
  %.315 = load float, float* %.303
  %.316 = load i32, i32* %.309
  %.317at14 = call float @_user_simpson(float %.314, float %.315, i32 %.316)
  %.318 = load i32, i32* %.309
  %.319at15 = call float @_user_asr5(float %.311, float %.312, float %.313, float %.317at14, i32 %.318)
  ret float %.319at15 
}
define float @_user_eee(float %.322){
.321:
  %.331 = alloca float
  %.323 = alloca float
  store float %.322, float* %.323
  %.327 = load float, float* %.323
  %.329 = fcmp ugt float %.327, 0x3f50624de0000000
  br i1 %.329, label %.325, label %.326
.325:
  %.332 = load float, float* %.323
  %.333 = sitofp i32 2 to float
  %.334 = fdiv float %.332, %.333
  %.335at16 = call float @_user_eee(float %.334)
  store float %.335at16, float* %.331
  %.337 = load float, float* %.331
  %.338 = load float, float* %.331
  %.339 = fmul float %.337, %.338
  ret float %.339 
.326:
  %.341 = load float, float* %.323
  %.342 = sitofp i32 1 to float
  %.343 = fadd float %.342, %.341
  %.344 = load float, float* %.323
  %.345 = load float, float* %.323
  %.346 = fmul float %.344, %.345
  %.347 = sitofp i32 2 to float
  %.348 = fdiv float %.346, %.347
  %.349 = fadd float %.343, %.348
  %.350 = load float, float* %.323
  %.352at17 = call float @_user_my_pow(float %.350, i32 3)
  %.353 = sitofp i32 6 to float
  %.354 = fdiv float %.352at17, %.353
  %.355 = fadd float %.349, %.354
  %.356 = load float, float* %.323
  %.357at18 = call float @_user_my_pow(float %.356, i32 4)
  %.359 = sitofp i32 24 to float
  %.360 = fdiv float %.357at18, %.359
  %.361 = fadd float %.355, %.360
  %.362 = load float, float* %.323
  %.364at19 = call float @_user_my_pow(float %.362, i32 5)
  %.366 = sitofp i32 120 to float
  %.367 = fdiv float %.364at19, %.366
  %.368 = fadd float %.361, %.367
  ret float %.368 
}
define float @_user_my_exp(float %.371){
.370:
  %.399 = alloca float
  %.395 = alloca float
  %.386 = alloca i32
  %.372 = alloca float
  store float %.371, float* %.372
  %.376 = load float, float* %.372
  %.377 = sitofp i32 0 to float
  %.378 = fcmp ult float %.376, %.377
  br i1 %.378, label %.374, label %.375
.374:
  %.380 = load float, float* %.372
  %.381 = fsub float 0x0, %.380
  %.382at20 = call float @_user_my_exp(float %.381)
  %.383 = sitofp i32 1 to float
  %.384 = fdiv float %.383, %.382at20
  ret float %.384 
.375:
  %.387 = load float, float* %.372
  %.388 = fptosi float %.387 to i32
  store i32 %.388, i32* %.386
  %.390 = load float, float* %.372
  %.391 = load i32, i32* %.386
  %.392 = sitofp i32 %.391 to float
  %.393 = fsub float %.390, %.392
  store float %.393, float* %.372
  %.396 = load i32, i32* %.386
  %.397at21 = call float @_user_my_pow(float 0x4005bf0a80000000, i32 %.396)
  store float %.397at21, float* %.395
  %.400 = load float, float* %.372
  %.401at22 = call float @_user_eee(float %.400)
  store float %.401at22, float* %.399
  %.403 = load float, float* %.395
  %.404 = load float, float* %.399
  %.405 = fmul float %.403, %.404
  ret float %.405 
}
define float @_user_my_ln(float %.408){
.407:
  %.409 = alloca float
  store float %.408, float* %.409
  %.411 = load float, float* %.409
  %.413 = sitofp i32 1 to float
  %.414at23 = call float @_user_asr4(float %.413, float %.411, float 0x3e45798ee0000000, i32 1)
  ret float %.414at23 
}
define float @_user_my_log(float %.417, float %.420){
.416:
  %.421 = alloca float
  %.418 = alloca float
  store float %.417, float* %.418
  store float %.420, float* %.421
  %.423 = load float, float* %.421
  %.424at24 = call float @_user_my_ln(float %.423)
  %.425 = load float, float* %.418
  %.426at25 = call float @_user_my_ln(float %.425)
  %.427 = fdiv float %.424at24, %.426at25
  ret float %.427 
}
define float @_user_my_powf(float %.430, float %.433){
.429:
  %.434 = alloca float
  %.431 = alloca float
  store float %.430, float* %.431
  store float %.433, float* %.434
  %.436 = load float, float* %.434
  %.437 = load float, float* %.431
  %.438at26 = call float @_user_my_ln(float %.437)
  %.439 = fmul float %.436, %.438at26
  %.440at27 = call float @_user_my_exp(float %.439)
  ret float %.440at27 
}
define i32 @main(){
.442:
  %.458 = alloca float
  %.454 = alloca float
  %.443 = alloca i32
  %.445at28 = call i32 @getint()
  store i32 %.445at28, i32* %.443
  br label %.447wc 
.447wc:
  %.451 = load i32, i32* %.443
  %.452 = icmp ne i32 %.451, 0
  br i1 %.452, label %.448wloop., label %.449wn
.448wloop.:
  %.456at29 = call float @getfloat()
  store float %.456at29, float* %.454
  %.459at30 = call float @getfloat()
  store float %.459at30, float* %.458
  %.461 = load float, float* %.454
  %.462at31 = call float @_user_my_fabs(float %.461)
  call void @putfloat(float %.462at31)
  call void @putch(i32 32)
  %.468 = load float, float* %.454
  %.469at34 = call float @_user_my_pow(float %.468, i32 2)
  call void @putfloat(float %.469at34)
  call void @putch(i32 32)
  %.472 = load float, float* %.454
  %.473at37 = call float @_user_my_sqrt(float %.472)
  call void @putfloat(float %.473at37)
  call void @putch(i32 32)
  %.476 = load float, float* %.454
  %.477at40 = call float @_user_my_exp(float %.476)
  call void @putfloat(float %.477at40)
  call void @putch(i32 32)
  %.482 = load float, float* %.454
  %.483 = sitofp i32 0 to float
  %.484 = fcmp ugt float %.482, %.483
  br i1 %.484, label %.480, label %.481
.449wn:
  ret i32 0 
.480:
  %.486 = load float, float* %.454
  %.487at43 = call float @_user_my_ln(float %.486)
  call void @putfloat(float %.487at43)
  br label %.489 
.481:
  call void @putch(i32 45)
  br label %.489 
.489:
  call void @putch(i32 32)
  %.497 = load float, float* %.454
  %.498 = sitofp i32 0 to float
  %.499 = fcmp ugt float %.497, %.498
  br i1 %.499, label %.500, label %.496
.495:
  %.506 = load float, float* %.454
  %.507 = load float, float* %.458
  %.508at47 = call float @_user_my_log(float %.506, float %.507)
  call void @putfloat(float %.508at47)
  br label %.510 
.496:
  call void @putch(i32 45)
  br label %.510 
.500:
  %.502 = load float, float* %.458
  %.503 = sitofp i32 0 to float
  %.504 = fcmp ugt float %.502, %.503
  br i1 %.504, label %.495, label %.496
.510:
  call void @putch(i32 32)
  %.517 = load float, float* %.454
  %.518 = sitofp i32 0 to float
  %.519 = fcmp ugt float %.517, %.518
  br i1 %.519, label %.515, label %.516
.515:
  %.521 = load float, float* %.454
  %.522 = load float, float* %.458
  %.523at51 = call float @_user_my_powf(float %.521, float %.522)
  call void @putfloat(float %.523at51)
  br label %.525 
.516:
  call void @putch(i32 45)
  br label %.525 
.525:
  call void @putch(i32 10)
  %.530 = load i32, i32* %.443
  %.531 = sub i32 %.530, 1
  store i32 %.531, i32* %.443
  br label %.447wc 
}
