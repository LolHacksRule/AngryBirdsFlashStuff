package §[m§
{
   import §2h§.§'!^§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class § #§ extends Popup
   {
       
      
      private var §,!t§:Sprite;
      
      private var §+!"§:String;
      
      public function § #§(param1:XML, param2:§'!^§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§+!"§ = param4;
            while(true)
            {
               this.setVisibility(false);
               while(!_loc6_)
               {
                  continue loop0;
                  this.§,!t§ = param3;
                  if(!(_loc6_ && param1))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§,!t§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§,!t§.height >> 1;
         var _loc5_:Rectangle = this.§,!t§.getBounds(this.§,!t§);
         if(_loc6_)
         {
            §§push(_loc3_);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() - _loc5_.left);
               while(true)
               {
                  §§push(int(§§pop()));
               }
               addr261:
            }
            while(true)
            {
               _loc3_ = §§pop();
               loop2:
               while(true)
               {
                  §§push(_loc4_);
                  if(!(_loc7_ && param1))
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§push(§§pop() - _loc5_.top);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     else
                     {
                        §§goto(addr261);
                     }
                  }
                  _loc4_ = §§pop();
                  while(true)
                  {
                     _loc2_.addChild(this.§,!t§);
                     loop4:
                     while(true)
                     {
                        if(this.§+!"§ != "POWERUP_TUTORIAL_SLINGSCOPE")
                        {
                           if(mClip.ButtonEasterEgg5)
                           {
                              while(true)
                              {
                                 mClip.ButtonEasterEgg5.visible = false;
                                 addr154:
                                 while(true)
                                 {
                                 }
                              }
                              addr150:
                           }
                           loop7:
                           while(true)
                           {
                              this.§,!t§.x = _loc3_;
                              loop8:
                              for(; !(_loc7_ && _loc2_); for(; _loc6_ || param1; mClip.getChildByName("Container_Tutorial").visible = true,if(_loc7_ && param1)
                              {
                                 continue;
                              },if(!_loc7_)
                              {
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§goto(addr77);
                                 }
                                 else
                                 {
                                    §§goto(addr163);
                                 }
                              }
                              else
                              {
                                 §§goto(addr111);
                              })
                              {
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 addr183:
                                 while(true)
                                 {
                                    mClip.ButtonEasterEgg5.buttonMode = true;
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(_loc7_)
                                          {
                                             break;
                                             addr163:
                                          }
                                          mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§0!$§);
                                          while(_loc6_)
                                          {
                                             §§goto(addr144);
                                          }
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                 }
                              })
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       while(true)
                                       {
                                          this.§,!t§.y = _loc4_ - 10;
                                          addr111:
                                          while(true)
                                          {
                                             super.open(param1);
                                             continue loop8;
                                          }
                                       }
                                       return;
                                       addr77:
                                       addr143:
                                    }
                                    else
                                    {
                                       addr214:
                                    }
                                    while(true)
                                    {
                                       addr144:
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr150);
                                 }
                              }
                              §§goto(addr154);
                           }
                        }
                        while(true)
                        {
                           if((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
                           {
                              continue loop4;
                           }
                           mClip.ButtonEasterEgg5.visible = true;
                           §§goto(addr183);
                        }
                     }
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                     mClip.ButtonEasterEgg5.visible = false;
                     §§goto(addr214);
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      private function §0!$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
         }
         do
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         while(_loc3_ && _loc3_);
         
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc4_)
         {
            _loc2_.removeChild(this.§,!t§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(_loc3_ && param1);
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.close();
         }
      }
   }
}
