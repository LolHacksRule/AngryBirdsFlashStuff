package §_-gU§
{
   import §_-Yl§.§_-5q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-hf§ extends Popup
   {
       
      
      private var §_-mA§:Sprite;
      
      private var §_-mX§:String;
      
      public function §_-hf§(param1:XML, param2:§_-5q§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2);
            while(true)
            {
               this.§_-mX§ = param4;
               loop1:
               while(_loc6_ || param1)
               {
                  while(true)
                  {
                     this.setVisibility(false);
                     do
                     {
                        this.§_-mA§ = param3;
                     }
                     while(_loc5_);
                     
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§_-mA§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§_-mA§.height >> 1;
         var _loc5_:Rectangle = this.§_-mA§.getBounds(this.§_-mA§);
         if(!_loc7_)
         {
            §§push(_loc3_);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() - _loc5_.left);
               while(true)
               {
                  §§push(int(§§pop()));
                  addr247:
                  §§push(§§pop() - _loc5_.top);
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
                  addr258:
                  _loc4_ = int(§§pop());
                  while(true)
                  {
                     _loc2_.addChild(this.§_-mA§);
                     loop4:
                     while(true)
                     {
                        if(this.§_-mX§ != "POWERUP_TUTORIAL_SLINGSCOPE")
                        {
                           if(mClip.ButtonEasterEgg5)
                           {
                              loop5:
                              while(true)
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    mClip.ButtonEasterEgg5.visible = false;
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                this.§_-mA§.x = _loc3_;
                                                while(true)
                                                {
                                                   this.§_-mA§.y = _loc4_ - 10;
                                                   loop13:
                                                   while(!(_loc7_ && this))
                                                   {
                                                      super.open(param1);
                                                      while(true)
                                                      {
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop13;
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ || _loc3_))
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop10;
                                                            }
                                                            addr224:
                                                         }
                                                         else
                                                         {
                                                            addr165:
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop11;
                                                            §§goto(addr165);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             return;
                                             addr77:
                                             addr107:
                                          }
                                          break;
                                       }
                                       continue loop4;
                                       if(!(_loc6_ || param1))
                                       {
                                          continue;
                                       }
                                       if(!(_loc6_ || this))
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             if(!(_loc6_ || this))
                                             {
                                                continue;
                                             }
                                             if(_loc6_ || _loc3_)
                                             {
                                                break;
                                             }
                                             addr199:
                                             while(true)
                                             {
                                                if((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
                                                {
                                                   continue loop4;
                                                }
                                                mClip.ButtonEasterEgg5.visible = true;
                                                continue loop15;
                                             }
                                          }
                                          mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§_-QD§);
                                          §§goto(addr158);
                                       }
                                       §§goto(addr77);
                                    }
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§goto(addr247);
                                       }
                                       §§goto(addr258);
                                    }
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       §§goto(addr273);
                                    }
                                    addr273:
                                    addr272:
                                 }
                                 §§goto(addr158);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr199);
                     }
                     if(!(_loc6_ || _loc2_))
                     {
                        continue;
                     }
                     mClip.ButtonEasterEgg5.visible = false;
                     §§goto(addr224);
                  }
               }
            }
            §§goto(addr272);
         }
         §§goto(addr193);
      }
      
      private function §_-QD§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
            do
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            while(!_loc2_);
            
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.removeChild(this.§_-mA§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.close();
         }
      }
   }
}
