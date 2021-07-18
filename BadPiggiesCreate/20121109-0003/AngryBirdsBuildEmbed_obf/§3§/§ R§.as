package §3§
{
   import §4!r§.§[!m§;
   
   public class § R§ implements §`A§
   {
       
      
      private var §-!o§:§`A§;
      
      private var §"!s§:§`A§;
      
      private var §7!H§:§`A§;
      
      private var §,!N§:§`A§;
      
      private var §+!_§:Vector.<§`A§>;
      
      private var §?!p§:Object = null;
      
      private var §1J§:Number = 0.0;
      
      public function § R§(param1:Object, param2:Vector.<§`A§>)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = uint(0);
         var _loc5_:§`A§ = null;
         if(!_loc6_)
         {
            super();
            if(!(_loc6_ && param1))
            {
               this.§?!p§ = param1;
            }
         }
         var _loc3_:uint = param2.length;
         §§push(_loc3_);
         if(!_loc6_)
         {
            §§push(1);
            if(_loc7_ || _loc3_)
            {
               if(§§pop() >= §§pop())
               {
                  this.§-!o§ = param2[0];
                  §§push(this.§1J§);
                  if(_loc7_ || this)
                  {
                     §§push(this.§-!o§.duration);
                     if(_loc7_ || this)
                     {
                        if(§§pop() < §§pop())
                        {
                           this.§1J§ = this.§-!o§.duration;
                        }
                        §§push(_loc3_);
                        if(_loc7_ || this)
                        {
                           §§push(2);
                           if(_loc7_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    this.§"!s§ = param2[1];
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(this.§1J§);
                                       if(!_loc6_)
                                       {
                                          §§push(this.§"!s§.duration);
                                          if(_loc7_)
                                          {
                                             addr123:
                                             if(§§pop() < §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   this.§1J§ = this.§"!s§.duration;
                                                   if(_loc7_ || param2)
                                                   {
                                                      §§goto(addr138);
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr239);
                                             }
                                             addr138:
                                             §§push(_loc3_);
                                             if(!_loc6_)
                                             {
                                                addr151:
                                                §§push(3);
                                                if(_loc7_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      this.§7!H§ = param2[2];
                                                      addr160:
                                                      §§push(this.§1J§);
                                                      if(_loc7_)
                                                      {
                                                         addr164:
                                                         §§push(this.§7!H§.duration);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  this.§1J§ = this.§7!H§.duration;
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            addr182:
                                                            §§push(_loc3_);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               §§push(4);
                                                               if(!_loc6_)
                                                               {
                                                                  addr193:
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        this.§,!N§ = param2[3];
                                                                        if(_loc6_ && param1)
                                                                        {
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                     addr213:
                                                                     if(this.§1J§ < this.§,!N§.duration)
                                                                     {
                                                                        this.§1J§ = this.§,!N§.duration;
                                                                        §§goto(addr219);
                                                                     }
                                                                     addr219:
                                                                     §§push(_loc3_);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§goto(addr309);
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     while(_loc4_ < _loc3_)
                                                                     {
                                                                        _loc5_ = param2[_loc4_];
                                                                        if(!_loc6_)
                                                                        {
                                                                           this.§+!_§[_loc4_ - 4] = _loc5_;
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              §§push(this.§1J§);
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(§§pop() < _loc5_.duration)
                                                                                 {
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       addr289:
                                                                                       this.§1J§ = _loc5_.duration;
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          addr300:
                                                                                          §§push(_loc4_);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr304:
                                                                                             §§push(uint(§§pop() + 1));
                                                                                          }
                                                                                          _loc4_ = §§pop();
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr300);
                                                                              }
                                                                              §§goto(addr304);
                                                                           }
                                                                           §§goto(addr300);
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr309);
                                                         }
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr309);
                                                }
                                                §§goto(addr193);
                                             }
                                             §§goto(addr309);
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr309);
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr164);
               }
               addr309:
               if(§§pop() >= 5)
               {
                  this.§+!_§ = new Vector.<§`A§>(_loc3_ - 4,true);
                  addr239:
                  §§push(uint(4));
               }
               return;
            }
            §§goto(addr193);
         }
         §§goto(addr151);
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
         var _loc2_:Vector.<§`A§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(!(_loc6_ && _loc3_))
         {
            §§push(this.§-!o§);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() != null)
               {
                  addr45:
                  this.§-!o§.update(param1);
                  §§push(this.§"!s§);
                  if(!_loc6_)
                  {
                     §§goto(addr183);
                  }
                  §§pop().update(param1);
                  if(_loc5_)
                  {
                     §§push(this.§7!H§);
                     if(!_loc6_)
                     {
                        if(§§pop() != null)
                        {
                           addr65:
                           §§push(this.§7!H§);
                        }
                        §§goto(addr183);
                     }
                     §§pop().update(param1);
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.§,!N§);
                        if(!(_loc6_ && param1))
                        {
                           if(§§pop() != null)
                           {
                              addr114:
                              if(_loc5_ || _loc2_)
                              {
                                 addr104:
                                 §§push(this.§,!N§);
                              }
                              _loc2_ = this.§+!_§;
                              if(!_loc6_)
                              {
                                 §§push(uint(_loc2_.length));
                                 if(_loc5_ || _loc3_)
                                 {
                                    _loc3_ = §§pop();
                                    addr141:
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(uint(0));
                                    }
                                    loop0:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       while(§§pop() < _loc3_)
                                       {
                                          _loc2_[_loc4_].update(param1);
                                          if(!(_loc5_ || this))
                                          {
                                             break;
                                          }
                                          §§push(_loc4_);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(uint(§§pop() + 1));
                                             if(!_loc5_)
                                             {
                                                continue;
                                             }
                                          }
                                          _loc4_ = §§pop();
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr183);
                                    }
                                 }
                                 _loc4_ = §§pop();
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr183);
                        }
                        §§pop().update(param1);
                        if(!_loc6_)
                        {
                           if(this.§+!_§ != null)
                           {
                              §§goto(addr114);
                           }
                           §§goto(addr183);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr114);
               }
               addr183:
               if(§§pop() != null)
               {
                  §§push(this.§"!s§);
               }
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr65);
      }
      
      public function get target() : Object
      {
         return this.§?!p§;
      }
      
      public function get duration() : Number
      {
         return this.§1J§;
      }
      
      public function set §-;§(param1:§[!m§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function § d§(param1:uint) : §`A§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            §§push(0);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() == §§pop())
               {
                  return this.§-!o§;
               }
               §§push(param1);
               if(!(_loc3_ && this))
               {
                  §§push(1);
                  if(!_loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           return this.§"!s§;
                        }
                        addr116:
                        if(param1 == 3)
                        {
                           return this.§,!N§;
                        }
                        §§goto(addr120);
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(2);
                           if(_loc3_ && _loc2_)
                           {
                           }
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr116);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_ || this)
                     {
                        return this.§7!H§;
                     }
                  }
                  else
                  {
                     §§goto(addr116);
                  }
                  addr120:
                  return this.§+!_§[param1 - 4];
               }
               §§goto(addr116);
            }
         }
         §§goto(addr116);
      }
      
      public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!p§ = param1;
         }
      }
      
      public function get §-;§() : §[!m§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : § null§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<§`A§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc1_:Vector.<§`A§> = new Vector.<§`A§>();
         if(this.§-!o§ != null)
         {
            if(!_loc6_)
            {
               _loc1_.push(this.§-!o§.clone());
               if(_loc5_ || _loc2_)
               {
                  if(this.§"!s§ != null)
                  {
                     _loc1_.push(this.§"!s§.clone());
                     if(_loc5_)
                     {
                        if(this.§7!H§ != null)
                        {
                           if(_loc5_)
                           {
                              addr66:
                              _loc1_.push(this.§7!H§.clone());
                           }
                           addr97:
                           if(this.§+!_§ != null)
                           {
                              addr101:
                              _loc2_ = this.§+!_§;
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(uint(_loc2_.length));
                                 if(!_loc6_)
                                 {
                                    _loc3_ = §§pop();
                                    addr128:
                                    if(_loc5_ || this)
                                    {
                                       §§push(uint(0));
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
                                          if(_loc5_)
                                          {
                                             §§push(uint(§§pop() + 1));
                                             if(!(_loc5_ || _loc2_))
                                             {
                                                continue;
                                             }
                                          }
                                          _loc4_ = §§pop();
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr171);
                                    }
                                 }
                                 _loc4_ = §§pop();
                              }
                              §§goto(addr128);
                           }
                        }
                        §§goto(addr171);
                     }
                     if(this.§,!N§ != null)
                     {
                        if(_loc5_ || _loc1_)
                        {
                           _loc1_.push(this.§,!N§.clone());
                           §§goto(addr97);
                        }
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr171);
               }
               §§goto(addr66);
            }
            §§goto(addr97);
         }
         addr171:
         return new § R§(this.§?!p§,_loc1_);
      }
   }
}
