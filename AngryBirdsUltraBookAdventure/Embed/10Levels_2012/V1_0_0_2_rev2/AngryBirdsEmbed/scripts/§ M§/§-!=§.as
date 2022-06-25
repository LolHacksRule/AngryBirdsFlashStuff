package § M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-!=§ extends EventDispatcher implements §]-§
   {
       
      
      private var §6[§:Object;
      
      private var §3]§:String;
      
      private var §2!7§:Vector.<String>;
      
      private var § !C§:Vector.<Number>;
      
      private var §?w§:Vector.<Number>;
      
      private var §<x§:Function;
      
      private var §4k§:Function;
      
      private var §]!8§:Function;
      
      private var §;c§:Array;
      
      private var §^;§:Array;
      
      private var §[C§:Array;
      
      private var §98§:Number;
      
      private var §-r§:Number;
      
      private var §?-§:Number;
      
      private var §"!4§:Boolean;
      
      public function §-!=§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         this.§6[§ = param1;
         this.§-r§ = 0;
         this.§98§ = Math.max(0.0001,param2);
         if(!_loc4_)
         {
            this.§?-§ = 0;
            if(!(_loc4_ && param3))
            {
               this.§3]§ = param3;
               if(_loc5_)
               {
                  this.§"!4§ = false;
               }
            }
         }
         this.§2!7§ = new Vector.<String>(0);
         if(_loc5_)
         {
            this.§ !C§ = new Vector.<Number>(0);
            if(_loc5_)
            {
               addr91:
               this.§?w§ = new Vector.<Number>(0);
            }
            return;
         }
         §§goto(addr91);
      }
      
      public function §@w§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(this.§6[§ == null)
            {
               if(!(_loc3_ && this))
               {
                  §§goto(addr55);
               }
               else
               {
                  addr76:
                  this.§?w§.push(param2);
               }
            }
            else
            {
               this.§2!7§.push(param1);
               if(_loc4_ || param2)
               {
                  this.§ !C§.push(Number.NaN);
                  if(_loc4_)
                  {
                     §§goto(addr76);
                  }
               }
            }
            return;
         }
         addr55:
      }
      
      public function §?4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@w§("scaleX",param1);
            if(!_loc3_)
            {
               addr29:
               this.§@w§("scaleY",param1);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§@w§("x",param1);
            if(_loc3_ || _loc3_)
            {
               addr29:
               this.§@w§("y",param2);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §75§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@w§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(!_loc11_)
         {
            §§push(param1);
            if(!_loc11_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc11_ && _loc2_))
                  {
                     §§goto(addr42);
                  }
               }
               §§push(this.§-r§);
               if(!_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc12_)
            {
               §§push(this);
               §§push(this.§-r§);
               if(!(_loc11_ && this))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§-r§ = §§pop();
               §§push(this.§-r§);
               if(_loc12_)
               {
                  §§push(0);
                  if(_loc12_ || _loc3_)
                  {
                     §§push(§§pop() < §§pop());
                     if(!_loc11_)
                     {
                        §§push(§§pop());
                        if(!_loc11_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc11_)
                              {
                                 §§pop();
                                 addr86:
                                 §§push(_loc2_);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() >= this.§98§);
                                    if(_loc12_ || param1)
                                    {
                                       addr99:
                                       if(§§pop())
                                       {
                                          return;
                                       }
                                       §§push(this.§%r§);
                                       if(!_loc11_)
                                       {
                                          §§push(null);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc11_ && param1))
                                             {
                                                addr117:
                                                §§push(!§§pop());
                                                §§push(!§§pop());
                                                if(!_loc11_)
                                                {
                                                   addr120:
                                                   if(§§pop())
                                                   {
                                                      addr121:
                                                      §§pop();
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               addr140:
                                                               §§push(§§pop() <= §§pop());
                                                               if(_loc12_ || _loc2_)
                                                               {
                                                                  addr148:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        §§pop();
                                                                        addr183:
                                                                        §§push(this.§-r§);
                                                                        if(_loc12_)
                                                                        {
                                                                           addr157:
                                                                           §§push(0);
                                                                        }
                                                                        var _loc3_:* = §§pop();
                                                                        var _loc4_:int = this.§ !C§.length;
                                                                        var _loc5_:int = 0;
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ >= _loc4_)
                                                                           {
                                                                              §§push(this.§7!@§);
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§push(null);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       addr423:
                                                                                       §§push(this.§7!@§);
                                                                                       if(_loc12_ || _loc3_)
                                                                                       {
                                                                                          §§push(null);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             addr357:
                                                                                             §§push(this.§^;§);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§pop().apply(§§pop(),§§pop());
                                                                                                addr362:
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(this.§98§);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      addr369:
                                                                                                      §§push(§§pop() < §§pop());
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  addr384:
                                                                                                                  if(this.§-r§ >= this.§98§)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr427);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr384);
                                                                                             }
                                                                                             §§goto(addr426);
                                                                                          }
                                                                                          addr424:
                                                                                          addr426:
                                                                                          §§pop().apply(§§pop(),§§pop());
                                                                                          addr427:
                                                                                          return;
                                                                                          §§push(this.§[C§);
                                                                                       }
                                                                                       §§goto(addr424);
                                                                                       §§push(null);
                                                                                    }
                                                                                    §§goto(addr362);
                                                                                 }
                                                                                 §§goto(addr357);
                                                                              }
                                                                              addr410:
                                                                              §§push(null);
                                                                              if(!(_loc11_ && this))
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§goto(addr423);
                                                                                       §§push(this.onComplete);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr427);
                                                                              }
                                                                              §§goto(addr424);
                                                                           }
                                                                           else
                                                                           {
                                                                              if(isNaN(this.§ !C§[_loc5_]))
                                                                              {
                                                                                 this.§ !C§[_loc5_] = this.§6[§[this.§2!7§[_loc5_]] as Number;
                                                                                 if(_loc12_ || this)
                                                                                 {
                                                                                    addr230:
                                                                                    §§push(Number(this.§ !C§[_loc5_]));
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       §§push(Number(this.§?w§[_loc5_]));
                                                                                       §§push(Number(this.§?w§[_loc5_]));
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          §§push(_loc6_);
                                                                                          if(!(_loc11_ && _loc2_))
                                                                                          {
                                                                                             §§push(Number(§§pop() - §§pop()));
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    _loc8_ = §§pop();
                                                                                    if(!(_loc12_ || param1))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    _loc9_ = §'f§.§+!0§(this.§3]§);
                                                                                    if(!(_loc11_ && param1))
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                             }
                                                                                             addr315:
                                                                                             _loc10_ = §§pop();
                                                                                             if(!(_loc11_ && _loc2_))
                                                                                             {
                                                                                                addr323:
                                                                                                this.§6[§[this.§2!7§[_loc5_]] = _loc10_;
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   addr333:
                                                                                                   _loc5_++;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr333);
                                                                                          }
                                                                                          _loc10_ = §§pop();
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(this.§"!4§)
                                                                                             {
                                                                                                if(_loc12_ || _loc3_)
                                                                                                {
                                                                                                   addr311:
                                                                                                   §§goto(addr315);
                                                                                                   §§push(Number(Math.round(_loc10_)));
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr323);
                                                                                          }
                                                                                          §§goto(addr311);
                                                                                       }
                                                                                       §§goto(addr315);
                                                                                    }
                                                                                    §§goto(addr333);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr230);
                                                                           }
                                                                        }
                                                                        dispatchEvent(new Event(Event.§1E§));
                                                                        §§push(this.onComplete);
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           §§goto(addr410);
                                                                        }
                                                                        §§goto(addr423);
                                                                     }
                                                                     addr159:
                                                                     if(§§pop())
                                                                     {
                                                                        addr163:
                                                                        this.§%r§.apply(null,this.§;c§);
                                                                        addr160:
                                                                     }
                                                                     §§push(Math.min(this.§98§,this.§-r§) / this.§98§);
                                                                     if(_loc12_ || param1)
                                                                     {
                                                                        addr182:
                                                                        §§goto(addr183);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr183);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr159);
                                                            §§push(§§pop() >= §§pop());
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                }
                                                §§goto(addr148);
                                             }
                                             §§goto(addr117);
                                          }
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr140);
               }
               §§goto(addr183);
            }
            §§goto(addr86);
         }
         addr42:
      }
      
      public function get §@!+§() : Boolean
      {
         return this.§-r§ >= this.§98§;
      }
      
      public function get target() : Object
      {
         return this.§6[§;
      }
      
      public function get §[T§() : String
      {
         return this.§3]§;
      }
      
      public function get §=!,§() : Number
      {
         return this.§98§;
      }
      
      public function get currentTime() : Number
      {
         return this.§-r§;
      }
      
      public function get delay() : Number
      {
         return this.§?-§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§-r§);
            if(_loc3_ || _loc2_)
            {
               §§push(this.§?-§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     addr67:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§-r§ = §§pop();
                  if(!(_loc2_ && this))
                  {
                     addr76:
                     this.§?-§ = param1;
                  }
                  return;
               }
            }
            §§goto(addr67);
         }
         §§goto(addr76);
      }
      
      public function get §%d§() : Boolean
      {
         return this.§"!4§;
      }
      
      public function set §%d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"!4§ = param1;
         }
      }
      
      public function get §%r§() : Function
      {
         return this.§<x§;
      }
      
      public function set §%r§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§<x§ = param1;
         }
      }
      
      public function get §7!@§() : Function
      {
         return this.§4k§;
      }
      
      public function set §7!@§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§4k§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§]!8§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]!8§ = param1;
         }
      }
      
      public function get §"!6§() : Array
      {
         return this.§;c§;
      }
      
      public function set §"!6§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;c§ = param1;
         }
      }
      
      public function get §0F§() : Array
      {
         return this.§^;§;
      }
      
      public function set §0F§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§^;§ = param1;
         }
      }
      
      public function get §5-§() : Array
      {
         return this.§[C§;
      }
      
      public function set §5-§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[C§ = param1;
         }
      }
   }
}
