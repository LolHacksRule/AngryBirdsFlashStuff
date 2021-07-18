package §3§
{
   public class §#x§ implements § null§
   {
       
      
      private var §-!o§:§ null§;
      
      private var §"!s§:§ null§;
      
      private var §7!H§:§ null§;
      
      private var §,!N§:§ null§;
      
      private var §+!_§:Vector.<§ null§>;
      
      private var §?!p§:Object = null;
      
      public function §#x§(param1:Object, param2:Vector.<§ null§>)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = uint(0);
         if(_loc6_)
         {
            super();
            if(!(_loc5_ && param2))
            {
               addr31:
               this.§?!p§ = param1;
            }
            var _loc3_:uint = param2.length;
            §§push(_loc3_);
            if(!_loc5_)
            {
               §§push(1);
               if(!(_loc5_ && this))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc5_)
                     {
                        this.§-!o§ = param2[0];
                        if(_loc6_ || this)
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              §§push(2);
                              if(_loc6_ || param1)
                              {
                                 addr75:
                                 if(§§pop() >= §§pop())
                                 {
                                    this.§"!s§ = param2[1];
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       §§push(3);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr102:
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                this.§7!H§ = param2[2];
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr117:
                                                   §§push(_loc3_);
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§push(4);
                                                      if(_loc6_ || this)
                                                      {
                                                         addr133:
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            addr134:
                                                            this.§,!N§ = param2[3];
                                                            addr160:
                                                            §§push(_loc3_);
                                                            if(!_loc5_)
                                                            {
                                                               addr142:
                                                               §§push(5);
                                                            }
                                                            _loc4_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               while(true)
                                                               {
                                                                  if(§§pop() < _loc3_)
                                                                  {
                                                                     this.§+!_§[_loc4_ - 4] = param2[_loc4_];
                                                                     if(!(_loc6_ || param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc4_);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(uint(§§pop() + 1));
                                                                        if(!_loc5_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr202:
                                                                           addr202:
                                                                           return;
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr202);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            addr146:
                                                            this.§+!_§ = new Vector.<§ null§>(_loc3_ - 4,true);
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr160);
                                                               §§push(uint(4));
                                                            }
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr146);
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr134);
                        }
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr202);
               }
               §§goto(addr75);
            }
            §§goto(addr142);
         }
         §§goto(addr31);
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
         var _loc2_:Vector.<§ null§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:uint = 0;
         §§push(this.§-!o§);
         if(_loc6_ || _loc3_)
         {
            if(§§pop() != null)
            {
               addr39:
               this.§-!o§.update(param1);
               if(_loc6_ || param1)
               {
                  §§push(this.§"!s§);
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr173);
                  }
                  §§pop().update(param1);
                  §§push(this.§7!H§);
                  if(!_loc5_)
                  {
                     if(§§pop() != null)
                     {
                        §§push(this.§7!H§);
                     }
                     §§goto(addr173);
                  }
                  §§pop().update(param1);
                  if(!_loc5_)
                  {
                     §§push(this.§,!N§);
                     if(!(_loc5_ && _loc3_))
                     {
                        if(§§pop() != null)
                        {
                           addr96:
                           §§push(this.§,!N§);
                        }
                        §§goto(addr173);
                     }
                     §§pop().update(param1);
                     if(this.§+!_§ != null)
                     {
                        _loc2_ = this.§+!_§;
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(uint(_loc2_.length));
                           if(_loc6_)
                           {
                              _loc3_ = §§pop();
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr130:
                                 _loc4_ = 0;
                              }
                              loop0:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 while(§§pop() < _loc3_)
                                 {
                                    _loc2_[_loc4_].update(param1);
                                    if(_loc5_ && _loc2_)
                                    {
                                       break;
                                    }
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       §§push(uint(§§pop() + 1));
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr173);
                              }
                           }
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr96);
               }
               §§goto(addr59);
            }
            addr173:
            if(§§pop() != null)
            {
               addr59:
               §§push(this.§"!s§);
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function get target() : Object
      {
         return this.§?!p§;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : § null§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<§ null§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§ null§> = new Vector.<§ null§>();
         if(this.§-!o§ != null)
         {
            if(!_loc6_)
            {
               _loc1_.push(this.§-!o§.clone());
               if(this.§"!s§ != null)
               {
                  _loc1_.push(this.§"!s§.clone());
                  if(this.§7!H§ != null)
                  {
                     if(!_loc6_)
                     {
                        _loc1_.push(this.§7!H§.clone());
                     }
                     if(this.§,!N§ != null)
                     {
                        _loc1_.push(this.§,!N§.clone());
                        if(!_loc6_)
                        {
                           if(this.§+!_§ != null)
                           {
                           }
                           §§goto(addr152);
                        }
                     }
                  }
               }
               §§goto(addr152);
            }
            _loc2_ = this.§+!_§;
            if(!_loc6_)
            {
               §§push(uint(_loc2_.length));
               if(!(_loc6_ && this))
               {
                  _loc3_ = §§pop();
                  if(!_loc6_)
                  {
                     addr108:
                     _loc4_ = 0;
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc4_);
                     while(§§pop() < _loc3_)
                     {
                        _loc1_.push(_loc2_[_loc4_].clone());
                        if(_loc6_)
                        {
                           break;
                        }
                        §§push(_loc4_);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(uint(§§pop() + 1));
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr152);
                  }
               }
            }
            §§goto(addr108);
         }
         addr152:
         return new §#x§(this.§?!p§,_loc1_);
      }
      
      public function § d§(param1:uint) : § null§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               §§push(0);
               if(_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        return this.§-!o§;
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc2_ || _loc2_)
                     {
                        addr60:
                        §§push(1);
                        if(_loc2_ || this)
                        {
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr69);
                           }
                           else
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 §§goto(addr108);
                              }
                           }
                        }
                        §§goto(addr108);
                     }
                     addr108:
                     §§push(2);
                     if(!_loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              return this.§7!H§;
                           }
                        }
                        §§push(param1);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc2_ || this)
                        {
                           return this.§,!N§;
                        }
                        §§goto(addr119);
                     }
                     addr119:
                     return this.§+!_§[param1 - 4];
                     §§push(3);
                  }
                  addr69:
                  return this.§"!s§;
               }
               §§goto(addr108);
            }
            §§goto(addr60);
         }
         §§goto(addr119);
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!p§ = param1;
         }
      }
   }
}
