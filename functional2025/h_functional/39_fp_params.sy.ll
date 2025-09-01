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
  %.120 = alloca float
  %.117 = alloca float
  %.114 = alloca float
  %.111 = alloca float
  %.108 = alloca float
  %.105 = alloca float
  %.102 = alloca float
  %.99 = alloca float
  %.96 = alloca float
  %.93 = alloca float
  %.90 = alloca float
  %.87 = alloca float
  %.84 = alloca float
  %.81 = alloca float
  %.78 = alloca float
  %.75 = alloca float
  %.72 = alloca float
  %.69 = alloca float
  %.66 = alloca float
  %.63 = alloca float
  %.60 = alloca float
  %.57 = alloca float
  %.54 = alloca float
  %.51 = alloca float
  %.48 = alloca float
  %.45 = alloca float
  %.42 = alloca float
  %.39 = alloca float
  %.36 = alloca float
  %.33 = alloca float
  %.30 = alloca float
  %.27 = alloca float
  %.24 = alloca float
  %.21 = alloca float
  %.18 = alloca float
  %.15 = alloca float
  %.12 = alloca float
  %.9 = alloca float
  %.6 = alloca float
  %.3 = alloca float
  store float %.2, float* %.3
  store float %.5, float* %.6
  store float %.8, float* %.9
  store float %.11, float* %.12
  store float %.14, float* %.15
  store float %.17, float* %.18
  store float %.20, float* %.21
  store float %.23, float* %.24
  store float %.26, float* %.27
  store float %.29, float* %.30
  store float %.32, float* %.33
  store float %.35, float* %.36
  store float %.38, float* %.39
  store float %.41, float* %.42
  store float %.44, float* %.45
  store float %.47, float* %.48
  store float %.50, float* %.51
  store float %.53, float* %.54
  store float %.56, float* %.57
  store float %.59, float* %.60
  store float %.62, float* %.63
  store float %.65, float* %.66
  store float %.68, float* %.69
  store float %.71, float* %.72
  store float %.74, float* %.75
  store float %.77, float* %.78
  store float %.80, float* %.81
  store float %.83, float* %.84
  store float %.86, float* %.87
  store float %.89, float* %.90
  store float %.92, float* %.93
  store float %.95, float* %.96
  store float %.98, float* %.99
  store float %.101, float* %.102
  store float %.104, float* %.105
  store float %.107, float* %.108
  store float %.110, float* %.111
  store float %.113, float* %.114
  store float %.116, float* %.117
  store float %.119, float* %.120
  %.124 = load float, float* %.120
  %.126 = sitofp i32 0 to float
  %.127 = fcmp une float %.124, %.126
  br i1 %.127, label %.122, label %.123
.122:
  %.132 = load float, float* %.3
  %.133 = load float, float* %.6
  %.134 = fadd float %.132, %.133
  %.135 = load float, float* %.9
  %.136 = fadd float %.134, %.135
  %.137 = load float, float* %.12
  %.138 = fadd float %.136, %.137
  %.139 = load float, float* %.15
  %.140 = load float, float* %.18
  %.141 = fadd float %.139, %.140
  %.142 = load float, float* %.21
  %.143 = fadd float %.141, %.142
  %.144 = load float, float* %.24
  %.145 = fadd float %.143, %.144
  %.146 = load float, float* %.27
  %.147 = load float, float* %.30
  %.148 = fadd float %.146, %.147
  %.149 = load float, float* %.33
  %.150 = fadd float %.148, %.149
  %.151 = load float, float* %.36
  %.152 = fadd float %.150, %.151
  %.153 = load float, float* %.39
  %.154 = load float, float* %.42
  %.155 = fadd float %.153, %.154
  %.156 = load float, float* %.45
  %.157 = fadd float %.155, %.156
  %.158 = load float, float* %.48
  %.159 = fadd float %.157, %.158
  %.160 = load float, float* %.51
  %.161 = load float, float* %.54
  %.162 = fadd float %.160, %.161
  %.163 = load float, float* %.57
  %.164 = fadd float %.162, %.163
  %.165 = load float, float* %.60
  %.166 = fadd float %.164, %.165
  %.167 = load float, float* %.63
  %.168 = load float, float* %.66
  %.169 = fadd float %.167, %.168
  %.170 = load float, float* %.69
  %.171 = fadd float %.169, %.170
  %.172 = load float, float* %.72
  %.173 = fadd float %.171, %.172
  %.174 = load float, float* %.75
  %.175 = load float, float* %.78
  %.176 = fadd float %.174, %.175
  %.177 = load float, float* %.81
  %.178 = fadd float %.176, %.177
  %.179 = load float, float* %.84
  %.180 = fadd float %.178, %.179
  %.181 = load float, float* %.87
  %.182 = load float, float* %.90
  %.183 = fadd float %.181, %.182
  %.184 = load float, float* %.93
  %.185 = fadd float %.183, %.184
  %.186 = load float, float* %.96
  %.187 = fadd float %.185, %.186
  %.188 = load float, float* %.99
  %.189 = load float, float* %.102
  %.190 = fadd float %.188, %.189
  %.191 = load float, float* %.105
  %.192 = fadd float %.190, %.191
  %.193 = load float, float* %.108
  %.194 = fadd float %.192, %.193
  %.195 = load float, float* %.111
  %.196 = load float, float* %.114
  %.197 = fadd float %.195, %.196
  %.198 = load float, float* %.117
  %.199 = fadd float %.197, %.198
  %.200 = load float, float* %.120
  %.201 = fadd float %.199, %.200
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
  %.245 = load float, float* %.6
  %.246 = load float, float* %.9
  %.247 = load float, float* %.12
  %.248 = load float, float* %.15
  %.249 = load float, float* %.18
  %.250 = load float, float* %.21
  %.251 = load float, float* %.24
  %.252 = load float, float* %.27
  %.253 = load float, float* %.30
  %.254 = load float, float* %.33
  %.255 = load float, float* %.36
  %.256 = load float, float* %.39
  %.257 = load float, float* %.42
  %.258 = load float, float* %.45
  %.259 = load float, float* %.48
  %.260 = load float, float* %.51
  %.261 = load float, float* %.54
  %.262 = load float, float* %.57
  %.263 = load float, float* %.60
  %.264 = load float, float* %.63
  %.265 = load float, float* %.66
  %.266 = load float, float* %.69
  %.267 = load float, float* %.72
  %.268 = load float, float* %.75
  %.269 = load float, float* %.78
  %.270 = load float, float* %.81
  %.271 = load float, float* %.84
  %.272 = load float, float* %.87
  %.273 = load float, float* %.90
  %.274 = load float, float* %.93
  %.275 = load float, float* %.96
  %.276 = load float, float* %.99
  %.277 = load float, float* %.102
  %.278 = load float, float* %.105
  %.279 = load float, float* %.108
  %.280 = load float, float* %.111
  %.281 = load float, float* %.114
  %.282 = load float, float* %.117
  %.283 = load float, float* %.120
  %.284 = load float, float* %.3
  %.285 = load float, float* %.6
  %.286 = fadd float %.284, %.285
  %.287 = load float, float* %.9
  %.288 = fadd float %.286, %.287
  %.289at1 = call float @_user_params_f40(float %.245, float %.246, float %.247, float %.248, float %.249, float %.250, float %.251, float %.252, float %.253, float %.254, float %.255, float %.256, float %.257, float %.258, float %.259, float %.260, float %.261, float %.262, float %.263, float %.264, float %.265, float %.266, float %.267, float %.268, float %.269, float %.270, float %.271, float %.272, float %.273, float %.274, float %.275, float %.276, float %.277, float %.278, float %.279, float %.280, float %.281, float %.282, float %.283, float %.288)
  ret float %.289at1 
}
define float @_user_params_f40_i24(i32 %.292, i32 %.295, i32 %.298, float %.301, i32 %.304, i32 %.307, i32 %.310, float %.313, float %.316, float %.319, i32 %.322, float %.325, float %.328, i32 %.331, float %.334, i32 %.337, float %.340, float %.343, float %.346, float %.349, float %.352, float %.355, i32 %.358, float %.361, i32 %.364, i32 %.367, float %.370, float %.373, float %.376, float %.379, float %.382, i32 %.385, float %.388, i32 %.391, float %.394, float %.397, float %.400, float %.403, i32 %.406, i32 %.409, float %.412, float %.415, float %.418, i32 %.421, float %.424, i32 %.427, i32 %.430, float %.433, float %.436, float %.439, float %.442, i32 %.445, i32 %.448, i32 %.451, float %.454, float %.457, float %.460, float %.463, float %.466, float %.469, i32 %.472, float %.475, i32 %.478, float %.481){
.291:
  %.649 = alloca i32
  %.583 = alloca [8 x i32]
  %.489 = alloca [10 x float]
  %.482 = alloca float
  %.479 = alloca i32
  %.476 = alloca float
  %.473 = alloca i32
  %.470 = alloca float
  %.467 = alloca float
  %.464 = alloca float
  %.461 = alloca float
  %.458 = alloca float
  %.455 = alloca float
  %.452 = alloca i32
  %.449 = alloca i32
  %.446 = alloca i32
  %.443 = alloca float
  %.440 = alloca float
  %.437 = alloca float
  %.434 = alloca float
  %.431 = alloca i32
  %.428 = alloca i32
  %.425 = alloca float
  %.422 = alloca i32
  %.419 = alloca float
  %.416 = alloca float
  %.413 = alloca float
  %.410 = alloca i32
  %.407 = alloca i32
  %.404 = alloca float
  %.401 = alloca float
  %.398 = alloca float
  %.395 = alloca float
  %.392 = alloca i32
  %.389 = alloca float
  %.386 = alloca i32
  %.383 = alloca float
  %.380 = alloca float
  %.377 = alloca float
  %.374 = alloca float
  %.371 = alloca float
  %.368 = alloca i32
  %.365 = alloca i32
  %.362 = alloca float
  %.359 = alloca i32
  %.356 = alloca float
  %.353 = alloca float
  %.350 = alloca float
  %.347 = alloca float
  %.344 = alloca float
  %.341 = alloca float
  %.338 = alloca i32
  %.335 = alloca float
  %.332 = alloca i32
  %.329 = alloca float
  %.326 = alloca float
  %.323 = alloca i32
  %.320 = alloca float
  %.317 = alloca float
  %.314 = alloca float
  %.311 = alloca i32
  %.308 = alloca i32
  %.305 = alloca i32
  %.302 = alloca float
  %.299 = alloca i32
  %.296 = alloca i32
  %.293 = alloca i32
  store i32 %.292, i32* %.293
  store i32 %.295, i32* %.296
  store i32 %.298, i32* %.299
  store float %.301, float* %.302
  store i32 %.304, i32* %.305
  store i32 %.307, i32* %.308
  store i32 %.310, i32* %.311
  store float %.313, float* %.314
  store float %.316, float* %.317
  store float %.319, float* %.320
  store i32 %.322, i32* %.323
  store float %.325, float* %.326
  store float %.328, float* %.329
  store i32 %.331, i32* %.332
  store float %.334, float* %.335
  store i32 %.337, i32* %.338
  store float %.340, float* %.341
  store float %.343, float* %.344
  store float %.346, float* %.347
  store float %.349, float* %.350
  store float %.352, float* %.353
  store float %.355, float* %.356
  store i32 %.358, i32* %.359
  store float %.361, float* %.362
  store i32 %.364, i32* %.365
  store i32 %.367, i32* %.368
  store float %.370, float* %.371
  store float %.373, float* %.374
  store float %.376, float* %.377
  store float %.379, float* %.380
  store float %.382, float* %.383
  store i32 %.385, i32* %.386
  store float %.388, float* %.389
  store i32 %.391, i32* %.392
  store float %.394, float* %.395
  store float %.397, float* %.398
  store float %.400, float* %.401
  store float %.403, float* %.404
  store i32 %.406, i32* %.407
  store i32 %.409, i32* %.410
  store float %.412, float* %.413
  store float %.415, float* %.416
  store float %.418, float* %.419
  store i32 %.421, i32* %.422
  store float %.424, float* %.425
  store i32 %.427, i32* %.428
  store i32 %.430, i32* %.431
  store float %.433, float* %.434
  store float %.436, float* %.437
  store float %.439, float* %.440
  store float %.442, float* %.443
  store i32 %.445, i32* %.446
  store i32 %.448, i32* %.449
  store i32 %.451, i32* %.452
  store float %.454, float* %.455
  store float %.457, float* %.458
  store float %.460, float* %.461
  store float %.463, float* %.464
  store float %.466, float* %.467
  store float %.469, float* %.470
  store i32 %.472, i32* %.473
  store float %.475, float* %.476
  store i32 %.478, i32* %.479
  store float %.481, float* %.482
  %.486 = load i32, i32* %.293
  %.487 = icmp ne i32 %.486, 0
  br i1 %.487, label %.484, label %.485
.484:
  %.491 = load float, float* %.419
  %.492 = load float, float* %.347
  %.493 = fadd float %.491, %.492
  %.494 = load float, float* %.476
  %.495 = fadd float %.493, %.494
  %.496 = load float, float* %.326
  %.497 = fadd float %.495, %.496
  %.498 = load float, float* %.302
  %.499 = load float, float* %.401
  %.500 = fadd float %.498, %.499
  %.501 = load float, float* %.356
  %.502 = fadd float %.500, %.501
  %.503 = load float, float* %.320
  %.504 = fadd float %.502, %.503
  %.505 = load float, float* %.314
  %.506 = load float, float* %.380
  %.507 = fadd float %.505, %.506
  %.508 = load float, float* %.416
  %.509 = fadd float %.507, %.508
  %.510 = load float, float* %.350
  %.511 = fadd float %.509, %.510
  %.512 = load float, float* %.344
  %.513 = load float, float* %.440
  %.514 = fadd float %.512, %.513
  %.515 = load float, float* %.413
  %.516 = fadd float %.514, %.515
  %.517 = load float, float* %.317
  %.518 = fadd float %.516, %.517
  %.519 = load float, float* %.398
  %.520 = load float, float* %.470
  %.521 = fadd float %.519, %.520
  %.522 = load float, float* %.455
  %.523 = fadd float %.521, %.522
  %.524 = load float, float* %.458
  %.525 = fadd float %.523, %.524
  %.526 = load float, float* %.371
  %.527 = load float, float* %.395
  %.528 = fadd float %.526, %.527
  %.529 = load float, float* %.461
  %.530 = fadd float %.528, %.529
  %.531 = load float, float* %.377
  %.532 = fadd float %.530, %.531
  %.533 = load float, float* %.437
  %.534 = load float, float* %.383
  %.535 = fadd float %.533, %.534
  %.536 = load float, float* %.464
  %.537 = fadd float %.535, %.536
  %.538 = load float, float* %.434
  %.539 = fadd float %.537, %.538
  %.540 = load float, float* %.329
  %.541 = load float, float* %.443
  %.542 = fadd float %.540, %.541
  %.543 = load float, float* %.341
  %.544 = fadd float %.542, %.543
  %.545 = load float, float* %.425
  %.546 = fadd float %.544, %.545
  %.547 = load float, float* %.362
  %.548 = load float, float* %.374
  %.549 = fadd float %.547, %.548
  %.550 = load float, float* %.404
  %.551 = fadd float %.549, %.550
  %.552 = load float, float* %.482
  %.553 = fadd float %.551, %.552
  %.554 = load float, float* %.467
  %.555 = load float, float* %.335
  %.556 = fadd float %.554, %.555
  %.557 = load float, float* %.353
  %.558 = fadd float %.556, %.557
  %.559 = load float, float* %.389
  %.560 = fadd float %.558, %.559
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
  %.585 = load i32, i32* %.332
  %.586 = load i32, i32* %.305
  %.587 = add i32 %.585, %.586
  %.588 = load i32, i32* %.296
  %.589 = add i32 %.587, %.588
  %.590 = load i32, i32* %.446
  %.591 = load i32, i32* %.308
  %.592 = add i32 %.590, %.591
  %.593 = load i32, i32* %.311
  %.594 = add i32 %.592, %.593
  %.595 = load i32, i32* %.299
  %.596 = load i32, i32* %.359
  %.597 = add i32 %.595, %.596
  %.598 = load i32, i32* %.386
  %.599 = add i32 %.597, %.598
  %.600 = load i32, i32* %.410
  %.601 = load i32, i32* %.365
  %.602 = add i32 %.600, %.601
  %.603 = load i32, i32* %.428
  %.604 = add i32 %.602, %.603
  %.605 = load i32, i32* %.422
  %.606 = load i32, i32* %.368
  %.607 = add i32 %.605, %.606
  %.608 = load i32, i32* %.479
  %.609 = add i32 %.607, %.608
  %.610 = load i32, i32* %.473
  %.611 = load i32, i32* %.431
  %.612 = add i32 %.610, %.611
  %.613 = load i32, i32* %.392
  %.614 = add i32 %.612, %.613
  %.615 = load i32, i32* %.407
  %.616 = load i32, i32* %.338
  %.617 = add i32 %.615, %.616
  %.618 = load i32, i32* %.452
  %.619 = add i32 %.617, %.618
  %.620 = load i32, i32* %.449
  %.621 = load i32, i32* %.323
  %.622 = add i32 %.620, %.621
  %.623 = load i32, i32* %.293
  %.624 = add i32 %.622, %.623
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
  store i32 0, i32* %.649
  br label %.651wc 
.485:
  %.679 = load i32, i32* %.305
  %.680 = load i32, i32* %.296
  %.681 = load i32, i32* %.299
  %.682 = load float, float* %.302
  %.683 = load i32, i32* %.305
  %.684 = load i32, i32* %.308
  %.685 = load i32, i32* %.311
  %.686 = load float, float* %.314
  %.687 = load float, float* %.317
  %.688 = load float, float* %.320
  %.689 = load i32, i32* %.323
  %.690 = load float, float* %.326
  %.691 = load float, float* %.329
  %.692 = load i32, i32* %.332
  %.693 = load float, float* %.335
  %.694 = load i32, i32* %.338
  %.695 = load float, float* %.341
  %.696 = load float, float* %.344
  %.697 = load float, float* %.347
  %.698 = load float, float* %.350
  %.699 = load float, float* %.353
  %.700 = load float, float* %.356
  %.701 = load i32, i32* %.359
  %.702 = load float, float* %.362
  %.703 = load i32, i32* %.365
  %.704 = load i32, i32* %.368
  %.705 = load float, float* %.371
  %.706 = load float, float* %.374
  %.707 = load float, float* %.377
  %.708 = load float, float* %.380
  %.709 = load float, float* %.383
  %.710 = load i32, i32* %.386
  %.711 = load float, float* %.389
  %.712 = load i32, i32* %.392
  %.713 = load float, float* %.395
  %.714 = load float, float* %.398
  %.715 = load float, float* %.401
  %.716 = load float, float* %.404
  %.717 = load i32, i32* %.407
  %.718 = load i32, i32* %.410
  %.719 = load float, float* %.413
  %.720 = load float, float* %.416
  %.721 = load float, float* %.419
  %.722 = load i32, i32* %.422
  %.723 = load float, float* %.425
  %.724 = load i32, i32* %.428
  %.725 = load i32, i32* %.431
  %.726 = load float, float* %.434
  %.727 = load float, float* %.437
  %.728 = load float, float* %.440
  %.729 = load float, float* %.443
  %.730 = load i32, i32* %.446
  %.731 = load i32, i32* %.449
  %.732 = load i32, i32* %.452
  %.733 = load float, float* %.455
  %.734 = load float, float* %.458
  %.735 = load float, float* %.461
  %.736 = load float, float* %.464
  %.737 = load float, float* %.467
  %.738 = load float, float* %.470
  %.739 = load i32, i32* %.473
  %.740 = load float, float* %.476
  %.741 = load i32, i32* %.479
  %.742 = load float, float* %.482
  %.743at4 = call float @_user_params_f40_i24(i32 %.679, i32 %.680, i32 %.681, float %.682, i32 %.683, i32 %.684, i32 %.685, float %.686, float %.687, float %.688, i32 %.689, float %.690, float %.691, i32 %.692, float %.693, i32 %.694, float %.695, float %.696, float %.697, float %.698, float %.699, float %.700, i32 %.701, float %.702, i32 %.703, i32 %.704, float %.705, float %.706, float %.707, float %.708, float %.709, i32 %.710, float %.711, i32 %.712, float %.713, float %.714, float %.715, float %.716, i32 %.717, i32 %.718, float %.719, float %.720, float %.721, i32 %.722, float %.723, i32 %.724, i32 %.725, float %.726, float %.727, float %.728, float %.729, i32 %.730, i32 %.731, i32 %.732, float %.733, float %.734, float %.735, float %.736, float %.737, float %.738, i32 %.739, float %.740, i32 %.741, float %.742)
  ret float %.743at4 
.651wc:
  %.655 = load i32, i32* %.649
  %.656 = icmp slt i32 %.655, 8
  br i1 %.656, label %.652wloop., label %.653wn
.652wloop.:
  %.658 = load i32, i32* %.649
  %.659 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 %.658
  %.660 = load i32, i32* %.659
  %.661 = load i32, i32* %.649
  %.662 = getelementptr inbounds [10 x float], [10 x float]* %.489, i32 0, i32 %.661
  %.663 = load float, float* %.662
  %.664 = sitofp i32 %.660 to float
  %.665 = fsub float %.664, %.663
  %.666 = load i32, i32* %.649
  %.667 = getelementptr inbounds [8 x i32], [8 x i32]* %.583, i32 0, i32 %.666
  %.668 = fptosi float %.665 to i32
  store i32 %.668, i32* %.667
  %.670 = load i32, i32* %.649
  %.671 = add i32 %.670, 1
  store i32 %.671, i32* %.649
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
  %.864 = alloca float*
  %.861 = alloca float*
  %.858 = alloca float*
  %.855 = alloca float*
  %.852 = alloca float*
  %.849 = alloca float*
  %.846 = alloca float*
  %.843 = alloca float*
  %.840 = alloca float*
  %.837 = alloca float*
  %.834 = alloca float*
  %.831 = alloca float*
  %.828 = alloca float*
  %.825 = alloca float*
  %.822 = alloca float*
  %.819 = alloca float*
  %.816 = alloca float*
  %.813 = alloca float*
  %.810 = alloca float*
  %.807 = alloca float*
  %.804 = alloca float*
  %.801 = alloca float*
  %.798 = alloca float*
  %.795 = alloca float*
  %.792 = alloca float*
  %.789 = alloca float*
  %.786 = alloca float*
  %.783 = alloca float*
  %.780 = alloca float*
  %.777 = alloca float*
  %.774 = alloca float*
  %.771 = alloca float*
  %.768 = alloca float*
  %.765 = alloca float*
  %.762 = alloca float*
  %.759 = alloca float*
  %.756 = alloca float*
  %.753 = alloca float*
  %.750 = alloca float*
  %.747 = alloca float*
  store float* %.746, float** %.747
  store float* %.749, float** %.750
  store float* %.752, float** %.753
  store float* %.755, float** %.756
  store float* %.758, float** %.759
  store float* %.761, float** %.762
  store float* %.764, float** %.765
  store float* %.767, float** %.768
  store float* %.770, float** %.771
  store float* %.773, float** %.774
  store float* %.776, float** %.777
  store float* %.779, float** %.780
  store float* %.782, float** %.783
  store float* %.785, float** %.786
  store float* %.788, float** %.789
  store float* %.791, float** %.792
  store float* %.794, float** %.795
  store float* %.797, float** %.798
  store float* %.800, float** %.801
  store float* %.803, float** %.804
  store float* %.806, float** %.807
  store float* %.809, float** %.810
  store float* %.812, float** %.813
  store float* %.815, float** %.816
  store float* %.818, float** %.819
  store float* %.821, float** %.822
  store float* %.824, float** %.825
  store float* %.827, float** %.828
  store float* %.830, float** %.831
  store float* %.833, float** %.834
  store float* %.836, float** %.837
  store float* %.839, float** %.840
  store float* %.842, float** %.843
  store float* %.845, float** %.846
  store float* %.848, float** %.849
  store float* %.851, float** %.852
  store float* %.854, float** %.855
  store float* %.857, float** %.858
  store float* %.860, float** %.861
  store float* %.863, float** %.864
  %.868 = load i32, i32* @.G.k
  %.869 = load float*, float** %.747
  %.870 = getelementptr inbounds float, float* %.869, i32 %.868
  %.871 = load float, float* %.870
  %.872 = load i32, i32* @.G.k
  %.873 = load float*, float** %.750
  %.874 = getelementptr inbounds float, float* %.873, i32 %.872
  %.875 = load float, float* %.874
  %.876 = fadd float %.871, %.875
  %.877 = load i32, i32* @.G.k
  %.878 = load float*, float** %.753
  %.879 = getelementptr inbounds float, float* %.878, i32 %.877
  %.880 = load float, float* %.879
  %.881 = fadd float %.876, %.880
  %.882 = load i32, i32* @.G.k
  %.883 = load float*, float** %.756
  %.884 = getelementptr inbounds float, float* %.883, i32 %.882
  %.885 = load float, float* %.884
  %.886 = fadd float %.881, %.885
  %.887 = load i32, i32* @.G.k
  %.888 = load float*, float** %.759
  %.889 = getelementptr inbounds float, float* %.888, i32 %.887
  %.890 = load float, float* %.889
  %.891 = load i32, i32* @.G.k
  %.892 = load float*, float** %.762
  %.893 = getelementptr inbounds float, float* %.892, i32 %.891
  %.894 = load float, float* %.893
  %.895 = fadd float %.890, %.894
  %.896 = load i32, i32* @.G.k
  %.897 = load float*, float** %.765
  %.898 = getelementptr inbounds float, float* %.897, i32 %.896
  %.899 = load float, float* %.898
  %.900 = fadd float %.895, %.899
  %.901 = load i32, i32* @.G.k
  %.902 = load float*, float** %.768
  %.903 = getelementptr inbounds float, float* %.902, i32 %.901
  %.904 = load float, float* %.903
  %.905 = fadd float %.900, %.904
  %.906 = load i32, i32* @.G.k
  %.907 = load float*, float** %.771
  %.908 = getelementptr inbounds float, float* %.907, i32 %.906
  %.909 = load float, float* %.908
  %.910 = load i32, i32* @.G.k
  %.911 = load float*, float** %.774
  %.912 = getelementptr inbounds float, float* %.911, i32 %.910
  %.913 = load float, float* %.912
  %.914 = fadd float %.909, %.913
  %.915 = load i32, i32* @.G.k
  %.916 = load float*, float** %.777
  %.917 = getelementptr inbounds float, float* %.916, i32 %.915
  %.918 = load float, float* %.917
  %.919 = fadd float %.914, %.918
  %.920 = load i32, i32* @.G.k
  %.921 = load float*, float** %.780
  %.922 = getelementptr inbounds float, float* %.921, i32 %.920
  %.923 = load float, float* %.922
  %.924 = fadd float %.919, %.923
  %.925 = load i32, i32* @.G.k
  %.926 = load float*, float** %.783
  %.927 = getelementptr inbounds float, float* %.926, i32 %.925
  %.928 = load float, float* %.927
  %.929 = load i32, i32* @.G.k
  %.930 = load float*, float** %.786
  %.931 = getelementptr inbounds float, float* %.930, i32 %.929
  %.932 = load float, float* %.931
  %.933 = fadd float %.928, %.932
  %.934 = load i32, i32* @.G.k
  %.935 = load float*, float** %.789
  %.936 = getelementptr inbounds float, float* %.935, i32 %.934
  %.937 = load float, float* %.936
  %.938 = fadd float %.933, %.937
  %.939 = load i32, i32* @.G.k
  %.940 = load float*, float** %.792
  %.941 = getelementptr inbounds float, float* %.940, i32 %.939
  %.942 = load float, float* %.941
  %.943 = fadd float %.938, %.942
  %.944 = load i32, i32* @.G.k
  %.945 = load float*, float** %.795
  %.946 = getelementptr inbounds float, float* %.945, i32 %.944
  %.947 = load float, float* %.946
  %.948 = load i32, i32* @.G.k
  %.949 = load float*, float** %.798
  %.950 = getelementptr inbounds float, float* %.949, i32 %.948
  %.951 = load float, float* %.950
  %.952 = fadd float %.947, %.951
  %.953 = load i32, i32* @.G.k
  %.954 = load float*, float** %.801
  %.955 = getelementptr inbounds float, float* %.954, i32 %.953
  %.956 = load float, float* %.955
  %.957 = fadd float %.952, %.956
  %.958 = load i32, i32* @.G.k
  %.959 = load float*, float** %.804
  %.960 = getelementptr inbounds float, float* %.959, i32 %.958
  %.961 = load float, float* %.960
  %.962 = fadd float %.957, %.961
  %.963 = load i32, i32* @.G.k
  %.964 = load float*, float** %.807
  %.965 = getelementptr inbounds float, float* %.964, i32 %.963
  %.966 = load float, float* %.965
  %.967 = load i32, i32* @.G.k
  %.968 = load float*, float** %.810
  %.969 = getelementptr inbounds float, float* %.968, i32 %.967
  %.970 = load float, float* %.969
  %.971 = fadd float %.966, %.970
  %.972 = load i32, i32* @.G.k
  %.973 = load float*, float** %.813
  %.974 = getelementptr inbounds float, float* %.973, i32 %.972
  %.975 = load float, float* %.974
  %.976 = fadd float %.971, %.975
  %.977 = load i32, i32* @.G.k
  %.978 = load float*, float** %.816
  %.979 = getelementptr inbounds float, float* %.978, i32 %.977
  %.980 = load float, float* %.979
  %.981 = fadd float %.976, %.980
  %.982 = load i32, i32* @.G.k
  %.983 = load float*, float** %.819
  %.984 = getelementptr inbounds float, float* %.983, i32 %.982
  %.985 = load float, float* %.984
  %.986 = load i32, i32* @.G.k
  %.987 = load float*, float** %.822
  %.988 = getelementptr inbounds float, float* %.987, i32 %.986
  %.989 = load float, float* %.988
  %.990 = fadd float %.985, %.989
  %.991 = load i32, i32* @.G.k
  %.992 = load float*, float** %.825
  %.993 = getelementptr inbounds float, float* %.992, i32 %.991
  %.994 = load float, float* %.993
  %.995 = fadd float %.990, %.994
  %.996 = load i32, i32* @.G.k
  %.997 = load float*, float** %.828
  %.998 = getelementptr inbounds float, float* %.997, i32 %.996
  %.999 = load float, float* %.998
  %.1000 = fadd float %.995, %.999
  %.1001 = load i32, i32* @.G.k
  %.1002 = load float*, float** %.831
  %.1003 = getelementptr inbounds float, float* %.1002, i32 %.1001
  %.1004 = load float, float* %.1003
  %.1005 = load i32, i32* @.G.k
  %.1006 = load float*, float** %.834
  %.1007 = getelementptr inbounds float, float* %.1006, i32 %.1005
  %.1008 = load float, float* %.1007
  %.1009 = fadd float %.1004, %.1008
  %.1010 = load i32, i32* @.G.k
  %.1011 = load float*, float** %.837
  %.1012 = getelementptr inbounds float, float* %.1011, i32 %.1010
  %.1013 = load float, float* %.1012
  %.1014 = fadd float %.1009, %.1013
  %.1015 = load i32, i32* @.G.k
  %.1016 = load float*, float** %.840
  %.1017 = getelementptr inbounds float, float* %.1016, i32 %.1015
  %.1018 = load float, float* %.1017
  %.1019 = fadd float %.1014, %.1018
  %.1020 = load i32, i32* @.G.k
  %.1021 = load float*, float** %.843
  %.1022 = getelementptr inbounds float, float* %.1021, i32 %.1020
  %.1023 = load float, float* %.1022
  %.1024 = load i32, i32* @.G.k
  %.1025 = load float*, float** %.846
  %.1026 = getelementptr inbounds float, float* %.1025, i32 %.1024
  %.1027 = load float, float* %.1026
  %.1028 = fadd float %.1023, %.1027
  %.1029 = load i32, i32* @.G.k
  %.1030 = load float*, float** %.849
  %.1031 = getelementptr inbounds float, float* %.1030, i32 %.1029
  %.1032 = load float, float* %.1031
  %.1033 = fadd float %.1028, %.1032
  %.1034 = load i32, i32* @.G.k
  %.1035 = load float*, float** %.852
  %.1036 = getelementptr inbounds float, float* %.1035, i32 %.1034
  %.1037 = load float, float* %.1036
  %.1038 = fadd float %.1033, %.1037
  %.1039 = load i32, i32* @.G.k
  %.1040 = load float*, float** %.855
  %.1041 = getelementptr inbounds float, float* %.1040, i32 %.1039
  %.1042 = load float, float* %.1041
  %.1043 = load i32, i32* @.G.k
  %.1044 = load float*, float** %.858
  %.1045 = getelementptr inbounds float, float* %.1044, i32 %.1043
  %.1046 = load float, float* %.1045
  %.1047 = fadd float %.1042, %.1046
  %.1048 = load i32, i32* @.G.k
  %.1049 = load float*, float** %.861
  %.1050 = getelementptr inbounds float, float* %.1049, i32 %.1048
  %.1051 = load float, float* %.1050
  %.1052 = fadd float %.1047, %.1051
  %.1053 = load i32, i32* @.G.k
  %.1054 = load float*, float** %.864
  %.1055 = getelementptr inbounds float, float* %.1054, i32 %.1053
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
  %.1083 = load float*, float** %.864
  %.1084 = getelementptr inbounds float, float* %.1083, i32 %.1082
  %.1085 = load float, float* %.1084
  %.1086 = sitofp i32 0 to float
  %.1087 = fcmp une float %.1085, %.1086
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
  %.1101 = load float*, float** %.750
  %.1102 = load float*, float** %.753
  %.1103 = load float*, float** %.756
  %.1104 = load float*, float** %.759
  %.1105 = load float*, float** %.762
  %.1106 = load float*, float** %.765
  %.1107 = load float*, float** %.768
  %.1108 = load float*, float** %.771
  %.1109 = load float*, float** %.774
  %.1110 = load float*, float** %.777
  %.1111 = load float*, float** %.780
  %.1112 = load float*, float** %.783
  %.1113 = load float*, float** %.786
  %.1114 = load float*, float** %.789
  %.1115 = load float*, float** %.792
  %.1116 = load float*, float** %.795
  %.1117 = load float*, float** %.798
  %.1118 = load float*, float** %.801
  %.1119 = load float*, float** %.804
  %.1120 = load float*, float** %.807
  %.1121 = load float*, float** %.810
  %.1122 = load float*, float** %.813
  %.1123 = load float*, float** %.816
  %.1124 = load float*, float** %.819
  %.1125 = load float*, float** %.822
  %.1126 = load float*, float** %.825
  %.1127 = load float*, float** %.828
  %.1128 = load float*, float** %.831
  %.1129 = load float*, float** %.834
  %.1130 = load float*, float** %.837
  %.1131 = load float*, float** %.840
  %.1132 = load float*, float** %.843
  %.1133 = load float*, float** %.846
  %.1134 = load float*, float** %.849
  %.1135 = load float*, float** %.852
  %.1136 = load float*, float** %.855
  %.1137 = load float*, float** %.858
  %.1138 = load float*, float** %.861
  %.1139 = load float*, float** %.864
  %.1140 = getelementptr inbounds [10 x float], [10 x float]* %.866, i32 0, i32 0
  %.1141at6 = call float @_user_params_fa40(float* %.1101, float* %.1102, float* %.1103, float* %.1104, float* %.1105, float* %.1106, float* %.1107, float* %.1108, float* %.1109, float* %.1110, float* %.1111, float* %.1112, float* %.1113, float* %.1114, float* %.1115, float* %.1116, float* %.1117, float* %.1118, float* %.1119, float* %.1120, float* %.1121, float* %.1122, float* %.1123, float* %.1124, float* %.1125, float* %.1126, float* %.1127, float* %.1128, float* %.1129, float* %.1130, float* %.1131, float* %.1132, float* %.1133, float* %.1134, float* %.1135, float* %.1136, float* %.1137, float* %.1138, float* %.1139, float* %.1140)
  ret float %.1141at6 
}
define i32 @_user_params_mix(float %.1144, i32* %.1147, i32 %.1150, float* %.1153, float %.1156, i32 %.1159, float %.1162, float %.1165, float* %.1168, i32* %.1171, i32 %.1174, i32 %.1177, float* %.1180, i32* %.1183, i32* %.1186, i32 %.1189, float* %.1192, float* %.1195, float %.1198, float %.1201, float %.1204, float* %.1207, i32 %.1210, float %.1213, float %.1216, float %.1219, i32* %.1222, float* %.1225, i32* %.1228, i32* %.1231, float* %.1234, float %.1237, float %.1240, i32* %.1243, i32 %.1246, float* %.1249, float* %.1252, float %.1255, float %.1258, i32* %.1261, i32* %.1264, i32 %.1267, i32 %.1270, float %.1273, float %.1276, i32* %.1279, i32 %.1282, float* %.1285, i32 %.1288, i32* %.1291, i32* %.1294, float %.1297, float %.1300, float* %.1303, i32 %.1306, i32* %.1309, float* %.1312, float %.1315, i32 %.1318, float %.1321, float* %.1324, float* %.1327, float %.1330, i32 %.1333){
.1143:
  %.1586 = alloca i32
  %.1466 = alloca [10 x i32]
  %.1336 = alloca [10 x float]
  %.1334 = alloca i32
  %.1331 = alloca float
  %.1328 = alloca float*
  %.1325 = alloca float*
  %.1322 = alloca float
  %.1319 = alloca i32
  %.1316 = alloca float
  %.1313 = alloca float*
  %.1310 = alloca i32*
  %.1307 = alloca i32
  %.1304 = alloca float*
  %.1301 = alloca float
  %.1298 = alloca float
  %.1295 = alloca i32*
  %.1292 = alloca i32*
  %.1289 = alloca i32
  %.1286 = alloca float*
  %.1283 = alloca i32
  %.1280 = alloca i32*
  %.1277 = alloca float
  %.1274 = alloca float
  %.1271 = alloca i32
  %.1268 = alloca i32
  %.1265 = alloca i32*
  %.1262 = alloca i32*
  %.1259 = alloca float
  %.1256 = alloca float
  %.1253 = alloca float*
  %.1250 = alloca float*
  %.1247 = alloca i32
  %.1244 = alloca i32*
  %.1241 = alloca float
  %.1238 = alloca float
  %.1235 = alloca float*
  %.1232 = alloca i32*
  %.1229 = alloca i32*
  %.1226 = alloca float*
  %.1223 = alloca i32*
  %.1220 = alloca float
  %.1217 = alloca float
  %.1214 = alloca float
  %.1211 = alloca i32
  %.1208 = alloca float*
  %.1205 = alloca float
  %.1202 = alloca float
  %.1199 = alloca float
  %.1196 = alloca float*
  %.1193 = alloca float*
  %.1190 = alloca i32
  %.1187 = alloca i32*
  %.1184 = alloca i32*
  %.1181 = alloca float*
  %.1178 = alloca i32
  %.1175 = alloca i32
  %.1172 = alloca i32*
  %.1169 = alloca float*
  %.1166 = alloca float
  %.1163 = alloca float
  %.1160 = alloca i32
  %.1157 = alloca float
  %.1154 = alloca float*
  %.1151 = alloca i32
  %.1148 = alloca i32*
  %.1145 = alloca float
  store float %.1144, float* %.1145
  store i32* %.1147, i32** %.1148
  store i32 %.1150, i32* %.1151
  store float* %.1153, float** %.1154
  store float %.1156, float* %.1157
  store i32 %.1159, i32* %.1160
  store float %.1162, float* %.1163
  store float %.1165, float* %.1166
  store float* %.1168, float** %.1169
  store i32* %.1171, i32** %.1172
  store i32 %.1174, i32* %.1175
  store i32 %.1177, i32* %.1178
  store float* %.1180, float** %.1181
  store i32* %.1183, i32** %.1184
  store i32* %.1186, i32** %.1187
  store i32 %.1189, i32* %.1190
  store float* %.1192, float** %.1193
  store float* %.1195, float** %.1196
  store float %.1198, float* %.1199
  store float %.1201, float* %.1202
  store float %.1204, float* %.1205
  store float* %.1207, float** %.1208
  store i32 %.1210, i32* %.1211
  store float %.1213, float* %.1214
  store float %.1216, float* %.1217
  store float %.1219, float* %.1220
  store i32* %.1222, i32** %.1223
  store float* %.1225, float** %.1226
  store i32* %.1228, i32** %.1229
  store i32* %.1231, i32** %.1232
  store float* %.1234, float** %.1235
  store float %.1237, float* %.1238
  store float %.1240, float* %.1241
  store i32* %.1243, i32** %.1244
  store i32 %.1246, i32* %.1247
  store float* %.1249, float** %.1250
  store float* %.1252, float** %.1253
  store float %.1255, float* %.1256
  store float %.1258, float* %.1259
  store i32* %.1261, i32** %.1262
  store i32* %.1264, i32** %.1265
  store i32 %.1267, i32* %.1268
  store i32 %.1270, i32* %.1271
  store float %.1273, float* %.1274
  store float %.1276, float* %.1277
  store i32* %.1279, i32** %.1280
  store i32 %.1282, i32* %.1283
  store float* %.1285, float** %.1286
  store i32 %.1288, i32* %.1289
  store i32* %.1291, i32** %.1292
  store i32* %.1294, i32** %.1295
  store float %.1297, float* %.1298
  store float %.1300, float* %.1301
  store float* %.1303, float** %.1304
  store i32 %.1306, i32* %.1307
  store i32* %.1309, i32** %.1310
  store float* %.1312, float** %.1313
  store float %.1315, float* %.1316
  store i32 %.1318, i32* %.1319
  store float %.1321, float* %.1322
  store float* %.1324, float** %.1325
  store float* %.1327, float** %.1328
  store float %.1330, float* %.1331
  store i32 %.1333, i32* %.1334
  %.1338 = load float, float* %.1145
  %.1339 = load i32, i32* @.G.k
  %.1340 = load float*, float** %.1154
  %.1341 = getelementptr inbounds float, float* %.1340, i32 %.1339
  %.1342 = load float, float* %.1341
  %.1343 = fadd float %.1338, %.1342
  %.1344 = load float, float* %.1157
  %.1345 = fadd float %.1343, %.1344
  %.1346 = load float, float* %.1163
  %.1347 = fadd float %.1345, %.1346
  %.1348 = load float, float* %.1166
  %.1349 = load i32, i32* @.G.k
  %.1350 = load float*, float** %.1169
  %.1351 = getelementptr inbounds float, float* %.1350, i32 %.1349
  %.1352 = load float, float* %.1351
  %.1353 = fadd float %.1348, %.1352
  %.1354 = load i32, i32* @.G.k
  %.1355 = load float*, float** %.1181
  %.1356 = getelementptr inbounds float, float* %.1355, i32 %.1354
  %.1357 = load float, float* %.1356
  %.1358 = fadd float %.1353, %.1357
  %.1359 = load i32, i32* @.G.k
  %.1360 = load float*, float** %.1193
  %.1361 = getelementptr inbounds float, float* %.1360, i32 %.1359
  %.1362 = load float, float* %.1361
  %.1363 = fadd float %.1358, %.1362
  %.1364 = load i32, i32* @.G.k
  %.1365 = load float*, float** %.1196
  %.1366 = getelementptr inbounds float, float* %.1365, i32 %.1364
  %.1367 = load float, float* %.1366
  %.1368 = load float, float* %.1199
  %.1369 = fadd float %.1367, %.1368
  %.1370 = load float, float* %.1202
  %.1371 = fadd float %.1369, %.1370
  %.1372 = load float, float* %.1205
  %.1373 = fadd float %.1371, %.1372
  %.1374 = load i32, i32* @.G.k
  %.1375 = load float*, float** %.1208
  %.1376 = getelementptr inbounds float, float* %.1375, i32 %.1374
  %.1377 = load float, float* %.1376
  %.1378 = load float, float* %.1214
  %.1379 = fadd float %.1377, %.1378
  %.1380 = load float, float* %.1217
  %.1381 = fadd float %.1379, %.1380
  %.1382 = load float, float* %.1220
  %.1383 = fadd float %.1381, %.1382
  %.1384 = load i32, i32* @.G.k
  %.1385 = load float*, float** %.1226
  %.1386 = getelementptr inbounds float, float* %.1385, i32 %.1384
  %.1387 = load float, float* %.1386
  %.1388 = load i32, i32* @.G.k
  %.1389 = load float*, float** %.1235
  %.1390 = getelementptr inbounds float, float* %.1389, i32 %.1388
  %.1391 = load float, float* %.1390
  %.1392 = fadd float %.1387, %.1391
  %.1393 = load float, float* %.1238
  %.1394 = fadd float %.1392, %.1393
  %.1395 = load float, float* %.1241
  %.1396 = fadd float %.1394, %.1395
  %.1397 = load i32, i32* @.G.k
  %.1398 = load float*, float** %.1250
  %.1399 = getelementptr inbounds float, float* %.1398, i32 %.1397
  %.1400 = load float, float* %.1399
  %.1401 = load i32, i32* @.G.k
  %.1402 = load float*, float** %.1253
  %.1403 = getelementptr inbounds float, float* %.1402, i32 %.1401
  %.1404 = load float, float* %.1403
  %.1405 = fadd float %.1400, %.1404
  %.1406 = load float, float* %.1256
  %.1407 = fadd float %.1405, %.1406
  %.1408 = load float, float* %.1259
  %.1409 = fadd float %.1407, %.1408
  %.1410 = load float, float* %.1274
  %.1411 = load float, float* %.1277
  %.1412 = fadd float %.1410, %.1411
  %.1413 = load i32, i32* @.G.k
  %.1414 = load float*, float** %.1286
  %.1415 = getelementptr inbounds float, float* %.1414, i32 %.1413
  %.1416 = load float, float* %.1415
  %.1417 = fadd float %.1412, %.1416
  %.1418 = load float, float* %.1298
  %.1419 = fadd float %.1417, %.1418
  %.1420 = load float, float* %.1301
  %.1421 = load i32, i32* @.G.k
  %.1422 = load float*, float** %.1304
  %.1423 = getelementptr inbounds float, float* %.1422, i32 %.1421
  %.1424 = load float, float* %.1423
  %.1425 = fadd float %.1420, %.1424
  %.1426 = load i32, i32* @.G.k
  %.1427 = load float*, float** %.1313
  %.1428 = getelementptr inbounds float, float* %.1427, i32 %.1426
  %.1429 = load float, float* %.1428
  %.1430 = fadd float %.1425, %.1429
  %.1431 = load float, float* %.1316
  %.1432 = fadd float %.1430, %.1431
  %.1433 = load float, float* %.1322
  %.1434 = load i32, i32* @.G.k
  %.1435 = load float*, float** %.1325
  %.1436 = getelementptr inbounds float, float* %.1435, i32 %.1434
  %.1437 = load float, float* %.1436
  %.1438 = fadd float %.1433, %.1437
  %.1439 = load i32, i32* @.G.k
  %.1440 = load float*, float** %.1328
  %.1441 = getelementptr inbounds float, float* %.1440, i32 %.1439
  %.1442 = load float, float* %.1441
  %.1443 = fadd float %.1438, %.1442
  %.1444 = load float, float* %.1331
  %.1445 = fadd float %.1443, %.1444
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
  %.1469 = load i32*, i32** %.1148
  %.1470 = getelementptr inbounds i32, i32* %.1469, i32 %.1468
  %.1471 = load i32, i32* %.1470
  %.1472 = load i32, i32* %.1151
  %.1473 = add i32 %.1471, %.1472
  %.1474 = load i32, i32* %.1160
  %.1475 = add i32 %.1473, %.1474
  %.1476 = load i32, i32* @.G.k
  %.1477 = load i32*, i32** %.1172
  %.1478 = getelementptr inbounds i32, i32* %.1477, i32 %.1476
  %.1479 = load i32, i32* %.1478
  %.1480 = load i32, i32* %.1175
  %.1481 = add i32 %.1479, %.1480
  %.1482 = load i32, i32* %.1178
  %.1483 = add i32 %.1481, %.1482
  %.1484 = load i32, i32* @.G.k
  %.1485 = load i32*, i32** %.1184
  %.1486 = getelementptr inbounds i32, i32* %.1485, i32 %.1484
  %.1487 = load i32, i32* %.1486
  %.1488 = load i32, i32* @.G.k
  %.1489 = load i32*, i32** %.1187
  %.1490 = getelementptr inbounds i32, i32* %.1489, i32 %.1488
  %.1491 = load i32, i32* %.1490
  %.1492 = add i32 %.1487, %.1491
  %.1493 = load i32, i32* %.1190
  %.1494 = add i32 %.1492, %.1493
  %.1495 = load i32, i32* %.1211
  %.1496 = load i32, i32* @.G.k
  %.1497 = load i32*, i32** %.1223
  %.1498 = getelementptr inbounds i32, i32* %.1497, i32 %.1496
  %.1499 = load i32, i32* %.1498
  %.1500 = add i32 %.1495, %.1499
  %.1501 = load i32, i32* @.G.k
  %.1502 = load i32*, i32** %.1229
  %.1503 = getelementptr inbounds i32, i32* %.1502, i32 %.1501
  %.1504 = load i32, i32* %.1503
  %.1505 = add i32 %.1500, %.1504
  %.1506 = load i32, i32* @.G.k
  %.1507 = load i32*, i32** %.1232
  %.1508 = getelementptr inbounds i32, i32* %.1507, i32 %.1506
  %.1509 = load i32, i32* %.1508
  %.1510 = load i32, i32* @.G.k
  %.1511 = load i32*, i32** %.1244
  %.1512 = getelementptr inbounds i32, i32* %.1511, i32 %.1510
  %.1513 = load i32, i32* %.1512
  %.1514 = add i32 %.1509, %.1513
  %.1515 = load i32, i32* %.1247
  %.1516 = add i32 %.1514, %.1515
  %.1517 = load i32, i32* @.G.k
  %.1518 = load i32*, i32** %.1262
  %.1519 = getelementptr inbounds i32, i32* %.1518, i32 %.1517
  %.1520 = load i32, i32* %.1519
  %.1521 = load i32, i32* @.G.k
  %.1522 = load i32*, i32** %.1265
  %.1523 = getelementptr inbounds i32, i32* %.1522, i32 %.1521
  %.1524 = load i32, i32* %.1523
  %.1525 = add i32 %.1520, %.1524
  %.1526 = load i32, i32* %.1268
  %.1527 = add i32 %.1525, %.1526
  %.1528 = load i32, i32* %.1271
  %.1529 = load i32, i32* @.G.k
  %.1530 = load i32*, i32** %.1280
  %.1531 = getelementptr inbounds i32, i32* %.1530, i32 %.1529
  %.1532 = load i32, i32* %.1531
  %.1533 = add i32 %.1528, %.1532
  %.1534 = load i32, i32* %.1283
  %.1535 = add i32 %.1533, %.1534
  %.1536 = load i32, i32* %.1289
  %.1537 = load i32, i32* @.G.k
  %.1538 = load i32*, i32** %.1292
  %.1539 = getelementptr inbounds i32, i32* %.1538, i32 %.1537
  %.1540 = load i32, i32* %.1539
  %.1541 = add i32 %.1536, %.1540
  %.1542 = load i32, i32* @.G.k
  %.1543 = load i32*, i32** %.1295
  %.1544 = getelementptr inbounds i32, i32* %.1543, i32 %.1542
  %.1545 = load i32, i32* %.1544
  %.1546 = add i32 %.1541, %.1545
  %.1547 = load i32, i32* %.1307
  %.1548 = load i32, i32* @.G.k
  %.1549 = load i32*, i32** %.1310
  %.1550 = getelementptr inbounds i32, i32* %.1549, i32 %.1548
  %.1551 = load i32, i32* %.1550
  %.1552 = add i32 %.1547, %.1551
  %.1553 = load i32, i32* %.1319
  %.1554 = add i32 %.1552, %.1553
  %.1555 = load i32, i32* %.1334
  %.1556 = add i32 %.1554, %.1555
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
  %.1579 = load i32, i32* %.1334
  %.1580 = icmp ne i32 %.1579, 0
  br i1 %.1580, label %.1577, label %.1578
.1577:
  %.1582 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 0
  call void @putfarray(i32 10, float* %.1582)
  %.1584 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 0
  call void @putarray(i32 10, i32* %.1584)
  store i32 0, i32* %.1586
  br label %.1588wc 
.1578:
  %.1620 = load float, float* %.1145
  %.1621 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 0
  %.1622 = load i32, i32* %.1151
  %.1623 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 0
  %.1624 = load float, float* %.1157
  %.1625 = load i32, i32* %.1160
  %.1626 = load float, float* %.1163
  %.1627 = load float, float* %.1166
  %.1628 = load float*, float** %.1169
  %.1629 = load i32*, i32** %.1172
  %.1630 = load i32, i32* %.1175
  %.1631 = load i32, i32* %.1178
  %.1632 = load float*, float** %.1181
  %.1633 = load i32*, i32** %.1184
  %.1634 = load i32*, i32** %.1187
  %.1635 = load i32, i32* %.1190
  %.1636 = load float*, float** %.1193
  %.1637 = load float*, float** %.1196
  %.1638 = load float, float* %.1199
  %.1639 = load float, float* %.1202
  %.1640 = load float, float* %.1205
  %.1641 = load float*, float** %.1208
  %.1642 = load i32, i32* %.1211
  %.1643 = load float, float* %.1214
  %.1644 = load float, float* %.1217
  %.1645 = load float, float* %.1220
  %.1646 = load i32*, i32** %.1223
  %.1647 = load float*, float** %.1226
  %.1648 = load i32*, i32** %.1229
  %.1649 = load i32*, i32** %.1232
  %.1650 = load float*, float** %.1235
  %.1651 = load float, float* %.1238
  %.1652 = load float, float* %.1241
  %.1653 = load i32*, i32** %.1244
  %.1654 = load i32, i32* %.1247
  %.1655 = load float*, float** %.1250
  %.1656 = load float*, float** %.1253
  %.1657 = load float, float* %.1256
  %.1658 = load float, float* %.1259
  %.1659 = load i32*, i32** %.1262
  %.1660 = load i32*, i32** %.1265
  %.1661 = load i32, i32* %.1268
  %.1662 = load i32, i32* %.1271
  %.1663 = load float, float* %.1274
  %.1664 = load float, float* %.1277
  %.1665 = load i32*, i32** %.1280
  %.1666 = load i32, i32* %.1283
  %.1667 = load float*, float** %.1286
  %.1668 = load i32, i32* %.1289
  %.1669 = load i32*, i32** %.1292
  %.1670 = load i32*, i32** %.1295
  %.1671 = load float, float* %.1298
  %.1672 = load float, float* %.1301
  %.1673 = load float*, float** %.1304
  %.1674 = load i32, i32* %.1307
  %.1675 = load i32*, i32** %.1310
  %.1676 = load float*, float** %.1313
  %.1677 = load float, float* %.1316
  %.1678 = load i32, i32* %.1319
  %.1679 = load float, float* %.1322
  %.1680 = load float*, float** %.1325
  %.1681 = load float*, float** %.1328
  %.1682 = load i32, i32* %.1334
  %.1683 = load float, float* %.1331
  %.1684 = sitofp i32 %.1682 to float
  %.1685 = fptosi float %.1683 to i32
  %.1686at9 = call i32 @_user_params_mix(float %.1620, i32* %.1621, i32 %.1622, float* %.1623, float %.1624, i32 %.1625, float %.1626, float %.1627, float* %.1628, i32* %.1629, i32 %.1630, i32 %.1631, float* %.1632, i32* %.1633, i32* %.1634, i32 %.1635, float* %.1636, float* %.1637, float %.1638, float %.1639, float %.1640, float* %.1641, i32 %.1642, float %.1643, float %.1644, float %.1645, i32* %.1646, float* %.1647, i32* %.1648, i32* %.1649, float* %.1650, float %.1651, float %.1652, i32* %.1653, i32 %.1654, float* %.1655, float* %.1656, float %.1657, float %.1658, i32* %.1659, i32* %.1660, i32 %.1661, i32 %.1662, float %.1663, float %.1664, i32* %.1665, i32 %.1666, float* %.1667, i32 %.1668, i32* %.1669, i32* %.1670, float %.1671, float %.1672, float* %.1673, i32 %.1674, i32* %.1675, float* %.1676, float %.1677, i32 %.1678, float %.1679, float* %.1680, float* %.1681, float %.1684, i32 %.1685)
  ret i32 %.1686at9 
.1588wc:
  %.1592 = load i32, i32* %.1586
  %.1593 = icmp slt i32 %.1592, 10
  br i1 %.1593, label %.1589wloop., label %.1590wn
.1589wloop.:
  %.1595 = load i32, i32* %.1586
  %.1596 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 %.1595
  %.1597 = load i32, i32* %.1596
  %.1598 = load i32, i32* %.1586
  %.1599 = getelementptr inbounds [10 x float], [10 x float]* %.1336, i32 0, i32 %.1598
  %.1600 = load float, float* %.1599
  %.1601 = sitofp i32 %.1597 to float
  %.1602 = fsub float %.1601, %.1600
  %.1603 = load i32, i32* %.1586
  %.1604 = getelementptr inbounds [10 x i32], [10 x i32]* %.1466, i32 0, i32 %.1603
  %.1605 = fptosi float %.1602 to i32
  store i32 %.1605, i32* %.1604
  %.1607 = load i32, i32* %.1586
  %.1608 = add i32 %.1607, 1
  store i32 %.1608, i32* %.1586
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
  %.2116 = alloca i32
  %.2073 = alloca float
  %.1878 = alloca float
  %.1728 = alloca float
  %.1692 = alloca i32
  %.1691 = alloca [24 x [3 x i32]]
  %.1689 = alloca [40 x [3 x float]]
  %.1694at10 = call i32 @getint()
  store i32 %.1694at10, i32* @.G.k
  store i32 0, i32* %.1692
  br label %.1697wc 
.1697wc:
  %.1701 = load i32, i32* %.1692
  %.1702 = icmp slt i32 %.1701, 40
  br i1 %.1702, label %.1698wloop., label %.1699wn
.1698wloop.:
  %.1704 = load i32, i32* %.1692
  %.1705 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %.1689, i32 0, i32 %.1704, i32 0
  %.1707at11 = call i32 @getfarray(float* %.1705)
  %.1708 = load i32, i32* %.1692
  %.1709 = add i32 %.1708, 1
  store i32 %.1709, i32* %.1692
  br label %.1697wc 
.1699wn:
  store i32 0, i32* %.1692
  br label %.1713wc 
.1713wc:
  %.1717 = load i32, i32* %.1692
  %.1718 = icmp slt i32 %.1717, 24
  br i1 %.1718, label %.1714wloop., label %.1715wn
.1714wloop.:
  %.1720 = load i32, i32* %.1692
  %.1721 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %.1691, i32 0, i32 %.1720, i32 0
  %.1723at12 = call i32 @getarray(i32* %.1721)
  %.1724 = load i32, i32* %.1692
  %.1725 = add i32 %.1724, 1
  store i32 %.1725, i32* %.1692
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
  store float %.1876at13, float* %.1728
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
  store float %.2071at14, float* %.1878
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
  store float %.2114at15, float* %.2073
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
  store i32 %.2251at16, i32* %.2116
  %.2253 = load float, float* %.1728
  call void @putfloat(float %.2253)
  call void @putch(i32 10)
  %.2258 = load float, float* %.1878
  call void @putfloat(float %.2258)
  call void @putch(i32 10)
  %.2261 = load float, float* %.2073
  call void @putfloat(float %.2261)
  call void @putch(i32 10)
  %.2264 = load i32, i32* %.2116
  call void @putint(i32 %.2264)
  call void @putch(i32 10)
  ret i32 0 
}
