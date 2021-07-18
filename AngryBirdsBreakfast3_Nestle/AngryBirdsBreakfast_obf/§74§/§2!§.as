package §74§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §2!§
   {
       
      
      protected var §&%§:Sprite;
      
      protected var §7F§:Number;
      
      protected var §+9§:Number;
      
      protected var §,!`§:Class;
      
      protected var §@"5§:Number;
      
      protected var §`!$§:Number;
      
      protected var §3!d§:Number;
      
      protected var § N§:Number;
      
      protected var §0U§:Number = -1;
      
      protected var §7!?§:Array;
      
      protected var §@!K§:int = -1;
      
      protected var §@q§:Number = 0;
      
      protected var §-!3§:int = 0;
      
      protected var §>!q§:Vector.<§^z§>;
      
      protected var §>1§:Vector.<§^z§>;
      
      public function §2!§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            this.§>!q§ = new Vector.<§^z§>(0);
            while(true)
            {
               this.§>1§ = new Vector.<§^z§>(0);
               loop2:
               for(; _loc8_ || param1; if(_loc7_ && param1)
               {
                  continue;
               },this.§`!$§ = param6,§§goto(addr110))
               {
                  this.§&%§ = new Sprite();
                  while(true)
                  {
                     this.§7F§ = param1;
                     loop4:
                     while(!(_loc7_ && param3))
                     {
                        this.§+9§ = param2;
                        while(true)
                        {
                           this.§7!?§ = param3;
                           addr147:
                           while(_loc8_)
                           {
                              §§push(this);
                              if(!(_loc7_ && param3))
                              {
                                 §§pop().§,!`§ = param4 || §^z§;
                                 loop7:
                                 while(true)
                                 {
                                    this.§@"5§ = param5;
                                    addr115:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop7;
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr139);
                           }
                           continue loop4;
                           loop11:
                           for(; !(_loc7_ && param3); while(true)
                           {
                              if(!(_loc7_ && this))
                              {
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop11;
                           },§§goto(addr115))
                           {
                              if(this.§7!?§)
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    this.§-a§();
                                 }
                                 continue;
                              }
                              addr24:
                              while(true)
                              {
                                 this.§&%§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                 if(!(_loc7_ && param1))
                                 {
                                    break;
                                 }
                                 continue loop11;
                              }
                              addr39:
                              if(_loc8_ || param1)
                              {
                                 addr46:
                                 if(_loc7_ && this)
                                 {
                                    while(true)
                                    {
                                       this.calculateMaxItemsVisible();
                                       addr105:
                                       while(true)
                                       {
                                          this.§@"-§();
                                          continue loop11;
                                          §§goto(addr39);
                                       }
                                       §§goto(addr46);
                                    }
                                    addr110:
                                 }
                                 if(!_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       return;
                                    }
                                    addr193:
                                    while(true)
                                    {
                                       super();
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr147);
                                 }
                              }
                              §§goto(addr105);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr193);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§ N§ = Math.floor(this.§7F§ / (this.§<K§ + this.§@"5§));
         }
      }
      
      public function get §"]§() : Sprite
      {
         return this.§&%§;
      }
      
      protected function §@"-§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Sprite = new Sprite();
         if(!_loc3_)
         {
            _loc1_.graphics.beginFill(0,1);
            while(true)
            {
               _loc1_.graphics.drawRect(0,0,this.§7F§,this.§+9§);
               addr92:
               while(true)
               {
                  _loc1_.graphics.endFill();
                  addr39:
                  if(!_loc3_)
                  {
                     return;
                     addr51:
                  }
               }
            }
            addr98:
         }
         loop2:
         while(true)
         {
            this.§&%§.addChild(_loc1_);
            while(true)
            {
               if(_loc3_ && _loc3_)
               {
                  continue loop2;
               }
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr98);
            }
            §§goto(addr92);
         }
         §§goto(addr51);
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§^z§ = null;
         if(!_loc4_)
         {
            this.§7F§ = this.§&%§.mask.width = param1;
            if(_loc5_)
            {
               this.§ N§ = Math.floor(this.§7F§ / (this.§<K§ + this.§@"5§));
               loop5:
               while(true)
               {
                  addr43:
                  while(true)
                  {
                     this.§@!K§ = Math.min(this.§ N§,this.§7!?§.length);
                     addr53:
                     while(!(_loc5_ || param1))
                     {
                        continue loop5;
                     }
                     continue loop5;
                  }
               }
               addr83:
            }
            while(true)
            {
               this.calculateMargin();
               if(!_loc5_)
               {
                  continue;
               }
               if(true)
               {
                  break;
               }
               §§goto(addr43);
            }
            while(this.§>1§.length > this.§ N§)
            {
               _loc2_ = this.§>1§.pop();
               if(!(_loc4_ && param1))
               {
                  this.§&%§.removeChild(_loc2_);
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
               }
               this.§^!?§(_loc2_);
            }
            if(_loc5_ || _loc2_)
            {
               this.§8!H§(0);
               if(_loc5_)
               {
                  this.§@q§ = this.§-!3§;
               }
            }
            do
            {
               this.updatePositions();
            }
            while(_loc4_ && param1);
            
            return;
         }
         §§goto(addr83);
      }
      
      public function setHeight(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§+9§ = this.§&%§.mask.height = param1;
         }
      }
      
      protected function §-a§(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§^z§ = null;
         if(!_loc5_)
         {
            if(param1)
            {
               if(!(_loc5_ && _loc2_))
               {
                  this.§-!3§ = this.§@q§ = 0;
                  if(!_loc5_)
                  {
                     addr42:
                     this.§@!K§ = Math.min(this.§ N§,this.§7!?§.length);
                     if(!_loc5_)
                     {
                        addr53:
                        this.calculateMargin();
                     }
                  }
                  §§goto(addr53);
               }
               var _loc2_:int = 0;
               loop0:
               while(_loc2_ < this.§@!K§)
               {
                  _loc3_ = this.§`E§();
                  if(!_loc5_)
                  {
                     this.§&%§.addChild(_loc3_);
                     while(true)
                     {
                        _loc3_.index = _loc2_;
                        while(true)
                        {
                           this.setRendererData(_loc3_,this.data[_loc2_]);
                           loop3:
                           while(true)
                           {
                              addr87:
                              while(true)
                              {
                                 this.§>1§.push(_loc3_);
                                 continue loop3;
                              }
                           }
                        }
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        _loc2_++;
                        if(!(_loc5_ && this))
                        {
                           while(false)
                           {
                              §§goto(addr87);
                           }
                           continue loop0;
                           addr85:
                        }
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr85);
               }
               if(!_loc5_)
               {
                  this.updatePositions();
               }
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr53);
      }
      
      protected function setRendererData(param1:§^z§, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.data = param2;
         }
      }
      
      protected function calculateMargin() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§3!d§ = Math.min((this.§7F§ - this.§@!K§ * this.§<K§) / this.§@!K§,this.§`!$§);
         }
      }
      
      protected function get §<K§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§^z§ = null;
         if(!_loc3_)
         {
            §§push(this.§0U§);
            if(!_loc3_)
            {
               if(§§pop() == -1)
               {
                  addr37:
                  _loc1_ = this.§`E§();
                  if(_loc2_)
                  {
                     this.§0U§ = _loc1_.width;
                     if(!_loc2_)
                     {
                     }
                     addr64:
                     return this.§0U§;
                     addr62:
                  }
                  this.§^!?§(_loc1_);
               }
               §§goto(addr62);
            }
            §§goto(addr64);
         }
         §§goto(addr37);
      }
      
      public function setData(param1:Array, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§7!?§ = param1;
            loop0:
            while(true)
            {
               this.clear();
               while(true)
               {
                  if(_loc4_)
                  {
                     continue loop0;
                  }
                  if(!this.§7!?§)
                  {
                     break;
                  }
                  if(!(_loc3_ || param2))
                  {
                     continue;
                  }
               }
               return;
            }
         }
         while(true)
         {
            this.§-a§(param2);
            §§goto(addr47);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§7!?§);
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
                        if(§§pop())
                        {
                           §§goto(addr120);
                        }
                        loop6:
                        while(true)
                        {
                           this.§8!H§(param1);
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 §§push(param2);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!§§pop())
                                    {
                                       return;
                                    }
                                    if(!(_loc3_ && this))
                                    {
                                       this.§@q§ = this.§-!3§;
                                    }
                                    while(true)
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop6;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                                 addr86:
                              }
                              §§goto(addr120);
                           }
                           addr101:
                           while(_loc4_ || param2)
                           {
                              continue loop5;
                              §§goto(addr86);
                           }
                        }
                        §§goto(addr120);
                     }
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         addr120:
      }
      
      protected function §8!H§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§-!3§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     while(§§pop() <= §§pop())
                     {
                        §§push(this.§-!3§);
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        §§push(param1);
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc2_)
                        {
                           §§push(this.§]v§);
                           if(_loc3_)
                           {
                              continue;
                           }
                           §§push(§§pop() - §§pop());
                        }
                        if(!_loc2_)
                        {
                           continue loop2;
                        }
                        if(§§pop() >= -this.§7!?§.length)
                        {
                           this.§-!3§ -= param1;
                           if(_loc2_ || _loc3_)
                           {
                              if(!(_loc2_ || this))
                              {
                                 addr87:
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(this);
                                 §§push(this.§7!?§.length - this.§]v§);
                                 if(_loc2_ || this)
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().§-!3§ = §§pop();
                                 addr105:
                                 if(!(_loc3_ && this))
                                 {
                                    addr112:
                                 }
                                 else
                                 {
                                    addr132:
                                 }
                              }
                              return;
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr87);
                     }
                     this.§-!3§ = 0;
                     §§goto(addr132);
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§-!3§ != this.§@q§)
            {
               do
               {
                  §§push(this);
                  §§push(this.§@q§);
                  if(_loc3_ || this)
                  {
                     §§push(this.§-!3§ - this.§@q§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() / 4);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§@q§ = §§pop();
                  loop1:
                  do
                  {
                     if(Math.abs(this.§@q§ - this.§-!3§) < 0.01)
                     {
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              this.§@q§ = this.§-!3§;
                              addr77:
                              while(true)
                              {
                              }
                           }
                           if(!(_loc2_ && param1))
                           {
                              continue loop1;
                           }
                        }
                        §§goto(addr121);
                     }
                     while(true)
                     {
                        this.updatePositions();
                        if(!(_loc3_ || param1))
                        {
                           continue;
                        }
                        §§goto(addr34);
                     }
                  }
                  while(_loc2_ && param1);
                  
               }
               while(!_loc3_);
               
               return;
            }
            addr121:
            return;
         }
         §§goto(addr73);
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§^z§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§^z§ = null;
         var _loc1_:* = int(this.§>1§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(_loc6_)
                  {
                     §§push(0);
                     if(_loc6_ || _loc3_)
                     {
                        _loc1_ = §§pop();
                        addr210:
                        if(_loc6_ || this)
                        {
                           addr349:
                           §§push(_loc1_);
                           break;
                        }
                        if(false)
                        {
                           loop13:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr214:
                              addr241:
                              loop14:
                              while(_loc6_ || this)
                              {
                                 §§push(this.§<K§);
                                 loop15:
                                 while(true)
                                 {
                                    §§push(-§§pop());
                                    loop16:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr225:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          do
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.§7F§);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         continue loop16;
                                                      }
                                                      addr242:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop13;
                                                      }
                                                      §§goto(addr349);
                                                      addr235:
                                                   }
                                                   break;
                                                }
                                                addr354:
                                                return;
                                                addr227:
                                             }
                                             else
                                             {
                                                addr190:
                                             }
                                             §§push(§§pop());
                                          }
                                          while(_loc5_ && _loc2_);
                                          
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                addr202:
                                                §§pop();
                                                if(_loc6_ || this)
                                                {
                                                   §§goto(addr210);
                                                }
                                                §§goto(addr349);
                                             }
                                             addr261:
                                             §§push(!§§pop());
                                          }
                                          addr262:
                                          if(§§pop())
                                          {
                                             if(_loc6_ || this)
                                             {
                                                _loc4_ = this.§`E§();
                                                if(_loc6_)
                                                {
                                                   this.§&%§.addChild(_loc4_);
                                                }
                                                this.setRendererData(_loc4_,this.§7!?§[_loc1_]);
                                                _loc4_.index = _loc1_;
                                                addr330:
                                                if(!(_loc5_ && this))
                                                {
                                                   addr286:
                                                   _loc4_.x = _loc3_;
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      if(_loc6_ || _loc1_)
                                                      {
                                                         this.§>1§.push(_loc4_);
                                                         if(_loc6_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr286);
                                                            }
                                                            addr331:
                                                            _loc1_++;
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§goto(addr349);
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                   }
                                                   §§goto(addr330);
                                                }
                                                addr325:
                                                §§goto(addr325);
                                             }
                                             §§goto(addr354);
                                          }
                                          §§goto(addr331);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr242);
                                 §§goto(addr214);
                              }
                           }
                        }
                        §§push(this.§!Z§(_loc1_));
                        if(!(_loc5_ && _loc2_))
                        {
                           §§goto(addr261);
                        }
                        §§goto(addr262);
                     }
                     break;
                  }
                  §§goto(addr235);
               }
               else
               {
                  _loc2_ = this.§>1§[_loc1_];
                  if(_loc6_ || _loc1_)
                  {
                     _loc2_.x = this.getPositionFromIndex(_loc2_.index);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= this.§7F§);
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       this.hide(_loc2_);
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       addr47:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc6_ || _loc2_)
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          while(false)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_.x <= -this.§<K§);
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                          }
                                          continue loop0;
                                          addr72:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr74);
                                       }
                                    }
                                 }
                                 §§goto(addr47);
                              }
                              continue loop1;
                              addr90:
                           }
                           §§goto(addr113);
                        }
                     }
                  }
                  §§goto(addr72);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() < this.§7!?§.length)
            {
               §§goto(addr241);
               §§push(this.getPositionFromIndex(_loc1_));
            }
            §§goto(addr354);
            §§goto(addr349);
         }
      }
      
      protected function hide(param1:§^z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§&%§.removeChild(param1);
         }
         do
         {
            this.§>1§.splice(this.§>1§.indexOf(param1),1);
            do
            {
               this.§^!?§(param1);
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.§3!d§ / 2 + (param1 + this.§@q§) * (this.§<K§ + this.§3!d§));
      }
      
      protected function §!Z§(param1:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§>1§.length)
            {
               if(_loc4_)
               {
                  break;
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
            if(this.§>1§[_loc2_].index == param1)
            {
               addr81:
               return true;
               addr80:
            }
            §§goto(addr51);
         }
         if(!_loc3_)
         {
            §§push(false);
            if(!(_loc3_ && param1))
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^z§ = null;
         for each(_loc1_ in this.§>1§)
         {
            if(!_loc5_)
            {
               this.setRendererData(_loc1_,this.§7!?§[_loc1_.index]);
            }
         }
      }
      
      public function get data() : Array
      {
         return this.§7!?§;
      }
      
      public function set data(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.setData(param1);
         }
      }
      
      public function get §]v§() : int
      {
         return this.§@!K§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§^z§ = null;
         while(this.§>1§.length > 0)
         {
            _loc1_ = this.§>1§.pop();
            if(!(_loc3_ && this))
            {
               this.§&%§.removeChild(_loc1_);
               if(_loc2_)
               {
                  this.§^!?§(_loc1_);
               }
            }
         }
      }
      
      public function get offset() : int
      {
         return -this.§-!3§;
      }
      
      protected function §`E§() : §^z§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§>!q§.length > 0)
            {
               if(!(_loc3_ && _loc1_))
               {
                  return this.§>!q§.pop();
               }
            }
         }
         var _loc1_:§^z§ = new this.§,!`§();
         if(_loc2_ || _loc1_)
         {
            _loc1_.§ Y§ = this;
         }
         return _loc1_;
      }
      
      protected function §^!?§(param1:§^z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.setRendererData(param1,null);
            do
            {
               this.§>!q§.push(param1);
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.clear();
            do
            {
               this.§&%§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
   }
}
