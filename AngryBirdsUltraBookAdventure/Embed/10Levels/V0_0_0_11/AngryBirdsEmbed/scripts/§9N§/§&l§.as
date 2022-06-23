package §9N§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §&l§ extends EventDispatcher implements §!o§
   {
       
      
      private var §"^§:Object;
      
      private var §6>§:String;
      
      private var §5!1§:Vector.<String>;
      
      private var §;f§:Vector.<Number>;
      
      private var §#L§:Vector.<Number>;
      
      private var §>'§:Function;
      
      private var § S§:Function;
      
      private var §8q§:Function;
      
      private var §%o§:Array;
      
      private var §`!F§:Array;
      
      private var §?i§:Array;
      
      private var §1I§:Number;
      
      private var §1!E§:Number;
      
      private var §1!-§:Number;
      
      private var §3!A§:Boolean;
      
      public function §&l§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         this.§"^§ = param1;
         this.§1!E§ = 0;
         this.§1I§ = Math.max(0.0001,param2);
         if(!_loc4_)
         {
            this.§1!-§ = 0;
            if(!(_loc4_ && param3))
            {
               this.§6>§ = param3;
               if(_loc5_)
               {
                  this.§3!A§ = false;
               }
            }
         }
         this.§5!1§ = new Vector.<String>(0);
         if(_loc5_)
         {
            this.§;f§ = new Vector.<Number>(0);
            if(_loc5_)
            {
               addr91:
               this.§#L§ = new Vector.<Number>(0);
            }
            return;
         }
         §§goto(addr91);
      }
      
      public function §&O§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(this.§"^§ == null)
            {
               if(!(_loc3_ && this))
               {
                  §§goto(addr55);
               }
               else
               {
                  addr76:
                  this.§#L§.push(param2);
               }
            }
            else
            {
               this.§5!1§.push(param1);
               if(_loc4_ || param2)
               {
                  this.§;f§.push(Number.NaN);
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
      
      public function §82§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§&O§("scaleX",param1);
            if(!_loc3_)
            {
               addr29:
               this.§&O§("scaleY",param1);
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
            this.§&O§("x",param1);
            if(_loc3_ || _loc3_)
            {
               addr29:
               this.§&O§("y",param2);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §]l§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&O§("alpha",param1);
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
               §§push(this.§1!E§);
               if(!_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc12_)
            {
               §§push(this);
               §§push(this.§1!E§);
               if(!(_loc11_ && this))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§1!E§ = §§pop();
               §§push(this.§1!E§);
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
                                    §§push(§§pop() >= this.§1I§);
                                    if(_loc12_ || param1)
                                    {
                                       addr99:
                                       if(§§pop())
                                       {
                                          return;
                                       }
                                       §§push(this.§'#§);
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
                                                                        §§push(this.§1!E§);
                                                                        if(_loc12_)
                                                                        {
                                                                           addr157:
                                                                           §§push(0);
                                                                        }
                                                                        var _loc3_:* = §§pop();
                                                                        var _loc4_:int = this.§;f§.length;
                                                                        var _loc5_:int = 0;
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ >= _loc4_)
                                                                           {
                                                                              §§push(this.§3!<§);
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§push(null);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       addr423:
                                                                                       §§push(this.§3!<§);
                                                                                       if(_loc12_ || _loc3_)
                                                                                       {
                                                                                          §§push(null);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             addr357:
                                                                                             §§push(this.§`!F§);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§pop().apply(§§pop(),§§pop());
                                                                                                addr362:
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(this.§1I§);
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
                                                                                                                  if(this.§1!E§ >= this.§1I§)
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
                                                                                          §§push(this.§?i§);
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
                                                                              if(isNaN(this.§;f§[_loc5_]))
                                                                              {
                                                                                 this.§;f§[_loc5_] = this.§"^§[this.§5!1§[_loc5_]] as Number;
                                                                                 if(_loc12_ || this)
                                                                                 {
                                                                                    addr230:
                                                                                    §§push(Number(this.§;f§[_loc5_]));
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       §§push(Number(this.§#L§[_loc5_]));
                                                                                       §§push(Number(this.§#L§[_loc5_]));
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
                                                                                    _loc9_ = §>C§.§+!&§(this.§6>§);
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
                                                                                                this.§"^§[this.§5!1§[_loc5_]] = _loc10_;
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
                                                                                             if(this.§3!A§)
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
                                                                        dispatchEvent(new Event(Event.§0=§));
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
                                                                        this.§'#§.apply(null,this.§%o§);
                                                                        addr160:
                                                                     }
                                                                     §§push(Math.min(this.§1I§,this.§1!E§) / this.§1I§);
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
      
      public function get §!D§() : Boolean
      {
         return this.§1!E§ >= this.§1I§;
      }
      
      public function get target() : Object
      {
         return this.§"^§;
      }
      
      public function get §+4§() : String
      {
         return this.§6>§;
      }
      
      public function get §2r§() : Number
      {
         return this.§1I§;
      }
      
      public function get currentTime() : Number
      {
         return this.§1!E§;
      }
      
      public function get delay() : Number
      {
         return this.§1!-§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§1!E§);
            if(_loc3_ || _loc2_)
            {
               §§push(this.§1!-§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     addr67:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§1!E§ = §§pop();
                  if(!(_loc2_ && this))
                  {
                     addr76:
                     this.§1!-§ = param1;
                  }
                  return;
               }
            }
            §§goto(addr67);
         }
         §§goto(addr76);
      }
      
      public function get §;U§() : Boolean
      {
         return this.§3!A§;
      }
      
      public function set §;U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3!A§ = param1;
         }
      }
      
      public function get §'#§() : Function
      {
         return this.§>'§;
      }
      
      public function set §'#§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§>'§ = param1;
         }
      }
      
      public function get §3!<§() : Function
      {
         return this.§ S§;
      }
      
      public function set §3!<§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§ S§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§8q§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8q§ = param1;
         }
      }
      
      public function get §2I§() : Array
      {
         return this.§%o§;
      }
      
      public function set §2I§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%o§ = param1;
         }
      }
      
      public function get §2k§() : Array
      {
         return this.§`!F§;
      }
      
      public function set §2k§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§`!F§ = param1;
         }
      }
      
      public function get §"!6§() : Array
      {
         return this.§?i§;
      }
      
      public function set §"!6§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?i§ = param1;
         }
      }
   }
}
