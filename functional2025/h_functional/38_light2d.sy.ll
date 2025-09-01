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
@.G.W = global i32 zeroinitializer
@.G.H = global i32 zeroinitializer
@.G.N = global i32 zeroinitializer
@.G.PI = global float zeroinitializer
@.G.TWO_PI = global float zeroinitializer
@.G.MAX_STEP = global i32 zeroinitializer
@.G.MAX_DISTANCE = global float zeroinitializer
@.G.EPSILON = global float zeroinitializer
@.G.RAND_MAX = global i32 zeroinitializer
@.G.seed = global i32 0
define i32 @_user_rand(){
.21:
  %.22 = load i32, i32* @.G.seed
  %.24 = mul i32 %.22, 19980130
  %.26 = add i32 %.24, 23333
  %.27 = srem i32 %.26, 100000007
  store i32 %.27, i32* @.G.seed
  %.31 = load i32, i32* @.G.seed
  %.32 = icmp slt i32 %.31, 0
  br i1 %.32, label %.29, label %.30
.29:
  %.34 = load i32, i32* @.G.seed
  %.35 = add i32 %.34, 100000007
  store i32 %.35, i32* @.G.seed
  br label %.30 
.30:
  %.38 = load i32, i32* @.G.seed
  ret i32 %.38 
}
define float @_user_my_fabs(float %.41){
.40:
  %.42 = alloca float
  store float %.41, float* %.42
  %.46 = load float, float* %.42
  %.47 = sitofp i32 0 to float
  %.48 = fcmp ugt float %.46, %.47
  br i1 %.48, label %.44, label %.45
.44:
  %.50 = load float, float* %.42
  ret float %.50 
.45:
  %.52 = load float, float* %.42
  %.54 = fsub float 0x0, %.52
  ret float %.54 
}
define float @_user_my_sqrt(float %.57){
.56:
  %.78 = alloca i32
  %.60 = alloca float
  %.58 = alloca float
  store float %.57, float* %.58
  %.61 = load float, float* %.58
  %.63 = sitofp i32 8 to float
  %.64 = fdiv float %.61, %.63
  %.66 = fadd float %.64, 0x3fe0000000000000
  %.68 = load float, float* %.58
  %.69 = sitofp i32 2 to float
  %.70 = fmul float %.69, %.68
  %.72 = load float, float* %.58
  %.73 = sitofp i32 4 to float
  %.74 = fadd float %.73, %.72
  %.75 = fdiv float %.70, %.74
  %.76 = fadd float %.66, %.75
  store float %.76, float* %.60
  store i32 10, i32* %.78
  br label %.80wc 
.80wc:
  %.84 = load i32, i32* %.78
  %.85 = icmp ne i32 %.84, 0
  br i1 %.85, label %.81wloop., label %.82wn
.81wloop.:
  %.87 = load float, float* %.60
  %.88 = load float, float* %.58
  %.89 = load float, float* %.60
  %.90 = fdiv float %.88, %.89
  %.91 = fadd float %.87, %.90
  %.92 = sitofp i32 2 to float
  %.93 = fdiv float %.91, %.92
  store float %.93, float* %.60
  %.95 = load i32, i32* %.78
  %.96 = sub i32 %.95, 1
  store i32 %.96, i32* %.78
  br label %.80wc 
.82wn:
  %.99 = load float, float* %.60
  ret float %.99 
}
define float @_user_p(float %.102){
.101:
  %.103 = alloca float
  store float %.102, float* %.103
  %.106 = load float, float* %.103
  %.107 = sitofp i32 3 to float
  %.108 = fmul float %.107, %.106
  %.109 = load float, float* %.103
  %.110 = sitofp i32 4 to float
  %.111 = fmul float %.110, %.109
  %.112 = load float, float* %.103
  %.113 = fmul float %.111, %.112
  %.114 = load float, float* %.103
  %.115 = fmul float %.113, %.114
  %.116 = fsub float %.108, %.115
  ret float %.116 
}
define float @_user_my_sin_impl(float %.119){
.118:
  %.120 = alloca float
  store float %.119, float* %.120
  %.124 = load float, float* %.120
  %.125at0 = call float @_user_my_fabs(float %.124)
  %.126 = fcmp ule float %.125at0, 0x3eb0c6f7a0000000
  br i1 %.126, label %.122, label %.123
.122:
  %.128 = load float, float* %.120
  ret float %.128 
.123:
  %.130 = load float, float* %.120
  %.132 = fdiv float %.130, 0x4008000000000000
  %.133at1 = call float @_user_my_sin_impl(float %.132)
  %.134at2 = call float @_user_p(float %.133at1)
  ret float %.134at2 
}
define float @_user_my_sin(float %.137){
.136:
  %.150 = alloca i32
  %.138 = alloca float
  store float %.137, float* %.138
  %.143 = load float, float* %.138
  %.144 = fcmp ugt float %.143, 0x401921fb60000000
  br i1 %.144, label %.140, label %.142
.140:
  %.151 = load float, float* %.138
  %.152 = fdiv float %.151, 0x401921fb60000000
  %.153 = fptosi float %.152 to i32
  store i32 %.153, i32* %.150
  %.155 = load float, float* %.138
  %.156 = load i32, i32* %.150
  %.157 = sitofp i32 %.156 to float
  %.158 = fmul float %.157, 0x401921fb60000000
  %.159 = fsub float %.155, %.158
  store float %.159, float* %.138
  br label %.141 
.141:
  %.164 = load float, float* %.138
  %.165 = fcmp ugt float %.164, 0x400921fb60000000
  br i1 %.165, label %.162, label %.163
.142:
  %.146 = load float, float* %.138
  %.148 = fcmp ult float %.146, 0xc01921fb60000000
  br i1 %.148, label %.140, label %.141
.162:
  %.167 = load float, float* %.138
  %.168 = fsub float %.167, 0x401921fb60000000
  store float %.168, float* %.138
  br label %.163 
.163:
  %.173 = load float, float* %.138
  %.175 = fcmp ult float %.173, 0xc00921fb60000000
  br i1 %.175, label %.171, label %.172
.171:
  %.177 = load float, float* %.138
  %.178 = fadd float %.177, 0x401921fb60000000
  store float %.178, float* %.138
  br label %.172 
.172:
  %.181 = load float, float* %.138
  %.182at3 = call float @_user_my_sin_impl(float %.181)
  ret float %.182at3 
}
define float @_user_my_cos(float %.185){
.184:
  %.186 = alloca float
  store float %.185, float* %.186
  %.188 = load float, float* %.186
  %.190 = fadd float %.188, 0x3ff921fb60000000
  %.191at4 = call float @_user_my_sin(float %.190)
  ret float %.191at4 
}
define float @_user_circle_sdf(float %.194, float %.197, float %.200, float %.203, float %.206){
.193:
  %.214 = alloca float
  %.209 = alloca float
  %.207 = alloca float
  %.204 = alloca float
  %.201 = alloca float
  %.198 = alloca float
  %.195 = alloca float
  store float %.194, float* %.195
  store float %.197, float* %.198
  store float %.200, float* %.201
  store float %.203, float* %.204
  store float %.206, float* %.207
  %.210 = load float, float* %.195
  %.211 = load float, float* %.201
  %.212 = fsub float %.210, %.211
  store float %.212, float* %.209
  %.215 = load float, float* %.198
  %.216 = load float, float* %.204
  %.217 = fsub float %.215, %.216
  store float %.217, float* %.214
  %.219 = load float, float* %.209
  %.220 = load float, float* %.209
  %.221 = fmul float %.219, %.220
  %.222 = load float, float* %.214
  %.223 = load float, float* %.214
  %.224 = fmul float %.222, %.223
  %.225 = fadd float %.221, %.224
  %.226at5 = call float @_user_my_sqrt(float %.225)
  %.227 = load float, float* %.207
  %.228 = fsub float %.226at5, %.227
  ret float %.228 
}
define void @_user_scene(float %.231, float %.234, float* %.237){
.230:
  %.247 = alloca float
  %.240 = alloca float
  %.238 = alloca float*
  %.235 = alloca float
  %.232 = alloca float
  store float %.231, float* %.232
  store float %.234, float* %.235
  store float* %.237, float** %.238
  %.241 = load float, float* %.232
  %.242 = load float, float* %.235
  %.245at6 = call float @_user_circle_sdf(float %.241, float %.242, float 0x3fd99999a0000000, float 0x3fd99999a0000000, float 0x3fb99999a0000000)
  store float %.245at6, float* %.240
  %.248 = load float, float* %.232
  %.249 = load float, float* %.235
  %.252at7 = call float @_user_circle_sdf(float %.248, float %.249, float 0x3fe3333340000000, float 0x3fe3333340000000, float 0x3fa99999a0000000)
  store float %.252at7, float* %.247
  %.256 = load float, float* %.240
  %.257 = load float, float* %.247
  %.258 = fcmp ult float %.256, %.257
  br i1 %.258, label %.254, label %.255
.254:
  %.260 = load float, float* %.240
  %.261 = load float*, float** %.238
  %.262 = getelementptr inbounds float, float* %.261, i32 0
  store float %.260, float* %.262
  %.264 = load float*, float** %.238
  %.265 = getelementptr inbounds float, float* %.264, i32 1
  store float 0x4008000000000000, float* %.265
  br label %.267 
.255:
  %.269 = load float, float* %.247
  %.270 = load float*, float** %.238
  %.271 = getelementptr inbounds float, float* %.270, i32 0
  store float %.269, float* %.271
  %.273 = load float*, float** %.238
  %.274 = getelementptr inbounds float, float* %.273, i32 1
  store float 0x0, float* %.274
  br label %.267 
.267:
  ret void
}
define float @_user_trace(float %.279, float %.282, float %.285, float %.288){
.278:
  %.306 = alloca [2 x float]
  %.293 = alloca i32
  %.291 = alloca float
  %.289 = alloca float
  %.286 = alloca float
  %.283 = alloca float
  %.280 = alloca float
  store float %.279, float* %.280
  store float %.282, float* %.283
  store float %.285, float* %.286
  store float %.288, float* %.289
  store float 0x0, float* %.291
  store i32 0, i32* %.293
  br label %.295wc 
.295wc:
  %.299 = load i32, i32* %.293
  %.300 = icmp slt i32 %.299, 10
  br i1 %.300, label %.301, label %.297wn
.296wloop.:
  %.307 = load float, float* %.280
  %.308 = load float, float* %.286
  %.309 = load float, float* %.291
  %.310 = fmul float %.308, %.309
  %.311 = fadd float %.307, %.310
  %.312 = load float, float* %.283
  %.313 = load float, float* %.289
  %.314 = load float, float* %.291
  %.315 = fmul float %.313, %.314
  %.316 = fadd float %.312, %.315
  %.317 = getelementptr inbounds [2 x float], [2 x float]* %.306, i32 0, i32 0
  call void @_user_scene(float %.311, float %.316, float* %.317)
  %.321 = getelementptr inbounds [2 x float], [2 x float]* %.306, i32 0, i32 0
  %.322 = load float, float* %.321
  %.323 = fcmp ult float %.322, 0x3eb0c6f7a0000000
  br i1 %.323, label %.319, label %.320
.297wn:
  ret float 0x0 
.301:
  %.303 = load float, float* %.291
  %.304 = fcmp ult float %.303, 0x4000000000000000
  br i1 %.304, label %.296wloop., label %.297wn
.319:
  %.325 = getelementptr inbounds [2 x float], [2 x float]* %.306, i32 0, i32 1
  %.326 = load float, float* %.325
  ret float %.326 
.320:
  %.328 = load float, float* %.291
  %.329 = getelementptr inbounds [2 x float], [2 x float]* %.306, i32 0, i32 0
  %.330 = load float, float* %.329
  %.331 = fadd float %.328, %.330
  store float %.331, float* %.291
  %.333 = load i32, i32* %.293
  %.334 = add i32 %.333, 1
  store i32 %.334, i32* %.293
  br label %.295wc 
}
define float @_user_sample(float %.339, float %.342){
.338:
  %.360 = alloca float
  %.356 = alloca float
  %.347 = alloca i32
  %.345 = alloca float
  %.343 = alloca float
  %.340 = alloca float
  store float %.339, float* %.340
  store float %.342, float* %.343
  store float 0x0, float* %.345
  store i32 0, i32* %.347
  br label %.349wc 
.349wc:
  %.353 = load i32, i32* %.347
  %.354 = icmp slt i32 %.353, 24
  br i1 %.354, label %.350wloop., label %.351wn
.350wloop.:
  %.357at9 = call i32 @_user_rand()
  %.358 = sitofp i32 %.357at9 to float
  store float %.358, float* %.356
  %.361 = load i32, i32* %.347
  %.362 = load float, float* %.356
  %.363 = sitofp i32 100000006 to float
  %.364 = fdiv float %.362, %.363
  %.365 = sitofp i32 %.361 to float
  %.366 = fadd float %.365, %.364
  %.367 = fmul float 0x401921fb60000000, %.366
  %.368 = sitofp i32 24 to float
  %.369 = fdiv float %.367, %.368
  store float %.369, float* %.360
  %.371 = load float, float* %.345
  %.372 = load float, float* %.340
  %.373 = load float, float* %.343
  %.374 = load float, float* %.360
  %.375at10 = call float @_user_my_cos(float %.374)
  %.376 = load float, float* %.360
  %.377at11 = call float @_user_my_sin(float %.376)
  %.378at12 = call float @_user_trace(float %.372, float %.373, float %.375at10, float %.377at11)
  %.379 = fadd float %.371, %.378at12
  store float %.379, float* %.345
  %.381 = load i32, i32* %.347
  %.382 = add i32 %.381, 1
  store i32 %.382, i32* %.347
  br label %.349wc 
.351wn:
  %.385 = load float, float* %.345
  %.386 = sitofp i32 24 to float
  %.387 = fdiv float %.385, %.386
  ret float %.387 
}
define void @_user_write_pgm(){
.389:
  %.431 = alloca i32
  %.427 = alloca float
  %.423 = alloca float
  %.414 = alloca i32
  %.405 = alloca i32
  call void @putch(i32 80)
  call void @putch(i32 50)
  call void @putch(i32 10)
  call void @putint(i32 12)
  call void @putch(i32 32)
  call void @putint(i32 12)
  call void @putch(i32 32)
  call void @putint(i32 255)
  call void @putch(i32 10)
  store i32 0, i32* %.405
  br label %.407wc 
.407wc:
  %.411 = load i32, i32* %.405
  %.412 = icmp slt i32 %.411, 12
  br i1 %.412, label %.408wloop., label %.409wn
.408wloop.:
  store i32 0, i32* %.414
  br label %.416wc 
.409wn:
  ret void
.416wc:
  %.420 = load i32, i32* %.414
  %.421 = icmp slt i32 %.420, 12
  br i1 %.421, label %.417wloop., label %.418wn
.417wloop.:
  %.424 = load i32, i32* %.414
  %.425 = sitofp i32 %.424 to float
  store float %.425, float* %.423
  %.428 = load i32, i32* %.405
  %.429 = sitofp i32 %.428 to float
  store float %.429, float* %.427
  %.432 = load float, float* %.423
  %.433 = sitofp i32 12 to float
  %.434 = fdiv float %.432, %.433
  %.435 = load float, float* %.427
  %.436 = sitofp i32 12 to float
  %.437 = fdiv float %.435, %.436
  %.438at22 = call float @_user_sample(float %.434, float %.437)
  %.440 = fmul float %.438at22, 0x406fe00000000000
  %.441 = fptosi float %.440 to i32
  store i32 %.441, i32* %.431
  %.445 = load i32, i32* %.431
  %.446 = icmp sgt i32 %.445, 255
  br i1 %.446, label %.443, label %.444
.418wn:
  call void @putch(i32 10)
  %.458 = load i32, i32* %.405
  %.459 = add i32 %.458, 1
  store i32 %.459, i32* %.405
  br label %.407wc 
.443:
  store i32 255, i32* %.431
  br label %.444 
.444:
  %.450 = load i32, i32* %.431
  call void @putint(i32 %.450)
  call void @putch(i32 32)
  %.453 = load i32, i32* %.414
  %.454 = add i32 %.453, 1
  store i32 %.454, i32* %.414
  br label %.416wc 
}
define i32 @main(){
.463:
  call void @_user_write_pgm()
  ret i32 0 
}
