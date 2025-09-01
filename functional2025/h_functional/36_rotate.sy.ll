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
@.G.MAX_WIDTH = global i32 zeroinitializer
@.G.MAX_HEIGHT = global i32 zeroinitializer
@.G.image = global [1048576 x i32] zeroinitializer
@.G.width = global i32 zeroinitializer
@.G.height = global i32 zeroinitializer
@.G.PI = global float zeroinitializer
@.G.TWO_PI = global float zeroinitializer
@.G.EPSILON = global float zeroinitializer
define float @_user_my_fabs(float %.14){
.13:
  %.15 = alloca float
  store float %.14, float* %.15
  %.19 = load float, float* %.15
  %.21 = sitofp i32 0 to float
  %.22 = fcmp ugt float %.19, %.21
  br i1 %.22, label %.17, label %.18
.17:
  %.24 = load float, float* %.15
  ret float %.24 
.18:
  %.26 = load float, float* %.15
  %.28 = fsub float 0x0, %.26
  ret float %.28 
}
define float @_user_p(float %.31){
.30:
  %.32 = alloca float
  store float %.31, float* %.32
  %.35 = load float, float* %.32
  %.36 = sitofp i32 3 to float
  %.37 = fmul float %.36, %.35
  %.39 = load float, float* %.32
  %.40 = sitofp i32 4 to float
  %.41 = fmul float %.40, %.39
  %.42 = load float, float* %.32
  %.43 = fmul float %.41, %.42
  %.44 = load float, float* %.32
  %.45 = fmul float %.43, %.44
  %.46 = fsub float %.37, %.45
  ret float %.46 
}
define float @_user_my_sin_impl(float %.49){
.48:
  %.50 = alloca float
  store float %.49, float* %.50
  %.54 = load float, float* %.50
  %.55at0 = call float @_user_my_fabs(float %.54)
  %.56 = fcmp ule float %.55at0, 0x3eb0c6f7a0000000
  br i1 %.56, label %.52, label %.53
.52:
  %.58 = load float, float* %.50
  ret float %.58 
.53:
  %.60 = load float, float* %.50
  %.62 = fdiv float %.60, 0x4008000000000000
  %.63at1 = call float @_user_my_sin_impl(float %.62)
  %.64at2 = call float @_user_p(float %.63at1)
  ret float %.64at2 
}
define float @_user_my_sin(float %.67){
.66:
  %.80 = alloca i32
  %.68 = alloca float
  store float %.67, float* %.68
  %.73 = load float, float* %.68
  %.74 = fcmp ugt float %.73, 0x401921fb60000000
  br i1 %.74, label %.70, label %.72
.70:
  %.81 = load float, float* %.68
  %.82 = fdiv float %.81, 0x401921fb60000000
  %.83 = fptosi float %.82 to i32
  store i32 %.83, i32* %.80
  %.85 = load float, float* %.68
  %.86 = load i32, i32* %.80
  %.87 = sitofp i32 %.86 to float
  %.88 = fmul float %.87, 0x401921fb60000000
  %.89 = fsub float %.85, %.88
  store float %.89, float* %.68
  br label %.71 
.71:
  %.94 = load float, float* %.68
  %.95 = fcmp ugt float %.94, 0x400921fb60000000
  br i1 %.95, label %.92, label %.93
.72:
  %.76 = load float, float* %.68
  %.78 = fcmp ult float %.76, 0xc01921fb60000000
  br i1 %.78, label %.70, label %.71
.92:
  %.97 = load float, float* %.68
  %.98 = fsub float %.97, 0x401921fb60000000
  store float %.98, float* %.68
  br label %.93 
.93:
  %.103 = load float, float* %.68
  %.105 = fcmp ult float %.103, 0xc00921fb60000000
  br i1 %.105, label %.101, label %.102
.101:
  %.107 = load float, float* %.68
  %.108 = fadd float %.107, 0x401921fb60000000
  store float %.108, float* %.68
  br label %.102 
.102:
  %.111 = load float, float* %.68
  %.112at3 = call float @_user_my_sin_impl(float %.111)
  ret float %.112at3 
}
define float @_user_my_cos(float %.115){
.114:
  %.116 = alloca float
  store float %.115, float* %.116
  %.118 = load float, float* %.116
  %.121 = fadd float %.118, 0x3ff921fb60000000
  %.122at4 = call float @_user_my_sin(float %.121)
  ret float %.122at4 
}
define i32 @_user_read_image(){
.124:
  %.170 = alloca i32
  %.160 = alloca i32
  %.129at5 = call i32 @getch()
  %.131 = icmp ne i32 %.129at5, 80
  br i1 %.131, label %.125, label %.127
.125:
  ret i32 -1 
.126:
  %.141at7 = call i32 @getint()
  store i32 %.141at7, i32* @.G.width
  %.143at8 = call i32 @getint()
  store i32 %.143at8, i32* @.G.height
  %.148 = load i32, i32* @.G.width
  %.149 = icmp sgt i32 %.148, 1024
  br i1 %.149, label %.145, label %.147
.127:
  %.133at6 = call i32 @getch()
  %.135 = icmp ne i32 %.133at6, 50
  br i1 %.135, label %.125, label %.126
.145:
  ret i32 -1 
.146:
  store i32 0, i32* %.160
  br label %.162wc 
.147:
  %.152 = load i32, i32* @.G.height
  %.153 = icmp sgt i32 %.152, 1024
  br i1 %.153, label %.145, label %.151
.151:
  %.155at9 = call i32 @getint()
  %.157 = icmp ne i32 %.155at9, 255
  br i1 %.157, label %.145, label %.146
.162wc:
  %.166 = load i32, i32* %.160
  %.167 = load i32, i32* @.G.height
  %.168 = icmp slt i32 %.166, %.167
  br i1 %.168, label %.163wloop., label %.164wn
.163wloop.:
  store i32 0, i32* %.170
  br label %.172wc 
.164wn:
  ret i32 0 
.172wc:
  %.176 = load i32, i32* %.170
  %.177 = load i32, i32* @.G.width
  %.178 = icmp slt i32 %.176, %.177
  br i1 %.178, label %.173wloop., label %.174wn
.173wloop.:
  %.180at10 = call i32 @getint()
  %.181 = load i32, i32* %.160
  %.182 = load i32, i32* @.G.width
  %.183 = mul i32 %.181, %.182
  %.184 = load i32, i32* %.170
  %.185 = add i32 %.183, %.184
  %.186 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @.G.image, i32 0, i32 %.185
  store i32 %.180at10, i32* %.186
  %.188 = load i32, i32* %.170
  %.189 = add i32 %.188, 1
  store i32 %.189, i32* %.170
  br label %.172wc 
.174wn:
  %.192 = load i32, i32* %.160
  %.193 = add i32 %.192, 1
  store i32 %.193, i32* %.160
  br label %.162wc 
}
define i32 @_user_rotate(i32 %.198, i32 %.201, float %.204){
.197:
  %.248 = alloca i32
  %.233 = alloca i32
  %.228 = alloca i32
  %.223 = alloca i32
  %.219 = alloca i32
  %.215 = alloca i32
  %.211 = alloca float
  %.207 = alloca float
  %.205 = alloca float
  %.202 = alloca i32
  %.199 = alloca i32
  store i32 %.198, i32* %.199
  store i32 %.201, i32* %.202
  store float %.204, float* %.205
  %.208 = load float, float* %.205
  %.209at11 = call float @_user_my_sin(float %.208)
  store float %.209at11, float* %.207
  %.212 = load float, float* %.205
  %.213at12 = call float @_user_my_cos(float %.212)
  store float %.213at12, float* %.211
  %.216 = load i32, i32* @.G.width
  %.217 = sdiv i32 %.216, 2
  store i32 %.217, i32* %.215
  %.220 = load i32, i32* @.G.height
  %.221 = sdiv i32 %.220, 2
  store i32 %.221, i32* %.219
  %.224 = load i32, i32* %.199
  %.225 = load i32, i32* %.215
  %.226 = sub i32 %.224, %.225
  store i32 %.226, i32* %.223
  %.229 = load i32, i32* %.202
  %.230 = load i32, i32* %.219
  %.231 = sub i32 %.229, %.230
  store i32 %.231, i32* %.228
  %.234 = load i32, i32* %.223
  %.235 = load float, float* %.211
  %.236 = sitofp i32 %.234 to float
  %.237 = fmul float %.236, %.235
  %.238 = load i32, i32* %.228
  %.239 = load float, float* %.207
  %.240 = sitofp i32 %.238 to float
  %.241 = fmul float %.240, %.239
  %.242 = fsub float %.237, %.241
  %.243 = load i32, i32* %.215
  %.244 = sitofp i32 %.243 to float
  %.245 = fadd float %.242, %.244
  %.246 = fptosi float %.245 to i32
  store i32 %.246, i32* %.233
  %.249 = load i32, i32* %.223
  %.250 = load float, float* %.207
  %.251 = sitofp i32 %.249 to float
  %.252 = fmul float %.251, %.250
  %.253 = load i32, i32* %.228
  %.254 = load float, float* %.211
  %.255 = sitofp i32 %.253 to float
  %.256 = fmul float %.255, %.254
  %.257 = fadd float %.252, %.256
  %.258 = load i32, i32* %.219
  %.259 = sitofp i32 %.258 to float
  %.260 = fadd float %.257, %.259
  %.261 = fptosi float %.260 to i32
  store i32 %.261, i32* %.248
  %.266 = load i32, i32* %.233
  %.267 = icmp slt i32 %.266, 0
  br i1 %.267, label %.263, label %.265
.263:
  ret i32 0 
.264:
  %.283 = load i32, i32* %.248
  %.284 = load i32, i32* @.G.width
  %.285 = mul i32 %.283, %.284
  %.286 = load i32, i32* %.233
  %.287 = add i32 %.285, %.286
  %.288 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @.G.image, i32 0, i32 %.287
  %.289 = load i32, i32* %.288
  ret i32 %.289 
.265:
  %.270 = load i32, i32* %.233
  %.271 = load i32, i32* @.G.width
  %.272 = icmp sge i32 %.270, %.271
  br i1 %.272, label %.263, label %.269
.269:
  %.275 = load i32, i32* %.248
  %.276 = icmp slt i32 %.275, 0
  br i1 %.276, label %.263, label %.274
.274:
  %.278 = load i32, i32* %.248
  %.279 = load i32, i32* @.G.height
  %.280 = icmp sge i32 %.278, %.279
  br i1 %.280, label %.263, label %.264
}
define void @_user_write_pgm(float %.292){
.291:
  %.320 = alloca i32
  %.310 = alloca i32
  %.293 = alloca float
  store float %.292, float* %.293
  call void @putch(i32 80)
  call void @putch(i32 50)
  call void @putch(i32 10)
  %.300 = load i32, i32* @.G.width
  call void @putint(i32 %.300)
  call void @putch(i32 32)
  %.305 = load i32, i32* @.G.height
  call void @putint(i32 %.305)
  call void @putch(i32 32)
  call void @putint(i32 255)
  call void @putch(i32 10)
  store i32 0, i32* %.310
  br label %.312wc 
.312wc:
  %.316 = load i32, i32* %.310
  %.317 = load i32, i32* @.G.height
  %.318 = icmp slt i32 %.316, %.317
  br i1 %.318, label %.313wloop., label %.314wn
.313wloop.:
  store i32 0, i32* %.320
  br label %.322wc 
.314wn:
  ret void
.322wc:
  %.326 = load i32, i32* %.320
  %.327 = load i32, i32* @.G.width
  %.328 = icmp slt i32 %.326, %.327
  br i1 %.328, label %.323wloop., label %.324wn
.323wloop.:
  %.330 = load i32, i32* %.320
  %.331 = load i32, i32* %.310
  %.332 = load float, float* %.293
  %.333at22 = call i32 @_user_rotate(i32 %.330, i32 %.331, float %.332)
  call void @putint(i32 %.333at22)
  call void @putch(i32 32)
  %.336 = load i32, i32* %.320
  %.337 = add i32 %.336, 1
  store i32 %.337, i32* %.320
  br label %.322wc 
.324wn:
  call void @putch(i32 10)
  %.341 = load i32, i32* %.310
  %.342 = add i32 %.341, 1
  store i32 %.342, i32* %.310
  br label %.312wc 
}
define i32 @main(){
.346:
  %.347 = alloca float
  %.349at26 = call float @getfloat()
  store float %.349at26, float* %.347
  %.351at27 = call i32 @getch()
  %.354at28 = call i32 @_user_read_image()
  %.355 = icmp slt i32 %.354at28, 0
  br i1 %.355, label %.352, label %.353
.352:
  ret i32 -1 
.353:
  %.358 = load float, float* %.347
  call void @_user_write_pgm(float %.358)
  ret i32 0 
}
