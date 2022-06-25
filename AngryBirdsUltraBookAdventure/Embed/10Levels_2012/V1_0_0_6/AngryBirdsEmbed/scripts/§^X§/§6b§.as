package §^X§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §6b§ extends EventDispatcher implements §5!D§
   {
       
      
      private var §#B§:Object;
      
      private var § !2§:String;
      
      private var §3!+§:Vector.<String>;
      
      private var §`f§:Vector.<Number>;
      
      private var §"F§:Vector.<Number>;
      
      private var §7!?§:Function;
      
      private var §"&§:Function;
      
      private var §"3§:Function;
      
      private var §<B§:Array;
      
      private var §>n§:Array;
      
      private var §9U§:Array;
      
      private var §#c§:Number;
      
      private var §@Q§:Number;
      
      private var §0! §:Number;
      
      private var §2&§:Boolean;
      
      public function §6b§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         this.§#B§ = param1;
         if(_loc4_)
         {
            this.§@Q§ = 0;
            if(_loc4_)
            {
               this.§#c§ = Math.max(0.0001,param2);
               if(!(_loc5_ && this))
               {
                  this.§0! § = 0;
               }
               §§goto(addr74);
            }
            this.§ !2§ = param3;
            if(_loc4_)
            {
               this.§2&§ = false;
               if(!_loc5_)
               {
                  addr74:
                  this.§3!+§ = new Vector.<String>(0);
                  this.§`f§ = new Vector.<Number>(0);
                  §§goto(addr90);
               }
               addr90:
               this.§"F§ = new Vector.<Number>(0);
               return;
            }
         }
         §§goto(addr74);
      }
      
      public function §,!F§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§#B§ == null)
            {
               if(_loc3_)
               {
                  return;
               }
               §§goto(addr63);
            }
            else
            {
               this.§3!+§.push(param1);
               if(!(_loc4_ && param2))
               {
                  addr63:
                  this.§`f§.push(Number.NaN);
                  if(!_loc4_)
                  {
                     addr70:
                     this.§"F§.push(param2);
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §3x§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§,!F§("scaleX",param1);
            if(!(_loc3_ && _loc3_))
            {
               this.§,!F§("scaleY",param1);
            }
         }
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§,!F§("x",param1);
            if(_loc3_)
            {
               addr24:
               this.§,!F§("y",param2);
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §use §(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§,!F§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(!(_loc12_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc12_ && this))
            {
               if(§§pop() == 0)
               {
                  if(!_loc12_)
                  {
                     §§goto(addr46);
                  }
               }
               §§push(this.§@Q§);
               if(_loc11_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc11_ || param1)
            {
               §§push(this);
               §§push(this.§@Q§);
               if(_loc11_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§@Q§ = §§pop();
               if(_loc11_)
               {
                  §§push(this.§@Q§);
                  if(_loc11_ || _loc2_)
                  {
                     §§push(0);
                     if(!(_loc12_ && this))
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc11_ || _loc3_)
                        {
                           §§push(§§pop());
                           if(_loc11_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc12_)
                                 {
                                    §§pop();
                                    if(!_loc12_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc11_ || _loc3_)
                                       {
                                          §§push(§§pop() >= this.§#c§);
                                          if(_loc11_)
                                          {
                                             addr122:
                                             if(§§pop())
                                             {
                                                if(_loc11_ || param1)
                                                {
                                                   return;
                                                }
                                                addr186:
                                                §§push(Math.min(this.§#c§,this.§@Q§) / this.§#c§);
                                                if(_loc11_ || _loc2_)
                                                {
                                                   addr203:
                                                   var _loc3_:Number = §§pop();
                                                   var _loc4_:int = this.§`f§.length;
                                                   var _loc5_:int = 0;
                                                   while(true)
                                                   {
                                                      if(_loc5_ >= _loc4_)
                                                      {
                                                         §§push(this.§!A§);
                                                         if(_loc11_ || param1)
                                                         {
                                                            §§push(null);
                                                            if(!_loc12_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(_loc11_ || _loc3_)
                                                                  {
                                                                     addr384:
                                                                     §§push(this.§!A§);
                                                                     if(!(_loc12_ && _loc3_))
                                                                     {
                                                                        §§push(null);
                                                                        if(!_loc12_)
                                                                        {
                                                                           §§push(this.§>n§);
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              §§pop().apply(§§pop(),§§pop());
                                                                              if(!_loc12_)
                                                                              {
                                                                                 addr408:
                                                                                 §§push(_loc2_);
                                                                                 §§push(this.§#c§);
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    addr413:
                                                                                    §§push(§§pop() < §§pop());
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       addr431:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc12_ && _loc2_))
                                                                                          {
                                                                                             addr425:
                                                                                             §§pop();
                                                                                             §§push(this.§@Q§);
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc11_ || _loc3_)
                                                                                          {
                                                                                             addr449:
                                                                                             dispatchEvent(new Event(Event.§^#§));
                                                                                             §§push(this.onComplete);
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                addr459:
                                                                                                §§push(null);
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   addr462:
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr471);
                                                                                                }
                                                                                                addr470:
                                                                                                §§pop().apply(§§pop(),this.§9U§);
                                                                                                §§goto(addr468);
                                                                                             }
                                                                                             addr468:
                                                                                             addr471:
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr465:
                                                                                                §§push(this.onComplete);
                                                                                             }
                                                                                             return;
                                                                                             §§push(null);
                                                                                          }
                                                                                          §§goto(addr465);
                                                                                       }
                                                                                       §§goto(addr471);
                                                                                    }
                                                                                    §§goto(addr425);
                                                                                 }
                                                                                 §§goto(addr431);
                                                                                 §§push(§§pop() >= §§pop());
                                                                              }
                                                                              §§goto(addr449);
                                                                           }
                                                                        }
                                                                        §§goto(addr470);
                                                                     }
                                                                     §§goto(addr459);
                                                                  }
                                                                  §§goto(addr425);
                                                               }
                                                               §§goto(addr408);
                                                            }
                                                            §§goto(addr462);
                                                         }
                                                         §§goto(addr459);
                                                      }
                                                      else
                                                      {
                                                         if(isNaN(this.§`f§[_loc5_]))
                                                         {
                                                            this.§`f§[_loc5_] = this.§#B§[this.§3!+§[_loc5_]] as Number;
                                                            if(_loc11_)
                                                            {
                                                               addr245:
                                                               §§push(Number(this.§`f§[_loc5_]));
                                                               if(!(_loc12_ && _loc2_))
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  §§push(Number(this.§"F§[_loc5_]));
                                                                  §§push(Number(this.§"F§[_loc5_]));
                                                                  if(!(_loc12_ && _loc2_))
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     §§push(_loc6_);
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc12_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(_loc11_)
                                                                           {
                                                                              _loc9_ = §-]§.§=!,§(this.§ !2§);
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(_loc11_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                    if(!(_loc12_ && this))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc12_ && _loc3_))
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          if(!(_loc11_ || param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(this.§2&§)
                                                                                          {
                                                                                             if(_loc11_ || _loc3_)
                                                                                             {
                                                                                                addr342:
                                                                                                _loc10_ = Number(Math.round(_loc10_));
                                                                                                addr338:
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   addr345:
                                                                                                   this.§#B§[this.§3!+§[_loc5_]] = _loc10_;
                                                                                                   if(_loc12_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                _loc5_++;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr345);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr342);
                                                                              }
                                                                              §§goto(addr338);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr384);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr413);
                                                                  }
                                                                  §§goto(addr408);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr384);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                   }
                                                   §§goto(addr408);
                                                   §§push(this.§#c§);
                                                }
                                                §§goto(addr203);
                                             }
                                             else
                                             {
                                                addr133:
                                                §§push(this.§5f§);
                                                if(!_loc12_)
                                                {
                                                   §§push(null);
                                                   if(_loc11_)
                                                   {
                                                      addr142:
                                                      §§push(§§pop() != §§pop());
                                                      §§push(§§pop() != §§pop());
                                                      if(_loc11_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            if(_loc11_)
                                                            {
                                                               addr149:
                                                               §§push(_loc2_);
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  addr157:
                                                                  §§push(0);
                                                                  if(!_loc12_)
                                                                  {
                                                                     addr161:
                                                                     addr162:
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§push(this.§@Q§);
                                                                              if(_loc11_ || _loc3_)
                                                                              {
                                                                                 addr178:
                                                                                 §§push(§§pop() >= 0);
                                                                              }
                                                                              §§goto(addr203);
                                                                           }
                                                                           §§goto(addr186);
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        addr183:
                                                                        this.§5f§.apply(null,this.§<B§);
                                                                        addr180:
                                                                     }
                                                                     §§goto(addr186);
                                                                  }
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr203);
               }
               §§goto(addr149);
            }
            §§goto(addr133);
         }
         addr46:
      }
      
      public function get §&+§() : Boolean
      {
         return this.§@Q§ >= this.§#c§;
      }
      
      public function get target() : Object
      {
         return this.§#B§;
      }
      
      public function get §+V§() : String
      {
         return this.§ !2§;
      }
      
      public function get §2S§() : Number
      {
         return this.§#c§;
      }
      
      public function get currentTime() : Number
      {
         return this.§@Q§;
      }
      
      public function get delay() : Number
      {
         return this.§0! §;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§@Q§);
            if(!_loc3_)
            {
               §§push(this.§0! §);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc3_)
                  {
                     addr46:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§@Q§ = §§pop();
                  if(_loc2_ || this)
                  {
                     addr55:
                     this.§0! § = param1;
                  }
                  return;
               }
            }
            §§goto(addr46);
         }
         §§goto(addr55);
      }
      
      public function get §5!9§() : Boolean
      {
         return this.§2&§;
      }
      
      public function set §5!9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§2&§ = param1;
         }
      }
      
      public function get §5f§() : Function
      {
         return this.§7!?§;
      }
      
      public function set §5f§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7!?§ = param1;
         }
      }
      
      public function get §!A§() : Function
      {
         return this.§"&§;
      }
      
      public function set §!A§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§"&§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§"3§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§"3§ = param1;
         }
      }
      
      public function get §!8§() : Array
      {
         return this.§<B§;
      }
      
      public function set §!8§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<B§ = param1;
         }
      }
      
      public function get § O§() : Array
      {
         return this.§>n§;
      }
      
      public function set § O§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>n§ = param1;
         }
      }
      
      public function get §=4§() : Array
      {
         return this.§9U§;
      }
      
      public function set §=4§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§9U§ = param1;
         }
      }
   }
}
