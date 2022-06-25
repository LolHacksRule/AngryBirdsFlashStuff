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
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§>M§ = new Vector.<§8!g§>(0);
         }
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
                  while(true)
                  {
                     this.§%!8§ = param1;
                     loop4:
                     for(; !_loc7_; while(_loc8_ || param1)
                     {
                        §§push(this);
                        if(!_loc7_)
                        {
                           §§pop().§`!+§ = param4 || §8!g§;
                           §§goto(addr132);
                        }
                        §§goto(addr129);
                        §§goto(addr81);
                     })
                     {
                        this.§package§ = param2;
                        while(!_loc7_)
                        {
                           this.§9%§ = param3;
                           continue loop4;
                           addr93:
                           if(!(_loc7_ && this))
                           {
                              if(!_loc7_)
                              {
                                 this.§8!j§();
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       if(this.§9%§)
                                       {
                                          if(_loc8_ || param2)
                                          {
                                             continue;
                                          }
                                          addr57:
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                break loop11;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       break;
                                    }
                                    addr74:
                                    while(true)
                                    {
                                       if(!(_loc7_ && param2))
                                       {
                                          addr81:
                                          if(!_loc8_)
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr93);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§5!"§ = param6;
                                             continue loop0;
                                          }
                                          addr119:
                                       }
                                       continue loop11;
                                    }
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    this.§]2§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                    if(!_loc7_)
                                    {
                                       return;
                                    }
                                    §§goto(addr57);
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function §+!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
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
         if(!(_loc2_ && this))
         {
            _loc1_.graphics.beginFill(0,1);
         }
         loop0:
         while(true)
         {
            _loc1_.graphics.drawRect(0,0,this.§%!8§,this.§package§);
            loop1:
            while(true)
            {
               _loc1_.graphics.endFill();
               while(_loc3_)
               {
                  this.§]2§.addChild(_loc1_);
                  while(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        this.§]2§.mask = _loc1_;
                        if(_loc3_)
                        {
                           return;
                        }
                        continue;
                        continue;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function §6P§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§8!g§ = null;
         if(!_loc4_)
         {
            this.§%!8§ = this.§]2§.mask.width = param1;
            if(!(_loc4_ && _loc2_))
            {
               this.§4!r§ = Math.max(0,Math.floor(this.§%!8§ / (this.§,!R§ + this.§7?§)));
            }
         }
         while(true)
         {
            while(true)
            {
               this.§2_§ = Math.min(this.§4!r§,this.§9%§.length);
               do
               {
                  this.§@!B§();
               }
               while(_loc4_ && _loc3_);
               
               if(_loc4_ && param1)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               while(this.§#!D§.length > this.§4!r§)
               {
                  _loc2_ = this.§#!D§.pop();
                  if(_loc5_ || _loc2_)
                  {
                     if(_loc2_ == null)
                     {
                        if(_loc5_ || param1)
                        {
                        }
                        continue;
                     }
                     this.§]2§.removeChild(_loc2_);
                     if(!(_loc5_ || _loc2_))
                     {
                        continue;
                     }
                  }
                  this.§`Q§(_loc2_);
               }
               if(!_loc4_)
               {
                  this.§#!E§(0);
                  if(_loc5_)
                  {
                     this.§[!3§ = this.§%R§;
                     do
                     {
                        this.updatePositions();
                     }
                     while(!_loc5_);
                     
                     addr174:
                  }
                  return;
               }
               §§goto(addr174);
            }
         }
      }
      
      protected function §2!5§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§8!g§ = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§%R§ = this.§[!3§ = 0;
            if(!_loc5_)
            {
               §§goto(addr37);
            }
            §§goto(addr48);
         }
         addr37:
         this.§2_§ = Math.min(this.§4!r§,this.§9%§.length);
         if(!_loc5_)
         {
            addr48:
            this.§@!B§();
         }
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < this.§2_§)
         {
            _loc2_ = this.§%!x§();
            if(_loc4_)
            {
               this.§]2§.addChild(_loc2_);
               while(true)
               {
                  _loc2_.index = _loc1_;
                  while(!_loc5_)
                  {
                     _loc2_.data = this.§9%§[_loc1_];
                     while(_loc4_ || _loc2_)
                     {
                        loop4:
                        while(true)
                        {
                           this.§#!D§.push(_loc2_);
                           do
                           {
                              _loc1_++;
                           }
                           while(_loc5_);
                           
                           if(_loc5_ && _loc2_)
                           {
                              break;
                              addr82:
                           }
                           while(false)
                           {
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr82);
         }
         if(!(_loc5_ && _loc3_))
         {
            this.updatePositions();
         }
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§8!g§ = null;
         if(!_loc2_)
         {
            §§push(this.§0!j§);
            if(_loc3_)
            {
               if(§§pop() == -1)
               {
                  addr48:
                  _loc1_ = this.§%!x§();
                  if(_loc3_ || this)
                  {
                     this.§0!j§ = _loc1_.width;
                     if(_loc2_)
                     {
                     }
                     addr70:
                     return this.§0!j§;
                     addr68:
                  }
                  this.§`Q§(_loc1_);
               }
               §§goto(addr68);
            }
            §§goto(addr70);
         }
         §§goto(addr48);
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(this.§9%§.length != this.§2_§)
            {
               loop0:
               while(true)
               {
                  this.§#!E§(param1);
                  loop1:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(!param2)
                        {
                           break;
                        }
                        if(!(_loc4_ && _loc3_))
                        {
                           this.§[!3§ = this.§%R§;
                        }
                        while(!(_loc4_ && param2))
                        {
                           this.updatePositions();
                           if(!(_loc4_ && param1))
                           {
                              if(_loc3_ || this)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  return;
               }
            }
            return;
         }
         §§goto(addr102);
      }
      
      protected function §#!E§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§%R§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr115:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr116:
                  while(true)
                  {
                     §§push(0);
                     addr117:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              this.§%R§ = 0;
                              break;
                           }
                           break;
                        }
                        continue loop0;
                     }
                     addr128:
                     return;
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§%R§ != this.§[!3§)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§[!3§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§%R§ - this.§[!3§);
                     if(!(_loc2_ && param1))
                     {
                        §§push(§§pop() / 4);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§[!3§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(Math.abs(this.§[!3§ - this.§%R§) < 0.01)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           addr68:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 addr70:
                                 break loop1;
                              }
                              addr116:
                              return;
                           }
                        }
                        break;
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     this.updatePositions();
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     §§goto(addr68);
                     §§goto(addr70);
                  }
                  return;
               }
            }
            §§goto(addr116);
         }
         §§goto(addr117);
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
            if(_loc5_ || _loc2_)
            {
               if(§§pop() < 0)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr367);
                     }
                     break;
                  }
                  addr269:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop13:
                     while(true)
                     {
                        §§push(this.§,!R§);
                        loop14:
                        while(true)
                        {
                           §§push(-§§pop());
                           loop15:
                           while(true)
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                                 loop16:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§pop();
                                          loop17:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr184:
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(this.§%!8§);
                                                   if(_loc6_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   §§push(§§pop() < §§pop());
                                                   if(_loc5_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               addr284:
                                                               _loc4_ = this.§%!x§();
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  this.§]2§.addChild(_loc4_);
                                                               }
                                                               _loc4_.data = this.§9%§[_loc1_];
                                                               _loc4_.index = _loc1_;
                                                               addr338:
                                                               addr348:
                                                               if(_loc5_)
                                                               {
                                                                  addr317:
                                                                  _loc4_.x = _loc3_;
                                                                  if(_loc5_)
                                                                  {
                                                                     this.§#!D§.push(_loc4_);
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr317);
                                                                           }
                                                                           addr354:
                                                                           _loc1_++;
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              §§goto(addr362);
                                                                           }
                                                                           §§goto(addr367);
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr317);
                                                                  }
                                                                  §§goto(addr348);
                                                               }
                                                               addr353:
                                                               §§goto(addr353);
                                                            }
                                                            else
                                                            {
                                                               addr276:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §§goto(addr284);
                                                                  }
                                                                  §§goto(addr367);
                                                               }
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      continue loop16;
                                                      addr205:
                                                   }
                                                   else
                                                   {
                                                      addr275:
                                                   }
                                                   §§goto(addr276);
                                                   §§push(!§§pop());
                                                   §§goto(addr276);
                                                }
                                                break;
                                             }
                                             continue loop13;
                                          }
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             if(!(_loc5_ || this))
                                             {
                                                break;
                                             }
                                             §§goto(addr269);
                                             §§goto(addr184);
                                          }
                                          §§goto(addr362);
                                          addr261:
                                       }
                                       §§goto(addr276);
                                    }
                                    §§goto(addr205);
                                 }
                              }
                              §§goto(addr276);
                           }
                        }
                     }
                  }
               }
               else
               {
                  _loc2_ = this.§#!D§[_loc1_];
                  if(_loc5_ || _loc2_)
                  {
                     _loc2_.x = this.§#!§(_loc2_.index);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= this.§%!8§);
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(§§pop())
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    if(_loc6_)
                                    {
                                       loop4:
                                       while(_loc5_)
                                       {
                                          §§push(_loc2_.x <= -this.§,!R§);
                                          if(_loc5_)
                                          {
                                             continue loop2;
                                          }
                                          addr130:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop4;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    this.§]2§.removeChild(_loc2_);
                                 }
                                 while(true)
                                 {
                                    this.§#!D§.splice(this.§#!D§.indexOf(_loc2_),1);
                                    loop7:
                                    while(true)
                                    {
                                       addr68:
                                       while(true)
                                       {
                                          this.§`Q§(_loc2_);
                                          continue loop7;
                                       }
                                       continue loop0;
                                    }
                                    addr59:
                                    if(_loc6_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr68);
                                 }
                              }
                              §§push(_loc1_);
                              if(_loc5_ || this)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc1_ = §§pop();
                              if(!_loc6_)
                              {
                                 §§goto(addr59);
                              }
                              §§goto(addr72);
                              addr106:
                           }
                           §§goto(addr130);
                        }
                     }
                  }
                  §§goto(addr117);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() < this.§9%§.length)
            {
               §§push(this.§#!§(_loc1_));
               if(!(_loc6_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr261);
            }
            break;
            §§goto(addr362);
         }
         addr367:
         if(_loc5_)
         {
            addr362:
            §§push(_loc1_);
            break loop0;
         }
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
         do
         {
            if(_loc2_ >= this.§#!D§.length)
            {
               if(_loc4_)
               {
                  §§push(false);
                  if(!(_loc3_ && this))
                  {
                     return §§pop();
                  }
                  addr81:
                  return §§pop();
               }
               loop1:
               while(_loc3_ && _loc2_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(this.§#!D§[_loc2_].index == param1)
            {
               break;
            }
            §§goto(addr59);
         }
         while(_loc4_);
         
         §§goto(addr81);
         §§push(true);
      }
      
      public function §=!n§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§8!g§ = null;
         var _loc3_:* = this.§#!D§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
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
         if(_loc2_)
         {
            this.§9%§ = param1;
            loop0:
            while(true)
            {
               this.clear();
               loop1:
               while(true)
               {
                  if(!_loc3_)
                  {
                     if(this.§9%§)
                     {
                        if(_loc2_ || param1)
                        {
                           while(true)
                           {
                              this.§2!5§();
                           }
                           addr44:
                        }
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr44);
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
            if(_loc2_ || this)
            {
               this.§]2§.removeChild(_loc1_);
               if(_loc2_)
               {
                  this.§`Q§(_loc1_);
               }
            }
         }
      }
      
      public function get offset() : int
      {
         return -this.§%R§;
      }
      
      protected function §%!x§() : §8!g§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§>M§.length > 0)
            {
               if(!_loc3_)
               {
                  §§goto(addr35);
               }
            }
            var _loc1_:§8!g§ = new this.§`!+§();
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.§7!P§ = this;
            }
            return _loc1_;
         }
         addr35:
         return this.§>M§.pop();
      }
      
      protected function §`Q§(param1:§8!g§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.data = null;
         }
         do
         {
            this.§>M§.push(param1);
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.clear();
            do
            {
               this.§]2§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
   }
}
