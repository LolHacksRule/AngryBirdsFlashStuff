package §-!u§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §&"-§
   {
       
      
      protected var §#e§:Sprite;
      
      protected var §^!,§:Number;
      
      protected var §,2§:Number;
      
      protected var §;!!§:Class;
      
      protected var §'!=§:Number;
      
      protected var §!!x§:Number;
      
      protected var §<N§:Number;
      
      protected var §0!r§:Number;
      
      protected var §2m§:Number = -1;
      
      protected var §&"$§:Array;
      
      protected var §'",§:int = -1;
      
      protected var §'!"§:Number = 0;
      
      protected var §8! §:int = 0;
      
      protected var §1`§:Vector.<§2u§>;
      
      protected var §+7§:Vector.<§2u§>;
      
      public function §&"-§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§1`§ = new Vector.<§2u§>(0);
            loop0:
            while(true)
            {
               this.§+7§ = new Vector.<§2u§>(0);
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§#e§ = new Sprite();
                     addr154:
                     while(true)
                     {
                        this.§^!,§ = param1;
                        addr148:
                        while(true)
                        {
                           this.§,2§ = param2;
                           continue loop1;
                        }
                     }
                     while(!(_loc7_ && param2))
                     {
                        this.§!!x§ = param6;
                        loop10:
                        while(!(_loc7_ && param2))
                        {
                           this.calculateMaxItemsVisible();
                           loop11:
                           while(!(_loc7_ && param3))
                           {
                              this.§6x§();
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(this.§&"$§)
                                    {
                                       if(!(_loc7_ && param2))
                                       {
                                          this.§]X§();
                                       }
                                       while(!_loc7_)
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       continue loop1;
                                       addr52:
                                    }
                                    while(true)
                                    {
                                       this.§#e§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       §§goto(addr52);
                                    }
                                    if(!_loc7_)
                                    {
                                       if(!_loc7_)
                                       {
                                          return;
                                       }
                                       continue loop11;
                                    }
                                    continue;
                                 }
                                 continue loop10;
                              }
                              §§goto(addr154);
                           }
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 this.§'!=§ = param5;
                                 break loop10;
                              }
                              break;
                              §§goto(addr68);
                           }
                           addr68:
                           while(!_loc7_)
                           {
                              §§push(this);
                              if(!_loc7_)
                              {
                                 §§pop().§;!!§ = param4 || §2u§;
                                 §§goto(addr122);
                              }
                              §§goto(addr119);
                           }
                           addr122:
                           §§goto(addr148);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§&"$§ = param3;
            §§goto(addr129);
         }
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§0!r§ = Math.floor(this.§^!,§ / (this.§6Q§ + this.§'!=§));
         }
      }
      
      public function get §`h§() : Sprite
      {
         return this.§#e§;
      }
      
      protected function §6x§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Sprite = new Sprite();
         if(!_loc3_)
         {
            _loc1_.graphics.beginFill(0,1);
            while(true)
            {
               _loc1_.graphics.drawRect(0,0,this.§^!,§,this.§,2§);
               addr64:
               if(_loc2_ || _loc2_)
               {
                  this.§#e§.addChild(_loc1_);
                  do
                  {
                     this.§#e§.mask = _loc1_;
                  }
                  while(_loc3_);
                  
                  addr71:
                  if(_loc3_)
                  {
                     while(_loc2_ || _loc1_)
                     {
                        §§goto(addr64);
                        §§goto(addr71);
                     }
                     while(true)
                     {
                        _loc1_.graphics.endFill();
                        §§goto(addr57);
                     }
                     addr57:
                     addr92:
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§2u§ = null;
         if(_loc5_)
         {
            this.§^!,§ = this.§#e§.mask.width = param1;
            if(_loc5_)
            {
               this.§0!r§ = Math.floor(this.§^!,§ / (this.§6Q§ + this.§'!=§));
               addr35:
            }
            while(true)
            {
               while(true)
               {
                  this.§'",§ = Math.min(this.§0!r§,this.§&"$§.length);
                  do
                  {
                     this.calculateMargin();
                  }
                  while(_loc4_ && this);
                  
                  if(!_loc4_)
                  {
                     if(true)
                     {
                        while(this.§+7§.length > this.§0!r§)
                        {
                           _loc2_ = this.§+7§.pop();
                           if(!(_loc4_ && _loc3_))
                           {
                              this.§#e§.removeChild(_loc2_);
                              if(_loc5_)
                              {
                                 this.§@!e§(_loc2_);
                              }
                           }
                        }
                        if(!(_loc4_ && this))
                        {
                           this.§8!`§(0);
                           if(_loc5_ || _loc2_)
                           {
                              this.§'!"§ = this.§8! §;
                           }
                        }
                     }
                     continue;
                     do
                     {
                        this.updatePositions();
                     }
                     while(_loc4_);
                     
                     return;
                  }
                  break;
               }
            }
         }
         §§goto(addr35);
      }
      
      public function setHeight(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§,2§ = this.§#e§.mask.height = param1;
         }
      }
      
      protected function §]X§(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§2u§ = null;
         if(_loc5_ || param1)
         {
            if(param1)
            {
               if(!(_loc6_ && this))
               {
                  addr35:
                  this.§8! § = this.§'!"§ = 0;
                  if(!_loc6_)
                  {
                     addr46:
                     this.§'",§ = Math.min(this.§0!r§,this.§&"$§.length);
                     if(_loc5_)
                     {
                        this.calculateMargin();
                     }
                  }
               }
               var _loc2_:int = 0;
               loop0:
               while(_loc2_ < this.§'",§)
               {
                  _loc3_ = this.§"!n§();
                  if(_loc5_)
                  {
                     this.§#e§.addChild(_loc3_);
                     loop1:
                     while(true)
                     {
                        _loc3_.index = _loc2_;
                        while(true)
                        {
                           this.setRendererData(_loc3_,this.data[_loc2_]);
                           while(_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 continue loop1;
                              }
                              loop6:
                              while(!(_loc6_ && this))
                              {
                                 _loc2_++;
                                 if(_loc5_)
                                 {
                                    addr84:
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          this.§+7§.push(_loc3_);
                                          continue loop6;
                                          §§goto(addr84);
                                       }
                                       addr86:
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr86);
                  }
               }
               if(!_loc6_)
               {
                  this.updatePositions();
               }
               return;
            }
            §§goto(addr46);
         }
         §§goto(addr35);
      }
      
      protected function setRendererData(param1:§2u§, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param1.data = param2;
         }
      }
      
      protected function calculateMargin() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§<N§ = Math.min((this.§^!,§ - this.§'",§ * this.§6Q§) / this.§'",§,this.§!!x§);
         }
      }
      
      protected function get §6Q§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2u§ = null;
         if(!_loc3_)
         {
            §§push(this.§2m§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop() == -1)
               {
                  addr42:
                  _loc1_ = this.§"!n§();
                  if(!(_loc3_ && _loc1_))
                  {
                     this.§2m§ = _loc1_.width;
                     if(_loc2_ || _loc1_)
                     {
                     }
                     addr79:
                     return this.§2m§;
                     addr77:
                  }
                  this.§@!e§(_loc1_);
               }
               §§goto(addr77);
            }
            §§goto(addr79);
         }
         §§goto(addr42);
      }
      
      public function setData(param1:Array, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§&"$§ = param1;
            while(true)
            {
               this.clear();
               addr46:
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               this.§]X§(param2);
               addr19:
               return;
               addr66:
            }
         }
         for(; this.§&"$§; if(_loc4_ && param2)
         {
            continue;
         },§§goto(addr46))
         {
            if(!_loc4_)
            {
               continue;
            }
            §§goto(addr66);
         }
         §§goto(addr19);
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§&"$§);
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
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              this.§8!`§(param1);
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop6;
                                 }
                                 if(_loc4_)
                                 {
                                    §§push(param2);
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       return;
                                    }
                                    if(!(_loc3_ && this))
                                    {
                                       while(true)
                                       {
                                          this.§'!"§ = this.§8! §;
                                       }
                                       addr62:
                                    }
                                    while(!_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          this.updatePositions();
                                          if(_loc3_ && param1)
                                          {
                                          }
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                    addr79:
                                 }
                              }
                              addr94:
                              while(_loc4_ || this)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop5;
                                 }
                                 continue loop1;
                                 §§goto(addr79);
                              }
                              addr122:
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr122);
               }
            }
         }
         §§goto(addr62);
      }
      
      protected function §8!`§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§8! §);
            loop0:
            while(true)
            {
               §§push(param1);
               addr141:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  addr142:
                  while(true)
                  {
                     §§push(0);
                     addr143:
                     while(§§pop() <= §§pop())
                     {
                        continue loop0;
                     }
                     addr144:
                     addr24:
                     this.§8! § = 0;
                     addr24:
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
         if(_loc3_ || _loc3_)
         {
            if(this.§8! § != this.§'!"§)
            {
               loop0:
               do
               {
                  §§push(this);
                  §§push(this.§'!"§);
                  if(!_loc2_)
                  {
                     §§push(this.§8! § - this.§'!"§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() / 4);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§'!"§ = §§pop();
                  loop1:
                  while(Math.abs(this.§'!"§ - this.§8! §) < 0.01)
                  {
                     if(!(_loc2_ && param1))
                     {
                        if(!_loc3_)
                        {
                           continue;
                        }
                        if(_loc2_ && param1)
                        {
                           §§goto(addr121);
                        }
                        this.§'!"§ = this.§8! §;
                     }
                     while(true)
                     {
                        break loop1;
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     this.updatePositions();
                     if(!(_loc2_ && this))
                     {
                        continue loop0;
                     }
                     §§goto(addr87);
                  }
               }
               while(_loc2_ && _loc2_);
               
               return;
            }
         }
         addr121:
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§2u§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§2u§ = null;
         var _loc1_:* = int(this.§+7§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop() < 0)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        _loc1_ = §§pop();
                        addr240:
                        if(!(_loc5_ && _loc3_))
                        {
                           addr304:
                           §§push(_loc1_);
                           break;
                        }
                        _loc4_ = this.§"!n§();
                        if(_loc6_)
                        {
                           this.§#e§.addChild(_loc4_);
                           this.setRendererData(_loc4_,this.§&"$§[_loc1_]);
                           addr285:
                        }
                        _loc4_.index = _loc1_;
                        addr258:
                        _loc4_.x = _loc3_;
                        addr271:
                        if(_loc6_)
                        {
                           if(!_loc5_)
                           {
                              this.§+7§.push(_loc4_);
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr258);
                                    }
                                    addr286:
                                    _loc1_++;
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr304);
                                    }
                                    §§goto(addr309);
                                 }
                                 §§goto(addr271);
                              }
                              §§goto(addr258);
                           }
                           §§goto(addr285);
                        }
                        addr280:
                        §§goto(addr280);
                     }
                     break;
                  }
                  addr215:
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     §§push(this.§^!,§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc6_)
                        {
                           if(_loc6_ || _loc1_)
                           {
                              if(_loc6_)
                              {
                                 addr161:
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    addr165:
                                    if(§§pop())
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§pop();
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                if(false)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      addr192:
                                                      addr224:
                                                      while(_loc6_ || _loc2_)
                                                      {
                                                         §§push(this.§6Q§);
                                                         if(!_loc5_)
                                                         {
                                                            addr204:
                                                            §§push(-§§pop());
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               addr205:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr206:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc6_ || _loc1_)
                                                                           {
                                                                              §§goto(addr215);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr240);
                                                                        addr207:
                                                                     }
                                                                     §§goto(addr161);
                                                                  }
                                                                  §§goto(addr165);
                                                               }
                                                            }
                                                            addr204:
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr225:
                                                         while(true)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                   }
                                                }
                                                §§push(this.§3!L§(_loc1_));
                                                if(!_loc5_)
                                                {
                                                   addr232:
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§goto(addr240);
                                                      }
                                                      addr309:
                                                      return;
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr304);
                                       }
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr232);
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr192);
               }
               else
               {
                  _loc2_ = this.§+7§[_loc1_];
                  if(_loc6_ || _loc2_)
                  {
                     _loc2_.x = this.getPositionFromIndex(_loc2_.index);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= this.§^!,§);
                        if(_loc6_)
                        {
                           if(!§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 addr99:
                                 while(true)
                                 {
                                    addr73:
                                    while(true)
                                    {
                                       §§push(_loc2_.x <= -this.§6Q§);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              addr98:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr84:
                                 while(true)
                                 {
                                    this.hide(_loc2_);
                                    addr87:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr84:
                              }
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc1_ = §§pop();
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§goto(addr84);
                                 }
                                 §§goto(addr87);
                              }
                              if(!(_loc5_ && this))
                              {
                                 if(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr99);
                           }
                           continue loop0;
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr84);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() < this.§&"$§.length)
            {
               §§push(this.getPositionFromIndex(_loc1_));
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr224);
            }
            break;
            §§goto(addr304);
         }
         §§goto(addr286);
      }
      
      protected function hide(param1:§2u§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§#e§.removeChild(param1);
         }
         do
         {
            this.§+7§.splice(this.§+7§.indexOf(param1),1);
            do
            {
               this.§@!e§(param1);
            }
            while(!_loc3_);
            
         }
         while(!_loc3_);
         
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§<N§ / 2 + (param1 + this.§'!"§) * (this.§6Q§ + this.§<N§));
      }
      
      protected function §3!L§(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§+7§.length)
            {
               if(_loc4_)
               {
                  break;
               }
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(this.§+7§[_loc2_].index == param1)
            {
               addr81:
               return true;
               addr80:
            }
            §§goto(addr56);
         }
         if(_loc4_ || this)
         {
            §§push(false);
            if(_loc4_ || this)
            {
               return §§pop();
            }
         }
         else
         {
            §§goto(addr80);
         }
         §§goto(addr81);
      }
      
      public function refresh() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§2u§ = null;
         for each(_loc1_ in this.§+7§)
         {
            if(!_loc4_)
            {
               this.setRendererData(_loc1_,this.§&"$§[_loc1_.index]);
            }
         }
      }
      
      public function get data() : Array
      {
         return this.§&"$§;
      }
      
      public function set data(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.setData(param1);
         }
      }
      
      public function get §=I§() : int
      {
         return this.§'",§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2u§ = null;
         while(this.§+7§.length > 0)
         {
            _loc1_ = this.§+7§.pop();
            if(_loc2_)
            {
               this.§#e§.removeChild(_loc1_);
               if(!_loc3_)
               {
                  this.§@!e§(_loc1_);
               }
            }
         }
      }
      
      public function get offset() : int
      {
         return -this.§8! §;
      }
      
      protected function §"!n§() : §2u§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§1`§.length > 0)
            {
               if(_loc2_ || _loc1_)
               {
                  §§goto(addr40);
               }
            }
            var _loc1_:§2u§ = new this.§;!!§();
            if(!(_loc3_ && this))
            {
               _loc1_.§6!2§ = this;
            }
            return _loc1_;
         }
         addr40:
         return this.§1`§.pop();
      }
      
      protected function §@!e§(param1:§2u§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.setRendererData(param1,null);
            do
            {
               this.§1`§.push(param1);
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.clear();
         }
         do
         {
            this.§#e§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         while(_loc2_);
         
      }
   }
}
