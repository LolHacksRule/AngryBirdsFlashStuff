package §-5§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §'j§
   {
       
      
      protected var §]2§:Sprite;
      
      protected var §%!8§:Number;
      
      protected var §package§:Number;
      
      protected var §`!+§:Class;
      
      protected var §7?§:Number;
      
      protected var §5!"§:Number;
      
      protected var §5!g§:Number;
      
      protected var §4!r§:Number;
      
      protected var §0!j§:Number = -1;
      
      protected var §9%§:Array;
      
      protected var §2_§:int = -1;
      
      protected var §[!3§:Number = 0;
      
      protected var §%R§:int = 0;
      
      protected var §>M§:Vector.<§8!g§>;
      
      protected var §#!D§:Vector.<§8!g§>;
      
      public function §'j§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            this.§>M§ = new Vector.<§8!g§>(0);
            loop0:
            while(true)
            {
               this.§#!D§ = new Vector.<§8!g§>(0);
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§]2§ = new Sprite();
                     loop3:
                     while(!_loc8_)
                     {
                        addr125:
                        if(_loc8_ && this)
                        {
                           continue;
                        }
                        if(_loc8_)
                        {
                           continue loop2;
                        }
                        if(_loc8_)
                        {
                           continue loop1;
                        }
                        this.§7?§ = param5;
                        loop9:
                        while(true)
                        {
                           this.§5!"§ = param6;
                           addr83:
                           while(_loc7_ || this)
                           {
                              this.§+!G§();
                              while(_loc7_)
                              {
                                 this.§8!j§();
                                 loop12:
                                 for(; !(_loc8_ && param1); while(true)
                                 {
                                    if(_loc7_ || this)
                                    {
                                       continue loop9;
                                    }
                                    continue loop12;
                                 },continue loop9)
                                 {
                                    if(!this.§9%§)
                                    {
                                       while(true)
                                       {
                                          this.§]2§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          continue loop12;
                                       }
                                       return;
                                    }
                                    addr28:
                                    if(!_loc8_)
                                    {
                                       this.§2!5§();
                                    }
                                 }
                              }
                           }
                           loop8:
                           while(true)
                           {
                              if(!(_loc8_ && param1))
                              {
                                 §§goto(addr125);
                              }
                              else
                              {
                                 loop7:
                                 while(_loc7_)
                                 {
                                    addr143:
                                    if(_loc7_ || param1)
                                    {
                                       §§push(this);
                                       if(!_loc8_)
                                       {
                                          §§pop().§`!+§ = param4 || §8!g§;
                                          continue loop8;
                                       }
                                       §§goto(addr115);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§package§ = param2;
                                          break loop7;
                                          §§goto(addr143);
                                       }
                                       addr170:
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§9%§ = param3;
                                    §§goto(addr141);
                                 }
                                 addr141:
                              }
                           }
                           continue loop3;
                           if(_loc8_ && this)
                           {
                              continue;
                           }
                           §§goto(addr28);
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§%!8§ = param1;
            §§goto(addr170);
         }
      }
      
      protected function §+!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4!r§ = Math.floor(this.§%!8§ / (this.§,!R§ + this.§7?§));
         }
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§]2§;
      }
      
      protected function §8!j§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Sprite = new Sprite();
         if(_loc3_)
         {
            _loc1_.graphics.beginFill(0,1);
            while(true)
            {
               _loc1_.graphics.drawRect(0,0,this.§%!8§,this.§package§);
               while(true)
               {
                  _loc1_.graphics.endFill();
                  while(true)
                  {
                     this.§]2§.addChild(_loc1_);
                     §§goto(addr77);
                  }
               }
            }
         }
         addr77:
         while(true)
         {
            this.§]2§.mask = _loc1_;
            if(_loc3_ || _loc2_)
            {
               if(!_loc2_)
               {
                  continue loop1;
               }
               continue loop2;
            }
         }
         addr71:
      }
      
      public function §6P§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§8!g§ = null;
         if(!(_loc4_ && _loc3_))
         {
            this.§%!8§ = this.§]2§.mask.width = param1;
            if(_loc5_)
            {
               this.§4!r§ = Math.max(0,Math.floor(this.§%!8§ / (this.§,!R§ + this.§7?§)));
               loop5:
               while(true)
               {
                  addr60:
                  while(true)
                  {
                     this.§2_§ = Math.min(this.§4!r§,this.§9%§.length);
                     do
                     {
                        this.§@!B§();
                     }
                     while(_loc4_ && this);
                     
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     continue loop5;
                  }
               }
               addr96:
            }
            while(false)
            {
               §§goto(addr60);
            }
            while(this.§#!D§.length > this.§4!r§)
            {
               _loc2_ = this.§#!D§.pop();
               if(_loc5_)
               {
                  if(_loc2_ != null)
                  {
                     this.§]2§.removeChild(_loc2_);
                     if(!_loc4_)
                     {
                        this.§`Q§(_loc2_);
                     }
                     continue;
                  }
                  if(_loc4_)
                  {
                     continue;
                  }
               }
            }
            if(_loc5_)
            {
               this.§#!E§(0);
               if(!_loc4_)
               {
                  this.§[!3§ = this.§%R§;
                  do
                  {
                     this.updatePositions();
                  }
                  while(!(_loc5_ || _loc2_));
                  
                  addr164:
               }
               return;
            }
            §§goto(addr164);
         }
         §§goto(addr96);
      }
      
      protected function §2!5§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§8!g§ = null;
         if(!(_loc4_ && _loc1_))
         {
            this.§%R§ = this.§[!3§ = 0;
            if(!(_loc4_ && _loc3_))
            {
               this.§2_§ = Math.min(this.§4!r§,this.§9%§.length);
               if(_loc5_ || _loc2_)
               {
                  addr69:
                  this.§@!B§();
               }
               var _loc1_:int = 0;
               while(_loc1_ < this.§2_§)
               {
                  _loc2_ = this.§%!x§();
                  if(_loc5_ || _loc1_)
                  {
                     this.§]2§.addChild(_loc2_);
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_.index = _loc1_;
                     addr132:
                     while(true)
                     {
                        _loc2_.data = this.§9%§[_loc1_];
                        continue loop1;
                     }
                  }
               }
               if(_loc5_ || _loc3_)
               {
                  this.updatePositions();
               }
               return;
            }
         }
         §§goto(addr69);
      }
      
      protected function §@!B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§5!g§ = Math.min((this.§%!8§ - this.§2_§ * this.§,!R§) / this.§2_§,this.§5!"§);
         }
      }
      
      protected function get §,!R§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8!g§ = null;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§0!j§);
            if(!_loc3_)
            {
               if(§§pop() == -1)
               {
                  addr52:
                  _loc1_ = this.§%!x§();
                  if(!_loc3_)
                  {
                     this.§0!j§ = _loc1_.width;
                     if(_loc2_)
                     {
                        this.§`Q§(_loc1_);
                     }
                  }
               }
               return this.§0!j§;
            }
         }
         §§goto(addr52);
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(this.§9%§.length != this.§2_§)
            {
               loop0:
               while(true)
               {
                  this.§#!E§(param1);
                  loop1:
                  while(param2)
                  {
                     if(_loc4_ || this)
                     {
                        if(_loc3_ && param2)
                        {
                           continue loop0;
                        }
                        if(_loc3_ && param2)
                        {
                           §§goto(addr97);
                        }
                        while(true)
                        {
                           this.§[!3§ = this.§%R§;
                        }
                     }
                     while(_loc4_)
                     {
                        this.updatePositions();
                        if(_loc4_)
                        {
                           break loop1;
                        }
                     }
                  }
                  return;
               }
            }
            addr97:
            return;
         }
         §§goto(addr79);
      }
      
      protected function §#!E§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§%R§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr132:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr133:
                  while(true)
                  {
                     §§push(0);
                     addr134:
                     while(§§pop() <= §§pop())
                     {
                        continue loop0;
                     }
                     addr135:
                     addr25:
                     this.§%R§ = 0;
                     addr25:
                     return;
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§%R§ == this.§[!3§)
            {
               if(!_loc3_)
               {
                  §§goto(addr115);
               }
               else
               {
                  while(true)
                  {
                     addr30:
                     if(!(_loc3_ && this))
                     {
                        return;
                     }
                  }
                  addr116:
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§[!3§);
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§%R§ - this.§[!3§);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() / 4);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§[!3§ = §§pop();
               loop2:
               while(true)
               {
                  if(Math.abs(this.§[!3§ - this.§%R§) < 0.01)
                  {
                     continue;
                  }
                  loop5:
                  while(true)
                  {
                     this.updatePositions();
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     addr69:
                     while(true)
                     {
                        continue loop5;
                     }
                  }
                  §§goto(addr30);
               }
               §§goto(addr116);
            }
         }
         addr115:
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§8!g§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§8!g§ = null;
         var _loc1_:* = int(this.§#!D§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  if(_loc5_ || this)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        _loc1_ = §§pop();
                        addr264:
                        if(_loc5_)
                        {
                           addr337:
                           §§push(_loc1_);
                           break;
                        }
                        _loc4_ = this.§%!x§();
                        if(_loc5_ || _loc3_)
                        {
                           this.§]2§.addChild(_loc4_);
                        }
                        _loc4_.data = this.§9%§[_loc1_];
                        _loc4_.index = _loc1_;
                        addr294:
                        _loc4_.x = _loc3_;
                        addr328:
                        addr315:
                        if(!_loc6_)
                        {
                           this.§#!D§.push(_loc4_);
                           if(!(_loc6_ && _loc3_))
                           {
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr294);
                                    }
                                    addr329:
                                    _loc1_++;
                                    if(!(_loc6_ && _loc1_))
                                    {
                                       §§goto(addr337);
                                    }
                                    §§goto(addr342);
                                 }
                                 §§goto(addr328);
                              }
                              §§goto(addr315);
                           }
                           §§goto(addr294);
                        }
                        addr323:
                        §§goto(addr323);
                     }
                     break;
                  }
                  addr244:
                  loop14:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop15:
                     while(_loc5_)
                     {
                        §§push(this.§,!R§);
                        if(!_loc6_)
                        {
                           §§push(-§§pop());
                        }
                        loop16:
                        while(true)
                        {
                           §§push(§§pop() > §§pop());
                           loop17:
                           while(true)
                           {
                              §§push(§§pop());
                              loop18:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§pop();
                                    loop19:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(_loc6_ && _loc2_)
                                       {
                                          break;
                                       }
                                       §§push(this.§%!8§);
                                       if(_loc6_)
                                       {
                                          continue loop16;
                                       }
                                       §§push(§§pop() < §§pop());
                                       if(_loc5_ || _loc1_)
                                       {
                                          if(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop14;
                                                         }
                                                         addr256:
                                                         addr256:
                                                         §§push(this.§throw§(_loc1_));
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            break loop18;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ || this)
                                                            {
                                                               §§goto(addr264);
                                                            }
                                                            addr342:
                                                            return;
                                                         }
                                                         §§goto(addr329);
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   break loop18;
                                                }
                                             }
                                             continue loop18;
                                             addr188:
                                          }
                                          continue loop17;
                                       }
                                       §§goto(addr256);
                                    }
                                    continue loop15;
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr256);
                           }
                        }
                     }
                     addr236:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        if(_loc6_ && _loc2_)
                        {
                           break;
                        }
                        §§goto(addr244);
                     }
                     §§goto(addr337);
                  }
               }
               else
               {
                  _loc2_ = this.§#!D§[_loc1_];
                  if(_loc5_)
                  {
                     _loc2_.x = this.§#!§(_loc2_.index);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.x >= this.§%!8§);
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr54:
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             this.§`Q§(_loc2_);
                                             addr67:
                                             while(_loc5_)
                                             {
                                                continue loop11;
                                             }
                                             addr79:
                                             loop8:
                                             while(true)
                                             {
                                                if(!(_loc6_ && _loc1_))
                                                {
                                                   continue loop1;
                                                }
                                                addr112:
                                                while(_loc5_)
                                                {
                                                   this.§]2§.removeChild(_loc2_);
                                                   continue loop8;
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(_loc2_.x <= -this.§,!R§);
                                                   if(!_loc6_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr127:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop2;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§#!D§.splice(this.§#!D§.indexOf(_loc2_),1);
                                          §§goto(addr79);
                                          §§goto(addr54);
                                       }
                                    }
                                    §§goto(addr67);
                                 }
                                 continue loop0;
                              }
                              §§goto(addr112);
                           }
                           addr110:
                        }
                        §§goto(addr127);
                     }
                  }
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() < this.§9%§.length)
            {
               §§push(this.§#!§(_loc1_));
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr236);
            }
            break;
            §§goto(addr337);
         }
         §§goto(addr329);
      }
      
      protected function §#!§(param1:Number) : Number
      {
         return Math.round(this.§5!g§ / 2 + (param1 + this.§[!3§) * (this.§,!R§ + this.§5!g§));
      }
      
      protected function §throw§(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§#!D§.length)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(!(_loc3_ && param1))
               {
                  if(!_loc3_)
                  {
                     §§push(false);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     addr76:
                     return §§pop();
                  }
                  break;
               }
            }
            else if(this.§#!D§[_loc2_].index == param1)
            {
               break;
            }
            _loc2_++;
         }
         §§goto(addr76);
         §§push(true);
      }
      
      public function §=!n§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§8!g§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§#!D§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.data = this.§9%§[_loc1_.index];
            }
         }
      }
      
      public function get data() : Array
      {
         return this.§9%§;
      }
      
      public function set data(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§9%§ = param1;
            loop0:
            while(true)
            {
               this.clear();
               while(this.§9%§)
               {
                  if(_loc2_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                     }
                     continue;
                  }
                  continue loop0;
               }
               addr34:
               return;
            }
         }
         while(true)
         {
            this.§2!5§();
            §§goto(addr63);
         }
      }
      
      public function get final() : int
      {
         return this.§2_§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8!g§ = null;
         while(this.§#!D§.length > 0)
         {
            _loc1_ = this.§#!D§.pop();
            if(_loc2_ || _loc2_)
            {
               this.§]2§.removeChild(_loc1_);
               if(_loc3_)
               {
                  continue;
               }
            }
            this.§`Q§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§%R§;
      }
      
      protected function §%!x§() : §8!g§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§>M§.length > 0)
            {
               if(!(_loc2_ && _loc3_))
               {
                  return this.§>M§.pop();
               }
            }
         }
         var _loc1_:§8!g§ = new this.§`!+§();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.§7!P§ = this;
         }
         return _loc1_;
      }
      
      protected function §`Q§(param1:§8!g§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.data = null;
            do
            {
               this.§>M§.push(param1);
            }
            while(_loc3_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.clear();
            do
            {
               this.§]2§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            while(!(_loc2_ || this));
            
         }
      }
   }
}
