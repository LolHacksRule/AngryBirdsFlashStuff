package §6!C§
{
   import §-!D§.§4!,§;
   import §5!L§.§=w§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §4!1§ extends Popup
   {
       
      
      private var §[!@§:Sprite;
      
      public function §4!1§(param1:XML, param2:§4!,§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param2);
            if(!(_loc5_ && param3))
            {
               addr44:
               this.setVisibility(false);
               if(_loc4_ || param3)
               {
                  this.§[!@§ = param3;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§[!@§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§[!@§.height >> 1;
         var _loc5_:Rectangle = this.§[!@§.getBounds(this.§[!@§);
         §§push(_loc3_);
         if(_loc6_ || param1)
         {
            §§push(§§pop() - _loc5_.left);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
               if(!(_loc7_ && _loc2_))
               {
                  _loc3_ = §§pop();
                  §§push(_loc4_);
                  if(_loc6_ || _loc3_)
                  {
                  }
                  addr92:
                  _loc4_ = §§pop();
                  if(_loc6_ || _loc3_)
                  {
                     _loc2_.addChild(this.§[!@§);
                     if(!_loc7_)
                     {
                        this.§[!@§.x = _loc3_;
                        if(!(_loc7_ && this))
                        {
                           this.§[!@§.y = _loc4_ - 10;
                           super.open(param1);
                           addr136:
                           mClip.getChildByName("Container_Tutorial").visible = true;
                        }
                     }
                     return;
                  }
                  §§goto(addr136);
               }
               §§push(§§pop() - _loc5_.top);
            }
            §§push(int(§§pop()));
         }
         §§goto(addr92);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!_loc3_)
         {
            _loc2_.removeChild(this.§[!@§);
            if(!_loc3_)
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
            if(_loc2_ || _loc2_)
            {
               addr43:
               §=w§.resume();
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
