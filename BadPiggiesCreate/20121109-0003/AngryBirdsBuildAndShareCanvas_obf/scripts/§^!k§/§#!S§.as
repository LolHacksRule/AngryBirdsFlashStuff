package §^!k§
{
   import §&!<§.§>!V§;
   import §1" §.§#!j§;
   import §<!1§.§9!=§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §#!S§
   {
       
      
      private var §-!q§:§6W§;
      
      private var slider1:§9"8§;
      
      private var slider2:§9"8§;
      
      private var mTextFieldSliderScore1:§!!]§;
      
      private var mTextFieldSliderScore2:§!!]§;
      
      private var star1:§@u§;
      
      private var star2:§@u§;
      
      private var star3:§@u§;
      
      private var §7">§:§@u§;
      
      private var slider1Limit:Number;
      
      private var slider2Limit:Number;
      
      private var §<"'§:Vector.<§@u§>;
      
      private var §4!?§:§9!=§;
      
      private var mSlider1Score:int = 0;
      
      private var mSlider2Score:int = 0;
      
      private var §5"?§:Number = 0;
      
      public function §#!S§(param1:§>!V§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<"'§ = new Vector.<§@u§>(3);
            while(true)
            {
               this.§4!?§ = new §9!=§();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§-!q§ = param1.getItemByName("Container_StarSlider") as §6W§;
                     while(true)
                     {
                        this.§7">§ = param1.getItemByName("MovieClip_Slider_Background") as §@u§;
                        addr338:
                        while(true)
                        {
                           this.§4!?§.§2">§(AngryBirdsFP11.§>!7§.§="?§(§`!r§.§0B§));
                           addr54:
                           if(!(_loc3_ && _loc3_))
                           {
                              return;
                           }
                        }
                        loop6:
                        while(_loc2_ || this)
                        {
                           this.slider2 = param1.getItemByName("Slider_2") as §9"8§;
                           while(true)
                           {
                              this.mTextFieldSliderScore1 = param1.getItemByName("Textfield_SliderScore_1") as §!!]§;
                              addr287:
                              addr329:
                              while(_loc2_ || _loc2_)
                              {
                                 this.mTextFieldSliderScore2 = param1.getItemByName("Textfield_SliderScore_2") as §!!]§;
                                 while(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop6;
                              }
                              while(true)
                              {
                                 this.slider1 = param1.getItemByName("Slider_1") as §9"8§;
                                 continue loop6;
                                 §§goto(addr287);
                              }
                              addr142:
                              while(_loc2_ || this)
                              {
                                 continue loop2;
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
      
      public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§^"§();
         }
         do
         {
            this.§6!,§();
         }
         while(_loc1_);
         
      }
      
      private function §^"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§@!k§();
         }
      }
      
      private function §@!k§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = Math.abs(this.slider1.x / this.§5"?§);
         if(!(_loc3_ && _loc1_))
         {
            this.mSlider1Score = Math.floor(_loc1_ * this.§4!?§.getValue());
         }
         var _loc2_:* = Number(Math.abs(this.slider2.x / this.§5"?§));
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() >= 0.99)
               {
                  while(true)
                  {
                     §§push(Number(1));
                     addr142:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr143:
                        while(true)
                        {
                        }
                     }
                     addr101:
                     if(!(_loc4_ || _loc2_))
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.mTextFieldSliderScore2.setText(this.mSlider2Score.toString());
                        if(_loc4_ || _loc1_)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              break;
                           }
                           §§goto(addr143);
                        }
                        loop3:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr101);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.mTextFieldSliderScore1.setText(this.mSlider1Score.toString());
                                 continue loop3;
                              }
                              addr119:
                           }
                        }
                        §§goto(addr143);
                     }
                     return;
                     addr108:
                  }
               }
               while(true)
               {
                  this.mSlider2Score = Math.floor(_loc2_ * this.§4!?§.getValue());
                  §§goto(addr119);
                  §§goto(addr143);
               }
            }
            §§goto(addr142);
         }
         §§goto(addr108);
      }
      
      private function §6!,§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.slider1);
            if(!(_loc3_ && this))
            {
               if(§§pop().x + this.slider1.width / 2 >= this.slider2.x)
               {
                  if(!_loc3_)
                  {
                     §§push(this.slider1);
                     loop10:
                     while(true)
                     {
                        §§pop().mClip.stopDrag();
                        addr86:
                        loop11:
                        while(true)
                        {
                           addr47:
                           while(true)
                           {
                              this.slider2.mClip.stopDrag();
                              addr52:
                              while(_loc4_ || _loc3_)
                              {
                                 §§push(this.slider1);
                                 if(_loc4_)
                                 {
                                    continue loop10;
                                 }
                                 addr89:
                                 §§push(§§pop().x - 10);
                                 §§push(this.slider2.x - this.slider1.x);
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§push(§§pop() - 12);
                                 }
                                 §§push(this.§5"?§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() - this.slider2.x);
                                    if(!_loc3_)
                                    {
                                       addr118:
                                       §§push(§§pop() - 24);
                                    }
                                    var _loc1_:Array = null;
                                    var _loc2_:int = 0;
                                    loop0:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc3_)
                                       {
                                          §§push(3);
                                          if(_loc4_ || _loc1_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      this.§<"'§[0].x = this.slider1.x / 2 - this.§<"'§[0].width / 2 + 4;
                                                      while(true)
                                                      {
                                                         this.§<"'§[1].x = (this.slider1.x + this.slider2.x + this.§<"'§[1].width) / 2 - this.§<"'§[1].width / 2 + 2;
                                                         loop4:
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            loop5:
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  this.§<"'§[_loc2_].mClip.scaleY = this.§<"'§[_loc2_].mClip.scaleX;
                                                                  while(!_loc4_)
                                                                  {
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_[_loc2_] > 0);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr399:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           this.§<"'§[_loc2_].mClip.visible = false;
                                                                           break loop4;
                                                                        }
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           this.§<"'§[_loc2_].mClip.visible = true;
                                                                        }
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                                  addr325:
                                                                  addr260:
                                                                  _loc2_++;
                                                                  continue loop0;
                                                                  addr287:
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§<"'§[_loc2_].mClip.scaleX = 1;
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      addr259:
                                                   }
                                                   §§goto(addr287);
                                                }
                                                §§goto(addr259);
                                             }
                                             else
                                             {
                                                addr371:
                                                §§push(this.§-b§ == this.§3!N§);
                                                if(_loc4_ || _loc1_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      addr397:
                                                      if(§§pop())
                                                      {
                                                      }
                                                      §§goto(addr348);
                                                   }
                                                   §§goto(addr399);
                                                }
                                                §§goto(addr397);
                                             }
                                          }
                                       }
                                       §§goto(addr371);
                                    }
                                    return;
                                 }
                                 §§goto(addr118);
                              }
                              continue loop11;
                           }
                        }
                     }
                     addr84:
                  }
                  §§goto(addr86);
               }
               §§goto(addr87);
            }
            §§goto(addr84);
         }
         §§goto(addr86);
      }
      
      protected function onMouseDownSlider1(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.slider1.mClip.startDrag(false,new Rectangle(0,6.1,this.slider2.x,0));
         }
      }
      
      protected function onMouseDownSlider2(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.slider2.mClip.startDrag(false,new Rectangle(this.slider1.x,6.1,this.§5"?§ - this.slider1.x,0));
         }
      }
      
      protected function onMouseUpSlider1(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.slider1.mClip.stopDrag();
         }
      }
      
      protected function onMouseUpSlider2(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.slider2.mClip.stopDrag();
         }
      }
      
      public function §5!Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-!q§.setVisibility(false);
         }
      }
      
      public function §<!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-!q§.setVisibility(true);
         }
      }
      
      public function §1"2§(param1:int) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(1);
               addr101:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     §§push(param1);
                     if(_loc2_)
                     {
                        break;
                     }
                     if(!(_loc3_ || this))
                     {
                        return §§pop();
                     }
                     addr104:
                     continue loop0;
                  }
                  return §§pop();
               }
               addr102:
               §§goto(addr104);
            }
         }
         §§goto(addr105);
      }
      
      public function §0!n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§-b§ = this.§1"2§(1);
            do
            {
               this.§3!N§ = this.§1"2§(2);
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function get §3!N§() : int
      {
         return §#!j§.§[E§.§0"!§.§0z§.§8!r§();
      }
      
      public function get §-b§() : int
      {
         return §#!j§.§[E§.§0"!§.§0z§.§'!W§();
      }
      
      public function set §3!N§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §#!j§.§[E§.§0"!§.§0z§.§<r§(param1);
         }
      }
      
      public function set §-b§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §#!j§.§[E§.§0"!§.§0z§.§ !t§(param1);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.slider1);
            while(true)
            {
               §§pop().mClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider1);
               loop1:
               while(true)
               {
                  §§push(this.slider1);
                  loop2:
                  while(true)
                  {
                     §§pop().mClip.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider1);
                     addr139:
                     while(!(_loc1_ && _loc1_))
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§pop().mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider1);
               loop4:
               while(true)
               {
                  §§push(this.slider2);
                  loop5:
                  while(true)
                  {
                     §§pop().mClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider2);
                     addr105:
                     while(true)
                     {
                        §§push(this.slider2);
                        while(true)
                        {
                           §§pop().mClip.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider2);
                           addr95:
                           while(true)
                           {
                              §§push(this.slider2);
                              if(_loc1_ && _loc1_)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                        }
                     }
                     continue loop4;
                  }
               }
            }
         }
         §§goto(addr85);
      }
   }
}
