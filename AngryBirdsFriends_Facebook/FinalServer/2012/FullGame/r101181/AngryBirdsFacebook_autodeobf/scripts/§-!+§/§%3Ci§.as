package §-!+§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §<i§
   {
       
      
      protected var §3^§:Sprite;
      
      protected var §,!!§:Number;
      
      protected var §`X§:Number;
      
      protected var §,i§:Class;
      
      protected var §<"@§:Number;
      
      protected var §'!$§:Number;
      
      protected var §[!8§:Number;
      
      protected var §9`§:Number;
      
      protected var §>!d§:Number = -1;
      
      protected var §>">§:Array;
      
      protected var §`!N§:int = -1;
      
      protected var §>!X§:Number = 0;
      
      protected var §7x§:int = 0;
      
      protected var §+!&§:Vector.<§;!B§>;
      
      protected var §%!G§:Vector.<§;!B§>;
      
      public function §<i§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§+!&§ = new Vector.<§;!B§>(0);
            loop0:
            while(true)
            {
               this.§%!G§ = new Vector.<§;!B§>(0);
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§3^§ = new Sprite();
                     addr163:
                     while(true)
                     {
                        this.§,!!§ = param1;
                        continue loop0;
                        addr68:
                        if(!(_loc8_ && param3))
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9`§ = Math.floor(this.§,!!§ / (this.§ O§ + this.§<"@§));
         }
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§3^§;
      }
      
      protected function §2"7§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Sprite = new Sprite();
         if(!_loc3_)
         {
            _loc1_.graphics.beginFill(0,1);
            loop0:
            while(true)
            {
               _loc1_.graphics.drawRect(0,0,this.§,!!§,this.§`X§);
               loop1:
               while(true)
               {
                  _loc1_.graphics.endFill();
                  while(true)
                  {
                     this.§3^§.addChild(_loc1_);
                     addr60:
                     while(_loc2_)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§3^§.mask = _loc1_;
            if(_loc2_)
            {
               break;
            }
            §§goto(addr60);
         }
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§;!B§ = null;
         if(!(_loc4_ && param1))
         {
            this.§,!!§ = this.§3^§.mask.width = param1;
            if(_loc5_ || this)
            {
               this.§9`§ = Math.floor(this.§,!!§ / (this.§ O§ + this.§<"@§));
               loop0:
               while(true)
               {
                  addr65:
                  while(true)
                  {
                     this.§`!N§ = Math.min(this.§9`§,this.§>">§.length);
                     continue loop0;
                  }
               }
               addr98:
            }
            while(true)
            {
               this.calculateMargin();
               if(_loc4_ && param1)
               {
                  continue;
               }
               if(!(_loc4_ && param1))
               {
                  while(false)
                  {
                  }
                  while(this.§%!G§.length > this.§9`§)
                  {
                     _loc2_ = this.§%!G§.pop();
                     if(!_loc4_)
                     {
                        this.§3^§.removeChild(_loc2_);
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                     }
                     this.§>!^§(_loc2_);
                  }
                  if(!(_loc4_ && param1))
                  {
                     this.§0[§(0);
                     if(!(_loc4_ && _loc2_))
                     {
                        this.§>!X§ = this.§7x§;
                        addr155:
                     }
                     do
                     {
                        this.updatePositions();
                     }
                     while(!(_loc5_ || this));
                     
                     return;
                  }
                  §§goto(addr155);
                  addr63:
               }
               else
               {
                  §§goto(addr98);
               }
               §§goto(addr65);
            }
         }
         §§goto(addr63);
      }
      
      protected function §'!u§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§;!B§ = null;
         if(_loc5_)
         {
            this.§7x§ = this.§>!X§ = 0;
            if(_loc5_ || _loc2_)
            {
               this.§`!N§ = Math.min(this.§9`§,this.§>">§.length);
               if(!(_loc4_ && _loc3_))
               {
                  addr54:
                  this.calculateMargin();
               }
            }
            var _loc1_:int = 0;
            while(_loc1_ < this.§`!N§)
            {
               _loc2_ = this.§17§();
               if(!_loc4_)
               {
                  this.§3^§.addChild(_loc2_);
                  while(true)
                  {
                     _loc2_.index = _loc1_;
                     loop2:
                     while(_loc5_ || this)
                     {
                        _loc2_.data = this.§>">§[_loc1_];
                        loop3:
                        while(true)
                        {
                           addr90:
                           while(true)
                           {
                              this.§%!G§.push(_loc2_);
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr88);
            }
            if(_loc5_ || _loc2_)
            {
               this.updatePositions();
            }
            return;
         }
         §§goto(addr54);
      }
      
      protected function calculateMargin() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§[!8§ = Math.min((this.§,!!§ - this.§`!N§ * this.§ O§) / this.§`!N§,this.§'!$§);
         }
      }
      
      protected function get § O§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§;!B§ = null;
         if(_loc2_)
         {
            §§push(this.§>!d§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == -1)
               {
                  addr52:
                  _loc1_ = this.§17§();
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§>!d§ = _loc1_.width;
                     if(!(_loc3_ && _loc1_))
                     {
                        this.§>!^§(_loc1_);
                     }
                  }
               }
               return this.§>!d§;
            }
         }
         §§goto(addr52);
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(this.§>">§.length != this.§`!N§)
            {
               loop0:
               while(true)
               {
                  this.§0[§(param1);
                  loop1:
                  while(param2)
                  {
                     loop2:
                     while(!_loc3_)
                     {
                        this.§>!X§ = this.§7x§;
                        while(true)
                        {
                           this.updatePositions();
                           if(_loc4_ || param1)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       break loop1;
                                    }
                                    addr87:
                                    return;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
                  return;
               }
            }
            §§goto(addr87);
         }
         §§goto(addr75);
      }
      
      public function §@!%§(param1:int) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§7x§);
            while(true)
            {
               §§push(param1);
               addr107:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr108:
                  while(true)
                  {
                     §§push(0);
                     addr109:
                     while(true)
                     {
                        §§push(§§pop() > §§pop());
                        §§goto(addr110);
                     }
                  }
               }
            }
            addr106:
         }
         while(true)
         {
            §§push(this.§7x§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc3_ && param1))
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§1!a§);
                        if(!(_loc3_ && _loc2_))
                        {
                           addr86:
                           §§push(§§pop() - §§pop() < -this.§>">§.length);
                           if(_loc2_)
                           {
                              §§goto(addr93);
                           }
                           §§goto(addr98);
                        }
                        else
                        {
                           §§goto(addr109);
                        }
                        return §§pop();
                     }
                     §§goto(addr108);
                     §§goto(addr109);
                  }
                  §§goto(addr86);
               }
               else
               {
                  §§goto(addr107);
               }
            }
            else
            {
               §§goto(addr106);
            }
            §§goto(addr107);
         }
      }
      
      protected function §0[§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§7x§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr131:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr132:
                  while(true)
                  {
                     §§push(0);
                     addr133:
                     while(§§pop() <= §§pop())
                     {
                        continue loop0;
                     }
                     addr134:
                     addr137:
                     this.§7x§ = 0;
                     addr137:
                     return;
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§7x§ != this.§>!X§)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§>!X§);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(this.§7x§ - this.§>!X§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() / 4);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§>!X§ = §§pop();
                  loop1:
                  for(; _loc3_; if(!(_loc2_ && param1))
                  {
                     return;
                  })
                  {
                     if(Math.abs(this.§>!X§ - this.§7x§) < 0.01)
                     {
                        while(true)
                        {
                           this.§>!X§ = this.§7x§;
                           addr68:
                           while(_loc3_)
                           {
                              while(true)
                              {
                              }
                           }
                           continue loop0;
                           addr29:
                           if(_loc3_ || this)
                           {
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        this.updatePositions();
                        if(!_loc2_)
                        {
                           §§goto(addr29);
                        }
                        §§goto(addr68);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;!B§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§;!B§ = null;
         var _loc1_:* = int(this.§%!G§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc6_ && this))
            {
               if(§§pop() < 0)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(0);
                     if(_loc5_ || _loc3_)
                     {
                        break;
                     }
                     addr378:
                     if(§§pop() < this.§>">§.length)
                     {
                        §§push(this.getPositionFromIndex(_loc1_));
                        loop13:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop14:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              if(!_loc6_)
                              {
                                 loop15:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop16:
                                    while(_loc5_)
                                    {
                                       §§push(this.§ O§);
                                       while(true)
                                       {
                                          §§push(-§§pop());
                                          addr261:
                                          loop18:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(§§pop());
                                                loop19:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§pop();
                                                                        addr309:
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§push(this.§-m§(_loc1_));
                                                                              if(_loc5_ || _loc1_)
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                           }
                                                                           continue loop15;
                                                                           break loop21;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = this.§17§();
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              this.§3^§.addChild(_loc4_);
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 _loc4_.data = this.§>">§[_loc1_];
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_.index = _loc1_;
                                                                                    loop26:
                                                                                    while(_loc5_ || _loc1_)
                                                                                    {
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_.x = _loc3_;
                                                                                          loop28:
                                                                                          while(_loc5_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§%!G§.push(_loc4_);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                                continue loop28;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc1_++;
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   break loop14;
                                                                                                }
                                                                                                §§goto(addr382);
                                                                                             }
                                                                                          }
                                                                                          continue loop26;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr338);
                                                                        }
                                                                        addr309:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc6_ && _loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc3_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        addr382:
                                                                        return;
                                                                        addr271:
                                                                     }
                                                                     §§goto(addr382);
                                                                  }
                                                                  addr242:
                                                               }
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         continue loop19;
                                                      }
                                                      addr301:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§goto(addr309);
                                                         }
                                                         break loop14;
                                                      }
                                                      §§goto(addr374);
                                                      addr230:
                                                   }
                                                   §§goto(addr271);
                                                }
                                             }
                                             break;
                                          }
                                          addr220:
                                          §§goto(addr301);
                                          addr220:
                                          §§push(!§§pop());
                                          if(_loc6_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() < §§pop());
                                          if(!_loc6_)
                                          {
                                             §§goto(addr230);
                                          }
                                          §§goto(addr242);
                                       }
                                    }
                                    continue loop14;
                                 }
                              }
                              break;
                           }
                           addr377:
                           while(true)
                           {
                              §§goto(addr378);
                           }
                        }
                     }
                     §§goto(addr382);
                  }
                  §§goto(addr377);
               }
               else
               {
                  _loc2_ = this.§%!G§[_loc1_];
                  if(_loc5_ || _loc1_)
                  {
                     _loc2_.x = this.getPositionFromIndex(_loc2_.index);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= this.§,!!§);
                        if(!_loc6_)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc2_.x <= -this.§ O§);
                                    if(_loc6_ && _loc3_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             if(_loc5_ || this)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc1_ = §§pop();
                                             if(_loc5_)
                                             {
                                                if(!(_loc6_ && _loc1_))
                                                {
                                                   while(false)
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         this.§>!^§(_loc2_);
                                                         addr72:
                                                         addr98:
                                                         while(!(_loc6_ && _loc2_))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            continue loop10;
                                                         }
                                                         addr122:
                                                         while(_loc5_ || _loc2_)
                                                         {
                                                            continue loop6;
                                                            §§goto(addr72);
                                                         }
                                                         while(true)
                                                         {
                                                            this.§3^§.removeChild(_loc2_);
                                                         }
                                                      }
                                                   }
                                                   continue loop0;
                                                   addr66:
                                                }
                                                while(true)
                                                {
                                                   this.§%!G§.splice(this.§%!G§.indexOf(_loc2_),1);
                                                   §§goto(addr98);
                                                }
                                             }
                                             §§goto(addr72);
                                          }
                                          addr46:
                                       }
                                       §§goto(addr122);
                                       continue loop10;
                                    }
                                 }
                              }
                              addr137:
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr66);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(!(_loc6_ && this))
         {
            §§goto(addr377);
         }
         §§goto(addr309);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§[!8§ / 2 + (param1 + this.§>!X§) * (this.§ O§ + this.§[!8§));
      }
      
      protected function §-m§(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§%!G§.length)
            {
               if(_loc3_)
               {
                  continue;
               }
               if(_loc4_)
               {
                  if(_loc4_)
                  {
                     §§push(false);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     addr71:
                     return §§pop();
                  }
                  break;
               }
            }
            else if(this.§%!G§[_loc2_].index == param1)
            {
               break;
            }
            _loc2_++;
         }
         §§goto(addr71);
         §§push(true);
      }
      
      public function §7C§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;!B§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§%!G§)
         {
            if(!(_loc4_ && _loc2_))
            {
               _loc1_.data = this.§>">§[_loc1_.index];
            }
         }
      }
      
      public function get data() : Array
      {
         return this.§>">§;
      }
      
      public function set data(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>">§ = param1;
            while(true)
            {
               this.clear();
               addr63:
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         while(this.§>">§)
         {
            if(!(_loc3_ && this))
            {
               this.§'!u§();
            }
            if(_loc3_ && _loc2_)
            {
               continue;
            }
            §§goto(addr63);
         }
         addr19:
      }
      
      public function get §1!a§() : int
      {
         return this.§`!N§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§;!B§ = null;
         while(this.§%!G§.length > 0)
         {
            _loc1_ = this.§%!G§.pop();
            if(!(_loc3_ && _loc3_))
            {
               this.§3^§.removeChild(_loc1_);
               if(!_loc2_)
               {
                  continue;
               }
            }
            this.§>!^§(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.§7x§;
      }
      
      protected function §17§() : §;!B§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§+!&§.length > 0)
            {
               if(_loc2_)
               {
                  return this.§+!&§.pop();
               }
            }
         }
         var _loc1_:§;!B§ = new this.§,i§();
         if(!_loc3_)
         {
            _loc1_.§-r§ = this;
         }
         return _loc1_;
      }
      
      protected function §>!^§(param1:§;!B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            param1.data = null;
         }
         do
         {
            this.§+!&§.push(param1);
         }
         while(_loc3_);
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.clear();
         }
         do
         {
            this.§3^§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         while(_loc1_);
         
      }
   }
}
