package §_-V7§
{
   import §_-5y§.§_-Bf§;
   
   public class §_-FB§ implements §_-gL§
   {
       
      
      private var §_-yF§:§_-gL§;
      
      private var §_-sZ§:§_-gL§;
      
      private var §_-bd§:§_-gL§;
      
      private var §_-qK§:§_-gL§;
      
      private var §_-dw§:Vector.<§_-gL§>;
      
      private var §_-9Z§:Object = null;
      
      private var §_-7A§:Number = 0.0;
      
      public function §_-FB§(param1:Object, param2:Vector.<§_-gL§>)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = uint(0);
         var _loc5_:§_-gL§ = null;
         if(!(_loc7_ && _loc3_))
         {
            super();
            if(_loc6_ || param2)
            {
               addr35:
               this.§_-9Z§ = param1;
            }
            var _loc3_:uint = param2.length;
            if(_loc6_ || param1)
            {
               §§push(_loc3_);
               if(!_loc7_)
               {
                  §§push(1);
                  if(!(_loc7_ && param2))
                  {
                     if(§§pop() >= §§pop())
                     {
                        this.§_-yF§ = param2[0];
                        if(_loc6_ || this)
                        {
                           §§push(this.§_-7A§);
                           if(!(_loc7_ && param2))
                           {
                              §§push(this.§_-yF§.duration);
                              if(_loc6_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    addr88:
                                    this.§_-7A§ = this.§_-yF§.duration;
                                 }
                                 §§push(_loc3_);
                                 if(_loc6_)
                                 {
                                    §§push(2);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          this.§_-sZ§ = param2[1];
                                          §§push(this.§_-7A§);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§push(this.§_-sZ§.duration);
                                             if(!_loc7_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   addr125:
                                                   this.§_-7A§ = this.§_-sZ§.duration;
                                                }
                                                §§push(_loc3_);
                                                if(!_loc7_)
                                                {
                                                   addr133:
                                                   §§push(3);
                                                   if(!_loc7_)
                                                   {
                                                      addr136:
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         this.§_-bd§ = param2[2];
                                                         if(!(_loc7_ && this))
                                                         {
                                                            §§push(this.§_-7A§);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(this.§_-bd§.duration);
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  addr170:
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     this.§_-7A§ = this.§_-bd§.duration;
                                                                  }
                                                                  §§push(_loc3_);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§push(4);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr187:
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           this.§_-qK§ = param2[3];
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              addr205:
                                                                              if(this.§_-7A§ < this.§_-qK§.duration)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    this.§_-7A§ = this.§_-qK§.duration;
                                                                                    addr213:
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§goto(addr217);
                                                                                    }
                                                                                    _loc4_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr238);
                                                                              }
                                                                           }
                                                                           §§goto(addr213);
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                  }
                                                                  §§goto(addr217);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr238);
                                    }
                                    §§goto(addr136);
                                 }
                                 addr217:
                                 if(§§pop() >= 5)
                                 {
                                    this.§_-dw§ = new Vector.<§_-gL§>(_loc3_ - 4,true);
                                    addr238:
                                    if(!(_loc7_ && param2))
                                    {
                                       §§push(uint(4));
                                    }
                                    while(_loc4_ < _loc3_)
                                    {
                                       _loc5_ = param2[_loc4_];
                                       if(_loc6_)
                                       {
                                          this.§_-dw§[_loc4_ - 4] = _loc5_;
                                          if(!(_loc7_ && param1))
                                          {
                                             addr261:
                                             §§push(this.§_-7A§);
                                             if(!(_loc7_ && param2))
                                             {
                                                if(§§pop() < _loc5_.duration)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr275:
                                                      this.§_-7A§ = _loc5_.duration;
                                                      if(_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                }
                                                §§push(_loc4_);
                                                if(_loc6_)
                                                {
                                                   addr292:
                                                   §§push(uint(§§pop() + 1));
                                                }
                                                _loc4_ = §§pop();
                                                continue;
                                             }
                                             §§goto(addr292);
                                          }
                                          §§goto(addr275);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr297);
                                 }
                                 addr297:
                                 return;
                              }
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr238);
                  }
                  §§goto(addr187);
               }
               §§goto(addr133);
            }
            §§goto(addr88);
         }
         §§goto(addr35);
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<§_-gL§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         §§push(this.§_-yF§);
         if(_loc6_ || this)
         {
            if(§§pop() != null)
            {
               addr36:
               this.§_-yF§.update(param1);
               §§push(this.§_-sZ§);
               if(!(_loc5_ && param1))
               {
                  §§goto(addr156);
               }
               §§pop().update(param1);
               §§push(this.§_-bd§);
               if(!_loc5_)
               {
                  if(§§pop() != null)
                  {
                     if(_loc6_)
                     {
                        addr63:
                        this.§_-bd§.update(param1);
                        §§push(this.§_-qK§);
                        if(_loc6_ || _loc2_)
                        {
                           if(§§pop() != null)
                           {
                              if(!(_loc5_ && this))
                              {
                                 addr92:
                                 this.§_-qK§.update(param1);
                                 if(_loc6_ || param1)
                                 {
                                    if(this.§_-dw§ != null)
                                    {
                                    }
                                    §§goto(addr156);
                                 }
                              }
                              _loc2_ = this.§_-dw§;
                              if(_loc6_)
                              {
                                 §§push(uint(_loc2_.length));
                                 if(!_loc5_)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc6_)
                                    {
                                       addr121:
                                       _loc4_ = uint(0);
                                    }
                                    loop0:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       while(§§pop() < _loc3_)
                                       {
                                          _loc2_[_loc4_].update(param1);
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(_loc4_);
                                          if(!_loc5_)
                                          {
                                             §§push(uint(§§pop() + 1));
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                continue;
                                             }
                                          }
                                          _loc4_ = §§pop();
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr156);
                                    }
                                 }
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr156);
                        }
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr156);
               }
               §§goto(addr63);
            }
            addr156:
            if(§§pop() != null)
            {
               §§push(this.§_-sZ§);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function get target() : Object
      {
         return this.§_-9Z§;
      }
      
      public function get duration() : Number
      {
         return this.§_-7A§;
      }
      
      public function set §_-5E§(param1:§_-Bf§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §_-6Z§(param1:uint) : §_-gL§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(0);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() == §§pop())
                  {
                     return this.§_-yF§;
                  }
                  §§push(param1);
                  if(_loc2_ || this)
                  {
                     addr38:
                     §§push(1);
                     if(_loc2_ || _loc2_)
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
                           if(_loc2_ || param1)
                           {
                              §§push(2);
                              if(!_loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    return this.§_-bd§;
                                 }
                                 addr78:
                                 if(param1 == 3)
                                 {
                                    §§goto(addr86);
                                 }
                              }
                           }
                           §§goto(addr78);
                        }
                        return this.§_-dw§[param1 - 4];
                     }
                  }
                  §§goto(addr78);
               }
               §§goto(addr78);
            }
            §§goto(addr38);
         }
         addr86:
         return this.§_-qK§;
      }
      
      public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-9Z§ = param1;
         }
      }
      
      public function get §_-5E§() : §_-Bf§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-S1§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<§_-gL§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§_-gL§> = new Vector.<§_-gL§>();
         if(_loc5_)
         {
            if(this.§_-yF§ != null)
            {
               addr34:
               _loc1_.push(this.§_-yF§.clone());
               if(this.§_-sZ§ != null)
               {
                  _loc1_.push(this.§_-sZ§.clone());
                  if(!(_loc6_ && _loc2_))
                  {
                     if(this.§_-bd§ != null)
                     {
                        if(!_loc6_)
                        {
                           addr61:
                           _loc1_.push(this.§_-bd§.clone());
                           if(!_loc6_)
                           {
                              addr68:
                              if(this.§_-qK§ != null)
                              {
                              }
                              §§goto(addr162);
                           }
                           _loc1_.push(this.§_-qK§.clone());
                           if(_loc5_ || _loc2_)
                           {
                              if(this.§_-dw§ != null)
                              {
                              }
                              §§goto(addr162);
                           }
                           _loc2_ = this.§_-dw§;
                           if(!_loc6_)
                           {
                              §§push(uint(_loc2_.length));
                              if(_loc5_ || _loc1_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc5_)
                                 {
                                    addr116:
                                    _loc4_ = 0;
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    while(§§pop() < _loc3_)
                                    {
                                       _loc1_.push(_loc2_[_loc4_].clone());
                                       if(!(_loc5_ || _loc2_))
                                       {
                                          break;
                                       }
                                       §§push(_loc4_);
                                       if(!_loc6_)
                                       {
                                          §§push(uint(§§pop() + 1));
                                          if(!(_loc6_ && _loc1_))
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                    addr162:
                                    return new §_-FB§(this.§_-9Z§,_loc1_);
                                 }
                              }
                           }
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr61);
               }
            }
            §§goto(addr68);
         }
         §§goto(addr34);
      }
   }
}
