package §]z§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §7v§
   {
       
      
      protected var §8!9§:Sprite;
      
      protected var §70§:Number;
      
      protected var §-!&§:Number;
      
      protected var § d§:Class;
      
      protected var §'!f§:Number;
      
      protected var §#^§:Number;
      
      protected var §true §:Number;
      
      protected var §7!O§:Number;
      
      protected var §`!=§:Number = -1;
      
      protected var §0A§:Array;
      
      protected var §!k§:int = -1;
      
      protected var §7!f§:Number = 0;
      
      protected var §7k§:int = 0;
      
      protected var §=e§:Vector.<§`V§>;
      
      protected var §4"§:Vector.<§`V§>;
      
      public function §7v§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§=e§ = new Vector.<§`V§>(0);
            while(true)
            {
               this.§4"§ = new Vector.<§`V§>(0);
            }
            addr211:
         }
         loop1:
         while(true)
         {
            super();
            loop2:
            while(true)
            {
               this.§8!9§ = new Sprite();
               loop3:
               while(true)
               {
                  this.§70§ = param1;
                  loop4:
                  while(true)
                  {
                     this.§-!&§ = param2;
                     while(true)
                     {
                        this.§0A§ = param3;
                        continue loop1;
                        addr123:
                        if(!(_loc8_ && this))
                        {
                           this.§#^§ = param6;
                           loop9:
                           for(; _loc7_; if(_loc7_ || param1)
                           {
                              continue loop3;
                           })
                           {
                              this.§]]§();
                              loop10:
                              while(true)
                              {
                                 this.§^!O§();
                                 loop11:
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop10;
                                    }
                                    if(_loc8_ && param1)
                                    {
                                       break;
                                    }
                                    if(_loc7_)
                                    {
                                       if(this.§0A§)
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             continue loop9;
                                          }
                                          addr80:
                                          loop12:
                                          while(true)
                                          {
                                             addr23:
                                             while(true)
                                             {
                                                this.§8!9§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                if(!(_loc8_ && param1))
                                                {
                                                   break;
                                                }
                                                continue loop12;
                                             }
                                             continue loop11;
                                          }
                                       }
                                       §§goto(addr23);
                                    }
                                    else
                                    {
                                       §§goto(addr211);
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           loop8:
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 while(!_loc8_)
                                 {
                                    this.§'!f§ = param5;
                                    continue loop8;
                                 }
                                 continue loop4;
                                 addr148:
                              }
                              §§goto(addr123);
                           }
                        }
                     }
                  }
                  if(_loc7_ || param1)
                  {
                     continue loop2;
                  }
               }
            }
         }
      }
      
      protected function §]]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7!O§ = Math.floor(this.§70§ / (this.§=!C§ + this.§'!f§));
         }
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§8!9§;
      }
      
      protected function §^!O§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Sprite = new Sprite();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.graphics.beginFill(0,1);
            while(true)
            {
               _loc1_.graphics.drawRect(0,0,this.§70§,this.§-!&§);
               addr56:
               if(!_loc2_)
               {
                  continue;
               }
               return;
               addr68:
            }
         }
         loop1:
         while(true)
         {
            _loc1_.graphics.endFill();
            loop2:
            while(true)
            {
               this.§8!9§.addChild(_loc1_);
               while(!_loc3_)
               {
                  this.§8!9§.mask = _loc1_;
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     continue loop2;
                  }
                  §§goto(addr56);
               }
               continue loop1;
            }
         }
         §§goto(addr68);
      }
      
      public function §;<§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§`V§ = null;
         if(!_loc5_)
         {
            this.§70§ = this.§8!9§.mask.width = param1;
            if(_loc4_ || _loc3_)
            {
               this.§7!O§ = Math.max(0,Math.floor(this.§70§ / (this.§=!C§ + this.§'!f§)));
               while(true)
               {
                  addr59:
                  while(true)
                  {
                     this.§!k§ = Math.min(this.§7!O§,this.§0A§.length);
                  }
               }
               addr95:
               addr39:
            }
            while(true)
            {
               this.§=%§();
               if(_loc5_ && this)
               {
                  continue;
               }
               if(!(_loc5_ && this))
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr95);
               }
               §§goto(addr59);
            }
            while(this.§4"§.length > this.§7!O§)
            {
               _loc2_ = this.§4"§.pop();
               if(!(_loc5_ && param1))
               {
                  if(_loc2_ == null)
                  {
                     if(_loc5_)
                     {
                     }
                  }
                  else
                  {
                     this.§8!9§.removeChild(_loc2_);
                     if(!(_loc5_ && _loc3_))
                     {
                        this.§9t§(_loc2_);
                     }
                  }
               }
            }
            if(_loc4_)
            {
               this.§ !-§(0);
               if(!(_loc5_ && _loc2_))
               {
                  this.§7!f§ = this.§7k§;
                  addr158:
               }
               do
               {
                  this.updatePositions();
               }
               while(!(_loc4_ || param1));
               
               return;
            }
            §§goto(addr158);
         }
         §§goto(addr39);
      }
      
      protected function §&y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§`V§ = null;
         if(!(_loc5_ && this))
         {
            this.§7k§ = this.§7!f§ = 0;
            if(_loc4_)
            {
               this.§!k§ = Math.min(this.§7!O§,this.§0A§.length);
               if(!(_loc5_ && _loc1_))
               {
                  this.§=%§();
               }
            }
         }
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < this.§!k§)
         {
            _loc2_ = this.get();
            if(!_loc5_)
            {
               this.§8!9§.addChild(_loc2_);
               while(true)
               {
                  _loc2_.index = _loc1_;
                  addr126:
                  while(true)
                  {
                     _loc2_.data = this.§0A§[_loc1_];
                  }
                  addr96:
                  if(_loc5_ && _loc2_)
                  {
                     continue;
                  }
                  _loc1_++;
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        if(false)
                        {
                           loop4:
                           while(true)
                           {
                              this.§4"§.push(_loc2_);
                              addr89:
                              while(true)
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§goto(addr96);
                                 }
                                 addr121:
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr89);
               }
            }
            §§goto(addr121);
         }
         if(_loc4_)
         {
            this.updatePositions();
         }
      }
      
      protected function §=%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§true § = Math.min((this.§70§ - this.§!k§ * this.§=!C§) / this.§!k§,this.§#^§);
         }
      }
      
      protected function get §=!C§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§`V§ = null;
         if(_loc3_)
         {
            §§push(this.§`!=§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() == -1)
               {
                  addr53:
                  _loc1_ = this.get();
                  if(_loc3_ || _loc1_)
                  {
                     this.§`!=§ = _loc1_.width;
                     if(_loc2_ && this)
                     {
                     }
                     addr80:
                     return this.§`!=§;
                     addr78:
                  }
                  this.§9t§(_loc1_);
               }
               §§goto(addr78);
            }
            §§goto(addr80);
         }
         §§goto(addr53);
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§0A§.length != this.§!k§)
            {
               while(true)
               {
                  this.§ !-§(param1);
                  §§goto(addr95);
               }
            }
            §§goto(addr102);
         }
         addr95:
         loop1:
         while(param2)
         {
            while(!(_loc3_ && _loc3_))
            {
               if(_loc4_ || param2)
               {
                  if(_loc3_ && _loc3_)
                  {
                     return;
                  }
                  addr102:
                  this.§7!f§ = this.§7k§;
                  do
                  {
                     this.updatePositions();
                  }
                  while(_loc3_ && param1);
                  
                  if(_loc4_ || _loc3_)
                  {
                     break loop1;
                  }
                  continue;
                  continue;
               }
               continue loop0;
            }
         }
      }
      
      protected function § !-§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§7k§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr122:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr123:
                  while(true)
                  {
                     §§push(0);
                     addr124:
                     addr125:
                     addr20:
                     while(§§pop() <= §§pop())
                     {
                        continue loop0;
                     }
                     addr20:
                     this.§7k§ = 0;
                     return;
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§7k§ != this.§7!f§)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§7!f§);
                  if(!_loc2_)
                  {
                     §§push(this.§7k§ - this.§7!f§);
                     if(_loc3_)
                     {
                        §§push(§§pop() / 4);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§7!f§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(Math.abs(this.§7!f§ - this.§7k§) < 0.01)
                     {
                        continue;
                     }
                     loop3:
                     while(true)
                     {
                        this.updatePositions();
                        if(_loc3_ || param1)
                        {
                           addr34:
                           if(!(_loc2_ && param1))
                           {
                              return;
                           }
                           continue loop1;
                        }
                        addr73:
                        while(true)
                        {
                           if(!(_loc3_ || _loc3_))
                           {
                              break loop3;
                           }
                           if(_loc3_)
                           {
                              continue loop3;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`V§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§`V§ = null;
         var _loc1_:* = int(this.§4"§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(_loc5_ || _loc1_)
                  {
                     §§push(0);
                     if(!(_loc6_ && _loc2_))
                     {
                        break;
                     }
                     addr333:
                     if(§§pop() < this.§0A§.length)
                     {
                        §§push(this.§"!§(_loc1_));
                        loop12:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop13:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              loop14:
                              while(true)
                              {
                                 loop15:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop16:
                                    while(true)
                                    {
                                       §§push(this.§=!C§);
                                       loop17:
                                       while(true)
                                       {
                                          §§push(-§§pop());
                                          loop18:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(§§pop());
                                                loop19:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop();
                                                      loop20:
                                                      while(_loc5_ || _loc2_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc6_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§push(this.§70§);
                                                         if(!(_loc5_ || _loc2_))
                                                         {
                                                            continue loop18;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            continue loop17;
                                                         }
                                                         §§push(§§pop() < §§pop());
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc5_ || _loc1_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        addr256:
                                                                        addr256:
                                                                        §§push(this.§%>§(_loc1_));
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           break loop19;
                                                                        }
                                                                        addr256:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              _loc4_ = this.get();
                                                                              if(!(_loc6_ && _loc1_))
                                                                              {
                                                                                 this.§8!9§.addChild(_loc4_);
                                                                                 _loc4_.data = this.§0A§[_loc1_];
                                                                                 _loc4_.index = _loc1_;
                                                                                 addr323:
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    _loc4_.x = _loc3_;
                                                                                    this.§4"§.push(_loc4_);
                                                                                    addr294:
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc5_ || _loc1_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr294);
                                                                                             }
                                                                                             addr329:
                                                                                             _loc1_++;
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr332:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                addr332:
                                                                                             }
                                                                                             §§goto(addr337);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr323);
                                                                                    }
                                                                                    addr308:
                                                                                    §§goto(addr308);
                                                                                    addr315:
                                                                                 }
                                                                                 addr328:
                                                                                 §§goto(addr328);
                                                                              }
                                                                              §§goto(addr315);
                                                                           }
                                                                           addr337:
                                                                           return;
                                                                        }
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                                  break loop19;
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            continue loop19;
                                                            addr182:
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      continue loop14;
                                                   }
                                                   §§goto(addr182);
                                                }
                                                §§push(!§§pop());
                                             }
                                             §§goto(addr256);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr329);
                  }
                  §§goto(addr332);
               }
               else
               {
                  _loc2_ = this.§4"§[_loc1_];
                  if(_loc5_)
                  {
                     _loc2_.x = this.§"!§(_loc2_.index);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= this.§70§);
                        if(!_loc6_)
                        {
                           if(!§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 §§pop();
                                 addr108:
                                 while(true)
                                 {
                                    §§push(_loc2_.x <= -this.§=!C§);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop9;
                                 }
                              }
                              addr107:
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr53);
                                       }
                                       else
                                       {
                                          §§goto(addr94);
                                       }
                                    }
                                 }
                                 continue loop0;
                                 addr41:
                              }
                              if(_loc5_)
                              {
                                 this.§8!9§.removeChild(_loc2_);
                              }
                              while(_loc5_)
                              {
                                 this.§4"§.splice(this.§4"§.indexOf(_loc2_),1);
                                 while(true)
                                 {
                                    addr53:
                                    while(true)
                                    {
                                       this.§9t§(_loc2_);
                                    }
                                 }
                              }
                              continue;
                              addr94:
                              while(_loc5_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr76);
                           }
                        }
                        §§goto(addr107);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr41);
                  }
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(_loc5_ || _loc1_)
         {
         }
         §§goto(addr332);
      }
      
      protected function §"!§(param1:Number) : Number
      {
         return Math.round(this.§true § / 2 + (param1 + this.§7!f§) * (this.§=!C§ + this.§true §));
      }
      
      protected function §%>§(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§4"§.length)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  §§push(false);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  addr71:
                  return §§pop();
               }
               addr72:
            }
            else if(this.§4"§[_loc2_].index == param1)
            {
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr72);
            }
            _loc2_++;
         }
         §§goto(addr71);
         §§push(true);
      }
      
      public function §#!g§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`V§ = null;
         var _loc3_:* = this.§4"§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.data = this.§0A§[_loc1_.index];
            }
         }
      }
      
      public function get data() : Array
      {
         return this.§0A§;
      }
      
      public function set data(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§0A§ = param1;
            loop0:
            while(true)
            {
               this.clear();
               while(true)
               {
                  if(_loc3_)
                  {
                     if(!this.§0A§)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr45);
            }
         }
         addr45:
      }
      
      public function get §'!V§() : int
      {
         return this.§!k§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§`V§ = null;
         while(this.§4"§.length > 0)
         {
            _loc1_ = this.§4"§.pop();
            if(_loc2_)
            {
               this.§8!9§.removeChild(_loc1_);
               if(_loc2_)
               {
                  this.§9t§(_loc1_);
               }
            }
         }
      }
      
      public function get offset() : int
      {
         return -this.§7k§;
      }
      
      protected function get() : §`V§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§=e§.length > 0)
            {
               if(!_loc2_)
               {
                  return this.§=e§.pop();
               }
            }
         }
         var _loc1_:§`V§ = new this.§ d§();
         if(_loc3_)
         {
            _loc1_.§7!I§ = this;
         }
         return _loc1_;
      }
      
      protected function §9t§(param1:§`V§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.data = null;
         }
         do
         {
            this.§=e§.push(param1);
         }
         while(!_loc2_);
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.clear();
         }
         do
         {
            this.§8!9§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         while(!_loc2_);
         
      }
   }
}
