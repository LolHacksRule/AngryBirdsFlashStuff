package §7r§
{
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.Popup;
   import com.rovio.assets.§8B§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §@M§ extends Popup
   {
       
      
      private var §8"7§:Sprite;
      
      private var §=!O§:String;
      
      public function §@M§(param1:XML, param2:§7!A§, param3:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            super(param1,param2);
            if(_loc8_ || param1)
            {
               addr45:
               this.§=!O§ = param3;
            }
            var _loc4_:Class;
            var _loc5_:Sprite = new (_loc4_ = §8B§.§6"C§(param3))();
            if(!_loc7_)
            {
               this.setVisibility(false);
               if(!_loc7_)
               {
                  addr74:
                  this.§8"7§ = _loc5_;
                  if(!(_loc7_ && param3))
                  {
                     this.§8"7§.mouseEnabled = this.§8"7§.mouseChildren = false;
                  }
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr45);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("TutorialHolder") as DisplayObjectContainer;
         if(_loc5_)
         {
            _loc3_.addChild(this.§8"7§);
            loop0:
            while(true)
            {
               if(this.§=!O§ == "POWERUP_TUTORIAL_SLINGSCOPE")
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     if(!(AngryBirdsFP11.sUserProgress as §[<§).§6M§("1000-5"))
                     {
                        mClip.ButtonEasterEgg5.visible = true;
                        loop6:
                        while(true)
                        {
                           mClip.ButtonEasterEgg5.buttonMode = true;
                           addr116:
                           addr118:
                           while(!_loc5_)
                           {
                              continue loop6;
                           }
                           mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§,"D§);
                           while(true)
                           {
                              if(!(_loc4_ && this))
                              {
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§goto(addr51);
                                    }
                                 }
                                 addr110:
                              }
                              else
                              {
                                 §§goto(addr116);
                              }
                              §§goto(addr160);
                           }
                        }
                     }
                     while(true)
                     {
                        mClip.ButtonEasterEgg5.visible = false;
                     }
                  }
                  §§goto(addr160);
               }
               else if(mClip.ButtonEasterEgg5)
               {
                  §§goto(addr83);
               }
               addr51:
               loop8:
               while(true)
               {
                  super.open(param1);
                  loop9:
                  while(true)
                  {
                     if(_loc5_ || param1)
                     {
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        addr160:
                        addr160:
                        while(true)
                        {
                           continue loop11;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           mClip.ButtonEasterEgg5.visible = false;
                           break loop9;
                        }
                        addr83:
                     }
                  }
                  while(true)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        continue loop8;
                     }
                     continue loop3;
                  }
               }
               return;
            }
         }
         §§goto(addr110);
      }
      
      private function §,"D§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (AngryBirdsFP11.sUserProgress as §[<§).§`"3§("1000-5");
         }
         do
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         while(_loc2_ && param1);
         
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("TutorialHolder") as DisplayObjectContainer;
         if(!(_loc5_ && this))
         {
            _loc3_.removeChild(this.§8"7§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(!_loc4_);
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.close();
         }
      }
   }
}
