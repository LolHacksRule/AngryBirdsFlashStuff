package §true §
{
   import §4!7§.§%!m§;
   import §;!,§.§#>§;
   import §;!,§.§=!+§;
   import §;!,§.AbstractTween;
   import §?!4§.§=Y§;
   
   public class §@q§ extends AbstractTween implements §=!+§
   {
       
      
      private var §-!o§:§#>§;
      
      private var §;3§:Vector.<§#>§>;
      
      private var §7!H§:§#>§;
      
      private var §,!N§:§#>§;
      
      private var §"!s§:§#>§;
      
      public function §@q§(param1:Array, param2:§%!m§, param3:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:uint = 0;
         var _loc5_:* = uint(0);
         var _loc6_:§#>§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         if(!(_loc8_ && param1))
         {
            §1J§ = 0;
            §§push(_loc4_);
            §§push(0);
            if(!(_loc8_ && param1))
            {
               if(§§pop() > §§pop())
               {
                  if(!_loc8_)
                  {
                     this.§-!o§ = param1[0] as §#>§;
                     §§push(§§findproperty(§1J§));
                     if(_loc7_ || param1)
                     {
                        §§push(this.§-!o§);
                        if(_loc7_ || param1)
                        {
                           if(§§pop().duration > §1J§)
                           {
                              addr85:
                              §§push(Number(this.§-!o§.duration));
                              if(_loc8_ && param3)
                              {
                              }
                           }
                           else
                           {
                              §§push(Number(§1J§));
                           }
                           §§pop().§1J§ = §§pop();
                           if(!(_loc8_ && this))
                           {
                              §§push(_loc4_);
                              §§push(1);
                              if(_loc7_ || param2)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    this.§"!s§ = param1[1] as §#>§;
                                    if(!_loc8_)
                                    {
                                       §§push(§§findproperty(§1J§));
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(this.§"!s§);
                                          if(!_loc8_)
                                          {
                                             if(§§pop().duration > §1J§)
                                             {
                                                addr142:
                                                §§push(Number(this.§"!s§.duration));
                                                if(_loc7_ || this)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push(Number(§1J§));
                                             }
                                             §§pop().§1J§ = §§pop();
                                             if(_loc7_ || param1)
                                             {
                                                addr162:
                                                §§push(_loc4_);
                                                if(!_loc8_)
                                                {
                                                   §§push(2);
                                                   if(!_loc8_)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         this.§7!H§ = param1[2] as §#>§;
                                                         if(_loc7_ || param3)
                                                         {
                                                            §§push(§§findproperty(§1J§));
                                                            if(!_loc8_)
                                                            {
                                                               §§push(this.§7!H§);
                                                               if(_loc7_ || param2)
                                                               {
                                                                  if(§§pop().duration > §1J§)
                                                                  {
                                                                     addr211:
                                                                     §§push(Number(this.§7!H§.duration));
                                                                     if(_loc8_ && param2)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(Number(§1J§));
                                                                  }
                                                                  §§pop().§1J§ = §§pop();
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc7_)
                                                                     {
                                                                        addr234:
                                                                        §§push(3);
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              this.§,!N§ = param1[3] as §#>§;
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 addr257:
                                                                                 §§push(§§findproperty(§1J§));
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    §§push(this.§,!N§);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(§§pop().duration > §1J§)
                                                                                       {
                                                                                          addr275:
                                                                                          §§push(Number(this.§,!N§.duration));
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(Number(§1J§));
                                                                                       }
                                                                                       §§pop().§1J§ = §§pop();
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          addr292:
                                                                                          if(_loc4_ > 4)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr295:
                                                                                                this.§;3§ = new Vector.<§#>§>(_loc4_ - 4,true);
                                                                                                addr307:
                                                                                                _loc5_ = uint(4);
                                                                                                addr308:
                                                                                                while(_loc5_ < _loc4_)
                                                                                                {
                                                                                                   _loc6_ = param1[_loc5_] as §#>§;
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      this.§;3§[_loc5_ - 4] = _loc6_;
                                                                                                      if(_loc7_ || param3)
                                                                                                      {
                                                                                                         §§push(§§findproperty(§1J§));
                                                                                                         if(_loc7_ || param2)
                                                                                                         {
                                                                                                            if(_loc6_.duration > §1J§)
                                                                                                            {
                                                                                                               addr351:
                                                                                                               §§push(Number(_loc6_.duration));
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(Number(§1J§));
                                                                                                            }
                                                                                                            §§pop().§1J§ = §§pop();
                                                                                                            if(!(_loc8_ && param1))
                                                                                                            {
                                                                                                               addr377:
                                                                                                               §§push(_loc5_);
                                                                                                               if(!(_loc8_ && param2))
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                               }
                                                                                                               _loc5_ = §§pop();
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr377);
                                                                                                }
                                                                                                return;
                                                                                                addr305:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr308);
                                                                                       }
                                                                                       §§goto(addr305);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr275);
                                                                              }
                                                                           }
                                                                           §§goto(addr308);
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                   §§goto(addr292);
                                                }
                                                §§goto(addr234);
                                             }
                                             §§goto(addr257);
                                          }
                                       }
                                       §§goto(addr142);
                                    }
                                 }
                                 §§goto(addr295);
                              }
                              §§goto(addr292);
                           }
                           §§goto(addr162);
                        }
                     }
                     §§goto(addr85);
                  }
               }
               §§goto(addr295);
            }
            §§goto(addr292);
         }
         §§goto(addr295);
      }
      
      public function §9M§(param1:int) : §=Y§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(0);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(null);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr49:
                        §§push(0);
                        if(!_loc3_)
                        {
                           if(§§pop() == §§pop())
                           {
                              return this.§-!o§;
                           }
                           §§push(param1);
                           if(!_loc3_)
                           {
                              §§push(1);
                              if(_loc2_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    return this.§"!s§;
                                 }
                                 addr90:
                                 §§push(param1);
                                 if(_loc2_)
                                 {
                                    §§push(2);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr101:
                                       if(§§pop() == §§pop())
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             return this.§7!H§;
                                          }
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          if(_loc2_)
                                          {
                                             addr115:
                                             §§push(3);
                                             if(_loc2_ || this)
                                             {
                                                §§goto(addr123);
                                             }
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                                 §§goto(addr115);
                              }
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr115);
                  }
                  addr123:
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        return this.§,!N§;
                     }
                  }
                  if(this.§;3§ != null)
                  {
                     if(_loc2_ || this)
                     {
                        addr157:
                        if(param1 - 4 < this.§;3§.length)
                        {
                           addr162:
                           return this.§;3§[param1 - 4];
                        }
                     }
                  }
                  return null;
               }
               §§goto(addr101);
            }
            §§goto(addr49);
         }
         §§goto(addr90);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<§#>§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         if(_loc6_)
         {
            §§push(this.§-!o§);
            if(!_loc5_)
            {
               if(§§pop() != null)
               {
                  addr36:
                  this.§-!o§.update(param1);
                  §§push(this.§"!s§);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() != null)
                     {
                        if(!_loc5_)
                        {
                           addr53:
                           this.§"!s§.update(param1);
                           if(!_loc5_)
                           {
                              §§push(this.§7!H§);
                              if(!(_loc5_ && this))
                              {
                                 if(§§pop() != null)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       addr77:
                                       this.§7!H§.update(param1);
                                       if(!(_loc5_ && this))
                                       {
                                          addr96:
                                          §§push(this.§,!N§);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() != null)
                                             {
                                                addr108:
                                                if(!_loc5_)
                                                {
                                                   addr104:
                                                   §§push(this.§,!N§);
                                                }
                                                if(this.§;3§ != null)
                                                {
                                                   _loc2_ = this.§;3§;
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(uint(_loc2_.length));
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            addr143:
                                                            _loc4_ = uint(0);
                                                         }
                                                         loop0:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            while(§§pop() < _loc3_)
                                                            {
                                                               _loc2_[_loc4_].update(param1);
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     §§push(uint(§§pop() + 1));
                                                                     if(_loc5_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  if(!(_loc6_ || param1))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr143);
                                                }
                                             }
                                             §§goto(addr196);
                                          }
                                          §§pop().update(param1);
                                          §§goto(addr108);
                                       }
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr77);
                           }
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr53);
               }
               addr196:
               return;
            }
            §§goto(addr36);
         }
         §§goto(addr96);
      }
      
      override protected function newInstance() : AbstractTween
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<§#>§> = null;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc1_:Array = [];
         if(this.§-!o§ != null)
         {
            _loc1_.push(this.§-!o§.clone());
         }
         if(this.§"!s§ != null)
         {
            if(!_loc6_)
            {
               _loc1_.push(this.§"!s§.clone());
               if(!_loc6_)
               {
                  addr50:
                  if(this.§7!H§ != null)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        addr61:
                        _loc1_.push(this.§7!H§.clone());
                        if(_loc5_)
                        {
                           addr78:
                           if(this.§,!N§ != null)
                           {
                              addr82:
                              _loc1_.push(this.§,!N§.clone());
                           }
                        }
                        if(this.§;3§ != null)
                        {
                           addr91:
                           _loc2_ = this.§;3§;
                           if(_loc5_ || _loc3_)
                           {
                              §§push(uint(_loc2_.length));
                              if(_loc5_ || _loc3_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr122:
                                    _loc4_ = uint(0);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    while(true)
                                    {
                                       if(§§pop() < _loc3_)
                                       {
                                          _loc1_.push(_loc2_[_loc4_].clone());
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          §§push(_loc4_);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(uint(§§pop() + 1));
                                             if(_loc5_)
                                             {
                                                _loc4_ = §§pop();
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                addr161:
                                                addr161:
                                                return new §@q§(_loc1_,§5!§,0);
                                             }
                                          }
                                          continue;
                                       }
                                       §§goto(addr161);
                                    }
                                 }
                              }
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr78);
               }
               §§goto(addr82);
            }
            §§goto(addr61);
         }
         §§goto(addr50);
      }
      
      public function §%!i§(param1:§=Y§) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(param1 == null)
         {
            §§push(-1);
            if(!(_loc4_ && this))
            {
               return §§pop();
            }
         }
         else
         {
            if(this.§-!o§ != param1)
            {
               if(this.§"!s§ == param1)
               {
                  if(_loc3_)
                  {
                     §§goto(addr47);
                  }
               }
               else
               {
                  if(this.§7!H§ != param1)
                  {
                     if(this.§,!N§ == param1)
                     {
                        §§push(3);
                        if(_loc3_ || param1)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        if(this.§;3§ != null)
                        {
                           if(!_loc4_)
                           {
                              _loc2_ = this.§;3§.indexOf(param1 as §#>§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr110);
                              }
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr138);
                     }
                     addr136:
                     return §§pop() + 4;
                  }
                  if(!_loc3_)
                  {
                     §§goto(addr110);
                  }
                  §§goto(addr138);
               }
               return 2;
            }
            if(_loc3_)
            {
               §§push(0);
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            else
            {
               addr110:
               §§push(_loc2_);
            }
            §§push(-1);
            if(_loc3_ || this)
            {
               if(§§pop() != §§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr127:
                     §§push(_loc2_);
                     if(!(_loc4_ && param1))
                     {
                        §§goto(addr136);
                     }
                  }
                  else
                  {
                     addr138:
                     §§push(-1);
                  }
                  return §§pop();
               }
               §§goto(addr138);
            }
            §§goto(addr136);
            §§goto(addr138);
         }
         addr47:
         return 1;
      }
      
      public function contains(param1:§=Y§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1 == null)
            {
               return false;
            }
            if(this.§-!o§ != param1)
            {
               if(this.§"!s§ == param1)
               {
                  if(!_loc3_)
                  {
                     addr66:
                     return true;
                  }
               }
               if(this.§7!H§ == param1)
               {
                  addr79:
                  §§push(true);
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else if(this.§,!N§ == param1)
               {
                  return true;
               }
               else
               {
                  if(this.§;3§ != null)
                  {
                     §§push(this.§;3§.indexOf(param1 as §#>§) != -1);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr121);
                  }
                  else
                  {
                     addr121:
                     return §§pop();
                     §§push(false);
                  }
                  §§goto(addr121);
               }
               return §§pop();
            }
            if(!_loc3_)
            {
               §§push(true);
               if(_loc2_ || _loc3_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§goto(addr66);
            }
            §§goto(addr121);
         }
         §§goto(addr79);
      }
   }
}
