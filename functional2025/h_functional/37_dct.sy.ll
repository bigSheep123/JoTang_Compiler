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
  %.21 = fcmp ugt float %.13, 0x0
  br i1 %.21, label %.16, label %.17
.16:
  ret float %.13 
.17:
  %.27 = fsub float 0x0, %.13
  ret float %.27 
}
define float @_user_p(float %.30){
.29:
  %.36 = fmul float 0x4008000000000000, %.30
  %.40 = fmul float 0x4010000000000000, %.30
  %.42 = fmul float %.40, %.30
  %.44 = fmul float %.42, %.30
  %.45 = fsub float %.36, %.44
  ret float %.45 
}
define float @_user_my_sin_impl(float %.48){
.47:
  %.54at0 = call float @_user_my_fabs(float %.48)
  %.55 = fcmp ule float %.54at0, 0x3eb0c6f7a0000000
  br i1 %.55, label %.51, label %.52
.51:
  ret float %.48 
.52:
  %.61 = fdiv float %.48, 0x4008000000000000
  %.62at1 = call float @_user_my_sin_impl(float %.61)
  %.63at2 = call float @_user_p(float %.62at1)
  ret float %.63at2 
}
define float @_user_my_sin(float %.66){
.65:
  %.73 = fcmp ugt float %.66, 0x401921fb60000000
  br i1 %.73, label %.69, label %.71
.69:
  %.81 = fdiv float %.66, 0x401921fb60000000
  %.82 = fptosi float %.81 to i32
  %.86 = sitofp i32 %.82 to float
  %.87 = fmul float %.86, 0x401921fb60000000
  %.88 = fsub float %.66, %.87
  br label %.70 
.70:
  %.558 = phi float [%.66, %.71], [%.88, %.69]
  %.94 = fcmp ugt float %.558, 0x400921fb60000000
  br i1 %.94, label %.91, label %.92
.71:
  %.77 = fcmp ult float %.66, 0xc01921fb60000000
  br i1 %.77, label %.69, label %.70
.91:
  %.97 = fsub float %.558, 0x401921fb60000000
  br label %.92 
.92:
  %.559 = phi float [%.558, %.70], [%.97, %.91]
  %.104 = fcmp ult float %.559, 0xc00921fb60000000
  br i1 %.104, label %.100, label %.101
.100:
  %.107 = fadd float %.559, 0x401921fb60000000
  br label %.101 
.101:
  %.560 = phi float [%.559, %.92], [%.107, %.100]
  %.111at3 = call float @_user_my_sin_impl(float %.560)
  ret float %.111at3 
}
define float @_user_my_cos(float %.114){
.113:
  %.120 = fadd float %.114, 0x3ff921fb60000000
  %.121at4 = call float @_user_my_sin(float %.120)
  ret float %.121at4 
}
define void @_user_write_mat([8 x float]* %.124, i32 %.127, i32 %.130){
.123:
  br label %.135wc 
.135wc:
  %.563 = phi i32 [0, %.123], [%.176, %.154wn]
  %.141 = icmp slt i32 %.563, %.127
  br i1 %.141, label %.136wloop., label %.137wn
.136wloop.:
  %.145 = getelementptr inbounds [8 x float], [8 x float]* %.124, i32 %.563, i32 0
  %.146 = load float, float* %.145
  call void @putfloat(float %.146)
  br label %.152wc 
.137wn:
  call void @putch(i32 10)
  ret void
.152wc:
  %.562 = phi i32 [1, %.136wloop.], [%.170, %.153wloop.]
  %.158 = icmp slt i32 %.562, %.130
  br i1 %.158, label %.153wloop., label %.154wn
.153wloop.:
  call void @putch(i32 32)
  %.166 = getelementptr inbounds [8 x float], [8 x float]* %.124, i32 %.563, i32 %.562
  %.167 = load float, float* %.166
  call void @putfloat(float %.167)
  %.170 = add i32 %.562, 1
  br label %.152wc 
.154wn:
  call void @putch(i32 10)
  %.176 = add i32 %.563, 1
  br label %.135wc 
}
define void @_user_dct([8 x float]* %.182, [8 x float]* %.185, i32 %.188, i32 %.191){
.181:
  br label %.196wc 
.196wc:
  %.569 = phi i32 [0, %.181], [%.296, %.208wn]
  %.202 = icmp slt i32 %.569, %.188
  br i1 %.202, label %.197wloop., label %.198wn
.197wloop.:
  br label %.206wc 
.198wn:
  ret void
.206wc:
  %.568 = phi i32 [0, %.197wloop.], [%.292, %.224wn]
  %.212 = icmp slt i32 %.568, %.191
  br i1 %.212, label %.207wloop., label %.208wn
.207wloop.:
  %.217 = getelementptr inbounds [8 x float], [8 x float]* %.182, i32 %.569, i32 %.568
  store float 0x0, float* %.217
  br label %.222wc 
.208wn:
  %.296 = add i32 %.569, 1
  br label %.196wc 
.222wc:
  %.567 = phi i32 [0, %.207wloop.], [%.288, %.234wn]
  %.228 = icmp slt i32 %.567, %.188
  br i1 %.228, label %.223wloop., label %.224wn
.223wloop.:
  br label %.232wc 
.224wn:
  %.292 = add i32 %.568, 1
  br label %.206wc 
.232wc:
  %.566 = phi i32 [0, %.223wloop.], [%.284, %.233wloop.]
  %.238 = icmp slt i32 %.566, %.191
  br i1 %.238, label %.233wloop., label %.234wn
.233wloop.:
  %.243 = getelementptr inbounds [8 x float], [8 x float]* %.182, i32 %.569, i32 %.568
  %.244 = load float, float* %.243
  %.248 = getelementptr inbounds [8 x float], [8 x float]* %.185, i32 %.567, i32 %.566
  %.249 = load float, float* %.248
  %.251 = sitofp i32 %.188 to float
  %.252 = fdiv float 0x400921fb60000000, %.251
  %.257 = sitofp i32 %.567 to float
  %.258 = fadd float %.257, 0x3fe0000000000000
  %.259 = fmul float %.252, %.258
  %.261 = sitofp i32 %.569 to float
  %.262 = fmul float %.259, %.261
  %.263at10 = call float @_user_my_cos(float %.262)
  %.264 = fmul float %.249, %.263at10
  %.266 = sitofp i32 %.191 to float
  %.267 = fdiv float 0x400921fb60000000, %.266
  %.269 = sitofp i32 %.566 to float
  %.270 = fadd float %.269, 0x3fe0000000000000
  %.271 = fmul float %.267, %.270
  %.273 = sitofp i32 %.568 to float
  %.274 = fmul float %.271, %.273
  %.275at11 = call float @_user_my_cos(float %.274)
  %.276 = fmul float %.264, %.275at11
  %.277 = fadd float %.244, %.276
  %.281 = getelementptr inbounds [8 x float], [8 x float]* %.182, i32 %.569, i32 %.568
  store float %.277, float* %.281
  %.284 = add i32 %.566, 1
  br label %.232wc 
.234wn:
  %.288 = add i32 %.567, 1
  br label %.222wc 
}
define void @_user_idct([8 x float]* %.301, [8 x float]* %.304, i32 %.307, i32 %.310){
.300:
  br label %.315wc 
.315wc:
  %.575 = phi i32 [0, %.300], [%.493, %.327wn]
  %.321 = icmp slt i32 %.575, %.307
  br i1 %.321, label %.316wloop., label %.317wn
.316wloop.:
  br label %.325wc 
.317wn:
  ret void
.325wc:
  %.574 = phi i32 [0, %.316wloop.], [%.489, %.407wn]
  %.331 = icmp slt i32 %.574, %.310
  br i1 %.331, label %.326wloop., label %.327wn
.326wloop.:
  %.336 = getelementptr inbounds [8 x float], [8 x float]* %.304, i32 0, i32 0
  %.337 = load float, float* %.336
  %.338 = fmul float 0x3fd0000000000000, %.337
  %.342 = getelementptr inbounds [8 x float], [8 x float]* %.301, i32 %.575, i32 %.574
  store float %.338, float* %.342
  br label %.347wc 
.327wn:
  %.493 = add i32 %.575, 1
  br label %.315wc 
.347wc:
  %.572 = phi i32 [1, %.326wloop.], [%.372, %.348wloop.]
  %.353 = icmp slt i32 %.572, %.307
  br i1 %.353, label %.348wloop., label %.349wn
.348wloop.:
  %.358 = getelementptr inbounds [8 x float], [8 x float]* %.301, i32 %.575, i32 %.574
  %.359 = load float, float* %.358
  %.362 = getelementptr inbounds [8 x float], [8 x float]* %.304, i32 %.572, i32 0
  %.363 = load float, float* %.362
  %.364 = fmul float 0x3fe0000000000000, %.363
  %.365 = fadd float %.359, %.364
  %.369 = getelementptr inbounds [8 x float], [8 x float]* %.301, i32 %.575, i32 %.574
  store float %.365, float* %.369
  %.372 = add i32 %.572, 1
  br label %.347wc 
.349wn:
  br label %.376wc 
.376wc:
  %.570 = phi i32 [1, %.349wn], [%.401, %.377wloop.]
  %.382 = icmp slt i32 %.570, %.310
  br i1 %.382, label %.377wloop., label %.378wn
.377wloop.:
  %.387 = getelementptr inbounds [8 x float], [8 x float]* %.301, i32 %.575, i32 %.574
  %.388 = load float, float* %.387
  %.391 = getelementptr inbounds [8 x float], [8 x float]* %.304, i32 0, i32 %.570
  %.392 = load float, float* %.391
  %.393 = fmul float 0x3fe0000000000000, %.392
  %.394 = fadd float %.388, %.393
  %.398 = getelementptr inbounds [8 x float], [8 x float]* %.301, i32 %.575, i32 %.574
  store float %.394, float* %.398
  %.401 = add i32 %.570, 1
  br label %.376wc 
.378wn:
  br label %.405wc 
.405wc:
  %.573 = phi i32 [1, %.378wn], [%.467, %.416wn]
  %.411 = icmp slt i32 %.573, %.307
  br i1 %.411, label %.406wloop., label %.407wn
.406wloop.:
  br label %.414wc 
.407wn:
  %.473 = getelementptr inbounds [8 x float], [8 x float]* %.301, i32 %.575, i32 %.574
  %.474 = load float, float* %.473
  %.475 = fmul float %.474, 0x4000000000000000
  %.477 = sitofp i32 %.307 to float
  %.478 = fdiv float %.475, %.477
  %.479 = fmul float %.478, 0x4000000000000000
  %.481 = sitofp i32 %.310 to float
  %.482 = fdiv float %.479, %.481
  %.486 = getelementptr inbounds [8 x float], [8 x float]* %.301, i32 %.575, i32 %.574
  store float %.482, float* %.486
  %.489 = add i32 %.574, 1
  br label %.325wc 
.414wc:
  %.571 = phi i32 [1, %.406wloop.], [%.463, %.415wloop.]
  %.420 = icmp slt i32 %.571, %.310
  br i1 %.420, label %.415wloop., label %.416wn
.415wloop.:
  %.425 = getelementptr inbounds [8 x float], [8 x float]* %.301, i32 %.575, i32 %.574
  %.426 = load float, float* %.425
  %.430 = getelementptr inbounds [8 x float], [8 x float]* %.304, i32 %.573, i32 %.571
  %.431 = load float, float* %.430
  %.433 = sitofp i32 %.307 to float
  %.434 = fdiv float 0x400921fb60000000, %.433
  %.436 = sitofp i32 %.575 to float
  %.437 = fadd float %.436, 0x3fe0000000000000
  %.438 = fmul float %.434, %.437
  %.440 = sitofp i32 %.573 to float
  %.441 = fmul float %.438, %.440
  %.442at12 = call float @_user_my_cos(float %.441)
  %.443 = fmul float %.431, %.442at12
  %.445 = sitofp i32 %.310 to float
  %.446 = fdiv float 0x400921fb60000000, %.445
  %.448 = sitofp i32 %.574 to float
  %.449 = fadd float %.448, 0x3fe0000000000000
  %.450 = fmul float %.446, %.449
  %.452 = sitofp i32 %.571 to float
  %.453 = fmul float %.450, %.452
  %.454at13 = call float @_user_my_cos(float %.453)
  %.455 = fmul float %.443, %.454at13
  %.456 = fadd float %.426, %.455
  %.460 = getelementptr inbounds [8 x float], [8 x float]* %.301, i32 %.575, i32 %.574
  store float %.456, float* %.460
  %.463 = add i32 %.571, 1
  br label %.414wc 
.416wn:
  %.467 = add i32 %.573, 1
  br label %.405wc 
}
define i32 @main(){
.497:
  %.500at14 = call i32 @getint()
  %.503at15 = call i32 @getint()
  br label %.507wc 
.507wc:
  %.577 = phi i32 [0, %.497], [%.536, %.519wn]
  %.513 = icmp slt i32 %.577, %.500at14
  br i1 %.513, label %.508wloop., label %.509wn
.508wloop.:
  br label %.517wc 
.509wn:
  %.539 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_dct, i32 0, i32 0
  %.540 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_block, i32 0, i32 0
  call void @_user_dct([8 x float]* %.539, [8 x float]* %.540, i32 %.500at14, i32 %.503at15)
  %.544 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_dct, i32 0, i32 0
  call void @_user_write_mat([8 x float]* %.544, i32 %.500at14, i32 %.503at15)
  %.548 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_idct, i32 0, i32 0
  %.549 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_dct, i32 0, i32 0
  call void @_user_idct([8 x float]* %.548, [8 x float]* %.549, i32 %.500at14, i32 %.503at15)
  %.553 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_idct, i32 0, i32 0
  call void @_user_write_mat([8 x float]* %.553, i32 %.500at14, i32 %.503at15)
  ret i32 0 
.517wc:
  %.576 = phi i32 [0, %.508wloop.], [%.532, %.518wloop.]
  %.523 = icmp slt i32 %.576, %.503at15
  br i1 %.523, label %.518wloop., label %.519wn
.518wloop.:
  %.526at16 = call float @getfloat()
  %.529 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @.G.test_block, i32 0, i32 %.577, i32 %.576
  store float %.526at16, float* %.529
  %.532 = add i32 %.576, 1
  br label %.517wc 
.519wn:
  %.536 = add i32 %.577, 1
  br label %.507wc 
}
