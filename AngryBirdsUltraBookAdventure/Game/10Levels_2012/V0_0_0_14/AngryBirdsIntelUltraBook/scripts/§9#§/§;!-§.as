package §9#§
{
   import §1n§.§ C§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §;!-§ extends Popup
   {
       
      
      private var §2!k§:Sprite;
      
      private var § h§:String;
      
      public function §;!-§(param1:XML, param2:§ C§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§ h§ = param4;
               loop1:
               while(true)
               {
                  this.setVisibility(false);
                  loop2:
                  while(_loc6_)
                  {
                     while(true)
                     {
                        this.§2!k§ = param3;
                        if(!(_loc5_ && param1))
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
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
         var _loc3_:* = _loc2_.width - this.§2!k§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§2!k§.height >> 1;
         var _loc5_:Rectangle = this.§2!k§.getBounds(this.§2!k§);
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
               addr266:
            }
            while(true)
            {
               _loc3_ = §§pop();
               loop2:
               while(true)
               {
                  §§push(_loc4_);
                  if(!(_loc7_ && _loc2_))
                  {
                     if(_loc7_ && param1)
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
                        §§goto(addr266);
                     }
                  }
                  _loc4_ = §§pop();
                  loop3:
                  while(true)
                  {
                     _loc2_.addChild(this.§2!k§);
                     loop4:
                     while(true)
                     {
                        if(this.§ h§ == "POWERUP_TUTORIAL_SLINGSCOPE")
                        {
                           if(!_loc7_)
                           {
                              if(!(AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
                              {
                                 mClip.ButtonEasterEgg5.visible = true;
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop4;
                                    }
                                    mClip.ButtonEasterEgg5.buttonMode = true;
                                    loop10:
                                    while(true)
                                    {
                                       mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§,!&§);
                                       loop8:
                                       while(true)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             addr91:
                                             loop13:
                                             while(true)
                                             {
                                                this.§2!k§.x = _loc3_;
                                                addr96:
                                                loop14:
                                                while(true)
                                                {
                                                   if(!(_loc7_ && this))
                                                   {
                                                      addr103:
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            continue loop3;
                                                         }
                                                         continue loop8;
                                                      }
                                                      addr141:
                                                      while(true)
                                                      {
                                                         if(_loc7_ && param1)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            mClip.ButtonEasterEgg5.visible = false;
                                                            break loop14;
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§goto(addr103);
                                                      }
                                                   }
                                                   break;
                                                   addr134:
                                                   this.§2!k§.y = _loc4_ - 10;
                                                   do
                                                   {
                                                      super.open(param1);
                                                      do
                                                      {
                                                         mClip.getChildByName("Container_Tutorial").visible = true;
                                                      }
                                                      while(!_loc6_);
                                                      
                                                   }
                                                   while(!(_loc6_ || _loc2_));
                                                   
                                                   if(!(_loc7_ && this))
                                                   {
                                                      return;
                                                      addr77:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc6_ || _loc3_))
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop13;
                                                   }
                                                   §§goto(addr96);
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 mClip.ButtonEasterEgg5.visible = false;
                              }
                           }
                           §§goto(addr214);
                        }
                        else if(mClip.ButtonEasterEgg5)
                        {
                           §§goto(addr141);
                        }
                        §§goto(addr91);
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §,!&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
            do
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.removeChild(this.§2!k§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(_loc3_);
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.close();
         }
      }
   }
}
