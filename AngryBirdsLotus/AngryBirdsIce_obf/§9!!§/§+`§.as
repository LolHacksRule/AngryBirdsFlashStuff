package §9!!§
{
   import §2]§.§#H§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §+`§ extends Popup
   {
       
      
      private var §^L§:Sprite;
      
      private var §^6§:String;
      
      public function §+`§(param1:XML, param2:§#H§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super(param1,param2);
            while(true)
            {
               this.§^6§ = param4;
               while(!(_loc6_ && param1))
               {
                  this.setVisibility(false);
                  do
                  {
                     this.§^L§ = param3;
                  }
                  while(_loc6_);
                  
                  if(!(_loc5_ || param3))
                  {
                     continue;
                  }
                  return;
                  addr61:
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§^L§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§^L§.height >> 1;
         var _loc5_:Rectangle = this.§^L§.getBounds(this.§^L§);
         if(!_loc7_)
         {
            §§push(_loc3_);
            while(true)
            {
               §§push(§§pop() - _loc5_.left);
               loop1:
               while(true)
               {
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        break;
                     }
                     if(_loc6_ || _loc2_)
                     {
                        if(_loc7_)
                        {
                           break loop1;
                        }
                        §§push(§§pop() - _loc5_.top);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(int(§§pop()));
                           break;
                        }
                        continue loop1;
                     }
                  }
                  _loc4_ = §§pop();
                  _loc2_.addChild(this.§^L§);
                  if(this.§^6§ == "POWERUP_TUTORIAL_SLINGSCOPE")
                  {
                     if(!(AngryBirdsFP11.§64§ as Object).isEggUnlocked("1000-5"))
                     {
                        mClip.ButtonEasterEgg5.visible = true;
                        mClip.ButtonEasterEgg5.buttonMode = true;
                        while(true)
                        {
                           if(_loc6_ || _loc2_)
                           {
                              mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§ j§);
                              continue;
                           }
                        }
                     }
                     while(true)
                     {
                        mClip.ButtonEasterEgg5.visible = false;
                        §§goto(addr184);
                     }
                  }
                  else if(mClip.ButtonEasterEgg5)
                  {
                     §§goto(addr126);
                  }
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr119);
      }
      
      private function § j§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (AngryBirdsFP11.§64§ as Object).setEggUnlocked("1000-5");
            do
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.removeChild(this.§^L§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(!(_loc3_ || _loc3_));
            
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
