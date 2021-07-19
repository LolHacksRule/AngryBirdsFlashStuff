package §^[§
{
   import §"v§.§3!w§;
   import §'@§.§^J§;
   import §'i§.§'!;§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §1"2§.§'s§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §2!h§
   {
       
      
      private var §;!S§:§`!T§;
      
      private var slider1:§="#§;
      
      private var slider2:§="#§;
      
      private var mTextFieldSliderScore1:§`!<§;
      
      private var mTextFieldSliderScore2:§`!<§;
      
      private var star1:§%+§;
      
      private var star2:§%+§;
      
      private var star3:§%+§;
      
      private var §2b§:§%+§;
      
      private var slider1Limit:Number;
      
      private var slider2Limit:Number;
      
      private var §%y§:Vector.<§%+§>;
      
      private var §3!z§:§^J§;
      
      private var mSlider1Score:int = 0;
      
      private var mSlider2Score:int = 0;
      
      private var §+!%§:Number = 0;
      
      public function §2!h§(param1:§'s§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§%y§ = new Vector.<§%+§>(3);
            loop0:
            while(true)
            {
               this.§3!z§ = new §^J§();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§;!S§ = param1.getItemByName("Container_StarSlider") as §`!T§;
                     while(true)
                     {
                        this.§2b§ = param1.getItemByName("MovieClip_Slider_Background") as §%+§;
                        continue loop1;
                        addr91:
                        if(!(_loc2_ || _loc3_))
                        {
                           continue;
                        }
                        this.§%y§[1] = param1.getItemByName("MovieClip_Star_2") as §%+§;
                        loop25:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              addr60:
                              if(_loc2_ || param1)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              loop20:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    this.slider1Limit = this.slider1.x;
                                    loop21:
                                    while(true)
                                    {
                                       this.slider2Limit = this.slider2.x;
                                       addr130:
                                       addr184:
                                       loop22:
                                       while(!(_loc3_ && this))
                                       {
                                          this.§+!%§ = this.§;!S§.width - 3;
                                          while(true)
                                          {
                                             if(!(_loc2_ || param1))
                                             {
                                                continue loop22;
                                             }
                                             if(!(_loc2_ || param1))
                                             {
                                                break;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             this.§%y§[0] = param1.getItemByName("MovieClip_Star_1") as §%+§;
                                             loop24:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop21;
                                                }
                                                if(!_loc3_)
                                                {
                                                   addr84:
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr91);
                                                }
                                                while(!_loc3_)
                                                {
                                                   §§push(this.slider2);
                                                   while(true)
                                                   {
                                                      §§pop().mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider2);
                                                      break loop25;
                                                   }
                                                }
                                                loop11:
                                                while(_loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.slider1);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§pop().mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider1);
                                                         addr232:
                                                         while(true)
                                                         {
                                                            §§push(this.slider1);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               addr207:
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  §§pop().mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider1);
                                                                  §§goto(addr220);
                                                               }
                                                               break;
                                                            }
                                                            continue loop13;
                                                         }
                                                         addr236:
                                                         while(true)
                                                         {
                                                            §§pop().mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider1);
                                                            continue loop11;
                                                            §§goto(addr207);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr220:
                                                loop7:
                                                while(true)
                                                {
                                                   this.mTextFieldSliderScore1 = param1.getItemByName("Textfield_SliderScore_1") as §`!<§;
                                                   addr262:
                                                   addr287:
                                                   while(_loc2_ || this)
                                                   {
                                                      this.mTextFieldSliderScore2 = param1.getItemByName("Textfield_SliderScore_2") as §`!<§;
                                                      break loop24;
                                                   }
                                                   while(true)
                                                   {
                                                      this.slider2 = param1.getItemByName("Slider_2") as §="#§;
                                                      continue loop7;
                                                      §§goto(addr262);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr236);
                                                §§goto(addr84);
                                             }
                                             addr40:
                                             if(_loc2_ || param1)
                                             {
                                                return;
                                             }
                                          }
                                          while(true)
                                          {
                                             this.slider1 = param1.getItemByName("Slider_1") as §="#§;
                                             §§goto(addr287);
                                             §§goto(addr114);
                                          }
                                       }
                                       addr176:
                                       while(true)
                                       {
                                          §§push(this.slider2);
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§pop().mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider2);
                                          continue loop20;
                                          §§goto(addr130);
                                       }
                                       while(!_loc3_)
                                       {
                                          §§pop().mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider2);
                                          §§goto(addr184);
                                       }
                                       §§goto(addr188);
                                    }
                                 }
                                 §§goto(addr232);
                              }
                              continue loop1;
                           }
                           §§goto(addr80);
                        }
                        while(_loc2_)
                        {
                           §§goto(addr176);
                           §§push(this.slider2);
                        }
                        §§goto(addr262);
                     }
                  }
               }
            }
         }
         §§goto(addr244);
      }
      
      public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§`P§();
         }
         do
         {
            this.§4!q§();
         }
         while(!_loc1_);
         
      }
      
      private function §`P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§`_§();
         }
      }
      
      private function §`_§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = Math.abs(this.slider1.x / this.§+!%§);
         if(!_loc4_)
         {
            this.mSlider1Score = Math.floor(_loc1_ * this.§3!z§.getValue());
         }
         var _loc2_:* = Number(Math.abs(this.slider2.x / this.§+!%§));
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() >= 0.99)
               {
                  while(true)
                  {
                     §§push(Number(1));
                     addr126:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr127:
                        while(true)
                        {
                        }
                     }
                  }
                  addr124:
               }
               loop1:
               while(true)
               {
                  this.mSlider2Score = Math.floor(_loc2_ * this.§3!z§.getValue());
                  loop2:
                  while(true)
                  {
                     this.mTextFieldSliderScore1.setText(this.mSlider1Score.toString());
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           continue loop2;
                        }
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr124);
                     }
                     continue loop1;
                  }
               }
               return;
               addr85:
            }
            §§goto(addr126);
         }
         §§goto(addr85);
      }
      
      private function §4!q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = null;
         if(_loc4_ || this)
         {
            §§push(this.slider1);
            if(!_loc3_)
            {
               if(§§pop().x + this.slider1.width / 2 >= this.slider2.x)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.slider1);
                     loop1:
                     while(true)
                     {
                        §§pop().mClip.stopDrag();
                        addr84:
                        loop17:
                        while(true)
                        {
                           addr59:
                           while(true)
                           {
                              this.slider2.mClip.stopDrag();
                              while(true)
                              {
                                 §§push(this.slider1);
                                 if(!_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§pop().x = this.slider1.x - 2;
                                    if(_loc4_)
                                    {
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          continue loop0;
                                       }
                                       continue loop17;
                                    }
                                    continue;
                                 }
                                 addr87:
                                 §§push(§§pop().x - 10);
                                 §§push(this.slider2.x - this.slider1.x);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() - 12);
                                 }
                                 §§push(this.§+!%§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() - this.slider2.x);
                                    if(!_loc3_)
                                    {
                                       addr116:
                                       §§push(§§pop() - 24);
                                    }
                                    _loc1_ = null;
                                    var _loc2_:int = 0;
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(3);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   this.§%y§[0].x = this.slider1.x / 2 - this.§%y§[0].width / 2 + 4;
                                                }
                                                loop3:
                                                for(; _loc4_ || _loc1_; if(_loc3_ && _loc1_)
                                                {
                                                   continue;
                                                },if(!(_loc3_ && _loc1_))
                                                {
                                                   break loop2;
                                                },§§goto(addr311))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      this.§%y§[1].x = (this.slider1.x + this.slider2.x + this.§%y§[1].width) / 2 - this.§%y§[1].width / 2 + 2;
                                                      while(_loc4_)
                                                      {
                                                         this.§%y§[2].x = (this.§2b§.x + this.slider2.x + this.§%y§[2].width) / 2 - this.§%y§[2].width / 2;
                                                         if(!_loc3_)
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                      loop11:
                                                      while(true)
                                                      {
                                                         this.§%y§[_loc2_].mClip.scaleX = 1;
                                                         addr344:
                                                         while(true)
                                                         {
                                                            this.§%y§[_loc2_].mClip.scaleX = Math.sqrt(Math.min(1,_loc1_[_loc2_] / this.§%y§[_loc2_].width));
                                                            addr333:
                                                            loop8:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  this.§%y§[_loc2_].mClip.scaleY = this.§%y§[_loc2_].mClip.scaleX;
                                                                  while(true)
                                                                  {
                                                                     addr268:
                                                                     while(true)
                                                                     {
                                                                        _loc2_++;
                                                                        break loop3;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr311:
                                                               }
                                                               else
                                                               {
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_[_loc2_] > 0);
                                                                     if(_loc4_ || _loc1_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break loop9;
                                                                                 }
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           addr387:
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     addr362:
                                                                     while(true)
                                                                     {
                                                                        this.§%y§[_loc2_].mClip.visible = true;
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr287:
                                                            this.§%y§[_loc2_].mClip.visible = false;
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr362);
                                                      §§goto(addr287);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§goto(addr344);
                                                   }
                                                   §§goto(addr333);
                                                }
                                             }
                                             else
                                             {
                                                addr386:
                                                §§push(this.§,!B§ == this.§1">§);
                                             }
                                             §§goto(addr387);
                                          }
                                       }
                                       §§goto(addr386);
                                    }
                                    return;
                                 }
                                 §§goto(addr116);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               §§push(this.slider1);
            }
            §§goto(addr87);
         }
         §§goto(addr84);
      }
      
      protected function onMouseDownSlider1(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.slider1.mClip.startDrag(false,new Rectangle(0,6.1,this.slider2.x,0));
         }
      }
      
      protected function onMouseDownSlider2(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.slider2.mClip.startDrag(false,new Rectangle(this.slider1.x,6.1,this.§+!%§ - this.slider1.x,0));
         }
      }
      
      protected function onMouseUpSlider1(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.slider1.mClip.stopDrag();
         }
      }
      
      protected function onMouseUpSlider2(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.slider2.mClip.stopDrag();
         }
      }
      
      public function §=!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;!S§.setVisibility(false);
         }
      }
      
      public function §"!U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;!S§.setVisibility(true);
         }
      }
      
      public function §9P§(param1:int) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            do
            {
               §§push(1);
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc2_ && _loc3_)
                     {
                        break;
                     }
                     §§push(2);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 §§push(this.mSlider2Score);
                                 break;
                              }
                              continue;
                           }
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           while(true)
                           {
                           }
                        }
                        while(true)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr89);
                     }
                     continue loop1;
                  }
                  return §§pop();
               }
               addr89:
               return §§pop();
            }
            while(!(_loc3_ || this));
            
            return §§pop();
         }
         §§goto(addr83);
      }
      
      public function §&!N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§,!B§ = this.§9P§(1);
            do
            {
               this.§1">§ = this.§9P§(2);
            }
            while(!_loc2_);
            
         }
      }
      
      public function get §1">§() : int
      {
         return §'!;§.§2=§.§8#§.§4+§.§?@§();
      }
      
      public function get §,!B§() : int
      {
         return §'!;§.§2=§.§8#§.§4+§.§]#§();
      }
      
      public function set §1">§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §'!;§.§2=§.§8#§.§4+§.§[!j§(param1);
         }
      }
      
      public function set §,!B§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §'!;§.§2=§.§8#§.§4+§.§>f§(param1);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.slider1);
            loop0:
            while(true)
            {
               §§pop().mClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider1);
               addr144:
               while(true)
               {
                  §§push(this.slider1);
                  while(true)
                  {
                     §§pop().mClip.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider1);
                     addr125:
                     while(true)
                     {
                        §§push(this.slider1);
                        if(!(_loc1_ || _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         loop4:
         while(true)
         {
            §§push(this.slider2);
            loop5:
            while(true)
            {
               §§pop().mClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider2);
               loop6:
               while(_loc1_)
               {
                  if(_loc1_ || this)
                  {
                     §§push(this.slider2);
                     loop7:
                     while(_loc1_)
                     {
                        §§pop().mClip.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider2);
                        while(_loc1_)
                        {
                           §§push(this.slider2);
                           if(!(_loc2_ && this))
                           {
                              §§pop().mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider2);
                              if(!_loc1_)
                              {
                                 §§goto(addr60);
                              }
                              if(!(_loc2_ && this))
                              {
                                 return;
                              }
                              continue loop6;
                           }
                           continue loop7;
                        }
                        continue loop4;
                     }
                     continue loop5;
                  }
                  §§goto(addr144);
               }
               §§goto(addr125);
            }
         }
      }
   }
}
