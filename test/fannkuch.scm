(let ((ad1 (lambda (_i7) (+ _i7 1))))
  (let ((sb1 (lambda (_i8) (- _i8 1))))
    (let ((vector-for-each (lambda (_pred9 _v10)
                             (letrec ((__loop011 (lambda (_i12 _v-length13)
                                                   (let ((_p50 (>= _i12 _v-length13)))
                                                     (if _p50
                                                         '<undefined>
                                                         (let ((_p51 (vector-ref _v10 _i12)))
                                                           (let ((_$52 (_pred9 _p51)))
                                                             (let ((_p53 (ad1 _i12)))
                                                               (__loop011 _p53 _v-length13)))))))))
                               (let ((_p54 (vector-length _v10)))
                                 (__loop011 0 _p54))))))
      (let ((vector-swap! (lambda (_v20 _i21 _j22)
                            (let ((_t23 (vector-ref _v20 _i21)))
                              (let ((_p62 (vector-ref _v20 _j22)))
                                (let ((_$63 (vector-set! _v20 _i21 _p62)))
                                  (vector-set! _v20 _j22 _t23)))))))
        (let ((vector-reverse-slice! (lambda (_v14 _i15 _j16)
                                       (letrec ((__loop117 (lambda (_i18 _j19)
                                                             (let ((_p56 (<= _j19 _i18)))
                                                               (if _p56
                                                                   '<undefined>
                                                                   (let ((_$57 (vector-swap! _v14 _i18 _j19)))
                                                                     (let ((_p58 (ad1 _i18)))
                                                                       (let ((_p59 (sb1 _j19)))
                                                                         (__loop117 _p58 _p59)))))))))
                                         (let ((_p60 (sb1 _j16)))
                                           (__loop117 _i15 _p60))))))
          (let ((count-flips (lambda (_pi24)
                               (letrec ((__loop225 (lambda (_rho26 _i27)
                                                     (let ((_p65 (vector-ref _rho26 0)))
                                                       (let ((_p66 (= _p65 0)))
                                                         (if _p66
                                                             _i27
                                                             (let ((_p67 (vector-ref _rho26 0)))
                                                               (let ((_p68 (ad1 _p67)))
                                                                 (let ((_$69 (vector-reverse-slice! _rho26 0 _p68)))
                                                                   (let ((_p70 (ad1 _i27)))
                                                                     (__loop225 _rho26 _p70)))))))))))
                                 (let ((_p71 (vector-copy _pi24)))
                                   (__loop225 _p71 0))))))
            (let ((fannkuch (lambda (_n28)
                              (letrec ((__loop330 (lambda (_pi31 _i32)
                                                    (let ((_p73 (= _i32 _n28)))
                                                      (if _p73
                                                          _pi31
                                                          (let ((_$74 (vector-set! _pi31 _i32 _i32)))
                                                            (let ((_p75 (ad1 _i32)))
                                                              (__loop330 _pi31 _p75))))))))
                                (let ((_p76 (make-vector _n28 0)))
                                  (let ((_pi29 (__loop330 _p76 0)))
                                    (let ((_r33 _n28))
                                      (let ((_count34 (make-vector _n28 0)))
                                        (letrec ((_loop35 (lambda (_flips36 _perms37)
                                                            (let ((_p77 (< _perms37 30)))
                                                              (let ((_$80 (if _p77
                                                                              (let ((_$79 (vector-for-each (lambda (_x38)
                                                                                                             (let ((_p78 (ad1 _x38)))
                                                                                                               (display _p78)))
                                                                                                           _pi29)))
                                                                                (newline))
                                                                              '<undefined>)))
                                                                (letrec ((__loop439 (lambda ()
                                                                                      (let ((_p81 (= _r33 1)))
                                                                                        (if _p81
                                                                                            '<undefined>
                                                                                            (let ((_p82 (sb1 _r33)))
                                                                                              (let ((_$83 (vector-set! _count34 _p82 _r33)))
                                                                                                (let ((_p84 (sb1 _r33)))
                                                                                                  (let ((_$85 (set! _r33 _p84)))
                                                                                                    (__loop439))))))))))
                                                                  (let ((_$86 (__loop439)))
                                                                    (let ((_p87 (count-flips _pi29)))
                                                                      (let ((_flips240 (max _p87 _flips36)))
                                                                        (letrec ((_loop242 (lambda ()
                                                                                             (let ((_p88 (= _r33 _n28)))
                                                                                               (if _p88
                                                                                                   _flips240
                                                                                                   (let ((_perm043 (vector-ref _pi29 0)))
                                                                                                     (letrec ((__loop544 (lambda (_i45)
                                                                                                                           (let ((_p89 (>= _i45 _r33)))
                                                                                                                             (if _p89
                                                                                                                                 '<undefined>
                                                                                                                                 (let ((_j46 (ad1 _i45)))
                                                                                                                                   (let ((_p90 (vector-ref _pi29 _j46)))
                                                                                                                                     (let ((_$91 (vector-set! _pi29 _i45 _p90)))
                                                                                                                                       (let ((_$92 (set! _i45 _j46)))
                                                                                                                                         (__loop544 _i45))))))))))
                                                                                                       (let ((_$93 (__loop544 0)))
                                                                                                         (let ((_$94 (vector-set! _pi29 _r33 _perm043)))
                                                                                                           (let ((_p95 (vector-ref _count34 _r33)))
                                                                                                             (let ((_p96 (sb1 _p95)))
                                                                                                               (let ((_$97 (vector-set! _count34 _r33 _p96)))
                                                                                                                 (let ((_p98 (vector-ref _count34 _r33)))
                                                                                                                   (let ((_p99 (<= _p98 0)))
                                                                                                                     (if _p99
                                                                                                                         (let ((_p100 (ad1 _r33)))
                                                                                                                           (let ((_$101 (set! _r33 _p100)))
                                                                                                                             (_loop242)))
                                                                                                                         #f)))))))))))))))
                                                                          (let ((_result41 (_loop242)))
                                                                            (let ((__t647 _result41))
                                                                              (if __t647
                                                                                  __t647
                                                                                  (let ((_p102 (ad1 _perms37)))
                                                                                    (_loop35 _flips240 _p102)))))))))))))))
                                          (_loop35 0 0))))))))))
              (fannkuch 4))))))))
