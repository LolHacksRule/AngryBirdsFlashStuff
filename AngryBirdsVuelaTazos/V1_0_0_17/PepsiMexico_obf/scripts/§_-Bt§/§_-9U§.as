package §_-Bt§
{
   import §_-20§.§_-j5§;
   import §_-Xz§.§_-Ps§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   import §_-xo§.§_-z7§;
   
   public class §_-9U§ extends §_-E-§ implements §_-z7§
   {
       
      
      private var §_-yF§:§_-Lk§;
      
      private var §_-fe§:Vector.<§_-Lk§>;
      
      private var §_-bd§:§_-Lk§;
      
      private var §_-qK§:§_-Lk§;
      
      private var §_-sZ§:§_-Lk§;
      
      public function §_-9U§(param1:Array, param2:§_-Ps§, param3:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:uint = 0;
         var _loc5_:* = uint(0);
         var _loc6_:§_-Lk§ = null;
         super(param2,param3);
         if(!(_loc7_ && param2))
         {
            _loc4_ = param1.length;
            if(!(_loc7_ && param1))
            {
               §_-7A§ = 0;
               §§push(_loc4_);
               §§push(0);
               if(!(_loc7_ && param3))
               {
                  if(§§pop() > §§pop())
                  {
                     this.§_-yF§ = param1[0] as §_-Lk§;
                     §§push(§§findproperty(§_-7A§));
                     if(!(_loc7_ && this))
                     {
                        §§push(this.§_-yF§);
                        if(!_loc7_)
                        {
                           if(§§pop().duration > §_-7A§)
                           {
                              addr83:
                              §§push(Number(this.§_-yF§.duration));
                              if(_loc8_ || this)
                              {
                              }
                           }
                           else
                           {
                              §§push(Number(§_-7A§));
                           }
                           §§pop().§_-7A§ = §§pop();
                           §§push(_loc4_);
                           if(!_loc7_)
                           {
                              §§push(1);
                              if(_loc8_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    this.§_-sZ§ = param1[1] as §_-Lk§;
                                    §§push(§§findproperty(§_-7A§));
                                    if(!_loc7_)
                                    {
                                       §§push(this.§_-sZ§);
                                       if(_loc8_ || param2)
                                       {
                                          if(§§pop().duration > §_-7A§)
                                          {
                                             addr128:
                                             §§push(Number(this.§_-sZ§.duration));
                                             if(_loc7_ && param3)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§push(Number(§_-7A§));
                                          }
                                          §§pop().§_-7A§ = §§pop();
                                          if(!_loc7_)
                                          {
                                             addr143:
                                             §§push(_loc4_);
                                             §§push(2);
                                             if(_loc8_ || this)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   this.§_-bd§ = param1[2] as §_-Lk§;
                                                }
                                                §§goto(addr335);
                                             }
                                             §§goto(addr199);
                                          }
                                          §§push(§§findproperty(§_-7A§));
                                          if(_loc8_)
                                          {
                                             §§push(this.§_-bd§);
                                             if(_loc8_)
                                             {
                                                if(§§pop().duration > §_-7A§)
                                                {
                                                   addr180:
                                                   §§push(Number(this.§_-bd§.duration));
                                                   if(_loc8_ || param2)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(Number(§_-7A§));
                                                }
                                                §§pop().§_-7A§ = §§pop();
                                                §§push(_loc4_);
                                                if(_loc8_)
                                                {
                                                   addr196:
                                                   §§push(3);
                                                   if(_loc8_)
                                                   {
                                                      addr199:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         addr200:
                                                         this.§_-qK§ = param1[3] as §_-Lk§;
                                                         §§push(§§findproperty(§_-7A§));
                                                         if(!_loc7_)
                                                         {
                                                            §§push(this.§_-qK§);
                                                            if(_loc8_)
                                                            {
                                                               if(§§pop().duration > §_-7A§)
                                                               {
                                                                  addr220:
                                                                  §§push(Number(this.§_-qK§.duration));
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(Number(§_-7A§));
                                                               }
                                                               §§pop().§_-7A§ = §§pop();
                                                               §§push(_loc4_);
                                                               if(_loc8_ || param1)
                                                               {
                                                                  addr242:
                                                                  if(§§pop() > 4)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        this.§_-fe§ = new Vector.<§_-Lk§>(_loc4_ - 4,true);
                                                                        if(_loc8_ || this)
                                                                        {
                                                                           addr264:
                                                                           _loc5_ = uint(4);
                                                                           addr262:
                                                                        }
                                                                        while(_loc5_ < _loc4_)
                                                                        {
                                                                           _loc6_ = param1[_loc5_] as §_-Lk§;
                                                                           if(!_loc7_)
                                                                           {
                                                                              this.§_-fe§[_loc5_ - 4] = _loc6_;
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           §§push(§§findproperty(§_-7A§));
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc6_.duration > §_-7A§)
                                                                              {
                                                                                 addr293:
                                                                                 §§push(Number(_loc6_.duration));
                                                                                 if(_loc7_ && param3)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(Number(§_-7A§));
                                                                              }
                                                                              §§pop().§_-7A§ = §§pop();
                                                                              if(_loc8_ || param2)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(_loc8_ || param2)
                                                                                 {
                                                                                    §§push(uint(§§pop() + 1));
                                                                                 }
                                                                                 _loc5_ = §§pop();
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr293);
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                     §§goto(addr262);
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr335);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr264);
                                             }
                                          }
                                          §§goto(addr180);
                                       }
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr335);
                              }
                              §§goto(addr242);
                           }
                           §§goto(addr196);
                        }
                     }
                     §§goto(addr83);
                  }
                  addr335:
                  return;
               }
               §§goto(addr199);
            }
            §§goto(addr200);
         }
         §§goto(addr143);
      }
      
      public function §_-CT§(param1:int) : §_-j5§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(0);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(null);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           if(§§pop() == §§pop())
                           {
                              return this.§_-yF§;
                           }
                           §§push(param1);
                           if(_loc2_ || this)
                           {
                              addr73:
                              §§push(1);
                              if(_loc2_ || this)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       return this.§_-sZ§;
                                    }
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(2);
                                       if(_loc2_ || param1)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                §§goto(addr125);
                                             }
                                             else
                                             {
                                                §§goto(addr152);
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr143:
                                                §§push(3);
                                                if(!_loc3_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         return this.§_-qK§;
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr152);
                                                   }
                                                   §§goto(addr152);
                                                }
                                             }
                                             §§goto(addr163);
                                          }
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr184);
                              }
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr143);
                  }
                  addr152:
                  if(this.§_-fe§ != null)
                  {
                     if(!(_loc3_ && this))
                     {
                        addr163:
                        if(param1 - 4 < this.§_-fe§.length)
                        {
                           if(_loc2_ || this)
                           {
                              §§goto(addr184);
                           }
                        }
                     }
                     addr184:
                     return this.§_-fe§[param1 - 4];
                  }
                  return null;
               }
               §§goto(addr163);
            }
            §§goto(addr73);
         }
         addr125:
         return this.§_-bd§;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<§_-Lk§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:uint = 0;
         if(_loc5_ || param1)
         {
            §§push(this.§_-yF§);
            if(_loc5_ || _loc3_)
            {
               if(§§pop() != null)
               {
                  addr42:
                  this.§_-yF§.update(param1);
                  if(_loc5_ || this)
                  {
                     §§push(this.§_-sZ§);
                     if(!_loc6_)
                     {
                        §§goto(addr172);
                     }
                     §§pop().update(param1);
                     §§push(this.§_-bd§);
                     if(!(_loc6_ && _loc2_))
                     {
                        if(§§pop() != null)
                        {
                           §§push(this.§_-bd§);
                        }
                        §§goto(addr172);
                     }
                     §§pop().update(param1);
                     if(_loc5_)
                     {
                        §§push(this.§_-qK§);
                        if(!(_loc6_ && this))
                        {
                           if(§§pop() != null)
                           {
                              if(!_loc6_)
                              {
                                 addr100:
                                 this.§_-qK§.update(param1);
                              }
                              if(this.§_-fe§ != null)
                              {
                                 _loc2_ = this.§_-fe§;
                                 if(!_loc6_)
                                 {
                                    §§push(uint(_loc2_.length));
                                    if(!(_loc6_ && param1))
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc5_)
                                       {
                                          addr127:
                                          _loc4_ = 0;
                                       }
                                       loop0:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          while(§§pop() < _loc3_)
                                          {
                                             _loc2_[_loc4_].update(param1);
                                             if(_loc6_ && _loc3_)
                                             {
                                                break;
                                             }
                                             §§push(_loc4_);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(uint(§§pop() + 1));
                                                if(_loc5_)
                                                {
                                                   continue loop0;
                                                }
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr172);
                                       }
                                    }
                                 }
                                 §§goto(addr127);
                              }
                           }
                           §§goto(addr172);
                        }
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr57);
               }
               addr172:
               if(§§pop() != null)
               {
                  addr57:
                  §§push(this.§_-sZ§);
               }
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr57);
      }
      
      override protected function newInstance() : §_-E-§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<§_-Lk§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc1_:Array = [];
         if(this.§_-yF§ != null)
         {
            _loc1_.push(this.§_-yF§.clone());
         }
         if(this.§_-sZ§ != null)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.push(this.§_-sZ§.clone());
               §§goto(addr50);
            }
            §§goto(addr95);
         }
         addr50:
         if(this.§_-bd§ != null)
         {
            if(!_loc6_)
            {
               _loc1_.push(this.§_-bd§.clone());
               if(_loc6_ && _loc2_)
               {
               }
               addr95:
               _loc2_ = this.§_-fe§;
               if(!(_loc6_ && _loc1_))
               {
                  §§push(uint(_loc2_.length));
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc3_ = §§pop();
                     if(_loc5_ || _loc3_)
                     {
                        addr126:
                        _loc4_ = uint(0);
                     }
                     loop0:
                     while(true)
                     {
                        §§push(_loc4_);
                        while(§§pop() < _loc3_)
                        {
                           _loc1_.push(_loc2_[_loc4_].clone());
                           if(_loc5_ || this)
                           {
                              §§push(_loc4_);
                              if(_loc5_)
                              {
                                 §§push(uint(§§pop() + 1));
                                 if(_loc6_ && _loc2_)
                                 {
                                    continue;
                                 }
                              }
                              _loc4_ = §§pop();
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr167);
                     }
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr95);
         }
         if(this.§_-qK§ != null)
         {
            if(_loc5_ || _loc2_)
            {
               _loc1_.push(this.§_-qK§.clone());
            }
         }
         if(this.§_-fe§ != null)
         {
            §§goto(addr95);
         }
         addr167:
         return new §_-9U§(_loc1_,§_-0A§,0);
      }
      
      public function §_-IK§(param1:§_-j5§) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§_-yF§ == param1)
         {
            return 0;
         }
         if(this.§_-sZ§ == param1)
         {
            if(!_loc4_)
            {
               return 1;
            }
         }
         else if(this.§_-bd§ == param1)
         {
            §§push(2);
            if(_loc3_ || this)
            {
               return §§pop();
            }
            §§goto(addr91);
         }
         else
         {
            if(this.§_-qK§ == param1)
            {
               if(_loc3_)
               {
                  return 3;
               }
            }
            if(this.§_-fe§ != null)
            {
               if(!_loc4_)
               {
                  §§push(int(this.§_-fe§.indexOf(param1 as §_-Lk§)));
                  if(!(_loc4_ && _loc2_))
                  {
                     _loc2_ = §§pop();
                     §§push(_loc2_);
                  }
                  addr91:
                  §§push(-1);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop() != §§pop())
                     {
                        §§push(_loc2_);
                        §§push(4);
                     }
                     else
                     {
                        §§goto(addr111);
                     }
                  }
                  return §§pop() + §§pop();
               }
            }
         }
         addr111:
         return -1;
      }
      
      public function contains(param1:§_-j5§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1 == null)
         {
            return false;
         }
         if(this.§_-yF§ != param1)
         {
            if(this.§_-sZ§ == param1)
            {
               §§push(true);
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            else
            {
               if(this.§_-bd§ == param1)
               {
                  §§push(true);
                  if(_loc2_)
                  {
                     §§goto(addr55);
                  }
               }
               else
               {
                  if(this.§_-qK§ == param1)
                  {
                     return true;
                  }
                  if(this.§_-fe§ != null)
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§push(this.§_-fe§.indexOf(param1 as §_-Lk§) == -1);
                        if(_loc2_ || param1)
                        {
                           §§goto(addr98);
                        }
                        else
                        {
                           §§goto(addr100);
                        }
                     }
                     §§goto(addr100);
                  }
                  §§push(false);
               }
               addr100:
               return §§pop();
            }
            addr98:
            return !§§pop();
         }
         §§push(true);
         if(_loc2_)
         {
            return §§pop();
         }
         addr55:
         return §§pop();
      }
   }
}
