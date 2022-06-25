package §=!4§
{
   import §1;§.§!!1§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §4q§ extends Popup
   {
       
      
      private var §]?§:Sprite;
      
      private var §?!F§:String;
      
      public function §4q§(param1:XML, param2:§!!1§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            super(param1,param2);
            if(_loc6_ || param1)
            {
               this.§?!F§ = param4;
               if(!_loc5_)
               {
                  this.setVisibility(false);
                  if(_loc6_ || param2)
                  {
                     addr70:
                     this.§]?§ = param3;
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§]?§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§]?§.height >> 1;
         var _loc5_:Rectangle = this.§]?§.getBounds(this.§]?§);
         if(_loc7_ || this)
         {
            §§push(_loc3_);
            if(_loc7_)
            {
               §§push(§§pop() - _loc5_.left);
               if(_loc7_ || param1)
               {
                  §§push(int(§§pop()));
                  if(_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        §§push(_loc4_);
                        if(_loc7_)
                        {
                           addr83:
                           §§push(int(§§pop() - _loc5_.top));
                        }
                        _loc4_ = §§pop();
                        if(!_loc6_)
                        {
                           _loc2_.addChild(this.§]?§);
                           if(_loc7_)
                           {
                              if(this.§?!F§ == "POWERUP_TUTORIAL_SLINGSCOPE")
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    if((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
                                    {
                                       if(_loc7_)
                                       {
                                          mClip.ButtonEasterEgg5.visible = false;
                                          if(_loc7_ || param1)
                                          {
                                             addr180:
                                             this.§]?§.x = _loc3_;
                                             addr184:
                                             this.§]?§.y = _loc4_ - 10;
                                             if(_loc7_)
                                             {
                                                addr192:
                                                super.open(param1);
                                                if(!_loc6_)
                                                {
                                                   addr197:
                                                   mClip.getChildByName("Container_Tutorial").visible = true;
                                                }
                                             }
                                             return;
                                             addr160:
                                             addr137:
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr160);
                                    }
                                    else
                                    {
                                       mClip.ButtonEasterEgg5.visible = true;
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          mClip.ButtonEasterEgg5.buttonMode = true;
                                          addr153:
                                          mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§>4§);
                                          §§goto(addr160);
                                       }
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr197);
                              }
                              else if(mClip.ButtonEasterEgg5)
                              {
                                 if(!_loc6_)
                                 {
                                    addr176:
                                    mClip.ButtonEasterEgg5.visible = false;
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr176);
                  }
               }
            }
            §§goto(addr83);
         }
         §§goto(addr153);
      }
      
      private function §>4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
            if(!_loc3_)
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!(_loc4_ && param1))
         {
            _loc2_.removeChild(this.§]?§);
            if(!_loc4_)
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
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
