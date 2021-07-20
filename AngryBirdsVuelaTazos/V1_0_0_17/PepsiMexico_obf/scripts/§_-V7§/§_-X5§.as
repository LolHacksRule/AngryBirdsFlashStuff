package §_-V7§
{
   public class §_-X5§ implements §_-S1§
   {
       
      
      private var §_-yF§:§_-S1§;
      
      private var §_-sZ§:§_-S1§;
      
      private var §_-bd§:§_-S1§;
      
      private var §_-qK§:§_-S1§;
      
      private var §_-dw§:Vector.<§_-S1§>;
      
      private var §_-9Z§:Object = null;
      
      public function §_-X5§(param1:Object, param2:Vector.<§_-S1§>)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = uint(0);
         if(_loc6_)
         {
            super();
            if(_loc6_ || param2)
            {
               addr28:
               this.§_-9Z§ = param1;
            }
            var _loc3_:uint = param2.length;
            if(!_loc5_)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(1);
                  if(_loc6_ || param2)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc6_ || _loc3_)
                        {
                           addr56:
                           this.§_-yF§ = param2[0];
                           §§push(_loc3_);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(2);
                              if(_loc6_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    this.§_-sZ§ = param2[1];
                                    addr78:
                                    §§push(_loc3_);
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr86:
                                       §§push(3);
                                       if(_loc6_ || _loc3_)
                                       {
                                          addr101:
                                          if(§§pop() >= §§pop())
                                          {
                                             this.§_-bd§ = param2[2];
                                             §§push(_loc3_);
                                             if(!_loc5_)
                                             {
                                                §§push(4);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr118:
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         this.§_-qK§ = param2[3];
                                                         §§push(_loc3_);
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            §§goto(addr202);
                                                         }
                                                         _loc4_ = §§pop();
                                                         loop0:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            while(§§pop() < _loc3_)
                                                            {
                                                               this.§_-dw§[_loc4_ - 4] = param2[_loc4_];
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(_loc4_);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§push(uint(§§pop() + 1));
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr202);
                                       }
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr78);
                     }
                     addr202:
                     if(§§pop() >= 5)
                     {
                        this.§_-dw§ = new Vector.<§_-S1§>(_loc3_ - 4,true);
                        addr151:
                        §§push(uint(4));
                     }
                     return;
                  }
                  §§goto(addr101);
               }
               §§goto(addr86);
            }
            §§goto(addr56);
         }
         §§goto(addr28);
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<§_-S1§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:uint = 0;
         §§push(this.§_-yF§);
         if(_loc5_ || _loc2_)
         {
            if(§§pop() != null)
            {
               addr35:
               this.§_-yF§.update(param1);
               if(_loc5_ || this)
               {
                  §§push(this.§_-sZ§);
                  if(!_loc6_)
                  {
                     §§goto(addr165);
                  }
                  §§pop().update(param1);
                  §§push(this.§_-bd§);
                  if(!_loc6_)
                  {
                     if(§§pop() != null)
                     {
                        addr74:
                        if(_loc5_)
                        {
                           §§push(this.§_-bd§);
                        }
                        this.§_-qK§.update(param1);
                        if(this.§_-dw§ != null)
                        {
                           addr89:
                           _loc2_ = this.§_-dw§;
                           if(_loc5_ || _loc3_)
                           {
                              §§push(uint(_loc2_.length));
                              if(_loc5_ || _loc3_)
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    addr120:
                                    _loc4_ = 0;
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    while(§§pop() < _loc3_)
                                    {
                                       _loc2_[_loc4_].update(param1);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(_loc4_);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(uint(§§pop() + 1));
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             continue loop0;
                                          }
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr165);
                                 }
                              }
                           }
                           §§goto(addr120);
                        }
                     }
                     §§goto(addr165);
                  }
                  §§pop().update(param1);
                  if(!_loc6_)
                  {
                     §§push(this.§_-qK§);
                     if(_loc5_)
                     {
                        if(§§pop() != null)
                        {
                           §§goto(addr74);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr89);
               }
               §§goto(addr74);
            }
            addr165:
            if(§§pop() != null)
            {
               §§push(this.§_-sZ§);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function get target() : Object
      {
         return this.§_-9Z§;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : §_-S1§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<§_-S1§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§_-S1§> = new Vector.<§_-S1§>();
         if(_loc5_)
         {
            if(this.§_-yF§ != null)
            {
               if(!_loc6_)
               {
                  _loc1_.push(this.§_-yF§.clone());
                  if(this.§_-sZ§ != null)
                  {
                     _loc1_.push(this.§_-sZ§.clone());
                     if(this.§_-bd§ != null)
                     {
                        if(!_loc6_)
                        {
                           _loc1_.push(this.§_-bd§.clone());
                           if(this.§_-qK§ != null)
                           {
                              addr65:
                              _loc1_.push(this.§_-qK§.clone());
                              if(this.§_-dw§ != null)
                              {
                              }
                           }
                           §§goto(addr148);
                        }
                        _loc2_ = this.§_-dw§;
                        if(_loc5_ || _loc2_)
                        {
                           §§push(uint(_loc2_.length));
                           if(_loc5_ || _loc1_)
                           {
                              _loc3_ = §§pop();
                              if(!_loc6_)
                              {
                                 addr107:
                                 _loc4_ = 0;
                              }
                              loop0:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 while(§§pop() < _loc3_)
                                 {
                                    _loc1_.push(_loc2_[_loc4_].clone());
                                    if(_loc6_ && _loc1_)
                                    {
                                       break;
                                    }
                                    §§push(_loc4_);
                                    if(_loc5_)
                                    {
                                       §§push(uint(§§pop() + 1));
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                                 addr148:
                                 return new §_-X5§(this.§_-9Z§,_loc1_);
                              }
                           }
                        }
                        §§goto(addr107);
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §_-6Z§(param1:uint) : §_-S1§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(0);
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        return this.§_-yF§;
                     }
                  }
                  else
                  {
                     addr44:
                     §§push(param1);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(1);
                        if(!_loc3_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc2_)
                              {
                                 return this.§_-sZ§;
                              }
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                                 addr71:
                                 §§push(2);
                                 if(_loc2_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§goto(addr82);
                                       }
                                    }
                                    addr87:
                                    if(param1 == 3)
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          return this.§_-qK§;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr87);
                           }
                           return this.§_-dw§[param1 - 4];
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr71);
                  }
                  addr82:
                  return this.§_-bd§;
               }
            }
            §§goto(addr87);
         }
         §§goto(addr44);
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§_-9Z§ = param1;
         }
      }
   }
}
