package §false§
{
   import §!y§.§2U§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §"!@§ extends Popup
   {
       
      
      private var §?!`§:Sprite;
      
      private var §?![§:String;
      
      public function §"!@§(param1:XML, param2:§2U§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super(param1,param2);
            if(!(_loc6_ && param1))
            {
               this.§?![§ = param4;
               if(!(_loc6_ && param1))
               {
                  §§goto(addr64);
               }
               §§goto(addr74);
            }
         }
         addr64:
         this.setVisibility(false);
         if(!(_loc6_ && param2))
         {
            addr74:
            this.§?!`§ = param3;
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§?!`§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§?!`§.height >> 1;
         var _loc5_:Rectangle = this.§?!`§.getBounds(this.§?!`§);
         if(_loc6_)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               §§push(§§pop() - _loc5_.left);
               if(_loc6_)
               {
                  §§push(int(§§pop()));
                  if(!(_loc7_ && this))
                  {
                     _loc3_ = §§pop();
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                     }
                     addr74:
                     _loc4_ = §§pop();
                     if(!(_loc7_ && _loc2_))
                     {
                        _loc2_.addChild(this.§?!`§);
                        if(this.§?![§ == "POWERUP_TUTORIAL_SLINGSCOPE")
                        {
                           if(!(_loc7_ && param1))
                           {
                              if((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    mClip.ButtonEasterEgg5.visible = false;
                                    this.§?!`§.x = _loc3_;
                                    addr163:
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       this.§?!`§.y = _loc4_ - 10;
                                       addr190:
                                       super.open(param1);
                                       if(_loc6_ || param1)
                                       {
                                          addr200:
                                          mClip.getChildByName("Container_Tutorial").visible = true;
                                       }
                                    }
                                    return;
                                    addr155:
                                    addr125:
                                 }
                                 §§goto(addr200);
                              }
                              else
                              {
                                 mClip.ButtonEasterEgg5.visible = true;
                                 addr130:
                                 mClip.ButtonEasterEgg5.buttonMode = true;
                                 if(_loc6_ || param1)
                                 {
                                    mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§9+§);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§goto(addr155);
                                    }
                                    else
                                    {
                                       addr159:
                                       mClip.ButtonEasterEgg5.visible = false;
                                       §§goto(addr163);
                                    }
                                 }
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr125);
                        }
                        else if(mClip.ButtonEasterEgg5)
                        {
                           §§goto(addr159);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr159);
                  }
                  §§push(§§pop() - _loc5_.top);
               }
               §§push(int(§§pop()));
            }
            §§goto(addr74);
         }
         §§goto(addr130);
      }
      
      private function §9+§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
            if(!_loc3_)
            {
               addr41:
               mClip.ButtonEasterEgg5.visible = false;
            }
            return;
         }
         §§goto(addr41);
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
         if(!(_loc3_ && this))
         {
            _loc2_.removeChild(this.§?!`§);
            if(!(_loc3_ && _loc2_))
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.close();
         }
      }
   }
}
