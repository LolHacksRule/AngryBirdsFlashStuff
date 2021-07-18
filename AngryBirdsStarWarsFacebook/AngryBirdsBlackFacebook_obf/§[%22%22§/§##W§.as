package §[""§
{
   import flash.geom.Point;
   
   public class §##W§
   {
       
      
      public function §##W§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §`!5§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : §3!2§
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         §§push(param6);
         if(_loc20_ || param1)
         {
            §§push(§§pop() - param1);
            if(_loc20_ || param2)
            {
               addr33:
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(param7);
            if(_loc20_)
            {
               §§push(§§pop() - param2);
               if(_loc20_)
               {
                  addr42:
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:Point = new Point(Math.cos(param5),Math.sin(param5));
               var _loc11_:Point = new Point(Math.cos(param5 + Math.PI * 0.5),Math.sin(param5 + Math.PI * 0.5));
               if(_loc20_)
               {
                  _loc10_.normalize(1);
                  if(!(_loc21_ && §##W§))
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
                     _loc12_[_loc17_] = §,K§(_loc8_,_loc9_,_loc14_[_loc17_].x,_loc14_[_loc17_].y);
                     loop1:
                     while(true)
                     {
                        if(_loc12_[_loc17_] >= -_loc13_[_loc17_])
                        {
                           if(_loc12_[_loc17_] > _loc13_[_loc17_])
                           {
                              if(!_loc21_)
                              {
                                 §§push(_loc12_[_loc17_] - _loc13_[_loc17_]);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop3:
                                    while(!_loc21_)
                                    {
                                       if(_loc20_ || §##W§)
                                       {
                                          _loc15_ = §§pop();
                                          if(!_loc21_)
                                          {
                                             §§push(_loc16_);
                                             if(!(_loc21_ && §##W§))
                                             {
                                                §§push(_loc15_);
                                                if(!(_loc21_ && param3))
                                                {
                                                   §§push(_loc15_);
                                                   if(_loc20_)
                                                   {
                                                      addr206:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc20_ || param3)
                                                      {
                                                         if(!_loc21_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc21_)
                                                            {
                                                               if(_loc21_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(!(_loc21_ && param1))
                                                               {
                                                                  addr238:
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc20_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc21_)
                                                                  {
                                                                     _loc16_ = §§pop();
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           _loc12_[_loc17_] = _loc13_[_loc17_];
                                                                           if(!(_loc21_ && param1))
                                                                           {
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 _loc17_++;
                                                                                 if(!(_loc21_ && param1))
                                                                                 {
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr152:
                                                                                    if(_loc20_ || param1)
                                                                                    {
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          if(_loc20_ || param3)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          addr311:
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(_loc12_[_loc17_] + _loc13_[_loc17_]));
                                                                                             addr319:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc15_ = §§pop();
                                                                                                continue loop16;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(!_loc21_)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc15_);
                                                                                             addr289:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                addr290:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr291:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      break loop3;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop15;
                                                                                       §§goto(addr152);
                                                                                    }
                                                                                 }
                                                                                 addr344:
                                                                                 var _loc18_:Point = new Point(param1,param2);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!(_loc21_ && param2))
                                                                                    {
                                                                                       _loc17_ = §§pop();
                                                                                       if(_loc20_ || param3)
                                                                                       {
                                                                                          addr417:
                                                                                          if(_loc17_ < 2)
                                                                                          {
                                                                                             _loc18_.x += _loc12_[_loc17_] * _loc14_[_loc17_].x;
                                                                                             addr366:
                                                                                             _loc18_.y += _loc12_[_loc17_] * _loc14_[_loc17_].y;
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                _loc17_++;
                                                                                                if(!(_loc21_ && §##W§))
                                                                                                {
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr366);
                                                                                                      }
                                                                                                      §§goto(addr417);
                                                                                                   }
                                                                                                   §§goto(addr366);
                                                                                                }
                                                                                             }
                                                                                             addr399:
                                                                                             §§goto(addr399);
                                                                                          }
                                                                                       }
                                                                                       var _loc19_:§3!2§;
                                                                                       (_loc19_ = new §3!2§()).distance = Math.sqrt(_loc16_);
                                                                                       if(_loc20_ || param2)
                                                                                       {
                                                                                          _loc19_.§>"6§ = _loc18_;
                                                                                       }
                                                                                       return _loc19_;
                                                                                    }
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 §§goto(addr366);
                                                                              }
                                                                              continue loop0;
                                                                              addr141:
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc16_ = §§pop();
                                                                  if(_loc20_ || param3)
                                                                  {
                                                                     _loc12_[_loc17_] = -_loc13_[_loc17_];
                                                                     §§goto(addr285);
                                                                  }
                                                                  §§goto(addr344);
                                                               }
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                   §§goto(addr290);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr344);
                                       }
                                       §§goto(addr288);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr293);
                                    }
                                 }
                              }
                              §§goto(addr344);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr311);
                     }
                  }
                  §§goto(addr344);
               }
            }
            §§goto(addr42);
         }
         §§goto(addr33);
      }
      
      public static function §,K§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || §##W§)
         {
            §§push(param3);
            if(!(_loc6_ && param2))
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  addr55:
                  §§push(param2);
                  if(!_loc6_)
                  {
                     addr60:
                     §§push(§§pop() + §§pop() * param4);
                  }
                  §§goto(addr60);
               }
               return §§pop();
            }
            §§goto(addr60);
         }
         §§goto(addr55);
      }
   }
}
