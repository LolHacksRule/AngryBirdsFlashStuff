package §_-OJ§
{
   import §_-IG§.§_-1E§;
   import §_-Qx§.§_-7x§;
   import §_-Qx§.§_-Wv§;
   
   public class §_-y5§
   {
      
      public static const §_-cS§:Number = 50;
      
      public static var §_-Rl§:Number = 0;
      
      public static const §_-f4§:Number = 0.5;
      
      public static const §_-pH§:Number = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-cS§ = 50;
            if(_loc1_ || _loc1_)
            {
               §_-Rl§ = 0;
               if(_loc1_)
               {
                  §§goto(addr44);
               }
               §§goto(addr49);
            }
         }
         addr44:
         if(!_loc2_)
         {
            addr49:
            §_-pH§ = 0;
         }
      }
      
      public var §_-0x§:Number;
      
      public var §_-ec§:Number;
      
      public var §class§:Number;
      
      public var §_-IL§:Number;
      
      public var §_-Vg§:Number;
      
      public var §_-Ag§:§_-tL§;
      
      public function §_-y5§(param1:§_-tL§, param2:§_-Wv§)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:§_-7x§ = null;
         var _loc4_:§_-1E§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc11_ || param2)
         {
            super();
            if(!_loc12_)
            {
               this.§_-Ag§ = param1;
               if(_loc11_ || param2)
               {
               }
               addr58:
               var _loc9_:int = 0;
               var _loc10_:* = param2.§_-Pg§;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc10_,_loc9_));
                  if(!_loc12_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc12_ && param1))
                        {
                           if(!(_loc12_ && param2))
                           {
                              _loc9_ = 0;
                              if(!_loc12_)
                              {
                                 _loc10_ = param2.§_-yZ§;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc10_,_loc9_));
                                    break loop0;
                                 }
                                 addr259:
                                 addr257:
                              }
                           }
                           §§push(0.1);
                           if(_loc11_)
                           {
                              §§push(§_-tL§.§_-il§);
                              if(!_loc12_)
                              {
                                 addr286:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(§_-tL§.§_-7m§);
                                 }
                                 _loc5_ = §§pop();
                                 if(!(_loc12_ && param2))
                                 {
                                    §§push(this);
                                    §§push(this.§_-0x§);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() - _loc5_);
                                    }
                                    §§pop().§_-0x§ = §§pop();
                                    §§push(this);
                                    §§push(this.§_-ec§);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() + _loc5_);
                                    }
                                    §§pop().§_-ec§ = §§pop();
                                    if(!(_loc12_ && param2))
                                    {
                                       addr318:
                                       §§push(this);
                                       §§push(§_-tL§.§_-il§);
                                       if(!(_loc12_ && param1))
                                       {
                                          §§push(§_-tL§.§_-7m§);
                                          if(_loc11_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc12_ && param2)
                                             {
                                             }
                                             §§goto(addr348);
                                          }
                                          §§goto(addr344);
                                       }
                                       addr348:
                                       §§push(this.§_-ec§);
                                       if(!_loc12_)
                                       {
                                          addr344:
                                          §§push(§§pop() - this.§_-0x§);
                                       }
                                       §§pop().§_-Vg§ = §§pop() / §§pop();
                                       if(_loc11_ || param2)
                                       {
                                          this.§_-Vg§ = Math.max(this.§_-Vg§,§_-LW§.§_-KT§);
                                          if(!_loc12_)
                                          {
                                             this.§_-IL§ = §_-pH§;
                                          }
                                          §§push(this);
                                          §§push(this.§_-IL§);
                                          if(_loc11_ || param2)
                                          {
                                             §§push(§§pop() - 200);
                                          }
                                          §§pop().§class§ = §§pop();
                                       }
                                       §§goto(addr389);
                                    }
                                    addr389:
                                    return;
                                 }
                                 §§goto(addr318);
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc12_ && param2)
                              {
                              }
                           }
                           §§goto(addr286);
                        }
                        §§goto(addr259);
                     }
                     else
                     {
                        _loc3_ = §§nextvalue(_loc9_,_loc10_);
                        _loc6_ = 0;
                        if(_loc11_)
                        {
                           §§push(_loc3_.left);
                           if(!(_loc12_ && this))
                           {
                              if(§§pop().toString() != "NaN")
                              {
                                 addr90:
                                 §§push(_loc3_.right);
                                 §§push(_loc3_.left);
                                 if(!(_loc12_ && this))
                                 {
                                    §§push(§§pop() - §§pop());
                                    §§push(4);
                                    if(!_loc12_)
                                    {
                                       _loc6_ = §§pop() * §§pop();
                                       addr123:
                                       §§push(_loc3_.x);
                                       if(_loc11_)
                                       {
                                          §§push(_loc6_);
                                          §§push(2);
                                          if(!(_loc12_ && param1))
                                          {
                                             §§push(§§pop() - §§pop() / §§pop());
                                             if(!(_loc12_ && this))
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc11_ || _loc3_)
                                                {
                                                   addr153:
                                                   _loc7_ = §§pop();
                                                   §§push(_loc3_.x);
                                                   if(!_loc12_)
                                                   {
                                                      addr176:
                                                      §§push(§§pop() + _loc6_ / 2);
                                                      if(_loc11_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      if(§§pop() > this.§_-ec§)
                                                      {
                                                         this.§_-ec§ = _loc8_;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                _loc8_ = §§pop();
                                                addr166:
                                                §§push(_loc7_);
                                                if(_loc11_)
                                                {
                                                   if(§§pop() < this.§_-0x§)
                                                   {
                                                      this.§_-0x§ = _loc7_;
                                                   }
                                                   §§push(_loc8_);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                    else
                                    {
                                       addr110:
                                       §§push(§§pop() * §§pop());
                                       if(_loc11_ || _loc3_)
                                       {
                                          addr120:
                                          _loc6_ = §§pop() * §_-tL§.§_-7m§;
                                          §§goto(addr123);
                                       }
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr120);
                              }
                              else
                              {
                                 §§push(§_-tL§.§_-il§);
                                 §§push(4);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr166);
                     }
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     §§goto(addr259);
                  }
                  else
                  {
                     _loc4_ = §§nextvalue(_loc9_,_loc10_);
                     §§push(_loc4_.x);
                     if(_loc11_)
                     {
                        §§push(this.§_-0x§);
                        if(_loc11_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc12_)
                              {
                                 continue;
                              }
                              this.§_-0x§ = _loc4_.x;
                              if(_loc12_)
                              {
                                 continue;
                              }
                           }
                           addr243:
                           §§push(_loc4_.x);
                           §§push(this.§_-ec§);
                        }
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc12_ && _loc3_))
                           {
                              this.§_-ec§ = _loc4_.x;
                           }
                        }
                        continue;
                     }
                     §§goto(addr243);
                  }
               }
            }
            this.§_-0x§ = int.MAX_VALUE;
            if(!_loc12_)
            {
               this.§_-ec§ = int.MIN_VALUE;
            }
         }
         §§goto(addr58);
      }
      
      public function clear() : void
      {
      }
      
      public function §_-Kr§(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(param2);
            if(_loc3_)
            {
               §§push(this.§class§);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_ || param2)
                  {
                     §§push(§§pop());
                     if(_loc3_ || param2)
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              §§push(param2);
                              if(!(_loc4_ && this))
                              {
                                 §§push(this.§_-IL§);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + 50);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr81:
                                       §§push(§§pop() > §§pop());
                                       §§push(§§pop() > §§pop());
                                       if(_loc3_)
                                       {
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             if(_loc3_ || this)
                                             {
                                                §§push(param1);
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr111);
                                                }
                                                addr109:
                                                addr111:
                                                addr96:
                                                §§push(this.§_-0x§);
                                                if(_loc3_)
                                                {
                                                   addr100:
                                                   §§push(§§pop() < §§pop());
                                                }
                                                §§push(§§pop() > §§pop());
                                                if(_loc3_)
                                                {
                                                   addr114:
                                                   if(§§pop())
                                                   {
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§goto(addr130);
                                                      }
                                                      else
                                                      {
                                                         addr131:
                                                         §§push(false);
                                                      }
                                                   }
                                                   §§goto(addr131);
                                                }
                                                return §§pop();
                                                §§push(this.§_-ec§);
                                             }
                                             §§goto(addr131);
                                          }
                                          addr102:
                                          if(!§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                §§pop();
                                                if(_loc3_)
                                                {
                                                   §§goto(addr109);
                                                   §§push(param1);
                                                }
                                                §§goto(addr131);
                                             }
                                             addr130:
                                             return true;
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr102);
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr81);
               }
               §§goto(addr100);
            }
            §§goto(addr96);
         }
         §§goto(addr131);
      }
   }
}
