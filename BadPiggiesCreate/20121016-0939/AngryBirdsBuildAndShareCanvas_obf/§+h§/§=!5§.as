package §+h§
{
   import §1"2§.§'s§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §=!5§ extends Popup
   {
       
      
      private var §3"$§:Sprite;
      
      private var §`]§:String;
      
      public function §=!5§(param1:XML, param2:§'s§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2);
            while(true)
            {
               this.§`]§ = param4;
               loop1:
               while(!(_loc6_ && param3))
               {
                  while(true)
                  {
                     this.setVisibility(false);
                     do
                     {
                        this.§3"$§ = param3;
                     }
                     while(_loc6_);
                     
                     if(!(_loc6_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§3"$§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§3"$§.height >> 1;
         var _loc5_:Rectangle = this.§3"$§.getBounds(this.§3"$§);
         if(_loc6_ || this)
         {
            §§push(_loc3_);
            while(true)
            {
               §§push(§§pop() - _loc5_.left);
               addr261:
               while(true)
               {
                  §§push(int(§§pop()));
                  addr262:
                  while(true)
                  {
                     _loc3_ = §§pop();
                  }
               }
            }
            addr258:
         }
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop() - _loc5_.top);
               if(_loc6_ || this)
               {
                  addr239:
                  §§push(int(§§pop()));
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        _loc4_ = §§pop();
                        loop4:
                        while(_loc6_)
                        {
                           _loc2_.addChild(this.§3"$§);
                           while(true)
                           {
                              if(this.§`]§ != "POWERUP_TUTORIAL_SLINGSCOPE")
                              {
                                 if(mClip.ButtonEasterEgg5)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          mClip.ButtonEasterEgg5.visible = false;
                                          while(true)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                if(!_loc7_)
                                                {
                                                   addr107:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      this.§3"$§.x = _loc3_;
                                                      continue loop6;
                                                      addr137:
                                                      while(true)
                                                      {
                                                         continue loop12;
                                                         addr212:
                                                      }
                                                   }
                                                   continue loop4;
                                                   addr107:
                                                }
                                                else
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§]!k§);
                                                      addr186:
                                                      while(true)
                                                      {
                                                         mClip.ButtonEasterEgg5.buttonMode = true;
                                                         continue loop8;
                                                      }
                                                   }
                                                   addr178:
                                                }
                                                §§goto(addr107);
                                             }
                                             addr172:
                                             while(true)
                                             {
                                                §§goto(addr137);
                                             }
                                             addr89:
                                             if(!(_loc6_ || param1))
                                             {
                                                continue;
                                             }
                                             mClip.getChildByName("Container_Tutorial").visible = true;
                                             addr96:
                                             if(_loc7_ && param1)
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr89);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            super.open(param1);
                                                            continue loop15;
                                                         }
                                                         addr210:
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                      }
                                                      §§goto(addr137);
                                                      addr104:
                                                   }
                                                }
                                                §§goto(addr172);
                                             }
                                             if(!(_loc6_ || this))
                                             {
                                                continue loop6;
                                             }
                                             if(_loc6_)
                                             {
                                                return;
                                             }
                                             §§goto(addr186);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if((AngryBirdsFP11.§>" § as Object).isEggUnlocked("1000-5"))
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   mClip.ButtonEasterEgg5.visible = false;
                                                }
                                                §§goto(addr210);
                                             }
                                             else
                                             {
                                                mClip.ButtonEasterEgg5.visible = true;
                                                §§goto(addr186);
                                             }
                                          }
                                          addr192:
                                       }
                                       §§goto(addr178);
                                    }
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr192);
                              if(_loc7_ && _loc2_)
                              {
                                 continue;
                              }
                              this.§3"$§.y = _loc4_ - 10;
                              §§goto(addr104);
                           }
                        }
                        continue;
                     }
                     §§goto(addr258);
                  }
                  §§goto(addr262);
               }
               §§goto(addr261);
            }
            §§goto(addr239);
         }
      }
      
      private function §]!k§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (AngryBirdsFP11.§>" § as Object).setEggUnlocked("1000-5");
         }
         do
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         while(_loc2_ && _loc2_);
         
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
         if(_loc3_)
         {
            _loc2_.removeChild(this.§3"$§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(_loc4_);
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.close();
         }
      }
   }
}
