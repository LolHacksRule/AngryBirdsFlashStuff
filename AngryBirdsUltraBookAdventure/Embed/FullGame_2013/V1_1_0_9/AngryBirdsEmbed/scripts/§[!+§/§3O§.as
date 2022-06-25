package §[!+§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3O§ extends EventDispatcher implements §"N§
   {
       
      
      private var §@N§:Object;
      
      private var §4!3§:String;
      
      private var §5t§:Vector.<String>;
      
      private var §#!>§:Vector.<Number>;
      
      private var §#!D§:Vector.<Number>;
      
      private var §%!F§:Function;
      
      private var §,!H§:Function;
      
      private var §7!%§:Function;
      
      private var §3!<§:Array;
      
      private var §`!&§:Array;
      
      private var §1e§:Array;
      
      private var §1!J§:Number;
      
      private var §?-§:Number;
      
      private var §40§:Number;
      
      private var §3,§:Boolean;
      
      public function §3O§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         this.§@N§ = param1;
         this.§?-§ = 0;
         if(!_loc4_)
         {
            this.§1!J§ = Math.max(0.0001,param2);
            if(!(_loc4_ && param2))
            {
               this.§40§ = 0;
               this.§4!3§ = param3;
            }
            this.§3,§ = false;
            this.§5t§ = new Vector.<String>(0);
            this.§#!>§ = new Vector.<Number>(0);
         }
         this.§#!D§ = new Vector.<Number>(0);
      }
      
      public function § !$§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§@N§ == null)
            {
               if(_loc3_ || param2)
               {
                  return;
               }
               §§goto(addr63);
            }
            else
            {
               addr52:
               this.§5t§.push(param1);
               if(_loc3_ || param2)
               {
                  addr63:
                  this.§#!>§.push(Number.NaN);
                  if(_loc3_)
                  {
                     addr70:
                     this.§#!D§.push(param2);
                  }
                  return;
               }
            }
            §§goto(addr70);
         }
         §§goto(addr52);
      }
      
      public function §6T§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§ !$§("scaleX",param1);
            if(!_loc3_)
            {
               addr29:
               this.§ !$§("scaleY",param1);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§ !$§("x",param1);
            if(!(_loc4_ && _loc3_))
            {
               addr29:
               this.§ !$§("y",param2);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §2!-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§ !$§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc11_ || this)
         {
            §§push(param1);
            if(_loc11_ || param1)
            {
               if(§§pop() == 0)
               {
                  if(_loc11_)
                  {
                     §§goto(addr46);
                  }
               }
               §§push(this.§?-§);
               if(!_loc12_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            §§push(this);
            §§push(this.§?-§);
            if(_loc11_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§?-§ = §§pop();
            §§push(this.§?-§);
            if(!(_loc12_ && param1))
            {
               §§push(0);
               if(_loc11_)
               {
                  §§push(§§pop() < §§pop());
                  §§push(§§pop() < §§pop());
                  if(!_loc12_)
                  {
                     if(!§§pop())
                     {
                        if(_loc11_ || this)
                        {
                           §§pop();
                           if(_loc11_)
                           {
                              §§push(_loc2_);
                              if(!_loc12_)
                              {
                                 addr94:
                                 if(§§pop() >= this.§1!J§)
                                 {
                                    return;
                                 }
                                 §§push(this.§^9§);
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    §§push(null);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          addr116:
                                          §§push(!§§pop());
                                          §§push(!§§pop());
                                          if(!(_loc12_ && _loc3_))
                                          {
                                             addr125:
                                             if(§§pop())
                                             {
                                                §§pop();
                                                §§push(_loc2_);
                                                if(!_loc12_)
                                                {
                                                   §§push(0);
                                                   if(_loc11_)
                                                   {
                                                      addr133:
                                                      §§push(§§pop() <= §§pop());
                                                      if(_loc11_ || _loc2_)
                                                      {
                                                         addr141:
                                                         addr142:
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            addr173:
                                                            addr174:
                                                            §§push(this.§?-§);
                                                            if(_loc11_ || this)
                                                            {
                                                               addr153:
                                                               §§push(0);
                                                            }
                                                            var _loc3_:Number = §§pop();
                                                            var _loc4_:int = this.§#!>§.length;
                                                            var _loc5_:int = 0;
                                                            while(true)
                                                            {
                                                               if(_loc5_ >= _loc4_)
                                                               {
                                                                  §§push(this.§5a§);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(null);
                                                                     if(_loc11_ || this)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           if(!(_loc12_ && this))
                                                                           {
                                                                              §§push(this.§5a§);
                                                                              if(!(_loc12_ && _loc3_))
                                                                              {
                                                                                 §§push(null);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    addr345:
                                                                                    §§push(this.§`!&§);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§pop().apply(§§pop(),§§pop());
                                                                                       if(_loc11_ || _loc3_)
                                                                                       {
                                                                                          addr357:
                                                                                          §§push(_loc2_);
                                                                                          if(_loc11_ || _loc2_)
                                                                                          {
                                                                                             addr365:
                                                                                             §§push(this.§1!J§);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr388:
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                dispatchEvent(new Event(Event.§'D§));
                                                                                                addr406:
                                                                                                §§push(this.onComplete);
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   addr410:
                                                                                                   §§push(null);
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      if(§§pop() != §§pop())
                                                                                                      {
                                                                                                         if(_loc11_ || _loc2_)
                                                                                                         {
                                                                                                            addr431:
                                                                                                            this.onComplete.apply(null,this.§1e§);
                                                                                                            addr432:
                                                                                                            return;
                                                                                                            addr429:
                                                                                                            addr428:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr432);
                                                                                                   }
                                                                                                   §§goto(addr429);
                                                                                                }
                                                                                                §§goto(addr428);
                                                                                                addr390:
                                                                                             }
                                                                                             §§goto(addr432);
                                                                                          }
                                                                                          §§goto(addr388);
                                                                                          §§push(this.§1!J§);
                                                                                       }
                                                                                       §§goto(addr406);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr431);
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                     §§goto(addr345);
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               else
                                                               {
                                                                  if(isNaN(this.§#!>§[_loc5_]))
                                                                  {
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        this.§#!>§[_loc5_] = this.§@N§[this.§5t§[_loc5_]] as Number;
                                                                        addr221:
                                                                        _loc6_ = this.§#!>§[_loc5_];
                                                                        §§push(Number(this.§#!D§[_loc5_]));
                                                                        §§push(Number(this.§#!D§[_loc5_]));
                                                                        if(!_loc12_)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!(_loc12_ && _loc2_))
                                                                              {
                                                                                 §§push(Number(§§pop() - §§pop()));
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    _loc9_ = §^4§.§=!F§(this.§4!3§);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                          if(_loc11_ || _loc3_)
                                                                                          {
                                                                                             addr281:
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr284:
                                                                                                _loc10_ = §§pop();
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   if(this.§3,§)
                                                                                                   {
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         addr296:
                                                                                                         _loc10_ = Number(Math.round(_loc10_));
                                                                                                         addr292:
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr309:
                                                                                                         _loc5_++;
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   this.§@N§[this.§5t§[_loc5_]] = _loc10_;
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr309);
                                                                                                }
                                                                                                §§goto(addr292);
                                                                                             }
                                                                                             §§goto(addr296);
                                                                                          }
                                                                                          §§goto(addr284);
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                    §§goto(addr296);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr365);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr365);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr390);
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                            }
                                                            §§push(§§pop() < §§pop());
                                                            if(_loc11_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc11_)
                                                                     {
                                                                        §§goto(addr357);
                                                                        §§push(this.§?-§);
                                                                     }
                                                                     §§goto(addr406);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr365);
                                                         }
                                                         addr155:
                                                         if(§§pop())
                                                         {
                                                            addr159:
                                                            this.§^9§.apply(null,this.§3!<§);
                                                         }
                                                         §§push(Math.min(this.§1!J§,this.§?-§) / this.§1!J§);
                                                         if(!_loc12_)
                                                         {
                                                            §§goto(addr173);
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                   }
                                                   §§goto(addr155);
                                                   §§push(§§pop() >= §§pop());
                                                }
                                                §§goto(addr153);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr141);
                                    }
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr125);
               }
               §§goto(addr133);
            }
            §§goto(addr173);
         }
         addr46:
      }
      
      public function get §^l§() : Boolean
      {
         return this.§?-§ >= this.§1!J§;
      }
      
      public function get target() : Object
      {
         return this.§@N§;
      }
      
      public function get §6!A§() : String
      {
         return this.§4!3§;
      }
      
      public function get §9t§() : Number
      {
         return this.§1!J§;
      }
      
      public function get currentTime() : Number
      {
         return this.§?-§;
      }
      
      public function get delay() : Number
      {
         return this.§40§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§?-§);
            if(_loc3_)
            {
               §§push(this.§40§);
               if(_loc3_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc3_ || this)
                  {
                     addr47:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§?-§ = §§pop();
                  if(!(_loc2_ && param1))
                  {
                     this.§40§ = param1;
                  }
                  §§goto(addr59);
               }
            }
            §§goto(addr47);
         }
         addr59:
      }
      
      public function get §,h§() : Boolean
      {
         return this.§3,§;
      }
      
      public function set §,h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§3,§ = param1;
         }
      }
      
      public function get §^9§() : Function
      {
         return this.§%!F§;
      }
      
      public function set §^9§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§%!F§ = param1;
         }
      }
      
      public function get §5a§() : Function
      {
         return this.§,!H§;
      }
      
      public function set §5a§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!H§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§7!%§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§7!%§ = param1;
         }
      }
      
      public function get §#!%§() : Array
      {
         return this.§3!<§;
      }
      
      public function set §#!%§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3!<§ = param1;
         }
      }
      
      public function get §5#§() : Array
      {
         return this.§`!&§;
      }
      
      public function set §5#§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§`!&§ = param1;
         }
      }
      
      public function get §1!H§() : Array
      {
         return this.§1e§;
      }
      
      public function set §1!H§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§1e§ = param1;
         }
      }
   }
}
