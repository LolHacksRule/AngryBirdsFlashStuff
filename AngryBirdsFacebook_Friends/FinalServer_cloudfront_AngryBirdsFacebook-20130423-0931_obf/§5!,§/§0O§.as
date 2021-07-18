package §5!,§
{
   import §5!Y§.Popup;
   import §@!%§.§#!$§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §0O§ extends Popup
   {
       
      
      private var §=F§:Sprite;
      
      private var §%D§:String;
      
      public function §0O§(param1:XML, param2:§`_§, param3:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            super(param1,param2);
            if(_loc7_)
            {
               this.§%D§ = param3;
               addr29:
            }
            var _loc4_:Class;
            var _loc5_:Sprite = new (_loc4_ = §?q§.§ q§(param3))();
            if(!_loc8_)
            {
               this.setVisibility(false);
               if(_loc7_)
               {
                  this.§=F§ = _loc5_;
                  if(_loc8_ && param1)
                  {
                  }
                  §§goto(addr89);
               }
               this.§=F§.mouseEnabled = this.§=F§.mouseChildren = false;
            }
            addr89:
            return;
         }
         §§goto(addr29);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("TutorialHolder") as DisplayObjectContainer;
         if(_loc5_ || _loc3_)
         {
            _loc3_.addChild(this.§=F§);
            loop0:
            while(true)
            {
               if(this.§%D§ != "POWERUP_TUTORIAL_SLINGSCOPE")
               {
                  if(mClip.ButtonEasterEgg5)
                  {
                     if(_loc5_)
                     {
                        if(_loc5_ || this)
                        {
                           if(_loc5_)
                           {
                              mClip.ButtonEasterEgg5.visible = false;
                              addr95:
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§3]§);
                                 while(!(_loc4_ && _loc2_))
                                 {
                                    if(_loc4_ && _loc3_)
                                    {
                                       break loop1;
                                    }
                                 }
                                 break loop0;
                                 addr104:
                              }
                              else
                              {
                                 addr157:
                              }
                              while(true)
                              {
                                 if((AngryBirdsFP11.sUserProgress as §#!$§).§,"F§("1000-5"))
                                 {
                                    break loop1;
                                 }
                                 mClip.ButtonEasterEgg5.visible = true;
                              }
                              §§goto(addr134);
                              mClip.ButtonEasterEgg5.buttonMode = true;
                           }
                           continue;
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr95);
                  }
                  break;
               }
            }
            loop4:
            while(true)
            {
               super.open(param1);
               while(true)
               {
                  if(_loc5_ || _loc3_)
                  {
                     mClip.getChildByName("Container_Tutorial").visible = true;
                     if(_loc5_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop4;
               }
               return;
            }
         }
         §§goto(addr157);
      }
      
      private function §3]§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (AngryBirdsFP11.sUserProgress as §#!$§).§9!'§("1000-5");
         }
         do
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         while(_loc2_ && _loc3_);
         
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("TutorialHolder") as DisplayObjectContainer;
         if(_loc5_ || param1)
         {
            _loc3_.removeChild(this.§=F§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(!_loc5_);
            
         }
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
