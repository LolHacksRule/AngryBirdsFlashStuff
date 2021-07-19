package §75§
{
   import flash.geom.Point;
   
   public class §4!-§
   {
       
      
      public function §4!-§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §6f§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : §>!6§
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         §§push(param6);
         if(!(_loc21_ && §4!-§))
         {
            §§push(§§pop() - param1);
            if(_loc20_ || param1)
            {
               addr33:
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(param7);
            if(_loc20_ || §4!-§)
            {
               §§push(§§pop() - param2);
               if(_loc20_ || param2)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc9_:* = §§pop();
            var _loc10_:Point = new Point(Math.cos(param5),Math.sin(param5));
            var _loc11_:Point = new Point(Math.cos(param5 + Math.PI * 0.5),Math.sin(param5 + Math.PI * 0.5));
            if(_loc20_)
            {
               _loc10_.normalize(1);
               if(_loc20_)
               {
                  _loc11_.normalize(1);
               }
            }
            var _loc12_:Vector.<Number> = new Vector.<Number>(2);
            var _loc13_:Vector.<Number> = new <Number>[param3 / 2,param4 / 2];
            var _loc14_:Vector.<Point> = new <Point>[_loc10_,_loc11_];
            var _loc15_:* = Number(0);
            var _loc16_:* = Number(0);
            var _loc17_:* = 0;
            loop0:
            while(true)
            {
               if(_loc17_ < 2)
               {
                  _loc12_[_loc17_] = §?T§(_loc8_,_loc9_,_loc14_[_loc17_].x,_loc14_[_loc17_].y);
                  if(_loc20_ || §4!-§)
                  {
                     if(_loc12_[_loc17_] >= -_loc13_[_loc17_])
                     {
                        if(_loc12_[_loc17_] > _loc13_[_loc17_])
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc20_ || §4!-§)
                              {
                                 §§push(_loc12_[_loc17_] - _loc13_[_loc17_]);
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc20_ || param3)
                                    {
                                       §§push(Number(§§pop()));
                                       loop3:
                                       while(true)
                                       {
                                          _loc15_ = §§pop();
                                          loop4:
                                          while(true)
                                          {
                                             if(!_loc21_)
                                             {
                                                if(!_loc21_)
                                                {
                                                   §§push(_loc16_);
                                                   if(!(_loc21_ && param3))
                                                   {
                                                      if(_loc21_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(_loc15_);
                                                      if(!(_loc21_ && param3))
                                                      {
                                                         §§push(_loc15_);
                                                         if(_loc20_)
                                                         {
                                                            addr192:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc20_ || §4!-§)
                                                            {
                                                               if(_loc20_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc20_ || §4!-§)
                                                                  {
                                                                     addr209:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  if(!_loc21_)
                                                                  {
                                                                     _loc16_ = §§pop();
                                                                     if(_loc20_)
                                                                     {
                                                                        if(_loc21_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           _loc12_[_loc17_] = _loc13_[_loc17_];
                                                                           loop9:
                                                                           while(_loc20_ || param3)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc17_++;
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    break loop4;
                                                                                 }
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(_loc15_);
                                                                  addr300:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               addr299:
                                                               §§goto(addr146);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc21_ && §4!-§))
                                                               {
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr310:
                                                                     while(true)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        addr311:
                                                                        while(true)
                                                                        {
                                                                           _loc12_[_loc17_] = -_loc13_[_loc17_];
                                                                           addr274:
                                                                           while(!(_loc20_ || param1))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(_loc12_[_loc17_] + _loc13_[_loc17_]));
                                                                                 addr329:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc15_ = §§pop();
                                                                                    continue loop6;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr146);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr310);
                                                            }
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                §§goto(addr330);
                                             }
                                             §§goto(addr274);
                                          }
                                          addr359:
                                          var _loc18_:Point = new Point(param1,param2);
                                          if(_loc20_)
                                          {
                                             §§push(0);
                                             if(_loc20_ || param2)
                                             {
                                                _loc17_ = §§pop();
                                                addr442:
                                                §§push(_loc17_);
                                                addr441:
                                             }
                                             if(§§pop() < 2)
                                             {
                                                _loc18_.x += _loc12_[_loc17_] * _loc14_[_loc17_].x;
                                                addr379:
                                                _loc18_.y += _loc12_[_loc17_] * _loc14_[_loc17_].y;
                                                addr431:
                                                if(_loc20_ || param2)
                                                {
                                                   if(!(_loc21_ && param3))
                                                   {
                                                      if(_loc20_ || param1)
                                                      {
                                                         _loc17_++;
                                                         if(_loc20_ || param1)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr379);
                                                            }
                                                            §§goto(addr442);
                                                         }
                                                         var _loc19_:§>!6§;
                                                         (_loc19_ = new §>!6§()).§]1§ = Math.sqrt(_loc16_);
                                                         addr445:
                                                         if(!_loc21_)
                                                         {
                                                            _loc19_.§%!b§ = _loc18_;
                                                         }
                                                         return _loc19_;
                                                         addr414:
                                                      }
                                                      §§goto(addr441);
                                                   }
                                                   §§goto(addr431);
                                                }
                                             }
                                             §§goto(addr445);
                                          }
                                          §§goto(addr414);
                                       }
                                    }
                                    §§goto(addr310);
                                 }
                              }
                              §§goto(addr311);
                           }
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr321);
                  }
               }
               §§goto(addr359);
            }
         }
         §§goto(addr33);
      }
      
      public static function §?T§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(param3);
            if(!(_loc6_ && param3))
            {
               §§goto(addr61);
            }
            §§push(§§pop() + §§pop());
         }
         addr61:
         §§push(§§pop() * §§pop());
         if(!(_loc6_ && param1))
         {
            §§push(param2);
            if(!_loc6_)
            {
               return §§pop() * param4;
            }
         }
      }
   }
}
