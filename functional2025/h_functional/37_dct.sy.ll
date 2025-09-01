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
@.G.MAX_DIM_X = global i32 zeroinitializer
@.G.MAX_DIM_Y = global i32 zeroinitializer
@.G.test_block = global [8 x [8 x float]] zeroinitializer
@.G.test_dct = global [8 x [8 x float]] zeroinitializer
@.G.test_idct = global [8 x [8 x float]] zeroinitializer
@.G.PI = global float zeroinitializer
@.G.TWO_PI = global float zeroinitializer
@.G.EPSILON = global float zeroinitializer
define float @_user_my_fabs(float %.13){
.12:
  %.14 = alloca float
  store float %.13, float* %.14
  %.18 = load float, float* %.14
  %.20 = sitofp i32 0 to float
  %.21 = fcmp ugt float %.18, %.20
  br i1 %.21, label %.16, label %.17
.16:
  %.23 = load float, float* %.14
  ret float %.23 
.17:
  %.25 = load float, float* %.14
  %.27 = fsub float 0x0, %.25
  ret float %.27 
}
define float @_user_p(float %.30){
.29:
  %.31 = alloca float
  store float %.30, float* %.31
  %.34 = load float, float* %.31
  %.35 = sitofp i32 3 to float
  %.36 = fmul float %.35, %.34
  %.38 = load float, float* %.31
  %.39 = sitofp i32 4 to float
  %.40 = fmul float %.39, %.38
  %.41 = load float, float* %.31
  %.42 = fmul float %.40, %.41
  %.43 = load float, float* %.31
  %.44 = fmul float %.42, %.43
  %.45 = fsub float %.36, %.44
  ret float %.45 
}
define float @_user_my_sin_impl(float %.48){
.47:
  %.49 = alloca float
  store float %.48, float* %.49
  %.53 = load float, float* %.49
  %.54at0 = call float @_user_my_fabs(float %.53)
  %.55 = fcmp ule float %.54at0, 0x3eb0c6f7a0000000
  br i1 %.55, label %.51, label %.52
.51:
  %.57 = load float, float* %.49
  ret float %.57 
.52:
  %.59 = load float, float* %.49
  %.61 = fdiv float %.59, 0x4008000000000000
  %.62at1 = call float @_user_my_sin_impl(float %.61)
  %.63at2 = call float @_user_p(float %.62at1)
  ret float %.63at2 
}
define float @_user_my_sin(float %.66){
.65:
  %.79 = alloca i32
  %.67 = alloca float
  store float %.66, float* %.67
  %.72 = load float, float* %.67
  %.73 = fcmp ugt float %.72, 0x401921fb60000000
  br i1 %.73, label %.69, label %.71
.69:
  %.80 = load float, float* %.67
  %.81 = fdiv float %.80, 0x401921fb60000000
  %.82 = fptosi float %.81 to i32
  store i32 %.82, i32* %.79
  %.84 = load float, float* %.67
  %.85 = load i32, i32* %.79
  %.86 = sitofp i32 %.85 to float
  %.87 = fmul float %.86, 0x401921fb60000000
  %.88 = fsub float %.84, %.87
  store float %.88, float* %.67
  br label %.70 
.70:
  %.93 = load float, float* %.67
  %.94 = fcmp ugt float %.93, 0x400921fb60000000
  br i1 %.94, label %.91, label %.92
.71:
  %.75 = load float, float* %.67
  %.77 = fcmp ult float %.75, 0xc01921fb60000000
  br i1 %.77, label %.69, label %.70
.91:
  %.96 = load float, float* %.67
  %.97 = fsub float %.96, 0x401921fb60000000
  store float %.97, float* %.67
  br label %.92 
.92:
  %.102 = load float, float* %.67
  %.104 = fcmp ult float %.102, 0xc00921fb60000000
  br i1 %.104, label %.100, label %.101
.100:
  %.106 = load float, float* %.67
  %.107 = fadd float %.106, 0x401921fb60000000
  store float %.107, float* %.67
  br label %.101 
.101:
  %.110 = load float, float* %.67
  %.111at3 = call float @_user_my_sin_impl(float %.110)
  ret float %.111at3 
}
define float @_user_my_cos(float %.114){
.113:
  %.115 = alloca float
  store float %.114, float* %.115
  %.117 = load float, float* %.115
  %.120 = fadd float %.117, 0x3ff921fb60000000
  %.121at4 = call float @_user_my_sin(float %.120)
  ret float %.121at4 
}
define void @_user_write_mat([8 x float]* %.124, i32 %.127, i32 %.130){
.123:
  %.149 = alloca i32
  %.133 = alloca i32
  %.131 = alloca i32
  %.128 = alloca i32
  %.125 = alloca [8 x float]*
  store [8 x float]* %.124, [8 x float]** %.125
  store i32 %.127, i32* %.128
  store i32 %.130, i32* %.131
  store i32 0, i32* %.133
  br label %.135wc 
.135wc:
  %.139 = load i32, i32* %.133
  %.140 = load i32, i32* %.128
  %.141 = icmp slt i32 %.139, %.140
  br i1 %.141, label %.136wloop., label %.137wn
.136wloop.:
  %.143 = load i32, i32* %.133
  %.144 = load [8 x float]*, [8 x float]** %.125
  %.145 = getelementptr inbounds [8 x float], [8 x float]* %.144, i32 %.143, i32 0
  %.146 = load float, float* %.145
  call void @putfloat(float %.146)
  store i32 1, i32* %.149
  br label %.152wc 
.137wn:
  call void @putch(i32 10)
  ret void
.152wc:
  %.156 = load i32, i32* %.149
  %.157 = load i32, i32* %.131
  %.158 = icmp slt i32 %.156, %.157
  br i1 %.158, label %.153wloop., label %.154wn
.153wloop.:
  call void @putch(i32 32)
  %.163 = load i32, i32* %.133
  %.164 = load i32, i32* %.149
  %.165 = load [8 x float]*, [8 x float]** %.125
  %.166 = getelementptr inbounds [8 x float], [8 x float]* %.165, i32 %.163, i32 %.164
  %.167 = load float, float* %.166
  call void @putfloat(float %.167)
  %.169 = load i32, i32* %.149
  %.170 = add i32 %.169, 1
  store i32 %.170, i32* %.149
  br label %.152wc 
.154wn:
  call void @putch(i32 10)
  %.175 = load i32, i32* %.133
  %.176 = add i32 %.175, 1
  store i32 %.176, i32* %.133
  br label %.135wc 
}
define void @_user_dct([8 x float]* %.182, [8 x float]* %.185, i32 %.188, i32 %.191){
.181:
  %.230 = alloca i32
  %.220 = alloca i32
  %.204 = alloca i32
  %.194 = alloca i32
  %.192 = alloca i32
  %.189 = alloca i32
  %.186 = alloca [8 x float]*
  %.183 = alloca [8 x float]*
  store [8 x float]* %.182, [8 x float]** %.183
  store [8 x float]* %.185, [8 x float]** %.186
  store i32 %.188, i32* %.189
  store i32 %.191, i32* %.192
  store i32 0, i32* %.194
  br label %.196wc 
.196wc:
  %.200 = load i32, i32* %.194
  %.201 = load i32, i32* %.189
  %.202 = icmp slt i32 %.200, %.201
  br i1 %.202, label %.197wloop., label %.198wn
.197wloop.:
  store i32 0, i32* %.204
  br label %.206wc 
.198wn:
  ret void
.206wc:
  %.210 = load i32, i32* %.204
  %.211 = load i32, i32* %.192
  %.212 = icmp slt i32 %.210, %.211
  br i1 %.212, label %.207wloop., label %.208wn
.207wloop.:
  %.214 = load i32, i32* %.194
  %.215 = load i32, i32* %.204
  %.216 = load [8 x float]*, [8 x float]** %.183
  %.217 = getelementptr inbounds [8 x float], [8 x float]* %.216, i32 %.214, i32 %.215
  %.218 = sitofp i32 0 to float
  store float %.218, float* %.217
  store i32 0, i32* %.220
  br label %.222wc 
.208wn:
  %.295 = load i32, i32* %.194
  %.296 = add i32 %.295, 1
  store i32 %.296, i32* %.194
  br label %.196wc 
.222wc:
  %.226 = load i32, i32* %.220
  %.227 = load i32, i32* %.189
  %.228 = icmp slt i32 %.226, %.227
  br i1 %.228, label %.223wloop., label %.224wn
.223wloop.:
  store i32 0, i32* %.230
  br label %.232wc 
.224wn:
  %.291 = load i32, i32* %.204
  %.292 = add i32 %.291, 1
  store i32 %.292, i32* %.204
  br label %.206wc 
.232wc:
  %.236 = load i32, i32* %.230
  %.237 = load i32, i32* %.192
  %.238 = icmp slt i32 %.236, %.237
  br i1 %.238, label %.233wloop., label %.234wn
.233wloop.:
  %.240 = load i32, i32* %.194
  %.241 = load i32, i32* %.204
  %.242 = load [8 x float]*, [8 x float]** %.183
  %.243 = getelementptr inbounds [8 x float], [8 x float]* %.242, i32 %.240, i32 %.241
  %.244 = load float, float* %.243
  %.245 = load i32, i32* %.220
  %.246 = load i32, i32* %.230
  %.247 = load [8 x float]*, [8 x float]** %.186
  %.248 = getelementptr inbounds [8 x float], [8 x float]* %.247, i32 %.245, i32 %.246
  %.249 = load float, float* %.248
  %.250 = load i32, i32* %.189
  %.251 = sitofp i32 %.250 to float
  %.252 = fdiv float 0x400921fb60000000, %.251
  %.253 = load i32, i32* %.220
  %.257 = sitofp i32 %.253 to float
  %.258 = fadd float %.257, 0x3fe0000000000000
  %.259 = fmul float %.252, %.258
  %.260 = load i32, i32* %.194
  %.261 = sitofp i32 %.260 to float
  %.262 = fmul float %.259, %.261
  %.263at10 = call float @_user_my_cos(float %.262)
  %.264 = fmul float %.249, %.263at10
  %.265 = load i32, i32* %.192
  %.266 = sitofp i32 %.265 to float
  %.267 = fdiv float 0x400921fb60000000, %.266
  %.268 = load i32, i32* %.230
  %.269 = sitofp i32 %.268 to float
  %.270 = fadd float %.269, 0x3fe0000000000000
  %.271 = fmul float %.267, %.270
  %.272 = load i32, i32* %.204
  %.273 = sitofp i32 %.272 to float
  %.274 = fmul float %.271, %.273
  %.275at11 = call float @_user_my_cos(float %.274)
  %.276 = fmul float %.264, %.275at11
  %.277 = fadd float %.244, %.276
  %.278 = load i32, i32* %.194
  %.279 = load i32, i32* %.204
  %.280 = load [8 x float]*, [8 x float]** %.183
  %.281 = getelementptr inbounds [8 x float], [8 x float]* %.280, i32 %.278, i32 %.279
  store float %.277, float* %.281
  %.283 = load i32, i32* %.230
  %.284 = add i32 %.283, 1
  store i32 %.284, i32* %.230
  br label %.232wc 
.234wn:
  %.287 = load i32, i32* %.220
  %.288 = add i32 %.287, 1
  store i32 %.288, i32* %.220
  br label %.222wc 
}
define void @_user_idct([8 x float]* %.301, [8 x float]* %.304, i32 %.307, i32 %.310){
.300:
  %.345 = alloca i32
  %.344 = alloca i32
  %.323 = alloca i32
  %.313 = alloca i32
  %.311 = alloca i32
  %.308 = alloca i32
  %.305 = alloca [8 x float]*
  %.302 = alloca [8 x float]*
  store [8 x float]* %.301, [8 x float]** %.302
  store [8 x float]* %.304, [8 x float]** %.305
  store i32 %.307, i32* %.308
  store i32 %.310, i32* %.311
  store i32 0, i32* %.313
  br label %.315wc 
.315wc:
  %.319 = load i32, i32* %.313
  %.320 = load i32, i32* %.308
  %.321 = icmp slt i32 %.319, %.320
  br i1 %.321, label %.316wloop., label %.317wn
.316wloop.:
  store i32 0, i32* %.323
  br label %.325wc 
.317wn:
  ret void
.325wc:
  %.329 = load i32, i32* %.323
  %.330 = load i32, i32* %.311
  %.331 = icmp slt i32 %.329, %.330
  br i1 %.331, label %.326wloop., label %.327wn
.326wloop.:
  %.335 = load [8 x float]*, [8 x float]** %.305
  %.336 = getelementptr inbounds [8 x float], [8 x float]* %.335, i32 0, i32 0
  %.337 = load float, float* %.336
  %.338 = fmul float 0x3fd0000000000000, %.337
  %.339 = load i32, i32* %.313
  %.340 = load i32, i32* %.323
  %.341 = load [8 x float]*, [8 x float]** %.302
  %.342 = getelementptr inbounds [8 x float], [8 x float]* %.341, i32 %.339, i32 %.340
  store float %.338, float* %.342
  store i32 1, i32* %.344
  br label %.347wc 
.327wn:
  %.492 = load i32, i32* %.313
  %.493 = add i32 %.492, 1
  store i32 %.493, i32* %.313
  br label %.315wc 
.347wc:
  %.351 = load i32, i32* %.344
  %.352 = load i32, i32* %.308
  %.353 = icmp slt i32 %.351, %.352
  br i1 %.353, label %.348wloop., label %.349wn
.348wloop.:
  %.355 = load i32, i32* %.313
  %.356 = load i32, i32* %.323
  %.357 = load [8 x float]*, [8 x float]** %.302
  %.358 = getelementptr inbounds [8 x float], [8 x float]* %.357, i32 %.355, i32 %.356
  %.359 = load float, float* %.358
  %.360 = load i32, i32* %.344
  %.361 = load [8 x float]*, [8 x float]** %.305
  %.362 = getelementptr inbounds [8 x float], [8 x float]* %.361, i32 %.360, i32 0
  %.363 = load float, float* %.362
  %.364 = fmul float 0x3fe0000000000000, %.363
  %.365 = fadd float %.359, %.364
  %.366 = load i32, i32* %.313
  %.367 = load i32, i32* %.323
  %.368 = load [8 x float]*, [8 x float]** %.302
  %.369 = getelementptr inbounds [8 x float], [8 x float]* %.368, i32 %.366, i32 %.367
  store float %.365, float* %.369
  %.371 = load i32, i32* %.344
  %.372 = add i32 %.371, 1
  store i32 %.372, i32* %.344
  br label %.347wc 
.349wn:
  store i32 1, i32* %.345
  br label %.376wc 
.376wc:
  %.380 = load i32, i32* %.345
  %.381 = load i32, i32* %.311
  %.382 = icmp slt i32 %.380, %.381
  br i1 %.382, label %.377wloop., label %.378wn
.377wloop.:
  %.384 = load i32, i32* %.313
  %.385 = load i32, i32* %.323
  %.386 = load [8 x float]*, [8 x float]** %.302
  %.387 = getelementptr inbounds [8 x float], [8 x float]* %.386, i32 %.384, i32 %.385
  %.388 = load float, float* %.387
  %.389 = load i32, i32* %.345
  %.390 = load [8 x float]*, [8 x float]** %.305
  %.391 = getelementptr inbounds [8 x float], [8 x float]* %.390, i32 0, i32 %.389
  %.392 = load float, float* %.391
  %.393 = fmul float 0x3fe0000000000000, %.392
  %.394 = fadd float %.388, %.393
  %.395 = load i32, i32* %.313
  %.396 = load i32, i32* %.323
  %.397 = load [8 x float]*, [8 x float]** %.302
  %.398 = getelementptr inbounds [8 x float], [8 x float]* %.397, i32 %.395, i32 %.396
  store float %.394, float* %.398
  %.400 = load i32, i32* %.345
  %.401 = add i32 %.400, 1
  store i32 %.401, i32* %.345
  br label %.376wc 
.378wn:
  store i32 1, i32* %.344
  br label %.405wc 
.405wc:
  %.409 = load i32, i32* %.344
  %.410 = load i32, i32* %.308
  %.411 = icmp slt i32 %.409, %.410
  br i1 %.411, label %.406wloop., label %.407wn
.406wloop.:
  store i32 1, i32* %.345
  br label %.414wc 
.407wn:
  %.470 = load i32, i32* %.313
  %.471 = load i32, i32* %.323
  %.472 = load [8 x float]*, [8 x float]** %.302
  %.473 = getelementptr inbounds [8 x float], [8 x float]* %.472, i32 %.470, i32 %.471
  %.474 = load float, float* %.473
  %.475 = fmul float %.474, 0x4000000000000000
  %.476 = load i32, i32* %.308
  %.477 = sitofp i32 %.476 to float
  %.478 = fdiv float %.475, %.477
  %.479 = fmul float %.478, 0x4000000000000000
  %.480 = load i32, i32* %.311
  %.481 = sitofp i32 %.480 to float
  %.482 = fdiv float %.479, %.481
  %.483 = load i32, i32* %.313
  %.484 = load i32, i32* %.323
  %.485 = load [8 x float]*, [8 x float]** %.302
  %.486 = getelementptr inbounds [8 x float], [8 x float]* %.485, i32 %.483, i32 %.484
  store float %.482, float* %.486
  %.488 = load i32, i32* %.323
  %.489 = add i32 %.488, 1
  store i32 %.489, i32* %.323
  br label %.325wc 
.414wc:
  %.418 = load i32, i32* %.345
  %.419 = load i32, i32* %.311
  %.420 = icmp slt i32 %.418, %.419
  br i1 %.420, label %.415wloop., label %.416wn
.415wloop.:
  %.422 = load i32, i32* %.313
  %.423 = load i32, i32* %.323
  %.424 = load [8 x float]*, [8 x float]** %.302
  %.425 = getelementptr inbounds [8 x float], [8 x float]* %.424, i32 %.422, i32 %.423
  %.426 = load float, float* %.425
  %.427 = load i32, i32* %.344
  %.428 = load i32, i32* %.345
  %.429 = load [8 x float]*, [8 x float]** %.305
  %.430 = getelementptr inbounds [8 x float], [8 x float]* %.429, i32 %.427, i32 %.428
  %.431 = load float, float* %.430
  %.432 = load i32, i32* %.308
  %.433 = sitofp i32 %.432 to float
  %.434 = fdiv float 0x400921fb60000000, %.433
  %.435 = load i32, i32* %.313
  %.436 = sitofp i32 %.435 to float
  %.437 = fadd float %.436, 0x3fe0000000000000
  %.438 = fmul float %.434, %.437
  %.439 = load i32, i32* %.344
  %.440 = sitofp i32 %.439 to float
  %.441 = fmul float %.438, %.440
  %.442at12 = call float @_user_my_cos(float %.441)
  %.443 = fmul float %.431, %.442at12
  %.444 = load i32, i32* %.311
  %.445 = sitofp i32 %.444 to float
  %.446 = fdiv float 0x400921fb60000000, %.445
  %.447 = load i32, i32* %.323
  %.448 = sitofp i32 %.447 to float
  %.449 = fadd float %.448, 0x3fe0000000000000
  %.450 = fmul float %.446, %.449
  %.451 = load i32, i32* %.345
  %.452 = sitofp i32 %.451 to float
  %.453 = fmul float %.450, %.452
  %.454at13 = call float @_user_my_cos(float %.453)
  %.455 = fmul float %.443, %.454at13
  %.456 = fadd float %.426, %.455
  %.457 = load i32, i32* %.313
  %.458 = load i32, i32* %.323
  %.459 = load [8 x float]*, [8 x float]** %.302
  %.460 = getelementptr inbounds [8 x float], [8 x float]* %.459, i32 %.457, i32 %.458
  store float %.456, float* %.460
  %.462 = load i32, i32* %.345
  %.463 = add i32 %.462, 1
  store i32 %.463, i32* %.345
  br label %.414wc 
.416wn:
  %.466 = load i32, i32* %.344
  %.467 = add i32 %.466, 1
  store i32 %.467, i32* %.344
  br label %.405wc 
}
define i32 @main(){
.497:
  %.515 = alloca i32
  %.505 = alloca i32
  %.502 = alloca i32
  %.498 = alloca i32
  %.500at14 = call i32 @getint()
  store i32 %.500at14, i32* %.498
  %.503at15 = call i32 @getint()
  store i32 %.503at15, i32* %.502
  store i32 0, i32* %.505
  br label %.507wc 
.507wc:
  %.511 = load i32, i32* %.505
  %.512 = load i32, i32* %.498
  %.513 = icmp slt i32 %.511, %.512
  br i1 %.513, label %.508wloop., label %.509wn
.508wloop.:
  store i32 0, i32* %.515
  br label %.517wc 
.509wn:
  %.539 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_dct, i32 0, i32 0
  %.540 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_block, i32 0, i32 0
  %.541 = load i32, i32* %.498
  %.542 = load i32, i32* %.502
  call void @_user_dct([8 x float]* %.539, [8 x float]* %.540, i32 %.541, i32 %.542)
  %.544 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_dct, i32 0, i32 0
  %.545 = load i32, i32* %.498
  %.546 = load i32, i32* %.502
  call void @_user_write_mat([8 x float]* %.544, i32 %.545, i32 %.546)
  %.548 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_idct, i32 0, i32 0
  %.549 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_dct, i32 0, i32 0
  %.550 = load i32, i32* %.498
  %.551 = load i32, i32* %.502
  call void @_user_idct([8 x float]* %.548, [8 x float]* %.549, i32 %.550, i32 %.551)
  %.553 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_idct, i32 0, i32 0
  %.554 = load i32, i32* %.498
  %.555 = load i32, i32* %.502
  call void @_user_write_mat([8 x float]* %.553, i32 %.554, i32 %.555)
  ret i32 0 
.517wc:
  %.521 = load i32, i32* %.515
  %.522 = load i32, i32* %.502
  %.523 = icmp slt i32 %.521, %.522
  br i1 %.523, label %.518wloop., label %.519wn
.518wloop.:
  %.526at16 = call float @getfloat()
  %.527 = load i32, i32* %.505
  %.528 = load i32, i32* %.515
  %.529 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_block, i32 0, i32 %.527, i32 %.528
  store float %.526at16, float* %.529
  %.531 = load i32, i32* %.515
  %.532 = add i32 %.531, 1
  store i32 %.532, i32* %.515
  br label %.517wc 
.519wn:
  %.535 = load i32, i32* %.505
  %.536 = add i32 %.535, 1
  store i32 %.536, i32* %.505
  br label %.507wc 
}
