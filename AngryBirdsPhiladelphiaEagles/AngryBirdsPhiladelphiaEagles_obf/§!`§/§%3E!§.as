package §!`§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>!§ extends EventDispatcher implements §%9§
   {
       
      
      private var §8S§:Object;
      
      private var §3!H§:String;
      
      private var §2!'§:Vector.<String>;
      
      private var §5v§:Vector.<Number>;
      
      private var §5V§:Vector.<Number>;
      
      private var §-3§:Function;
      
      private var §!d§:Function;
      
      private var §1A§:Function;
      
      private var §"!&§:Array;
      
      private var §3!L§:Array;
      
      private var §#!7§:Array;
      
      private var §5P§:Number;
      
      private var §`c§:Number;
      
      private var §'!D§:Number;
      
      private var §<X§:Boolean;
      
      public function §>!§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         this.§8S§ = param1;
         do
         {
            this.§`c§ = 0;
            this.§5P§ = Math.max(0.0001,param2);
            this.§'!D§ = 0;
         }
         while(_loc5_ && param1);
         
         this.§3!H§ = param3;
         do
         {
            this.§<X§ = false;
            this.§2!'§ = new Vector.<String>(0);
         }
         while(!_loc4_);
         
         this.§5v§ = new Vector.<Number>(0);
         do
         {
            this.§5V§ = new Vector.<Number>(0);
         }
         while(_loc5_);
         
      }
      
      public function §77§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§8S§ != null)
            {
               while(true)
               {
                  this.§2!'§.push(param1);
                  §§goto(addr85);
               }
            }
            return;
         }
         addr85:
         loop1:
         while(true)
         {
            this.§5v§.push(Number.NaN);
            while(!(_loc3_ && this))
            {
               this.§5V§.push(param2);
               if(!(_loc3_ && this))
               {
                  if(!_loc3_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        break loop1;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §9F§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§77§("scaleX",param1);
         }
         do
         {
            this.§77§("scaleY",param1);
         }
         while(!_loc3_);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§77§("x",param1);
            do
            {
               this.§77§("y",param2);
            }
            while(_loc3_);
            
         }
      }
      
      public function § !M§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§77§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc11_)
         {
            §§push(param1);
            if(_loc11_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc12_ && this))
                  {
                     §§goto(addr41);
                  }
               }
               §§push(this.§`c§);
               if(_loc11_)
               {
                  addr46:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc12_ && _loc2_))
               {
                  §§push(this);
                  §§push(this.§`c§);
                  if(_loc11_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§`c§ = §§pop();
                  §§push(this.§`c§);
                  loop0:
                  while(true)
                  {
                     §§push(0);
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        §§push(§§pop() < §§pop());
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 §§push(_loc2_);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop() >= this.§5P§);
                                    addr130:
                                    if(_loc11_ || _loc3_)
                                    {
                                       §§push(0);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                          if(_loc11_ || _loc3_)
                                          {
                                             if(!_loc11_)
                                             {
                                                break;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc11_)
                                                {
                                                   if(_loc12_ && _loc2_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                   }
                                                   else
                                                   {
                                                      loop16:
                                                      while(§§pop())
                                                      {
                                                         if(_loc11_ || this)
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(this.§"!7§);
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  §§push(null);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§pop().apply(§§pop(),this.§"!&§);
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        if(_loc11_ || _loc3_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break loop16;
                                                                              addr126:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§goto(addr130);
                                                                              }
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        addr169:
                                                                        addr161:
                                                                        addr169:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr181:
                                                                              return;
                                                                           }
                                                                           §§push(this.§`c§);
                                                                           if(_loc11_ || _loc3_)
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           §§push(!§§pop());
                                                                           break loop14;
                                                                        }
                                                                        var _loc3_:* = §§pop();
                                                                        var _loc4_:int = this.§5v§.length;
                                                                        var _loc5_:int = 0;
                                                                        addr372:
                                                                        if(_loc5_ < _loc4_)
                                                                        {
                                                                           if(isNaN(this.§5v§[_loc5_]))
                                                                           {
                                                                              this.§5v§[_loc5_] = this.§8S§[this.§2!'§[_loc5_]] as Number;
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr261:
                                                                                 _loc6_ = this.§5v§[_loc5_];
                                                                                 §§push(Number(this.§5V§[_loc5_]));
                                                                                 §§push(Number(this.§5V§[_loc5_]));
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       addr252:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr261);
                                                                                             }
                                                                                             _loc9_ = §&!@§.§^n§(this.§3!H§);
                                                                                             if(_loc11_ || _loc2_)
                                                                                             {
                                                                                                addr370:
                                                                                                §§push(_loc6_);
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                                   if(_loc11_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                _loc10_ = §§pop();
                                                                                             }
                                                                                             addr371:
                                                                                             if(this.§<X§)
                                                                                             {
                                                                                                addr337:
                                                                                                §§push(Number(Math.round(_loc10_)));
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   _loc10_ = §§pop();
                                                                                                   addr344:
                                                                                                   if(!(_loc12_ && _loc3_))
                                                                                                   {
                                                                                                      addr314:
                                                                                                      this.§8S§[this.§2!'§[_loc5_]] = _loc10_;
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(!(_loc12_ && this))
                                                                                                         {
                                                                                                            _loc5_++;
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr314);
                                                                                                               }
                                                                                                               §§goto(addr372);
                                                                                                            }
                                                                                                            §§goto(addr314);
                                                                                                         }
                                                                                                         §§goto(addr337);
                                                                                                      }
                                                                                                      §§goto(addr344);
                                                                                                   }
                                                                                                   §§goto(addr371);
                                                                                                }
                                                                                                §§goto(addr370);
                                                                                             }
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                          addr492:
                                                                                          §§push(this.§`c§);
                                                                                          if(_loc11_ || this)
                                                                                          {
                                                                                             §§push(this.§5P§);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(§§pop() >= §§pop());
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   addr491:
                                                                                                   §§pop();
                                                                                                   §§goto(addr492);
                                                                                                }
                                                                                                addr472:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      addr476:
                                                                                                      dispatchEvent(new Event(Event.§,m§));
                                                                                                   }
                                                                                                   addr482:
                                                                                                   §§push(this.onComplete);
                                                                                                   if(!(_loc12_ && param1))
                                                                                                   {
                                                                                                      addr422:
                                                                                                      §§push(null);
                                                                                                      if(_loc11_ || this)
                                                                                                      {
                                                                                                         §§goto(addr408);
                                                                                                      }
                                                                                                      addr443:
                                                                                                      §§pop().apply(§§pop(),this.§#!7§);
                                                                                                      addr408:
                                                                                                      if(§§pop() != §§pop())
                                                                                                      {
                                                                                                         if(_loc12_ && _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr482);
                                                                                                         }
                                                                                                         addr440:
                                                                                                         §§push(this.onComplete);
                                                                                                         §§push(null);
                                                                                                      }
                                                                                                      return;
                                                                                                      addr441:
                                                                                                   }
                                                                                                   §§goto(addr440);
                                                                                                }
                                                                                                §§goto(addr408);
                                                                                             }
                                                                                             addr486:
                                                                                             §§push(§§pop() < §§pop());
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr491);
                                                                                                }
                                                                                                §§goto(addr472);
                                                                                             }
                                                                                             §§goto(addr491);
                                                                                          }
                                                                                       }
                                                                                       §§push(this.§5P§);
                                                                                    }
                                                                                    §§goto(addr486);
                                                                                 }
                                                                                 §§goto(addr252);
                                                                              }
                                                                              §§goto(addr476);
                                                                           }
                                                                           §§goto(addr261);
                                                                        }
                                                                        if(!(_loc12_ && _loc3_))
                                                                        {
                                                                           §§push(this.§-!M§);
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(null);
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    §§push(this.§-!M§);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§push(null);
                                                                                       if(!(_loc12_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.§3!L§);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§pop().apply(§§pop(),§§pop());
                                                                                             addr483:
                                                                                             §§goto(addr252);
                                                                                             §§push(_loc2_);
                                                                                          }
                                                                                          §§goto(addr443);
                                                                                       }
                                                                                       §§goto(addr408);
                                                                                    }
                                                                                    §§goto(addr422);
                                                                                 }
                                                                                 §§goto(addr483);
                                                                              }
                                                                              §§goto(addr441);
                                                                           }
                                                                        }
                                                                        §§goto(addr422);
                                                                     }
                                                                     addr117:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr168:
                                                                  }
                                                                  §§goto(addr169);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  addr167:
                                                               }
                                                               §§goto(addr168);
                                                            }
                                                            addr102:
                                                         }
                                                         §§goto(addr117);
                                                      }
                                                      §§push(Math.min(this.§5P§,this.§`c§) / this.§5P§);
                                                      if(_loc11_ || _loc3_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr169);
                                                      addr93:
                                                   }
                                                   §§goto(addr161);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr126);
                                                   }
                                                   addr172:
                                                }
                                                else
                                                {
                                                   §§goto(addr148);
                                                }
                                                §§goto(addr161);
                                             }
                                             addr148:
                                          }
                                          §§goto(addr172);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr180);
                           }
                        }
                     }
                  }
               }
               §§goto(addr102);
            }
            §§goto(addr46);
         }
         addr41:
      }
      
      public function get §,y§() : Boolean
      {
         return this.§`c§ >= this.§5P§;
      }
      
      public function get target() : Object
      {
         return this.§8S§;
      }
      
      public function get § Y§() : String
      {
         return this.§3!H§;
      }
      
      public function get §[@§() : Number
      {
         return this.§5P§;
      }
      
      public function get §=d§() : Number
      {
         return this.§`c§;
      }
      
      public function get delay() : Number
      {
         return this.§'!D§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this);
            §§push(this.§`c§);
            if(_loc2_ || this)
            {
               §§push(this.§'!D§);
               if(!_loc3_)
               {
                  addr74:
                  §§push(§§pop() + §§pop());
                  if(_loc2_)
                  {
                     §§push(param1);
                  }
                  §§pop().§`c§ = §§pop();
                  do
                  {
                     this.§'!D§ = param1;
                  }
                  while(_loc3_);
                  
                  return;
                  addr75:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr74);
         }
         §§goto(addr75);
      }
      
      public function get §[Y§() : Boolean
      {
         return this.§<X§;
      }
      
      public function set §[Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§<X§ = param1;
         }
      }
      
      public function get §"!7§() : Function
      {
         return this.§-3§;
      }
      
      public function set §"!7§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-3§ = param1;
         }
      }
      
      public function get §-!M§() : Function
      {
         return this.§!d§;
      }
      
      public function set §-!M§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!d§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§1A§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§1A§ = param1;
         }
      }
      
      public function get §;-§() : Array
      {
         return this.§"!&§;
      }
      
      public function set §;-§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"!&§ = param1;
         }
      }
      
      public function get §?T§() : Array
      {
         return this.§3!L§;
      }
      
      public function set §?T§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3!L§ = param1;
         }
      }
      
      public function get §%!C§() : Array
      {
         return this.§#!7§;
      }
      
      public function set §%!C§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§#!7§ = param1;
         }
      }
   }
}
