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
@.G.k = global i32 zeroinitializer
@.C..202 = constant [10 x float]  [float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0]
@.C..561 = constant [10 x float]  [float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0]
@.C..625 = constant [8 x i32]  [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]
@.C..1058 = constant [10 x float]  [float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0]
@.C..1446 = constant [10 x float]  [float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float 0x0, float zeroinitializer]
@.C..1557 = constant [10 x i32]  [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 zeroinitializer]
define float @_user_params_f40(float %.2, float %.5, float %.8, float %.11, float %.14, float %.17, float %.20, float %.23, float %.26, float %.29, float %.32, float %.35, float %.38, float %.41, float %.44, float %.47, float %.50, float %.53, float %.56, float %.59, float %.62, float %.65, float %.68, float %.71, float %.74, float %.77, float %.80, float %.83, float %.86, float %.89, float %.92, float %.95, float %.98, float %.101, float %.104, float %.107, float %.110, float %.113, float %.116, float %.119){
.1:
  %.130 = alloca [10 x float]
  %.127 = fcmp une float %.119, 0x0
  br i1 %.127, label %.122, label %.123
.122:
  %.134 = fadd float %.2, %.5
  %.136 = fadd float %.134, %.8
  %.138 = fadd float %.136, %.11
  %.141 = fadd float %.14, %.17
  %.143 = fadd float %.141, %.20
  %.145 = fadd float %.143, %.23
  %.148 = fadd float %.26, %.29
  %.150 = fadd float %.148, %.32
  %.152 = fadd float %.150, %.35
  %.155 = fadd float %.38, %.41
  %.157 = fadd float %.155, %.44
  %.159 = fadd float %.157, %.47
  %.162 = fadd float %.50, %.53
  %.164 = fadd float %.162, %.56
  %.166 = fadd float %.164, %.59
  %.169 = fadd float %.62, %.65
  %.171 = fadd float %.169, %.68
  %.173 = fadd float %.171, %.71
  %.176 = fadd float %.74, %.77
  %.178 = fadd float %.176, %.80
  %.180 = fadd float %.178, %.83
  %.183 = fadd float %.86, %.89
  %.185 = fadd float %.183, %.92
  %.187 = fadd float %.185, %.95
  %.190 = fadd float %.98, %.101
  %.192 = fadd float %.190, %.104
  %.194 = fadd float %.192, %.107
  %.197 = fadd float %.110, %.113
  %.199 = fadd float %.197, %.116
  %.201 = fadd float %.199, %.119
  call void @llvm.memcpy.p0.p0.i32([10 x float]* %.130, [10 x float]* @.C..202, i32 40, i1 false)
  %.208 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 0
  store float %.138, float* %.208
  %.211 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 1
  store float %.145, float* %.211
  %.214 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 2
  store float %.152, float* %.214
  %.217 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 3
  store float %.159, float* %.217
  %.220 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 4
  store float %.166, float* %.220
  %.223 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 5
  store float %.173, float* %.223
  %.226 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 6
  store float %.180, float* %.226
  %.229 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 7
  store float %.187, float* %.229
  %.232 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 8
  store float %.194, float* %.232
  %.235 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 9
  store float %.201, float* %.235
  %.238 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 0
  call void @putfarray(i32 10, float* %.238)
  %.241 = load i32, i32* @.G.k
  %.242 = getelementptr inbounds [10 x float], [10 x float]* %.130, i32 0, i32 %.241
  %.243 = load float, float* %.242
  ret float %.243 
.123:
  %.286 = fadd float %.2, %.5
  %.288 = fadd float %.286, %.8
  %.289at1 = call float @_user_params_f40(float %.5, float %.8, float %.11, float %.14, float %.17, float %.20, float %.23, float %.26, float %.29, float %.32, float %.35, float %.38, float %.41, float %.44, float %.47, float %.50, float %.53, float %.56, float %.59, float %.62, float %.65, float %.68, float %.71, float %.74, float %.77, float %.80, float %.83, float %.86, float %.89, float %.92, float %.95, float %.98, float %.101, float %.104, float %.107, float %.110, float %.113, float %.116, float %.119, float %.288)
  ret float %.289at1 
}
define float @_user_params_f40_i24(i32 %.292, i32 %.295, i32 %.298, float %.301, i32 %.304, i32 %.307, i32 %.310, float %.313, float %.316, float %.319, i32 %.322, float %.325, float %.328, i32 %.331, float %.334, i32 %.337, float %.340, float %.343, float %.346, float %.349, float %.352, float %.355, i32 %.358, float %.361, i32 %.364, i32 %.367, float %.370, float %.373, float %.376, float %.379, float %.382, i32 %.385, float %.388, i32 %.391, float %.394, float %.397, float %.400, float %.403, i32 %.406, i32 %.409, float %.412, float %.415, float %.418, i32 %.421, float %.424, i32 %.427, i32 %.430, float %.433, float %.436, float %.439, float %.442, i32 %.445, i32 %.448, i32 %.451, float %.454, float %.457, float %.460, float %.463, float %.466, float %.469, i32 %.472, float %.475, i32 %.478, float %.481){
.291:
  %.583 = alloca [8 x i32]
  %.489 = alloca [10 x float]
  %.487 = icmp ne i32 %.292, 0
  br i1 %.487, label %.484, label %.485
.484:
  %.493 = fadd float %.418, %.346
  %.495 = fadd float %.493, %.475
  %.497 = fadd float %.495, %.325
  %.500 = fadd float %.301, %.400
  %.502 = fadd float %.500, %.355
  %.504 = fadd float %.502, %.319
  %.507 = fadd float %.313, %.379
  %.509 = fadd float %.507, %.415
  %.511 = fadd float %.509, %.349
  %.514 = fadd float %.343, %.439
  %.516 = fadd float %.514, %.412
  %.518 = fadd float %.516, %.316
  %.521 = fadd float %.397, %.469
  %.523 = fadd float %.521, %.454
  %.525 = fadd float %.523, %.457
  %.528 = fadd float %.370, %.394
  %.530 = fadd float %.528, %.460
  %.532 = fadd float %.530, %.376
  %.535 = fadd float %.436, %.382
  %.537 = fadd float %.535, %.463
  %.539 = fadd float %.537, %.433
  %.542 = fadd float %.328, %.442
  %.544 = fadd float %.542, %.340
  %.546 = fadd float %.544, %.424
  %.549 = fadd float %.361, %.373
  %.551 = fadd float %.549, %.403
  %.553 = fadd float %.551, %.481
  %.556 = fadd float %.466, %.334
  %.558 = fadd float %.556, %.352
  %.560 = fadd float %.558, %.388
  call void @llvm.memcpy.p0.p0.i32([10 x float]* %.489, [10 x float]* @.C..561, i32 40, i1 false)
  %.563 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 0
  store float %.497, float* %.563
  %.565 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 1
  store float %.504, float* %.565
  %.567 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 2
  store float %.511, float* %.567
  %.569 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 3
  store float %.518, float* %.569
  %.571 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 4
  store float %.525, float* %.571
  %.573 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 5
  store float %.532, float* %.573
  %.575 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 6
  store float %.539, float* %.575
  %.577 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 7
  store float %.546, float* %.577
  %.579 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 8
  store float %.553, float* %.579
  %.581 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 9
  store float %.560, float* %.581
  %.587 = add i32 %.331, %.304
  %.589 = add i32 %.587, %.295
  %.592 = add i32 %.445, %.307
  %.594 = add i32 %.592, %.310
  %.597 = add i32 %.298, %.358
  %.599 = add i32 %.597, %.385
  %.602 = add i32 %.409, %.364
  %.604 = add i32 %.602, %.427
  %.607 = add i32 %.421, %.367
  %.609 = add i32 %.607, %.478
  %.612 = add i32 %.472, %.430
  %.614 = add i32 %.612, %.391
  %.617 = add i32 %.406, %.337
  %.619 = add i32 %.617, %.451
  %.622 = add i32 %.448, %.322
  %.624 = add i32 %.622, %.292
  call void @llvm.memcpy.p0.p0.i32([8 x i32]* %.583, [8 x i32]* @.C..625, i32 32, i1 false)
  %.628 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 0
  store i32 %.589, i32* %.628
  %.630 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 1
  store i32 %.594, i32* %.630
  %.632 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 2
  store i32 %.599, i32* %.632
  %.634 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 3
  store i32 %.604, i32* %.634
  %.636 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 4
  store i32 %.609, i32* %.636
  %.638 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 5
  store i32 %.614, i32* %.638
  %.640 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 6
  store i32 %.619, i32* %.640
  %.642 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 7
  store i32 %.624, i32* %.642
  %.644 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 0
  call void @putfarray(i32 10, float* %.644)
  %.646 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 0
  call void @putarray(i32 8, i32* %.646)
  br label %.651wc 
.485:
  %.743at4 = call float @_user_params_f40_i24(i32 %.304, i32 %.295, i32 %.298, float %.301, i32 %.304, i32 %.307, i32 %.310, float %.313, float %.316, float %.319, i32 %.322, float %.325, float %.328, i32 %.331, float %.334, i32 %.337, float %.340, float %.343, float %.346, float %.349, float %.352, float %.355, i32 %.358, float %.361, i32 %.364, i32 %.367, float %.370, float %.373, float %.376, float %.379, float %.382, i32 %.385, float %.388, i32 %.391, float %.394, float %.397, float %.400, float %.403, i32 %.406, i32 %.409, float %.412, float %.415, float %.418, i32 %.421, float %.424, i32 %.427, i32 %.430, float %.433, float %.436, float %.439, float %.442, i32 %.445, i32 %.448, i32 %.451, float %.454, float %.457, float %.460, float %.463, float %.466, float %.469, i32 %.472, float %.475, i32 %.478, float %.481)
  ret float %.743at4 
.651wc:
  %.2269 = phi i32 [0, %.484], [%.671, %.652wloop.]
  %.656 = icmp slt i32 %.2269, 8
  br i1 %.656, label %.652wloop., label %.653wn
.652wloop.:
  %.659 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 %.2269
  %.660 = load i32, i32* %.659
  %.662 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 %.2269
  %.663 = load float, float* %.662
  %.664 = sitofp i32 %.660 to float
  %.665 = fsub float %.664, %.663
  %.667 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 %.2269
  %.668 = fptosi float %.665 to i32
  store i32 %.668, i32* %.667
  %.671 = add i32 %.2269, 1
  br label %.651wc 
.653wn:
  %.674 = load i32, i32* @.G.k
  %.675 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 %.674
  %.676 = load i32, i32* %.675
  %.677 = sitofp i32 %.676 to float
  ret float %.677 
}
define float @_user_params_fa40(float* %.746, float* %.749, float* %.752, float* %.755, float* %.758, float* %.761, float* %.764, float* %.767, float* %.770, float* %.773, float* %.776, float* %.779, float* %.782, float* %.785, float* %.788, float* %.791, float* %.794, float* %.797, float* %.800, float* %.803, float* %.806, float* %.809, float* %.812, float* %.815, float* %.818, float* %.821, float* %.824, float* %.827, float* %.830, float* %.833, float* %.836, float* %.839, float* %.842, float* %.845, float* %.848, float* %.851, float* %.854, float* %.857, float* %.860, float* %.863){
.745:
  %.866 = alloca [10 x float]
  %.868 = load i32, i32* @.G.k
  %.870 = getelementptr inbounds float, float* %.746, i32 %.868
  %.871 = load float, float* %.870
  %.872 = load i32, i32* @.G.k
  %.874 = getelementptr inbounds float, float* %.749, i32 %.872
  %.875 = load float, float* %.874
  %.876 = fadd float %.871, %.875
  %.877 = load i32, i32* @.G.k
  %.879 = getelementptr inbounds float, float* %.752, i32 %.877
  %.880 = load float, float* %.879
  %.881 = fadd float %.876, %.880
  %.882 = load i32, i32* @.G.k
  %.884 = getelementptr inbounds float, float* %.755, i32 %.882
  %.885 = load float, float* %.884
  %.886 = fadd float %.881, %.885
  %.887 = load i32, i32* @.G.k
  %.889 = getelementptr inbounds float, float* %.758, i32 %.887
  %.890 = load float, float* %.889
  %.891 = load i32, i32* @.G.k
  %.893 = getelementptr inbounds float, float* %.761, i32 %.891
  %.894 = load float, float* %.893
  %.895 = fadd float %.890, %.894
  %.896 = load i32, i32* @.G.k
  %.898 = getelementptr inbounds float, float* %.764, i32 %.896
  %.899 = load float, float* %.898
  %.900 = fadd float %.895, %.899
  %.901 = load i32, i32* @.G.k
  %.903 = getelementptr inbounds float, float* %.767, i32 %.901
  %.904 = load float, float* %.903
  %.905 = fadd float %.900, %.904
  %.906 = load i32, i32* @.G.k
  %.908 = getelementptr inbounds float, float* %.770, i32 %.906
  %.909 = load float, float* %.908
  %.910 = load i32, i32* @.G.k
  %.912 = getelementptr inbounds float, float* %.773, i32 %.910
  %.913 = load float, float* %.912
  %.914 = fadd float %.909, %.913
  %.915 = load i32, i32* @.G.k
  %.917 = getelementptr inbounds float, float* %.776, i32 %.915
  %.918 = load float, float* %.917
  %.919 = fadd float %.914, %.918
  %.920 = load i32, i32* @.G.k
  %.922 = getelementptr inbounds float, float* %.779, i32 %.920
  %.923 = load float, float* %.922
  %.924 = fadd float %.919, %.923
  %.925 = load i32, i32* @.G.k
  %.927 = getelementptr inbounds float, float* %.782, i32 %.925
  %.928 = load float, float* %.927
  %.929 = load i32, i32* @.G.k
  %.931 = getelementptr inbounds float, float* %.785, i32 %.929
  %.932 = load float, float* %.931
  %.933 = fadd float %.928, %.932
  %.934 = load i32, i32* @.G.k
  %.936 = getelementptr inbounds float, float* %.788, i32 %.934
  %.937 = load float, float* %.936
  %.938 = fadd float %.933, %.937
  %.939 = load i32, i32* @.G.k
  %.941 = getelementptr inbounds float, float* %.791, i32 %.939
  %.942 = load float, float* %.941
  %.943 = fadd float %.938, %.942
  %.944 = load i32, i32* @.G.k
  %.946 = getelementptr inbounds float, float* %.794, i32 %.944
  %.947 = load float, float* %.946
  %.948 = load i32, i32* @.G.k
  %.950 = getelementptr inbounds float, float* %.797, i32 %.948
  %.951 = load float, float* %.950
  %.952 = fadd float %.947, %.951
  %.953 = load i32, i32* @.G.k
  %.955 = getelementptr inbounds float, float* %.800, i32 %.953
  %.956 = load float, float* %.955
  %.957 = fadd float %.952, %.956
  %.958 = load i32, i32* @.G.k
  %.960 = getelementptr inbounds float, float* %.803, i32 %.958
  %.961 = load float, float* %.960
  %.962 = fadd float %.957, %.961
  %.963 = load i32, i32* @.G.k
  %.965 = getelementptr inbounds float, float* %.806, i32 %.963
  %.966 = load float, float* %.965
  %.967 = load i32, i32* @.G.k
  %.969 = getelementptr inbounds float, float* %.809, i32 %.967
  %.970 = load float, float* %.969
  %.971 = fadd float %.966, %.970
  %.972 = load i32, i32* @.G.k
  %.974 = getelementptr inbounds float, float* %.812, i32 %.972
  %.975 = load float, float* %.974
  %.976 = fadd float %.971, %.975
  %.977 = load i32, i32* @.G.k
  %.979 = getelementptr inbounds float, float* %.815, i32 %.977
  %.980 = load float, float* %.979
  %.981 = fadd float %.976, %.980
  %.982 = load i32, i32* @.G.k
  %.984 = getelementptr inbounds float, float* %.818, i32 %.982
  %.985 = load float, float* %.984
  %.986 = load i32, i32* @.G.k
  %.988 = getelementptr inbounds float, float* %.821, i32 %.986
  %.989 = load float, float* %.988
  %.990 = fadd float %.985, %.989
  %.991 = load i32, i32* @.G.k
  %.993 = getelementptr inbounds float, float* %.824, i32 %.991
  %.994 = load float, float* %.993
  %.995 = fadd float %.990, %.994
  %.996 = load i32, i32* @.G.k
  %.998 = getelementptr inbounds float, float* %.827, i32 %.996
  %.999 = load float, float* %.998
  %.1000 = fadd float %.995, %.999
  %.1001 = load i32, i32* @.G.k
  %.1003 = getelementptr inbounds float, float* %.830, i32 %.1001
  %.1004 = load float, float* %.1003
  %.1005 = load i32, i32* @.G.k
  %.1007 = getelementptr inbounds float, float* %.833, i32 %.1005
  %.1008 = load float, float* %.1007
  %.1009 = fadd float %.1004, %.1008
  %.1010 = load i32, i32* @.G.k
  %.1012 = getelementptr inbounds float, float* %.836, i32 %.1010
  %.1013 = load float, float* %.1012
  %.1014 = fadd float %.1009, %.1013
  %.1015 = load i32, i32* @.G.k
  %.1017 = getelementptr inbounds float, float* %.839, i32 %.1015
  %.1018 = load float, float* %.1017
  %.1019 = fadd float %.1014, %.1018
  %.1020 = load i32, i32* @.G.k
  %.1022 = getelementptr inbounds float, float* %.842, i32 %.1020
  %.1023 = load float, float* %.1022
  %.1024 = load i32, i32* @.G.k
  %.1026 = getelementptr inbounds float, float* %.845, i32 %.1024
  %.1027 = load float, float* %.1026
  %.1028 = fadd float %.1023, %.1027
  %.1029 = load i32, i32* @.G.k
  %.1031 = getelementptr inbounds float, float* %.848, i32 %.1029
  %.1032 = load float, float* %.1031
  %.1033 = fadd float %.1028, %.1032
  %.1034 = load i32, i32* @.G.k
  %.1036 = getelementptr inbounds float, float* %.851, i32 %.1034
  %.1037 = load float, float* %.1036
  %.1038 = fadd float %.1033, %.1037
  %.1039 = load i32, i32* @.G.k
  %.1041 = getelementptr inbounds float, float* %.854, i32 %.1039
  %.1042 = load float, float* %.1041
  %.1043 = load i32, i32* @.G.k
  %.1045 = getelementptr inbounds float, float* %.857, i32 %.1043
  %.1046 = load float, float* %.1045
  %.1047 = fadd float %.1042, %.1046
  %.1048 = load i32, i32* @.G.k
  %.1050 = getelementptr inbounds float, float* %.860, i32 %.1048
  %.1051 = load float, float* %.1050
  %.1052 = fadd float %.1047, %.1051
  %.1053 = load i32, i32* @.G.k
  %.1055 = getelementptr inbounds float, float* %.863, i32 %.1053
  %.1056 = load float, float* %.1055
  %.1057 = fadd float %.1052, %.1056
  call void @llvm.memcpy.p0.p0.i32([10 x float]* %.866, [10 x float]* @.C..1058, i32 40, i1 false)
  %.1060 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 0
  store float %.886, float* %.1060
  %.1062 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 1
  store float %.905, float* %.1062
  %.1064 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 2
  store float %.924, float* %.1064
  %.1066 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 3
  store float %.943, float* %.1066
  %.1068 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 4
  store float %.962, float* %.1068
  %.1070 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 5
  store float %.981, float* %.1070
  %.1072 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 6
  store float %.1000, float* %.1072
  %.1074 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 7
  store float %.1019, float* %.1074
  %.1076 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 8
  store float %.1038, float* %.1076
  %.1078 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 9
  store float %.1057, float* %.1078
  %.1082 = load i32, i32* @.G.k
  %.1084 = getelementptr inbounds float, float* %.863, i32 %.1082
  %.1085 = load float, float* %.1084
  %.1087 = fcmp une float %.1085, 0x0
  %.1088 = zext i1 %.1087 to i32
  %.1089 = icmp ne i32 %.1088, 0
  %.1090 = sitofp i1 %.1089 to float
  %.1091 = fcmp une float %.1090, 0x0
  %.1092 = sitofp i1 %.1091 to float
  %.1093 = fcmp une float %.1092, 0x0
  br i1 %.1093, label %.1080, label %.1081
.1080:
  %.1095 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 0
  call void @putfarray(i32 10, float* %.1095)
  %.1097 = load i32, i32* @.G.k
  %.1098 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 %.1097
  %.1099 = load float, float* %.1098
  ret float %.1099 
.1081:
  %.1140 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 0
  %.1141at6 = call float @_user_params_fa40(float* %.749, float* %.752, float* %.755, float* %.758, float* %.761, float* %.764, float* %.767, float* %.770, float* %.773, float* %.776, float* %.779, float* %.782, float* %.785, float* %.788, float* %.791, float* %.794, float* %.797, float* %.800, float* %.803, float* %.806, float* %.809, float* %.812, float* %.815, float* %.818, float* %.821, float* %.824, float* %.827, float* %.830, float* %.833, float* %.836, float* %.839, float* %.842, float* %.845, float* %.848, float* %.851, float* %.854, float* %.857, float* %.860, float* %.863, float* %.1140)
  ret float %.1141at6 
}
define i32 @_user_params_mix(float %.1144, i32* %.1147, i32 %.1150, float* %.1153, float %.1156, i32 %.1159, float %.1162, float %.1165, float* %.1168, i32* %.1171, i32 %.1174, i32 %.1177, float* %.1180, i32* %.1183, i32* %.1186, i32 %.1189, float* %.1192, float* %.1195, float %.1198, float %.1201, float %.1204, float* %.1207, i32 %.1210, float %.1213, float %.1216, float %.1219, i32* %.1222, float* %.1225, i32* %.1228, i32* %.1231, float* %.1234, float %.1237, float %.1240, i32* %.1243, i32 %.1246, float* %.1249, float* %.1252, float %.1255, float %.1258, i32* %.1261, i32* %.1264, i32 %.1267, i32 %.1270, float %.1273, float %.1276, i32* %.1279, i32 %.1282, float* %.1285, i32 %.1288, i32* %.1291, i32* %.1294, float %.1297, float %.1300, float* %.1303, i32 %.1306, i32* %.1309, float* %.1312, float %.1315, i32 %.1318, float %.1321, float* %.1324, float* %.1327, float %.1330, i32 %.1333){
.1143:
  %.1466 = alloca [10 x i32]
  %.1336 = alloca [10 x float]
  %.1339 = load i32, i32* @.G.k
  %.1341 = getelementptr inbounds float, float* %.1153, i32 %.1339
  %.1342 = load float, float* %.1341
  %.1343 = fadd float %.1144, %.1342
  %.1345 = fadd float %.1343, %.1156
  %.1347 = fadd float %.1345, %.1162
  %.1349 = load i32, i32* @.G.k
  %.1351 = getelementptr inbounds float, float* %.1168, i32 %.1349
  %.1352 = load float, float* %.1351
  %.1353 = fadd float %.1165, %.1352
  %.1354 = load i32, i32* @.G.k
  %.1356 = getelementptr inbounds float, float* %.1180, i32 %.1354
  %.1357 = load float, float* %.1356
  %.1358 = fadd float %.1353, %.1357
  %.1359 = load i32, i32* @.G.k
  %.1361 = getelementptr inbounds float, float* %.1192, i32 %.1359
  %.1362 = load float, float* %.1361
  %.1363 = fadd float %.1358, %.1362
  %.1364 = load i32, i32* @.G.k
  %.1366 = getelementptr inbounds float, float* %.1195, i32 %.1364
  %.1367 = load float, float* %.1366
  %.1369 = fadd float %.1367, %.1198
  %.1371 = fadd float %.1369, %.1201
  %.1373 = fadd float %.1371, %.1204
  %.1374 = load i32, i32* @.G.k
  %.1376 = getelementptr inbounds float, float* %.1207, i32 %.1374
  %.1377 = load float, float* %.1376
  %.1379 = fadd float %.1377, %.1213
  %.1381 = fadd float %.1379, %.1216
  %.1383 = fadd float %.1381, %.1219
  %.1384 = load i32, i32* @.G.k
  %.1386 = getelementptr inbounds float, float* %.1225, i32 %.1384
  %.1387 = load float, float* %.1386
  %.1388 = load i32, i32* @.G.k
  %.1390 = getelementptr inbounds float, float* %.1234, i32 %.1388
  %.1391 = load float, float* %.1390
  %.1392 = fadd float %.1387, %.1391
  %.1394 = fadd float %.1392, %.1237
  %.1396 = fadd float %.1394, %.1240
  %.1397 = load i32, i32* @.G.k
  %.1399 = getelementptr inbounds float, float* %.1249, i32 %.1397
  %.1400 = load float, float* %.1399
  %.1401 = load i32, i32* @.G.k
  %.1403 = getelementptr inbounds float, float* %.1252, i32 %.1401
  %.1404 = load float, float* %.1403
  %.1405 = fadd float %.1400, %.1404
  %.1407 = fadd float %.1405, %.1255
  %.1409 = fadd float %.1407, %.1258
  %.1412 = fadd float %.1273, %.1276
  %.1413 = load i32, i32* @.G.k
  %.1415 = getelementptr inbounds float, float* %.1285, i32 %.1413
  %.1416 = load float, float* %.1415
  %.1417 = fadd float %.1412, %.1416
  %.1419 = fadd float %.1417, %.1297
  %.1421 = load i32, i32* @.G.k
  %.1423 = getelementptr inbounds float, float* %.1303, i32 %.1421
  %.1424 = load float, float* %.1423
  %.1425 = fadd float %.1300, %.1424
  %.1426 = load i32, i32* @.G.k
  %.1428 = getelementptr inbounds float, float* %.1312, i32 %.1426
  %.1429 = load float, float* %.1428
  %.1430 = fadd float %.1425, %.1429
  %.1432 = fadd float %.1430, %.1315
  %.1434 = load i32, i32* @.G.k
  %.1436 = getelementptr inbounds float, float* %.1324, i32 %.1434
  %.1437 = load float, float* %.1436
  %.1438 = fadd float %.1321, %.1437
  %.1439 = load i32, i32* @.G.k
  %.1441 = getelementptr inbounds float, float* %.1327, i32 %.1439
  %.1442 = load float, float* %.1441
  %.1443 = fadd float %.1438, %.1442
  %.1445 = fadd float %.1443, %.1330
  call void @llvm.memcpy.p0.p0.i32([10 x float]* %.1336, [10 x float]* @.C..1446, i32 40, i1 false)
  %.1448 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 0
  store float %.1347, float* %.1448
  %.1450 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 1
  store float %.1363, float* %.1450
  %.1452 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 2
  store float %.1373, float* %.1452
  %.1454 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 3
  store float %.1383, float* %.1454
  %.1456 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 4
  store float %.1396, float* %.1456
  %.1458 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 5
  store float %.1409, float* %.1458
  %.1460 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 6
  store float %.1419, float* %.1460
  %.1462 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 7
  store float %.1432, float* %.1462
  %.1464 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 8
  store float %.1445, float* %.1464
  %.1468 = load i32, i32* @.G.k
  %.1470 = getelementptr inbounds i32, i32* %.1147, i32 %.1468
  %.1471 = load i32, i32* %.1470
  %.1473 = add i32 %.1471, %.1150
  %.1475 = add i32 %.1473, %.1159
  %.1476 = load i32, i32* @.G.k
  %.1478 = getelementptr inbounds i32, i32* %.1171, i32 %.1476
  %.1479 = load i32, i32* %.1478
  %.1481 = add i32 %.1479, %.1174
  %.1483 = add i32 %.1481, %.1177
  %.1484 = load i32, i32* @.G.k
  %.1486 = getelementptr inbounds i32, i32* %.1183, i32 %.1484
  %.1487 = load i32, i32* %.1486
  %.1488 = load i32, i32* @.G.k
  %.1490 = getelementptr inbounds i32, i32* %.1186, i32 %.1488
  %.1491 = load i32, i32* %.1490
  %.1492 = add i32 %.1487, %.1491
  %.1494 = add i32 %.1492, %.1189
  %.1496 = load i32, i32* @.G.k
  %.1498 = getelementptr inbounds i32, i32* %.1222, i32 %.1496
  %.1499 = load i32, i32* %.1498
  %.1500 = add i32 %.1210, %.1499
  %.1501 = load i32, i32* @.G.k
  %.1503 = getelementptr inbounds i32, i32* %.1228, i32 %.1501
  %.1504 = load i32, i32* %.1503
  %.1505 = add i32 %.1500, %.1504
  %.1506 = load i32, i32* @.G.k
  %.1508 = getelementptr inbounds i32, i32* %.1231, i32 %.1506
  %.1509 = load i32, i32* %.1508
  %.1510 = load i32, i32* @.G.k
  %.1512 = getelementptr inbounds i32, i32* %.1243, i32 %.1510
  %.1513 = load i32, i32* %.1512
  %.1514 = add i32 %.1509, %.1513
  %.1516 = add i32 %.1514, %.1246
  %.1517 = load i32, i32* @.G.k
  %.1519 = getelementptr inbounds i32, i32* %.1261, i32 %.1517
  %.1520 = load i32, i32* %.1519
  %.1521 = load i32, i32* @.G.k
  %.1523 = getelementptr inbounds i32, i32* %.1264, i32 %.1521
  %.1524 = load i32, i32* %.1523
  %.1525 = add i32 %.1520, %.1524
  %.1527 = add i32 %.1525, %.1267
  %.1529 = load i32, i32* @.G.k
  %.1531 = getelementptr inbounds i32, i32* %.1279, i32 %.1529
  %.1532 = load i32, i32* %.1531
  %.1533 = add i32 %.1270, %.1532
  %.1535 = add i32 %.1533, %.1282
  %.1537 = load i32, i32* @.G.k
  %.1539 = getelementptr inbounds i32, i32* %.1291, i32 %.1537
  %.1540 = load i32, i32* %.1539
  %.1541 = add i32 %.1288, %.1540
  %.1542 = load i32, i32* @.G.k
  %.1544 = getelementptr inbounds i32, i32* %.1294, i32 %.1542
  %.1545 = load i32, i32* %.1544
  %.1546 = add i32 %.1541, %.1545
  %.1548 = load i32, i32* @.G.k
  %.1550 = getelementptr inbounds i32, i32* %.1309, i32 %.1548
  %.1551 = load i32, i32* %.1550
  %.1552 = add i32 %.1306, %.1551
  %.1554 = add i32 %.1552, %.1318
  %.1556 = add i32 %.1554, %.1333
  call void @llvm.memcpy.p0.p0.i32([10 x i32]* %.1466, [10 x i32]* @.C..1557, i32 40, i1 false)
  %.1559 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 0
  store i32 %.1475, i32* %.1559
  %.1561 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 1
  store i32 %.1483, i32* %.1561
  %.1563 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 2
  store i32 %.1494, i32* %.1563
  %.1565 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 3
  store i32 %.1505, i32* %.1565
  %.1567 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 4
  store i32 %.1516, i32* %.1567
  %.1569 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 5
  store i32 %.1527, i32* %.1569
  %.1571 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 6
  store i32 %.1535, i32* %.1571
  %.1573 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 7
  store i32 %.1546, i32* %.1573
  %.1575 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 8
  store i32 %.1556, i32* %.1575
  %.1580 = icmp ne i32 %.1333, 0
  br i1 %.1580, label %.1577, label %.1578
.1577:
  %.1582 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 0
  call void @putfarray(i32 10, float* %.1582)
  %.1584 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 0
  call void @putarray(i32 10, i32* %.1584)
  br label %.1588wc 
.1578:
  %.1621 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 0
  %.1623 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 0
  %.1684 = sitofp i32 %.1333 to float
  %.1685 = fptosi float %.1330 to i32
  %.1686at9 = call i32 @_user_params_mix(float %.1144, i32* %.1621, i32 %.1150, float* %.1623, float %.1156, i32 %.1159, float %.1162, float %.1165, float* %.1168, i32* %.1171, i32 %.1174, i32 %.1177, float* %.1180, i32* %.1183, i32* %.1186, i32 %.1189, float* %.1192, float* %.1195, float %.1198, float %.1201, float %.1204, float* %.1207, i32 %.1210, float %.1213, float %.1216, float %.1219, i32* %.1222, float* %.1225, i32* %.1228, i32* %.1231, float* %.1234, float %.1237, float %.1240, i32* %.1243, i32 %.1246, float* %.1249, float* %.1252, float %.1255, float %.1258, i32* %.1261, i32* %.1264, i32 %.1267, i32 %.1270, float %.1273, float %.1276, i32* %.1279, i32 %.1282, float* %.1285, i32 %.1288, i32* %.1291, i32* %.1294, float %.1297, float %.1300, float* %.1303, i32 %.1306, i32* %.1309, float* %.1312, float %.1315, i32 %.1318, float %.1321, float* %.1324, float* %.1327, float %.1684, i32 %.1685)
  ret i32 %.1686at9 
.1588wc:
  %.2271 = phi i32 [0, %.1577], [%.1608, %.1589wloop.]
  %.1593 = icmp slt i32 %.2271, 10
  br i1 %.1593, label %.1589wloop., label %.1590wn
.1589wloop.:
  %.1596 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 %.2271
  %.1597 = load i32, i32* %.1596
  %.1599 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 %.2271
  %.1600 = load float, float* %.1599
  %.1601 = sitofp i32 %.1597 to float
  %.1602 = fsub float %.1601, %.1600
  %.1604 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 %.2271
  %.1605 = fptosi float %.1602 to i32
  store i32 %.1605, i32* %.1604
  %.1608 = add i32 %.2271, 1
  br label %.1588wc 
.1590wn:
  %.1611 = load i32, i32* @.G.k
  %.1612 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 %.1611
  %.1613 = load i32, i32* %.1612
  %.1614 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 8
  %.1615 = load float, float* %.1614
  %.1616 = sitofp i32 %.1613 to float
  %.1617 = fmul float %.1616, %.1615
  %.1618 = fptosi float %.1617 to i32
  ret i32 %.1618 
}
define i32 @main(){
.1688:
  %.1691 = alloca [24 x [3 x i32]]
  %.1689 = alloca [40 x [3 x float]]
  %.1694at10 = call i32 @getint()
  store i32 %.1694at10, i32* @.G.k
  br label %.1697wc 
.1697wc:
  %.2272 = phi i32 [0, %.1688], [%.1709, %.1698wloop.]
  %.1702 = icmp slt i32 %.2272, 40
  br i1 %.1702, label %.1698wloop., label %.1699wn
.1698wloop.:
  %.1705 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 %.2272, i32 0
  %.1707at11 = call i32 @getfarray(float* %.1705)
  %.1709 = add i32 %.2272, 1
  br label %.1697wc 
.1699wn:
  br label %.1713wc 
.1713wc:
  %.2273 = phi i32 [0, %.1699wn], [%.1725, %.1714wloop.]
  %.1718 = icmp slt i32 %.2273, 24
  br i1 %.1718, label %.1714wloop., label %.1715wn
.1714wloop.:
  %.1721 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 %.2273, i32 0
  %.1723at12 = call i32 @getarray(i32* %.1721)
  %.1725 = add i32 %.2273, 1
  br label %.1713wc 
.1715wn:
  %.1729 = load i32, i32* @.G.k
  %.1730 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 0, i32 %.1729
  %.1731 = load float, float* %.1730
  %.1732 = load i32, i32* @.G.k
  %.1733 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 1, i32 %.1732
  %.1734 = load float, float* %.1733
  %.1735 = load i32, i32* @.G.k
  %.1736 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 2, i32 %.1735
  %.1737 = load float, float* %.1736
  %.1738 = load i32, i32* @.G.k
  %.1739 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 3, i32 %.1738
  %.1740 = load float, float* %.1739
  %.1741 = load i32, i32* @.G.k
  %.1742 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 4, i32 %.1741
  %.1743 = load float, float* %.1742
  %.1744 = load i32, i32* @.G.k
  %.1745 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 5, i32 %.1744
  %.1746 = load float, float* %.1745
  %.1747 = load i32, i32* @.G.k
  %.1748 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 6, i32 %.1747
  %.1749 = load float, float* %.1748
  %.1750 = load i32, i32* @.G.k
  %.1751 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 7, i32 %.1750
  %.1752 = load float, float* %.1751
  %.1753 = load i32, i32* @.G.k
  %.1754 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 8, i32 %.1753
  %.1755 = load float, float* %.1754
  %.1756 = load i32, i32* @.G.k
  %.1757 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 9, i32 %.1756
  %.1758 = load float, float* %.1757
  %.1759 = load i32, i32* @.G.k
  %.1760 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 10, i32 %.1759
  %.1761 = load float, float* %.1760
  %.1763 = load i32, i32* @.G.k
  %.1764 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 11, i32 %.1763
  %.1765 = load float, float* %.1764
  %.1767 = load i32, i32* @.G.k
  %.1768 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 12, i32 %.1767
  %.1769 = load float, float* %.1768
  %.1771 = load i32, i32* @.G.k
  %.1772 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 13, i32 %.1771
  %.1773 = load float, float* %.1772
  %.1775 = load i32, i32* @.G.k
  %.1776 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 14, i32 %.1775
  %.1777 = load float, float* %.1776
  %.1779 = load i32, i32* @.G.k
  %.1780 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 15, i32 %.1779
  %.1781 = load float, float* %.1780
  %.1783 = load i32, i32* @.G.k
  %.1784 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 16, i32 %.1783
  %.1785 = load float, float* %.1784
  %.1787 = load i32, i32* @.G.k
  %.1788 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 17, i32 %.1787
  %.1789 = load float, float* %.1788
  %.1791 = load i32, i32* @.G.k
  %.1792 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 18, i32 %.1791
  %.1793 = load float, float* %.1792
  %.1795 = load i32, i32* @.G.k
  %.1796 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 19, i32 %.1795
  %.1797 = load float, float* %.1796
  %.1799 = load i32, i32* @.G.k
  %.1800 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 20, i32 %.1799
  %.1801 = load float, float* %.1800
  %.1803 = load i32, i32* @.G.k
  %.1804 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 21, i32 %.1803
  %.1805 = load float, float* %.1804
  %.1807 = load i32, i32* @.G.k
  %.1808 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 22, i32 %.1807
  %.1809 = load float, float* %.1808
  %.1811 = load i32, i32* @.G.k
  %.1812 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 23, i32 %.1811
  %.1813 = load float, float* %.1812
  %.1814 = load i32, i32* @.G.k
  %.1815 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 24, i32 %.1814
  %.1816 = load float, float* %.1815
  %.1818 = load i32, i32* @.G.k
  %.1819 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 25, i32 %.1818
  %.1820 = load float, float* %.1819
  %.1822 = load i32, i32* @.G.k
  %.1823 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 26, i32 %.1822
  %.1824 = load float, float* %.1823
  %.1826 = load i32, i32* @.G.k
  %.1827 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 27, i32 %.1826
  %.1828 = load float, float* %.1827
  %.1830 = load i32, i32* @.G.k
  %.1831 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 28, i32 %.1830
  %.1832 = load float, float* %.1831
  %.1834 = load i32, i32* @.G.k
  %.1835 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 29, i32 %.1834
  %.1836 = load float, float* %.1835
  %.1838 = load i32, i32* @.G.k
  %.1839 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 30, i32 %.1838
  %.1840 = load float, float* %.1839
  %.1842 = load i32, i32* @.G.k
  %.1843 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 31, i32 %.1842
  %.1844 = load float, float* %.1843
  %.1845 = load i32, i32* @.G.k
  %.1846 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 32, i32 %.1845
  %.1847 = load float, float* %.1846
  %.1849 = load i32, i32* @.G.k
  %.1850 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 33, i32 %.1849
  %.1851 = load float, float* %.1850
  %.1853 = load i32, i32* @.G.k
  %.1854 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 34, i32 %.1853
  %.1855 = load float, float* %.1854
  %.1857 = load i32, i32* @.G.k
  %.1858 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 35, i32 %.1857
  %.1859 = load float, float* %.1858
  %.1861 = load i32, i32* @.G.k
  %.1862 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 36, i32 %.1861
  %.1863 = load float, float* %.1862
  %.1865 = load i32, i32* @.G.k
  %.1866 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 37, i32 %.1865
  %.1867 = load float, float* %.1866
  %.1869 = load i32, i32* @.G.k
  %.1870 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 38, i32 %.1869
  %.1871 = load float, float* %.1870
  %.1873 = load i32, i32* @.G.k
  %.1874 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 39, i32 %.1873
  %.1875 = load float, float* %.1874
  %.1876at13 = call float @_user_params_f40(float %.1731, float %.1734, float %.1737, float %.1740, float %.1743, float %.1746, float %.1749, float %.1752, float %.1755, float %.1758, float %.1761, float %.1765, float %.1769, float %.1773, float %.1777, float %.1781, float %.1785, float %.1789, float %.1793, float %.1797, float %.1801, float %.1805, float %.1809, float %.1813, float %.1816, float %.1820, float %.1824, float %.1828, float %.1832, float %.1836, float %.1840, float %.1844, float %.1847, float %.1851, float %.1855, float %.1859, float %.1863, float %.1867, float %.1871, float %.1875)
  %.1879 = load i32, i32* @.G.k
  %.1880 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 23, i32 %.1879
  %.1881 = load i32, i32* %.1880
  %.1882 = load i32, i32* @.G.k
  %.1883 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 2, i32 %.1882
  %.1884 = load i32, i32* %.1883
  %.1885 = load i32, i32* @.G.k
  %.1886 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 6, i32 %.1885
  %.1887 = load i32, i32* %.1886
  %.1888 = load i32, i32* @.G.k
  %.1889 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 4, i32 %.1888
  %.1890 = load float, float* %.1889
  %.1891 = load i32, i32* @.G.k
  %.1892 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 1, i32 %.1891
  %.1893 = load i32, i32* %.1892
  %.1894 = load i32, i32* @.G.k
  %.1895 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 4, i32 %.1894
  %.1896 = load i32, i32* %.1895
  %.1897 = load i32, i32* @.G.k
  %.1898 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 5, i32 %.1897
  %.1899 = load i32, i32* %.1898
  %.1900 = load i32, i32* @.G.k
  %.1901 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 8, i32 %.1900
  %.1902 = load float, float* %.1901
  %.1903 = load i32, i32* @.G.k
  %.1904 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 15, i32 %.1903
  %.1905 = load float, float* %.1904
  %.1906 = load i32, i32* @.G.k
  %.1907 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 7, i32 %.1906
  %.1908 = load float, float* %.1907
  %.1909 = load i32, i32* @.G.k
  %.1910 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 22, i32 %.1909
  %.1911 = load i32, i32* %.1910
  %.1912 = load i32, i32* @.G.k
  %.1913 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 3, i32 %.1912
  %.1914 = load float, float* %.1913
  %.1915 = load i32, i32* @.G.k
  %.1916 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 28, i32 %.1915
  %.1917 = load float, float* %.1916
  %.1918 = load i32, i32* @.G.k
  %.1919 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 0, i32 %.1918
  %.1920 = load i32, i32* %.1919
  %.1921 = load i32, i32* @.G.k
  %.1922 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 37, i32 %.1921
  %.1923 = load float, float* %.1922
  %.1924 = load i32, i32* @.G.k
  %.1925 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 19, i32 %.1924
  %.1926 = load i32, i32* %.1925
  %.1927 = load i32, i32* @.G.k
  %.1928 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 30, i32 %.1927
  %.1929 = load float, float* %.1928
  %.1930 = load i32, i32* @.G.k
  %.1931 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 12, i32 %.1930
  %.1932 = load float, float* %.1931
  %.1933 = load i32, i32* @.G.k
  %.1934 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 1, i32 %.1933
  %.1935 = load float, float* %.1934
  %.1936 = load i32, i32* @.G.k
  %.1937 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 11, i32 %.1936
  %.1938 = load float, float* %.1937
  %.1939 = load i32, i32* @.G.k
  %.1940 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 38, i32 %.1939
  %.1941 = load float, float* %.1940
  %.1942 = load i32, i32* @.G.k
  %.1943 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 6, i32 %.1942
  %.1944 = load float, float* %.1943
  %.1945 = load i32, i32* @.G.k
  %.1946 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 7, i32 %.1945
  %.1947 = load i32, i32* %.1946
  %.1948 = load i32, i32* @.G.k
  %.1949 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 32, i32 %.1948
  %.1950 = load float, float* %.1949
  %.1951 = load i32, i32* @.G.k
  %.1952 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 10, i32 %.1951
  %.1953 = load i32, i32* %.1952
  %.1954 = load i32, i32* @.G.k
  %.1955 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 13, i32 %.1954
  %.1956 = load i32, i32* %.1955
  %.1957 = load i32, i32* @.G.k
  %.1958 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 20, i32 %.1957
  %.1959 = load float, float* %.1958
  %.1960 = load i32, i32* @.G.k
  %.1961 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 33, i32 %.1960
  %.1962 = load float, float* %.1961
  %.1963 = load i32, i32* @.G.k
  %.1964 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 23, i32 %.1963
  %.1965 = load float, float* %.1964
  %.1966 = load i32, i32* @.G.k
  %.1967 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 9, i32 %.1966
  %.1968 = load float, float* %.1967
  %.1969 = load i32, i32* @.G.k
  %.1970 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 25, i32 %.1969
  %.1971 = load float, float* %.1970
  %.1972 = load i32, i32* @.G.k
  %.1973 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 8, i32 %.1972
  %.1974 = load i32, i32* %.1973
  %.1975 = load i32, i32* @.G.k
  %.1976 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 39, i32 %.1975
  %.1977 = load float, float* %.1976
  %.1978 = load i32, i32* @.G.k
  %.1979 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 17, i32 %.1978
  %.1980 = load i32, i32* %.1979
  %.1981 = load i32, i32* @.G.k
  %.1982 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 21, i32 %.1981
  %.1983 = load float, float* %.1982
  %.1984 = load i32, i32* @.G.k
  %.1985 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 16, i32 %.1984
  %.1986 = load float, float* %.1985
  %.1987 = load i32, i32* @.G.k
  %.1988 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 5, i32 %.1987
  %.1989 = load float, float* %.1988
  %.1990 = load i32, i32* @.G.k
  %.1991 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 34, i32 %.1990
  %.1992 = load float, float* %.1991
  %.1993 = load i32, i32* @.G.k
  %.1994 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 18, i32 %.1993
  %.1995 = load i32, i32* %.1994
  %.1996 = load i32, i32* @.G.k
  %.1997 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 9, i32 %.1996
  %.1998 = load i32, i32* %.1997
  %.1999 = load i32, i32* @.G.k
  %.2000 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 14, i32 %.1999
  %.2001 = load float, float* %.2000
  %.2002 = load i32, i32* @.G.k
  %.2003 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 10, i32 %.2002
  %.2004 = load float, float* %.2003
  %.2005 = load i32, i32* @.G.k
  %.2006 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 0, i32 %.2005
  %.2007 = load float, float* %.2006
  %.2008 = load i32, i32* @.G.k
  %.2009 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 12, i32 %.2008
  %.2010 = load i32, i32* %.2009
  %.2011 = load i32, i32* @.G.k
  %.2012 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 31, i32 %.2011
  %.2013 = load float, float* %.2012
  %.2014 = load i32, i32* @.G.k
  %.2015 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 11, i32 %.2014
  %.2016 = load i32, i32* %.2015
  %.2017 = load i32, i32* @.G.k
  %.2018 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 16, i32 %.2017
  %.2019 = load i32, i32* %.2018
  %.2020 = load i32, i32* @.G.k
  %.2021 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 27, i32 %.2020
  %.2022 = load float, float* %.2021
  %.2023 = load i32, i32* @.G.k
  %.2024 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 24, i32 %.2023
  %.2025 = load float, float* %.2024
  %.2026 = load i32, i32* @.G.k
  %.2027 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 13, i32 %.2026
  %.2028 = load float, float* %.2027
  %.2029 = load i32, i32* @.G.k
  %.2030 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 29, i32 %.2029
  %.2031 = load float, float* %.2030
  %.2032 = load i32, i32* @.G.k
  %.2033 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 3, i32 %.2032
  %.2034 = load i32, i32* %.2033
  %.2035 = load i32, i32* @.G.k
  %.2036 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 21, i32 %.2035
  %.2037 = load i32, i32* %.2036
  %.2038 = load i32, i32* @.G.k
  %.2039 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 20, i32 %.2038
  %.2040 = load i32, i32* %.2039
  %.2041 = load i32, i32* @.G.k
  %.2042 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 18, i32 %.2041
  %.2043 = load float, float* %.2042
  %.2044 = load i32, i32* @.G.k
  %.2045 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 19, i32 %.2044
  %.2046 = load float, float* %.2045
  %.2047 = load i32, i32* @.G.k
  %.2048 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 22, i32 %.2047
  %.2049 = load float, float* %.2048
  %.2050 = load i32, i32* @.G.k
  %.2051 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 26, i32 %.2050
  %.2052 = load float, float* %.2051
  %.2053 = load i32, i32* @.G.k
  %.2054 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 36, i32 %.2053
  %.2055 = load float, float* %.2054
  %.2056 = load i32, i32* @.G.k
  %.2057 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 17, i32 %.2056
  %.2058 = load float, float* %.2057
  %.2059 = load i32, i32* @.G.k
  %.2060 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 15, i32 %.2059
  %.2061 = load i32, i32* %.2060
  %.2062 = load i32, i32* @.G.k
  %.2063 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 2, i32 %.2062
  %.2064 = load float, float* %.2063
  %.2065 = load i32, i32* @.G.k
  %.2066 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 14, i32 %.2065
  %.2067 = load i32, i32* %.2066
  %.2068 = load i32, i32* @.G.k
  %.2069 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 35, i32 %.2068
  %.2070 = load float, float* %.2069
  %.2071at14 = call float @_user_params_f40_i24(i32 %.1881, i32 %.1884, i32 %.1887, float %.1890, i32 %.1893, i32 %.1896, i32 %.1899, float %.1902, float %.1905, float %.1908, i32 %.1911, float %.1914, float %.1917, i32 %.1920, float %.1923, i32 %.1926, float %.1929, float %.1932, float %.1935, float %.1938, float %.1941, float %.1944, i32 %.1947, float %.1950, i32 %.1953, i32 %.1956, float %.1959, float %.1962, float %.1965, float %.1968, float %.1971, i32 %.1974, float %.1977, i32 %.1980, float %.1983, float %.1986, float %.1989, float %.1992, i32 %.1995, i32 %.1998, float %.2001, float %.2004, float %.2007, i32 %.2010, float %.2013, i32 %.2016, i32 %.2019, float %.2022, float %.2025, float %.2028, float %.2031, i32 %.2034, i32 %.2037, i32 %.2040, float %.2043, float %.2046, float %.2049, float %.2052, float %.2055, float %.2058, i32 %.2061, float %.2064, i32 %.2067, float %.2070)
  %.2074 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 0, i32 0
  %.2075 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 1, i32 0
  %.2076 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 2, i32 0
  %.2077 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 3, i32 0
  %.2078 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 4, i32 0
  %.2079 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 5, i32 0
  %.2080 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 6, i32 0
  %.2081 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 7, i32 0
  %.2082 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 8, i32 0
  %.2083 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 9, i32 0
  %.2084 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 10, i32 0
  %.2085 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 11, i32 0
  %.2086 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 12, i32 0
  %.2087 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 13, i32 0
  %.2088 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 14, i32 0
  %.2089 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 15, i32 0
  %.2090 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 16, i32 0
  %.2091 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 17, i32 0
  %.2092 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 18, i32 0
  %.2093 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 19, i32 0
  %.2094 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 20, i32 0
  %.2095 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 21, i32 0
  %.2096 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 22, i32 0
  %.2097 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 23, i32 0
  %.2098 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 24, i32 0
  %.2099 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 25, i32 0
  %.2100 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 26, i32 0
  %.2101 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 27, i32 0
  %.2102 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 28, i32 0
  %.2103 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 29, i32 0
  %.2104 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 30, i32 0
  %.2105 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 31, i32 0
  %.2106 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 32, i32 0
  %.2107 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 33, i32 0
  %.2108 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 34, i32 0
  %.2109 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 35, i32 0
  %.2110 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 36, i32 0
  %.2111 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 37, i32 0
  %.2112 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 38, i32 0
  %.2113 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 39, i32 0
  %.2114at15 = call float @_user_params_fa40(float* %.2074, float* %.2075, float* %.2076, float* %.2077, float* %.2078, float* %.2079, float* %.2080, float* %.2081, float* %.2082, float* %.2083, float* %.2084, float* %.2085, float* %.2086, float* %.2087, float* %.2088, float* %.2089, float* %.2090, float* %.2091, float* %.2092, float* %.2093, float* %.2094, float* %.2095, float* %.2096, float* %.2097, float* %.2098, float* %.2099, float* %.2100, float* %.2101, float* %.2102, float* %.2103, float* %.2104, float* %.2105, float* %.2106, float* %.2107, float* %.2108, float* %.2109, float* %.2110, float* %.2111, float* %.2112, float* %.2113)
  %.2117 = load i32, i32* @.G.k
  %.2118 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 0, i32 %.2117
  %.2119 = load float, float* %.2118
  %.2120 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 0, i32 0
  %.2121 = load i32, i32* @.G.k
  %.2122 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 1, i32 %.2121
  %.2123 = load i32, i32* %.2122
  %.2124 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 1, i32 0
  %.2125 = load i32, i32* @.G.k
  %.2126 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 2, i32 %.2125
  %.2127 = load float, float* %.2126
  %.2128 = load i32, i32* @.G.k
  %.2129 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 2, i32 %.2128
  %.2130 = load i32, i32* %.2129
  %.2131 = load i32, i32* @.G.k
  %.2132 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 3, i32 %.2131
  %.2133 = load float, float* %.2132
  %.2134 = load i32, i32* @.G.k
  %.2135 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 4, i32 %.2134
  %.2136 = load float, float* %.2135
  %.2137 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 5, i32 0
  %.2138 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 3, i32 0
  %.2139 = load i32, i32* @.G.k
  %.2140 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 4, i32 %.2139
  %.2141 = load i32, i32* %.2140
  %.2142 = load i32, i32* @.G.k
  %.2143 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 5, i32 %.2142
  %.2144 = load i32, i32* %.2143
  %.2145 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 6, i32 0
  %.2146 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 6, i32 0
  %.2147 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 7, i32 0
  %.2148 = load i32, i32* @.G.k
  %.2149 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 8, i32 %.2148
  %.2150 = load i32, i32* %.2149
  %.2151 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 7, i32 0
  %.2152 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 8, i32 0
  %.2153 = load i32, i32* @.G.k
  %.2154 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 9, i32 %.2153
  %.2155 = load float, float* %.2154
  %.2156 = load i32, i32* @.G.k
  %.2157 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 10, i32 %.2156
  %.2158 = load float, float* %.2157
  %.2159 = load i32, i32* @.G.k
  %.2160 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 11, i32 %.2159
  %.2161 = load float, float* %.2160
  %.2162 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 12, i32 0
  %.2163 = load i32, i32* @.G.k
  %.2164 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 9, i32 %.2163
  %.2165 = load i32, i32* %.2164
  %.2166 = load i32, i32* @.G.k
  %.2167 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 13, i32 %.2166
  %.2168 = load float, float* %.2167
  %.2169 = load i32, i32* @.G.k
  %.2170 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 14, i32 %.2169
  %.2171 = load float, float* %.2170
  %.2172 = load i32, i32* @.G.k
  %.2173 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 15, i32 %.2172
  %.2174 = load float, float* %.2173
  %.2175 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 10, i32 0
  %.2176 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 16, i32 0
  %.2177 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 11, i32 0
  %.2178 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 12, i32 0
  %.2179 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 17, i32 0
  %.2180 = load i32, i32* @.G.k
  %.2181 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 18, i32 %.2180
  %.2182 = load float, float* %.2181
  %.2183 = load i32, i32* @.G.k
  %.2184 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 19, i32 %.2183
  %.2185 = load float, float* %.2184
  %.2186 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 13, i32 0
  %.2187 = load i32, i32* @.G.k
  %.2188 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 14, i32 %.2187
  %.2189 = load i32, i32* %.2188
  %.2190 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 20, i32 0
  %.2191 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 21, i32 0
  %.2192 = load i32, i32* @.G.k
  %.2193 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 22, i32 %.2192
  %.2194 = load float, float* %.2193
  %.2195 = load i32, i32* @.G.k
  %.2196 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 23, i32 %.2195
  %.2197 = load float, float* %.2196
  %.2198 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 15, i32 0
  %.2199 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 16, i32 0
  %.2200 = load i32, i32* @.G.k
  %.2201 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 17, i32 %.2200
  %.2202 = load i32, i32* %.2201
  %.2203 = load i32, i32* @.G.k
  %.2204 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 18, i32 %.2203
  %.2205 = load i32, i32* %.2204
  %.2206 = load i32, i32* @.G.k
  %.2207 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 24, i32 %.2206
  %.2208 = load float, float* %.2207
  %.2209 = load i32, i32* @.G.k
  %.2210 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 25, i32 %.2209
  %.2211 = load float, float* %.2210
  %.2212 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 19, i32 0
  %.2213 = load i32, i32* @.G.k
  %.2214 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 20, i32 %.2213
  %.2215 = load i32, i32* %.2214
  %.2216 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 26, i32 0
  %.2217 = load i32, i32* @.G.k
  %.2218 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 21, i32 %.2217
  %.2219 = load i32, i32* %.2218
  %.2220 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 22, i32 0
  %.2221 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 23, i32 0
  %.2222 = load i32, i32* @.G.k
  %.2223 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 27, i32 %.2222
  %.2224 = load float, float* %.2223
  %.2225 = load i32, i32* @.G.k
  %.2226 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 28, i32 %.2225
  %.2227 = load float, float* %.2226
  %.2228 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 29, i32 0
  %.2229 = load i32, i32* @.G.k
  %.2230 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 0, i32 %.2229
  %.2231 = load i32, i32* %.2230
  %.2232 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 1, i32 0
  %.2233 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 30, i32 0
  %.2234 = load i32, i32* @.G.k
  %.2235 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 31, i32 %.2234
  %.2236 = load float, float* %.2235
  %.2237 = load i32, i32* @.G.k
  %.2238 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 2, i32 %.2237
  %.2239 = load i32, i32* %.2238
  %.2240 = load i32, i32* @.G.k
  %.2241 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 32, i32 %.2240
  %.2242 = load float, float* %.2241
  %.2243 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 33, i32 0
  %.2244 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 34, i32 0
  %.2245 = load i32, i32* @.G.k
  %.2246 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 35, i32 %.2245
  %.2247 = load float, float* %.2246
  %.2248 = load i32, i32* @.G.k
  %.2249 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 3, i32 %.2248
  %.2250 = load i32, i32* %.2249
  %.2251at16 = call i32 @_user_params_mix(float %.2119, i32* %.2120, i32 %.2123, float* %.2124, float %.2127, i32 %.2130, float %.2133, float %.2136, float* %.2137, i32* %.2138, i32 %.2141, i32 %.2144, float* %.2145, i32* %.2146, i32* %.2147, i32 %.2150, float* %.2151, float* %.2152, float %.2155, float %.2158, float %.2161, float* %.2162, i32 %.2165, float %.2168, float %.2171, float %.2174, i32* %.2175, float* %.2176, i32* %.2177, i32* %.2178, float* %.2179, float %.2182, float %.2185, i32* %.2186, i32 %.2189, float* %.2190, float* %.2191, float %.2194, float %.2197, i32* %.2198, i32* %.2199, i32 %.2202, i32 %.2205, float %.2208, float %.2211, i32* %.2212, i32 %.2215, float* %.2216, i32 %.2219, i32* %.2220, i32* %.2221, float %.2224, float %.2227, float* %.2228, i32 %.2231, i32* %.2232, float* %.2233, float %.2236, i32 %.2239, float %.2242, float* %.2243, float* %.2244, float %.2247, i32 %.2250)
  call void @putfloat(float %.1876at13)
  call void @putch(i32 10)
  call void @putfloat(float %.2071at14)
  call void @putch(i32 10)
  call void @putfloat(float %.2114at15)
  call void @putch(i32 10)
  call void @putint(i32 %.2251at16)
  call void @putch(i32 10)
  ret i32 0 
}
