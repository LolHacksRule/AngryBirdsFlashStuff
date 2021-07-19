package §+!Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3!V§ extends EventDispatcher implements §7!@§
   {
       
      
      private var §;D§:Object;
      
      private var §&=§:String;
      
      private var §8U§:Vector.<String>;
      
      private var §&!I§:Vector.<Number>;
      
      private var §;v§:Vector.<Number>;
      
      private var §+!"§:Function;
      
      private var §[!Y§:Function;
      
      private var §&6§:Function;
      
      private var §%k§:Array;
      
      private var §;W§:Array;
      
      private var § 8§:Array;
      
      private var §@!f§:Number;
      
      private var §%"-§:Number;
      
      private var §0!<§:Number;
      
      private var §>b§:Boolean;
      
      public function §3!V§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§;D§ = param1;
               addr148:
               while(true)
               {
                  this.§%"-§ = 0;
                  addr143:
                  while(true)
                  {
                     this.§@!f§ = Math.max(0.0001,param2);
                     addr128:
                     while(true)
                     {
                        this.§0!<§ = 0;
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public function §`!>§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(this.§;D§ == null)
            {
               if(!(_loc4_ && this))
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr67);
               }
            }
            addr67:
            §§goto(addr59);
         }
         addr59:
         while(true)
         {
            this.§8U§.push(param1);
            do
            {
               this.§&!I§.push(Number.NaN);
               do
               {
                  this.§;v§.push(param2);
               }
               while(_loc4_ && param1);
               
            }
            while(!_loc3_);
            
            if(_loc3_ || param2)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function §&!m§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§`!>§("scaleX",param1);
            do
            {
               this.§`!>§("scaleY",param1);
            }
            while(_loc2_);
            
         }
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§`!>§("x",param1);
            do
            {
               this.§`!>§("y",param2);
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      public function §&X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`!>§("alpha",param1);
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
         if(_loc11_ || _loc2_)
         {
            §§push(param1);
            if(_loc11_)
            {
               if(§§pop() == 0)
               {
                  if(_loc11_ || this)
                  {
                     §§goto(addr46);
                  }
               }
               §§push(this.§%"-§);
               if(_loc11_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc11_)
            {
               §§push(this);
               §§push(this.§%"-§);
               if(_loc11_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§%"-§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§%"-§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        while(true)
                        {
                           §§push(§§pop());
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§!!p§);
                                          while(true)
                                          {
                                             §§push(null);
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc12_ && this))
                                                {
                                                   §§push(!§§pop());
                                                   if(!(_loc12_ && param1))
                                                   {
                                                      §§push(§§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr191:
                                                            while(true)
                                                            {
                                                               if(!_loc12_)
                                                               {
                                                                  §§pop();
                                                                  addr194:
                                                                  while(true)
                                                                  {
                                                                     addr140:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr142:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           addr143:
                                                                           while(true)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§push(§§pop() <= §§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr194:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr242:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc11_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     addr268:
                                                                     var _loc3_:Number = §§pop();
                                                                     var _loc4_:int = this.§&!I§.length;
                                                                     var _loc5_:int = 0;
                                                                     addr433:
                                                                     if(_loc5_ < _loc4_)
                                                                     {
                                                                        if(isNaN(this.§&!I§[_loc5_]))
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              this.§&!I§[_loc5_] = this.§;D§[this.§8U§[_loc5_]] as Number;
                                                                              if(!_loc12_)
                                                                              {
                                                                                 addr334:
                                                                                 _loc6_ = this.§&!I§[_loc5_];
                                                                                 addr328:
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(Number(this.§;v§[_loc5_]));
                                                                                    if(_loc11_ || param1)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr307:
                                                                                             §§push(_loc6_);
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         if(_loc11_ || _loc3_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr328);
                                                                                                            }
                                                                                                            _loc9_ = §2l§.§ g§(this.§&=§);
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               addr430:
                                                                                                               §§push(_loc6_);
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                                               }
                                                                                                               _loc10_ = Number(§§pop());
                                                                                                            }
                                                                                                            addr432:
                                                                                                            if(this.§>b§)
                                                                                                            {
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  §§push(Number(Math.round(_loc10_)));
                                                                                                                  if(!_loc12_)
                                                                                                                  {
                                                                                                                     if(!(_loc12_ && param1))
                                                                                                                     {
                                                                                                                        _loc10_ = §§pop();
                                                                                                                        addr387:
                                                                                                                        this.§;D§[this.§8U§[_loc5_]] = _loc10_;
                                                                                                                        addr419:
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           _loc5_++;
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              if(_loc11_ || param1)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr387);
                                                                                                                                 }
                                                                                                                                 §§goto(addr433);
                                                                                                                              }
                                                                                                                              §§goto(addr419);
                                                                                                                           }
                                                                                                                           §§goto(addr387);
                                                                                                                        }
                                                                                                                        §§goto(addr432);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr430);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr387);
                                                                                                         }
                                                                                                         addr438:
                                                                                                         §§push(this.onUpdate);
                                                                                                         if(!(_loc12_ && this))
                                                                                                         {
                                                                                                            §§push(null);
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               if(§§pop() != §§pop())
                                                                                                               {
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     addr453:
                                                                                                                     §§push(this.onUpdate);
                                                                                                                     if(!(_loc12_ && this))
                                                                                                                     {
                                                                                                                        §§push(null);
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           §§push(this.§;W§);
                                                                                                                           if(_loc11_ || param1)
                                                                                                                           {
                                                                                                                              §§pop().apply(§§pop(),§§pop());
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 addr545:
                                                                                                                                 §§push(_loc2_ < this.§@!f§);
                                                                                                                                 if(_loc11_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr565:
                                                                                                                                       §§pop();
                                                                                                                                       addr566:
                                                                                                                                       §§push(this.§%"-§);
                                                                                                                                       if(_loc11_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr519:
                                                                                                                                          §§push(this.§@!f§);
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             addr523:
                                                                                                                                             §§push(§§pop() >= §§pop());
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                addr526:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   addr528:
                                                                                                                                                   dispatchEvent(new Event(Event.§^8§));
                                                                                                                                                   addr534:
                                                                                                                                                   if(_loc11_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.onComplete);
                                                                                                                                                      if(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         addr487:
                                                                                                                                                         §§push(null);
                                                                                                                                                         if(!_loc12_)
                                                                                                                                                         {
                                                                                                                                                            addr490:
                                                                                                                                                            if(§§pop() != §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     addr500:
                                                                                                                                                                     this.onComplete.apply(null,this.§ 8§);
                                                                                                                                                                     addr501:
                                                                                                                                                                     if(_loc12_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr534);
                                                                                                                                                                     }
                                                                                                                                                                     return;
                                                                                                                                                                     addr498:
                                                                                                                                                                     addr497:
                                                                                                                                                                     addr508:
                                                                                                                                                                     addr495:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr528);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr501);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr498);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr497);
                                                                                                                                                      addr541:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr566);
                                                                                                                                                }
                                                                                                                                                §§goto(addr501);
                                                                                                                                             }
                                                                                                                                             §§goto(addr565);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr545);
                                                                                                                                    }
                                                                                                                                    §§goto(addr526);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr565);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr500);
                                                                                                                  }
                                                                                                                  §§goto(addr508);
                                                                                                               }
                                                                                                               §§goto(addr545);
                                                                                                            }
                                                                                                            §§goto(addr490);
                                                                                                         }
                                                                                                         §§goto(addr487);
                                                                                                      }
                                                                                                      §§goto(addr334);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr545);
                                                                                             }
                                                                                             §§goto(addr523);
                                                                                          }
                                                                                          §§goto(addr519);
                                                                                       }
                                                                                       §§goto(addr523);
                                                                                    }
                                                                                    §§goto(addr307);
                                                                                 }
                                                                                 §§goto(addr541);
                                                                              }
                                                                              §§goto(addr500);
                                                                           }
                                                                           §§goto(addr495);
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§goto(addr438);
                                                                     }
                                                                     §§goto(addr453);
                                                                  }
                                                                  addr241:
                                                               }
                                                            }
                                                            addr191:
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop12;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                                §§goto(addr191);
                                             }
                                          }
                                          addr233:
                                          while(true)
                                          {
                                             continue loop9;
                                          }
                                       }
                                    }
                                    §§goto(addr223);
                                 }
                                 if(_loc11_)
                                 {
                                    return;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr241);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr233);
         }
         addr46:
      }
      
      public function get §8-§() : Boolean
      {
         return this.§%"-§ >= this.§@!f§;
      }
      
      public function get target() : Object
      {
         return this.§;D§;
      }
      
      public function get §8!6§() : String
      {
         return this.§&=§;
      }
      
      public function get §!P§() : Number
      {
         return this.§@!f§;
      }
      
      public function get §@!=§() : Number
      {
         return this.§%"-§;
      }
      
      public function get delay() : Number
      {
         return this.§0!<§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§%"-§);
            if(!(_loc2_ && param1))
            {
               §§push(this.§0!<§);
               if(_loc3_)
               {
                  addr75:
                  §§push(§§pop() + §§pop());
                  if(_loc3_ || param1)
                  {
                     §§push(param1);
                  }
                  §§pop().§%"-§ = §§pop();
                  do
                  {
                     this.§0!<§ = param1;
                  }
                  while(!_loc3_);
                  
                  return;
                  addr76:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr75);
         }
         §§goto(addr76);
      }
      
      public function get §'!0§() : Boolean
      {
         return this.§>b§;
      }
      
      public function set §'!0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>b§ = param1;
         }
      }
      
      public function get §!!p§() : Function
      {
         return this.§+!"§;
      }
      
      public function set §!!p§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§+!"§ = param1;
         }
      }
      
      public function get onUpdate() : Function
      {
         return this.§[!Y§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[!Y§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§&6§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§&6§ = param1;
         }
      }
      
      public function get §9!=§() : Array
      {
         return this.§%k§;
      }
      
      public function set §9!=§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§%k§ = param1;
         }
      }
      
      public function get §%Z§() : Array
      {
         return this.§;W§;
      }
      
      public function set §%Z§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;W§ = param1;
         }
      }
      
      public function get §'!O§() : Array
      {
         return this.§ 8§;
      }
      
      public function set §'!O§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ 8§ = param1;
         }
      }
   }
}
