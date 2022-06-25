package §6!C§
{
   import §-!D§.§4!,§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §@!F§ extends Popup
   {
       
      
      private var §[!@§:Sprite;
      
      private var § !F§:String;
      
      public function §@!F§(param1:XML, param2:§4!,§, param3:Sprite, param4:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super(param1,param2);
            if(_loc6_)
            {
               this.§ !F§ = param4;
               if(_loc6_)
               {
                  this.setVisibility(false);
                  if(_loc5_)
                  {
                  }
                  §§goto(addr53);
               }
               this.§[!@§ = param3;
            }
         }
         addr53:
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§[!@§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§[!@§.height >> 1;
         var _loc5_:Rectangle = this.§[!@§.getBounds(this.§[!@§);
         §§push(_loc3_);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop() - _loc5_.left);
            if(_loc7_ || param1)
            {
               §§push(int(§§pop()));
               if(!_loc6_)
               {
                  §§goto(addr80);
               }
            }
            §§goto(addr101);
         }
         addr80:
         _loc3_ = §§pop();
         if(!(_loc6_ && param1))
         {
            §§push(_loc4_);
            if(_loc7_)
            {
               addr101:
               §§push(int(§§pop() - _loc5_.top));
            }
            _loc4_ = §§pop();
            _loc2_.addChild(this.§[!@§);
            this.§[!@§.x = _loc3_;
            this.§[!@§.y = _loc4_ - 10;
            if(!_loc6_)
            {
               super.open(param1);
            }
         }
         mClip.getChildByName("Container_Tutorial").visible = true;
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
         if(!(_loc4_ && _loc2_))
         {
            _loc2_.removeChild(this.§[!@§);
            if(_loc3_)
            {
               addr51:
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            return;
         }
         §§goto(addr51);
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
