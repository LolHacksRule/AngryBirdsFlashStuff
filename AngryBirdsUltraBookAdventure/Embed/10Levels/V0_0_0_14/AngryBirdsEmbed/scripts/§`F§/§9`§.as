package §`F§
{
   public class §9`§ extends §^F§ implements §4!A§
   {
       
      
      private var §0^§:Number;
      
      private var §-t§:Boolean;
      
      private var §6!§:Boolean;
      
      private var §4!E§:String;
      
      private var §6[§:Object;
      
      private var §7!>§:Object;
      
      private var §,§:Object;
      
      public function §9`§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            super();
            if(_loc7_)
            {
               §§push(param4);
               if(!_loc6_)
               {
                  if(§§pop() <= 0)
                  {
                     if(_loc7_ || param3)
                     {
                        §§push(0);
                        if(_loc7_ || param3)
                        {
                           addr48:
                           §§push(Number(§§pop()));
                        }
                        param4 = §§pop();
                        if(_loc7_ || param2)
                        {
                           §§goto(addr57);
                        }
                        §§goto(addr86);
                     }
                  }
                  addr57:
                  §§push(this);
                  §§push(param4);
                  if(_loc7_)
                  {
                     §§push(§§pop() * 1000);
                  }
                  §§pop().§0^§ = §§pop();
                  if(!_loc6_)
                  {
                     this.§4!E§ = param5;
                     if(!(_loc6_ && param2))
                     {
                        addr86:
                        §3j§ = 0;
                        if(!_loc6_)
                        {
                           addr91:
                           this.§6!§ = true;
                        }
                        §§goto(addr97);
                     }
                     this.§-t§ = false;
                     §§goto(addr97);
                  }
                  addr97:
                  param2 = this.§<k§(param2,param1);
                  if(_loc7_)
                  {
                     if(param3 != null)
                     {
                        if(_loc7_)
                        {
                           §§goto(addr120);
                        }
                     }
                     else
                     {
                        this.§#!A§(param2,param1);
                     }
                     §§goto(addr144);
                  }
                  addr120:
                  param3 = this.§<k§(param3,param2);
                  if(!(_loc6_ && param1))
                  {
                     this.§#!A§(param2,param3);
                     if(_loc7_)
                     {
                        addr144:
                        this.§6[§ = param1;
                     }
                  }
                  return;
               }
               §§goto(addr48);
            }
            §§goto(addr86);
         }
         §§goto(addr91);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§-t§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§6!§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.stop();
            if(!(_loc2_ && this))
            {
               this.§6[§ = null;
               if(_loc1_ || _loc1_)
               {
                  addr62:
                  this.§,§ = null;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr70);
               }
               this.§7!>§ = null;
            }
            addr70:
            return;
         }
         §§goto(addr62);
      }
      
      public function §-g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §3j§ = -§?-§;
            if(!_loc1_)
            {
               this.§-t§ = false;
            }
         }
      }
      
      private function §<k§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         for(_loc4_ in param1)
         {
            if(!(_loc7_ && param1))
            {
               §§push(param2[_loc4_] == null);
               if(!_loc7_)
               {
                  §§push(!§§pop());
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(_loc8_ || param1)
                     {
                        if(§§pop())
                        {
                           if(!(_loc7_ && param2))
                           {
                              §§pop();
                              if(!(_loc7_ && this))
                              {
                                 addr112:
                                 §§push(param1[_loc4_] is Number);
                                 if(_loc8_ || _loc3_)
                                 {
                                    addr103:
                                    §§push(§§pop());
                                 }
                                 §§pop();
                                 if(_loc8_ || this)
                                 {
                                    addr130:
                                    if(!(param2[_loc4_] is Number))
                                    {
                                       continue;
                                    }
                                    if(!(_loc8_ || param2))
                                    {
                                       continue;
                                    }
                                 }
                                 _loc3_[_loc4_] = param1[_loc4_];
                                 continue;
                              }
                              §§goto(addr130);
                           }
                        }
                        §§goto(addr103);
                     }
                     if(§§pop())
                     {
                        if(!(_loc7_ && this))
                        {
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr103);
               }
               §§goto(addr112);
            }
            §§goto(addr130);
         }
         return _loc3_;
      }
      
      private function §#!A§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(!(_loc9_ && _loc3_))
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(_loc9_ && this)
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(_loc8_)
         {
            this.§,§ = _loc3_;
            if(_loc8_ || this)
            {
               addr103:
               this.§7!>§ = _loc4_;
            }
            return;
         }
         §§goto(addr103);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!this.§-t§)
            {
               if(_loc1_)
               {
                  this.§-t§ = true;
                  if(_loc1_ || _loc2_)
                  {
                     addr48:
                     §]!8§ = null;
                     if(_loc1_)
                     {
                        §3j§ = this.§0^§;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §0C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§-t§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§-t§ = true;
                  if(!_loc2_)
                  {
                     addr43:
                     §3j§ = this.§0^§;
                     if(_loc1_ || this)
                     {
                     }
                     §§goto(addr56);
                  }
               }
               this.§9!@§();
            }
            addr56:
            return;
         }
         §§goto(addr43);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§6!§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§6!§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§6!§);
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr38:
                     §§pop();
                     §§push(this.isCompleted);
                     if(_loc2_ && param1)
                     {
                     }
                     addr49:
                     if(§§pop())
                     {
                        return;
                     }
                     §3j§ += param1;
                     if(!_loc2_)
                     {
                        if(§3j§ >= this.§0^§)
                        {
                           if(_loc3_)
                           {
                              if(§,!D§)
                              {
                                 if(!(_loc2_ && param1))
                                 {
                                    §3j§ = this.§0^§;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       this.§-t§ = true;
                                    }
                                    §§goto(addr131);
                                 }
                              }
                              else
                              {
                                 §3j§ = 0;
                                 if(!_loc3_)
                                 {
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr131);
                           }
                        }
                        this.§9!@§();
                        if(!(_loc2_ && _loc3_))
                        {
                           this.§]!#§();
                        }
                     }
                     addr131:
                     return;
                  }
                  §§goto(addr49);
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr49);
            }
         }
         §§goto(addr38);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.update(0);
         }
      }
      
      private function §9!@§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[1] = NaN;
            if(!(_loc5_ && this))
            {
               addr33:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§ f§());
               if(_loc4_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  var _loc2_:int = 0;
                  if(!_loc5_)
                  {
                     var _loc3_:* = this.§,§;
                     if(!_loc5_)
                     {
                        for(attribute in _loc3_)
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                        }
                        addr149:
                        return;
                        addr99:
                        addr102:
                        addr103:
                     }
                     while(true)
                     {
                        this.§6[§[attribute] = this.§7!>§[attribute] + this.§,§[attribute] * timeValue;
                        §§goto(addr99);
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr103);
            }
            catch(e:Error)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §-t§ = true;
                  if(_loc4_ || _loc1_)
                  {
                  }
                  §§goto(addr144);
               }
               if(!§4v§)
               {
                  addr144:
                  throw e;
               }
            }
            §§goto(addr149);
         }
         §§goto(addr33);
      }
      
      private function §]!#§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.isCompleted);
            if(_loc3_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           addr61:
                           §§push(§]!8§ == null);
                           if(_loc3_ || this)
                           {
                              §§goto(addr72);
                           }
                           addr72:
                           §§goto(addr71);
                        }
                        §§goto(addr73);
                     }
                     addr71:
                     if(!§§pop())
                     {
                        try
                        {
                           addr73:
                           §]!8§();
                           if(!(_loc4_ && _loc1_))
                           {
                              §]!8§ = null;
                           }
                        }
                        catch(e:Error)
                        {
                           if(_loc3_)
                           {
                              §]!8§ = null;
                              if(_loc4_)
                              {
                              }
                              §§goto(addr116);
                           }
                           if(!§4v§)
                           {
                              addr116:
                              throw e;
                           }
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr72);
         }
         §§goto(addr61);
      }
      
      private function § f§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§0^§);
            if(_loc5_ || _loc1_)
            {
               if(§§pop() <= 0)
               {
                  if(!(_loc4_ && this))
                  {
                     §§goto(addr37);
                  }
               }
               §§push(Number(Math.max(0,§3j§)));
            }
            var _loc1_:* = §§pop();
            if(!_loc4_)
            {
               §§push(Number(Math.min(_loc1_,this.§0^§)));
               if(!(_loc4_ && this))
               {
                  _loc1_ = §§pop();
                  addr61:
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     addr64:
                     §§push(§§pop() / this.§0^§);
                     if(!_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  §§push(this.§4!E§);
                  loop0:
                  while(true)
                  {
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && _loc1_))
                     {
                        if(§,B§.§,Y§ === _loc3_)
                        {
                           if(!(_loc4_ && this))
                           {
                              §§push(0);
                              if(_loc4_ && _loc2_)
                              {
                                 addr512:
                              }
                           }
                           else
                           {
                              addr519:
                              §§push(3);
                           }
                        }
                        else
                        {
                           §§push(§,B§.§5!C§);
                           §§push(_loc3_);
                           if(_loc5_ || _loc1_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || this)
                                 {
                                    addr501:
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                       addr622:
                                       loop1:
                                       while(true)
                                       {
                                          switch(§§pop())
                                          {
                                             case 0:
                                                addr624:
                                                break loop1;
                                             case 1:
                                             case 2:
                                                continue loop0;
                                             case 3:
                                                addr362:
                                                §§push(_loc2_);
                                                §§push(-_loc2_ * (_loc2_ - 2));
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             case 4:
                                                §§push(_loc2_ * _loc2_);
                                                if(_loc5_)
                                                {
                                                   addr379:
                                                   return §§pop();
                                                }
                                                break loop1;
                                             case 5:
                                                return Math.sin(_loc2_ * (Math.PI / 2));
                                             case 6:
                                                §§push(1);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() - Math.cos(_loc2_ * (Math.PI / 2)));
                                                   if(!_loc4_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr411:
                                                   addr410:
                                                   §§push(Number(§§pop() - 1));
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr419:
                                                      _loc2_ = §§pop();
                                                      return Math.sqrt(1 - _loc2_ * _loc2_);
                                                   }
                                                   break loop1;
                                                }
                                                addr439:
                                                §§push(§§pop() - Math.sqrt(1 - _loc2_ * _loc2_));
                                                break;
                                             case 7:
                                                addr408:
                                                §§goto(addr410);
                                             case 8:
                                                §§push(_loc2_);
                                                §§push(1);
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr439);
                                                   break;
                                                }
                                                continue;
                                             default:
                                                §§goto(addr624);
                                          }
                                          addr447:
                                          return §§pop();
                                       }
                                       return §§pop();
                                       addr623:
                                    }
                                    addr611:
                                    §§goto(addr622);
                                    §§goto(addr622);
                                 }
                                 else
                                 {
                                    addr511:
                                    §§goto(addr512);
                                    §§push(2);
                                 }
                                 §§goto(addr622);
                              }
                              else
                              {
                                 §§push(§,B§.§8!4§);
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr511);
                                    }
                                    else
                                    {
                                       §§push(§,B§.§[!F§);
                                       if(_loc5_)
                                       {
                                          if(§§pop() === _loc3_)
                                          {
                                             §§goto(addr519);
                                          }
                                          else
                                          {
                                             §§push(§,B§.§1R§);
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr531:
                                                if(§§pop() === _loc3_)
                                                {
                                                   §§push(4);
                                                   if(!(_loc5_ || _loc1_))
                                                   {
                                                      addr577:
                                                   }
                                                   §§goto(addr622);
                                                }
                                                else
                                                {
                                                   §§push(§,B§.§@R§);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§goto(addr622);
                                                               §§push(5);
                                                            }
                                                            else
                                                            {
                                                               addr574:
                                                               §§push(6);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr577);
                                                               }
                                                               §§goto(addr622);
                                                            }
                                                            §§goto(addr622);
                                                         }
                                                         else
                                                         {
                                                            §§push(§,B§.§"l§);
                                                            if(!_loc4_)
                                                            {
                                                               if(§§pop() === _loc3_)
                                                               {
                                                                  §§goto(addr574);
                                                               }
                                                               else
                                                               {
                                                                  §§push(§,B§.§'§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr582:
                                                                     §§push(_loc3_);
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                     }
                                                                     addr615:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        addr616:
                                                                        §§goto(addr622);
                                                                        §§push(8);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr622);
                                                                        §§push(9);
                                                                     }
                                                                     §§goto(addr622);
                                                                  }
                                                                  addr614:
                                                                  §§goto(addr615);
                                                                  §§push(_loc3_);
                                                               }
                                                               §§goto(addr622);
                                                            }
                                                            §§goto(addr614);
                                                         }
                                                      }
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(7);
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               §§goto(addr611);
                                                            }
                                                            §§goto(addr622);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr616);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr614);
                                                         §§push(§,B§.§;C§);
                                                      }
                                                      §§goto(addr616);
                                                   }
                                                   §§goto(addr582);
                                                }
                                             }
                                          }
                                          §§goto(addr622);
                                       }
                                       §§goto(addr614);
                                    }
                                 }
                                 §§goto(addr531);
                              }
                           }
                           §§goto(addr582);
                        }
                        §§goto(addr622);
                     }
                     §§goto(addr501);
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr61);
         }
         addr37:
         return 1;
      }
   }
}
