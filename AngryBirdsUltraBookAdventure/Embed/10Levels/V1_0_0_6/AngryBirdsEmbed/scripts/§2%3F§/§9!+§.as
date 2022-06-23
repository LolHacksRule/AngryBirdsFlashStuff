package §2?§
{
   import §0w§.§0#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §9!+§ extends Popup
   {
       
      
      private var §09§:Sprite;
      
      private var §?!§:String;
      
      public function §9!+§(param1:XML, param2:§0#§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2);
            if(_loc5_ || param2)
            {
               this.§?!§ = param4;
               if(!(_loc6_ && this))
               {
                  §§goto(addr49);
               }
               §§goto(addr54);
            }
         }
         addr49:
         this.setVisibility(false);
         if(!_loc6_)
         {
            addr54:
            this.§09§ = param3;
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§09§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§09§.height >> 1;
         var _loc5_:Rectangle = this.§09§.getBounds(this.§09§);
         if(!(_loc7_ && _loc3_))
         {
            §§push(_loc3_);
            if(_loc6_ || this)
            {
               §§push(§§pop() - _loc5_.left);
               if(_loc6_)
               {
                  §§push(int(§§pop()));
                  if(_loc6_ || _loc3_)
                  {
                     _loc3_ = §§pop();
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        addr80:
                        §§push(int(§§pop() - _loc5_.top));
                     }
                     _loc4_ = §§pop();
                     if(!(_loc7_ && _loc2_))
                     {
                        _loc2_.addChild(this.§09§);
                        if(!(_loc7_ && _loc3_))
                        {
                           addr113:
                           if(this.§?!§ == "POWERUP_TUTORIAL_SLINGSCOPE")
                           {
                              if(!_loc7_)
                              {
                                 addr119:
                                 if((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       mClip.ButtonEasterEgg5.visible = false;
                                       if(!_loc7_)
                                       {
                                          addr175:
                                          this.§09§.x = _loc3_;
                                          if(!_loc7_)
                                          {
                                             this.§09§.y = _loc4_ - 10;
                                             §§goto(addr187);
                                          }
                                          §§goto(addr192);
                                          addr155:
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr155);
                                 }
                                 else
                                 {
                                    mClip.ButtonEasterEgg5.visible = true;
                                 }
                                 mClip.ButtonEasterEgg5.buttonMode = true;
                                 mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§,$§);
                              }
                              §§goto(addr175);
                           }
                           else if(mClip.ButtonEasterEgg5)
                           {
                              mClip.ButtonEasterEgg5.visible = false;
                              if(_loc7_)
                              {
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr175);
                        }
                        addr187:
                        super.open(param1);
                        if(!_loc7_)
                        {
                           addr192:
                           mClip.getChildByName("Container_Tutorial").visible = true;
                        }
                        return;
                     }
                     §§goto(addr113);
                  }
               }
            }
            §§goto(addr80);
         }
         §§goto(addr119);
      }
      
      private function §,$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
            if(_loc3_)
            {
               addr42:
               mClip.ButtonEasterEgg5.visible = false;
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!(_loc4_ && this))
         {
            _loc2_.removeChild(this.§09§);
            if(!(_loc4_ && _loc2_))
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
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
