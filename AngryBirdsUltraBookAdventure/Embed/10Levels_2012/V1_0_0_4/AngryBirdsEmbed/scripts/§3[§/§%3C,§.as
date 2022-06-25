package §3[§
{
   import §4!H§.§?_§;
   import §6J§.§5j§;
   import §6J§.§?S§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §<,§ extends EventDispatcher
   {
      
      protected static const §"!D§:Number = 1000;
      
      protected static const §9!E§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §"!D§ = 1000;
            if(!(_loc2_ && _loc1_))
            {
               addr28:
               §9!E§ = 60;
            }
            return;
         }
         §§goto(addr28);
      }
      
      protected var §^C§:Dictionary;
      
      protected var §3n§:Dictionary;
      
      protected var § !8§:Dictionary;
      
      protected var §^!'§:Dictionary;
      
      protected var §-9§:Boolean;
      
      protected var §>!7§:String;
      
      protected var §;6§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §<,§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!_loc3_)
            {
               this.§;6§ = param1;
               this.§^C§ = new Dictionary();
               this.§3n§ = new Dictionary();
               if(!_loc3_)
               {
                  this.§ !8§ = new Dictionary();
                  addr49:
                  this.§^!'§ = new Dictionary();
                  if(_loc2_)
                  {
                     this.§-9§ = false;
                  }
               }
               §§goto(addr49);
            }
            return;
         }
         §§goto(addr49);
      }
      
      private function §3r§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§'!7§));
            if(!_loc2_)
            {
               this.§>!7§ = null;
            }
         }
      }
      
      public function §&4§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§>!7§ == param1)
            {
               if(!_loc2_)
               {
                  addr45:
                  §§push(true);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr62:
                  §§push(false);
                  if(!(_loc3_ || _loc3_))
                  {
                     §§goto(addr72);
                  }
               }
               return §§pop();
            }
            if(this.mMightyEagleTimer.running)
            {
               if(_loc3_)
               {
                  §§goto(addr62);
               }
               §§goto(addr72);
            }
            §§push(true);
            addr72:
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public function §1w§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§9!E§);
         if(!_loc5_)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(_loc4_ || _loc3_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() / §9!E§);
            }
            var _loc2_:int = §§pop();
            §§push(_loc1_);
            if(!(_loc5_ && _loc1_))
            {
               §§push(§§pop() % §9!E§);
            }
            var _loc3_:int = §§pop();
            if(_loc4_)
            {
               if(_loc3_ < 10)
               {
                  if(_loc4_ || _loc1_)
                  {
                     §§push("");
                     if(_loc4_ || _loc1_)
                     {
                        §§push(_loc2_);
                        if(!(_loc5_ && _loc1_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc4_ || _loc2_)
                           {
                              §§push(":0");
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc4_ || _loc2_)
                                    {
                                       return §§pop() + §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr134:
                                    §§push(_loc2_);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       addr144:
                                       §§push(§§pop() + §§pop() + ":");
                                       §§push(_loc3_);
                                    }
                                 }
                                 return §§pop() + §§pop();
                              }
                           }
                        }
                     }
                     §§goto(addr144);
                  }
                  else
                  {
                     addr133:
                     §§push("");
                  }
                  §§goto(addr134);
               }
            }
            §§goto(addr133);
         }
         §§goto(addr30);
      }
      
      public function § X§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?_§ = null;
         if(_loc4_)
         {
            if(this.§^C§[param1])
            {
               addr37:
               _loc2_ = this.§^C§[param1];
               if(_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function § !&§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?_§ = null;
         if(_loc4_)
         {
            if(this.§3n§[param1])
            {
               addr37:
               _loc2_ = this.§3n§[param1];
               if(_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§ X§(param1));
            if(_loc2_ || param1)
            {
               §§push(0);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() > §§pop());
                  if(_loc2_ || param1)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§pop();
                           if(!(_loc3_ && param1))
                           {
                              addr85:
                              addr84:
                              §§push(this.§ !&§(param1) > 0);
                              if(_loc2_ || this)
                              {
                              }
                              §§goto(addr104);
                           }
                           addr106:
                           return false;
                           addr105:
                        }
                        §§goto(addr104);
                     }
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(true);
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr104);
                           }
                        }
                        else
                        {
                           §§goto(addr105);
                        }
                     }
                     §§goto(addr106);
                  }
                  addr104:
                  return §§pop();
               }
               §§goto(addr85);
            }
            §§goto(addr84);
         }
         §§goto(addr106);
      }
      
      public function §@j§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§ !8§[param1] = param2;
         }
      }
      
      public function §0u§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§^!'§[param1] = param2;
         }
      }
      
      public function §1!%§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§?_§ = new §?_§(param2);
         if(!(_loc4_ && this))
         {
            this.§^C§[param1] = _loc3_;
         }
      }
      
      public function §]!'§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§?_§ = new §?_§(param2);
         if(_loc4_)
         {
            this.§3n§[param1] = _loc3_;
         }
      }
      
      public function §7!"§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§5j§);
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(param2);
            if(_loc3_)
            {
               if(§§pop() != -1)
               {
                  addr50:
                  §§push(param2);
                  if(_loc3_ || param1)
                  {
                     §§push(int(§§pop()));
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr73);
                  }
               }
               else
               {
                  §§push(this.§ X§(param1));
                  if(!(_loc4_ && param2))
                  {
                     addr72:
                     §§push(int(§§pop()));
                  }
               }
               addr73:
               return §§pop().§"n§(§§pop(),§§pop());
            }
            §§goto(addr72);
         }
         §§goto(addr50);
      }
      
      public function §8h§(param1:§?S§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§=$§())
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(_loc7_ || this)
               {
                  §§push(int(§§pop() + this.§ X§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §<!;§(param1:§?S§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§=$§())
         {
            if(_loc6_ || _loc2_)
            {
               §§push(_loc2_);
               if(_loc6_ || this)
               {
                  §§push(int(§§pop() + this.§7!"§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §@!%§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§?S§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_ || this)
            {
               if(§§pop() >= §5j§.§,5§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = §5j§.§^!E§(_loc2_);
               if(_loc5_ && _loc1_)
               {
                  continue;
               }
               §§push(this.§<!;§(_loc3_));
               if(_loc6_ || this)
               {
                  §§push(int(§§pop()));
                  if(_loc6_ || _loc2_)
                  {
                     _loc4_ = §§pop();
                     if(!(_loc5_ && this))
                     {
                        §§push(_loc1_);
                        if(_loc6_)
                        {
                           addr92:
                           _loc1_ = §§pop() + _loc4_;
                           if(!(_loc6_ || _loc1_))
                           {
                              continue;
                           }
                        }
                        §§goto(addr92);
                     }
                     _loc2_++;
                     continue;
                  }
               }
               §§goto(addr92);
            }
            break;
         }
         return §§pop();
      }
      
      public function §1'§(param1:§?S§) : int
      {
         return param1.§=$§().length * 3;
      }
      
      public function §,$§(param1:§?S§) : int
      {
         return param1.§=$§().length;
      }
      
      public function §]k§(param1:§?S§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§=$§())
         {
            if(_loc7_ || this)
            {
               if(this.§ !&§(_loc3_) != 100)
               {
                  continue;
               }
               if(!_loc7_)
               {
                  continue;
               }
            }
            _loc2_++;
         }
         return _loc2_;
      }
      
      public function get §]!9§() : Dictionary
      {
         return this.§ !8§;
      }
      
      public function get §`i§() : Boolean
      {
         return this.§-9§;
      }
      
      public function set §`i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§-9§ = param1;
         }
      }
      
      public function get §2`§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §'R§() : String
      {
         return this.§>!7§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§?S§ = null;
         var _loc7_:§?S§ = null;
         if(_loc9_)
         {
            §§push(param1);
            if(_loc9_ || _loc3_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc8_ && this))
                  {
                     §§push(false);
                     if(!(_loc8_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr102:
                     if(this.§ !&§(param1) > 0)
                     {
                        if(_loc9_ || _loc2_)
                        {
                           addr114:
                           §§push(true);
                        }
                        else
                        {
                           addr117:
                           var _loc2_:Array = param1.split("-");
                           addr116:
                           if(_loc9_)
                           {
                              if(_loc2_.length == 2)
                              {
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    addr134:
                                    §§push(int(parseInt(_loc2_[0])));
                                    if(_loc9_ || this)
                                    {
                                       _loc4_ = §§pop();
                                       addr157:
                                       if(!_loc8_)
                                       {
                                          §§push(int(parseInt(_loc2_[1])));
                                       }
                                       §§push((_loc6_ = §5j§.§^!>§(param1)).pageIndexes[0] == _loc4_);
                                       if(!(_loc8_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc8_)
                                             {
                                                addr189:
                                                §§pop();
                                                §§push(_loc5_);
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   §§push(1);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc8_)
                                                      {
                                                         addr204:
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               §§push(true);
                                                               if(_loc9_)
                                                               {
                                                                  §§goto(addr215);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr276);
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc5_);
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               §§push(1);
                                                               if(!_loc8_)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           addr238:
                                                                           §§push(§§pop() + "-");
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop() + (_loc5_ - 1));
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(_loc8_ && _loc2_)
                                                                              {
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           addr276:
                                                                           if(_loc7_ = §5j§.§^!>§(_loc4_ - 1 + "-1"))
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(_loc4_ - 1 + "-");
                                                                                 if(_loc9_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc7_.levelsPerPage);
                                                                                 }
                                                                                 _loc3_ = §§pop();
                                                                              }
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(this.§ X§(_loc3_));
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 addr316:
                                                                                 §§push(0);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr319:
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(!(_loc8_ && _loc3_))
                                                                                       {
                                                                                          §§push(true);
                                                                                          if(!(_loc8_ && _loc2_))
                                                                                          {
                                                                                             §§goto(addr345);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr359);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr349:
                                                                                       §§push(this.§ !&§(_loc3_));
                                                                                       §§push(0);
                                                                                    }
                                                                                    §§goto(addr360);
                                                                                 }
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       addr359:
                                                                                       return §§pop();
                                                                                       §§push(true);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr360);
                                                                              }
                                                                              §§goto(addr349);
                                                                           }
                                                                           §§goto(addr360);
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                     §§goto(addr360);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        addr270:
                                                                        §§push(1);
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§goto(addr276);
                                                                              }
                                                                              §§goto(addr349);
                                                                           }
                                                                           §§goto(addr276);
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr316);
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                      }
                                                      addr215:
                                                      return §§pop();
                                                   }
                                                   §§goto(addr319);
                                                }
                                                §§goto(addr270);
                                             }
                                             addr345:
                                             return §§pop();
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr189);
                                    }
                                    _loc5_ = §§pop();
                                 }
                                 §§goto(addr157);
                              }
                              addr360:
                              return false;
                           }
                           §§goto(addr134);
                        }
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr115);
               }
               else
               {
                  §§push(param1);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§goto(addr68);
                  }
               }
               §§goto(addr117);
            }
            addr68:
            if(§§pop() == §5j§.§9t§)
            {
               §§push(true);
               if(!_loc8_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§push(this.§ X§(param1));
               if(!_loc8_)
               {
                  §§push(0);
                  if(_loc9_ || _loc3_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc9_)
                        {
                           §§push(true);
                           if(!_loc8_)
                           {
                              return §§pop();
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr115);
                     }
                     else
                     {
                        §§goto(addr102);
                     }
                  }
               }
               §§goto(addr102);
            }
            addr115:
            return §§pop();
         }
         §§goto(addr117);
      }
      
      public function §2!H§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §!G§(param1:String) : void
      {
      }
      
      public function §=&§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §>!&§() : Dictionary
      {
         return this.§ !8§;
      }
   }
}
