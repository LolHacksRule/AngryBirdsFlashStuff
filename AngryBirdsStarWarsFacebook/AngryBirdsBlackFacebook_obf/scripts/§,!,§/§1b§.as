package §,!,§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §1b§
   {
       
      
      protected var §%G§:Sprite;
      
      protected var §7#4§:Number;
      
      protected var §-[§:Number;
      
      protected var §%t§:Class;
      
      protected var §%!A§:Number;
      
      protected var §=H§:Number;
      
      protected var §;!O§:Number;
      
      protected var §"5§:Number;
      
      protected var §=J§:Number = -1;
      
      protected var §%4§:Array;
      
      protected var §!L§:int = -1;
      
      protected var §?"j§:Number = 0;
      
      protected var §[y§:int = 0;
      
      protected var §^,§:Vector.<§0!d§>;
      
      protected var §!#S§:Vector.<§0!d§>;
      
      public function §1b§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            this.§^,§ = new Vector.<§0!d§>(0);
            while(true)
            {
               this.§!#S§ = new Vector.<§0!d§>(0);
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§%G§ = new Sprite();
                     while(true)
                     {
                        this.§7#4§ = param1;
                        loop4:
                        while(true)
                        {
                           this.§-[§ = param2;
                           addr168:
                           while(true)
                           {
                              this.§%4§ = param3;
                              continue loop4;
                           }
                        }
                     }
                     if(!(_loc8_ || this))
                     {
                        continue;
                     }
                     this.§@#5§();
                     §§goto(addr81);
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§"5§ = Math.floor(this.§7#4§ / (this.§^#S§ + this.§%!A§));
         }
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§%G§;
      }
      
      protected function §!!x§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Sprite = new Sprite();
         if(!_loc3_)
         {
            _loc1_.graphics.beginFill(0,1);
         }
         loop0:
         while(true)
         {
            _loc1_.graphics.drawRect(0,0,this.§7#4§,this.§-[§);
            addr92:
            while(true)
            {
               _loc1_.graphics.endFill();
               continue loop0;
            }
         }
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§0!d§ = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§7#4§ = this.§%G§.mask.width = param1;
            if(_loc4_ || _loc3_)
            {
               this.§"5§ = Math.floor(this.§7#4§ / (this.§^#S§ + this.§%!A§));
            }
            loop0:
            while(true)
            {
               addr57:
               while(true)
               {
                  this.§!L§ = Math.min(this.§"5§,this.§%4§.length);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.calculateMargin();
            if(_loc4_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr57);
            }
            §§goto(addr67);
         }
         while(this.§!#S§.length > this.§"5§)
         {
            _loc2_ = this.§!#S§.pop();
            if(_loc4_ || _loc3_)
            {
               this.§%G§.removeChild(_loc2_);
               if(!_loc5_)
               {
                  this.§<"j§(_loc2_);
               }
            }
         }
         if(_loc4_ || _loc3_)
         {
            this.§^#;§(0);
            if(_loc4_)
            {
               this.§?"j§ = this.§[y§;
            }
            do
            {
               this.updatePositions();
            }
            while(_loc5_ && _loc3_);
            
         }
      }
      
      public function setHeight(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§-[§ = this.§%G§.mask.height = param1;
         }
      }
      
      protected function §@#5§(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§0!d§ = null;
         if(!_loc5_)
         {
            if(param1)
            {
               if(!_loc5_)
               {
                  this.§[y§ = this.§?"j§ = 0;
                  if(_loc6_ || this)
                  {
                  }
                  §§goto(addr53);
               }
            }
            this.§!L§ = Math.min(this.§"5§,this.§%4§.length);
            if(_loc6_)
            {
               addr53:
               this.calculateMargin();
               §§goto(addr55);
            }
            addr55:
            var _loc2_:int = 0;
            loop0:
            while(_loc2_ < this.§!L§)
            {
               _loc3_ = this.§`m§();
               if(_loc6_ || param1)
               {
                  this.§%G§.addChild(_loc3_);
                  loop1:
                  while(true)
                  {
                     _loc3_.index = _loc2_;
                     addr127:
                     while(true)
                     {
                        this.§6%§(_loc3_,this.data[_loc2_]);
                     }
                     loop5:
                     while(true)
                     {
                        if(_loc5_ && _loc3_)
                        {
                           continue loop1;
                        }
                        _loc2_++;
                        if(_loc5_ && _loc2_)
                        {
                           continue;
                        }
                        addr90:
                        if(!(_loc5_ && param1))
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(false)
                           {
                              while(true)
                              {
                                 this.§!#S§.push(_loc3_);
                                 continue loop5;
                              }
                              addr101:
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§goto(addr101);
                           §§goto(addr90);
                        }
                     }
                     §§goto(addr127);
                  }
               }
               §§goto(addr122);
            }
            if(!(_loc5_ && _loc2_))
            {
               this.updatePositions();
            }
            return;
         }
         §§goto(addr53);
      }
      
      protected function §6%§(param1:§0!d§, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            param1.data = param2;
         }
      }
      
      protected function calculateMargin() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;!O§ = Math.min((this.§7#4§ - this.§!L§ * this.§^#S§) / this.§!L§,this.§=H§);
         }
      }
      
      protected function get §^#S§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§0!d§ = null;
         if(_loc3_)
         {
            §§push(this.§=J§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() == -1)
               {
                  addr43:
                  _loc1_ = this.§`m§();
                  if(_loc3_ || _loc1_)
                  {
                     this.§=J§ = _loc1_.width;
                     if(_loc3_)
                     {
                        this.§<"j§(_loc1_);
                     }
                  }
               }
               return this.§=J§;
            }
         }
         §§goto(addr43);
      }
      
      public function setData(param1:Array, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§%4§ = param1;
            loop0:
            while(true)
            {
               this.clear();
               loop1:
               for(; this.§%4§; while(true)
               {
                  if(_loc4_ || param2)
                  {
                     break loop1;
                  }
                  continue loop1;
               })
               {
                  if(_loc3_ && param2)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         while(true)
         {
            this.§@#5§(param2);
            §§goto(addr55);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§%4§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           this.§^#;§(param1);
                           while(true)
                           {
                              §§push(param2);
                              if(!_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(_loc4_ || param2)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop6;
                                    }
                                    this.§?"j§ = this.§[y§;
                                 }
                                 do
                                 {
                                    this.updatePositions();
                                 }
                                 while(_loc3_);
                                 
                                 if(_loc3_ && param1)
                                 {
                                    break loop5;
                                 }
                                 if(_loc4_ || _loc3_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr94:
                              while(!(_loc3_ && param1))
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    continue loop5;
                                 }
                                 continue loop1;
                              }
                           }
                           return;
                        }
                     }
                     return;
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      protected function §^#;§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§[y§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr136:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr137:
                  while(true)
                  {
                     §§push(0);
                     addr138:
                     while(§§pop() <= §§pop())
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr139);
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§[y§ != this.§?"j§)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§?"j§);
                  if(_loc2_)
                  {
                     §§push(this.§[y§ - this.§?"j§);
                     if(_loc2_ || param1)
                     {
                        §§push(§§pop() / 4);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§?"j§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(Math.abs(this.§?"j§ - this.§[y§) < 0.01)
                        {
                           if(_loc2_ || param1)
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                              this.§?"j§ = this.§[y§;
                           }
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr110);
                              }
                              while(true)
                              {
                                 break loop1;
                              }
                           }
                           addr67:
                        }
                        break;
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     this.updatePositions();
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     §§goto(addr67);
                     §§goto(addr69);
                  }
                  return;
               }
            }
            addr110:
            return;
         }
         §§goto(addr69);
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0!d§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§0!d§ = null;
         var _loc1_:* = int(this.§!#S§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr354);
               }
               _loc2_ = this.§!#S§[_loc1_];
               if(_loc6_ || _loc2_)
               {
                  _loc2_.x = this.getPositionFromIndex(_loc2_.index);
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.x >= this.§7#4§);
                     if(_loc6_ || this)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    this.hide(_loc2_);
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    addr47:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc1_ = §§pop();
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    if(_loc6_)
                                    {
                                       if(true)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                              §§goto(addr47);
                           }
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop1;
                     }
                  }
               }
               §§goto(addr109);
            }
            break;
         }
         loop9:
         while(true)
         {
            if(§§pop() < this.§%4§.length)
            {
               §§push(this.getPositionFromIndex(_loc1_));
               loop10:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop11:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     if(_loc5_ && _loc3_)
                     {
                        break;
                     }
                     loop12:
                     while(true)
                     {
                        §§push(_loc3_);
                        loop13:
                        while(_loc6_)
                        {
                           §§push(this.§^#S§);
                           if(_loc6_ || this)
                           {
                              §§push(-§§pop());
                           }
                           loop14:
                           while(true)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc6_ || _loc1_)
                                    {
                                       §§pop();
                                       if(_loc6_)
                                       {
                                          if(false)
                                          {
                                             continue loop12;
                                          }
                                          §§push(this.§'!_§(_loc1_));
                                          if(_loc6_ || _loc2_)
                                          {
                                          }
                                          addr267:
                                          if(§§pop())
                                          {
                                             if(_loc6_ || _loc2_)
                                             {
                                                _loc4_ = this.§`m§();
                                                if(_loc6_ || _loc1_)
                                                {
                                                   this.§%G§.addChild(_loc4_);
                                                   this.§6%§(_loc4_,this.§%4§[_loc1_]);
                                                   addr335:
                                                }
                                                _loc4_.index = _loc1_;
                                                addr330:
                                                if(!_loc5_)
                                                {
                                                   addr303:
                                                   _loc4_.x = _loc3_;
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      this.§!#S§.push(_loc4_);
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr303);
                                                            }
                                                            addr346:
                                                            _loc1_++;
                                                            if(!_loc5_)
                                                            {
                                                               break loop11;
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         §§goto(addr330);
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   §§goto(addr330);
                                                }
                                                §§goto(addr335);
                                             }
                                             §§goto(addr354);
                                          }
                                          §§goto(addr346);
                                       }
                                       §§goto(addr354);
                                    }
                                    addr266:
                                    §§push(!§§pop());
                                 }
                                 §§goto(addr267);
                              }
                              addr237:
                              while(true)
                              {
                                 §§pop();
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(_loc3_);
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       continue loop14;
                                    }
                                    continue loop11;
                                 }
                                 continue loop13;
                              }
                           }
                        }
                        continue loop10;
                     }
                  }
                  continue loop9;
               }
            }
            addr354:
            if(!(_loc5_ && _loc3_))
            {
               §§push(0);
               if(!(_loc5_ && _loc3_))
               {
                  _loc1_ = §§pop();
                  if(_loc5_ && this)
                  {
                  }
                  addr349:
                  §§push(_loc1_);
                  break loop0;
               }
               break loop0;
            }
            return;
         }
      }
      
      protected function hide(param1:§0!d§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%G§.removeChild(param1);
            do
            {
               this.§!#S§.splice(this.§!#S§.indexOf(param1),1);
               do
               {
                  this.§<"j§(param1);
               }
               while(!(_loc3_ || _loc3_));
               
            }
            while(!_loc3_);
            
         }
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§;!O§ / 2 + (param1 + this.§?"j§) * (this.§^#S§ + this.§;!O§));
      }
      
      protected function §'!_§(param1:int) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§!#S§.length)
            {
               if(_loc4_ && param1)
               {
                  continue;
               }
               if(!(_loc4_ && param1))
               {
                  if(!_loc4_)
                  {
                     §§push(false);
                     if(_loc3_ || _loc3_)
                     {
                        return §§pop();
                     }
                     addr85:
                     return §§pop();
                  }
                  break;
               }
            }
            else if(this.§!#S§[_loc2_].index == param1)
            {
               break;
            }
            _loc2_++;
         }
         §§goto(addr85);
         §§push(true);
      }
      
      public function refresh() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§0!d§ = null;
         for each(_loc1_ in this.§!#S§)
         {
            if(_loc5_ || _loc1_)
            {
               this.§6%§(_loc1_,this.§%4§[_loc1_.index]);
            }
         }
      }
      
      public function get data() : Array
      {
         return this.§%4§;
      }
      
      public function set data(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.setData(param1);
         }
      }
      
      public function get visibleItemsCount() : int
      {
         return this.§!L§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0!d§ = null;
         while(this.§!#S§.length > 0)
         {
            _loc1_ = this.§!#S§.pop();
            if(_loc2_ || this)
            {
               this.§%G§.removeChild(_loc1_);
               if(!_loc2_)
               {
                  continue;
               }
            }
            this.§<"j§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§[y§;
      }
      
      protected function §`m§() : §0!d§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§^,§.length > 0)
            {
               if(!_loc2_)
               {
                  return this.§^,§.pop();
               }
            }
         }
         var _loc1_:§0!d§ = new this.§%t§();
         if(_loc3_ || _loc1_)
         {
            _loc1_.§<r§ = this;
         }
         return _loc1_;
      }
      
      protected function §<"j§(param1:§0!d§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§6%§(param1,null);
         }
         do
         {
            this.§^,§.push(param1);
         }
         while(_loc3_ && this);
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.clear();
         }
         do
         {
            this.§%G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         while(_loc2_);
         
      }
   }
}
