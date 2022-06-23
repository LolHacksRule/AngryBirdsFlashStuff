package §2?§
{
   import §0w§.§0#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §;d§ extends Popup
   {
       
      
      private var §09§:Sprite;
      
      public function §;d§(param1:XML, param2:§0#§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super(param1,param2);
            if(!_loc4_)
            {
               §§goto(addr40);
            }
            §§goto(addr45);
         }
         addr40:
         this.setVisibility(false);
         if(_loc5_)
         {
            addr45:
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
         if(_loc6_ || param1)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(§§pop() - _loc5_.left);
               if(_loc6_)
               {
                  §§push(int(§§pop()));
                  if(_loc6_)
                  {
                     _loc3_ = §§pop();
                     addr84:
                     §§push(_loc4_);
                     if(!_loc7_)
                     {
                        §§push(§§pop() - _loc5_.top);
                     }
                     _loc4_ = §§pop();
                     if(_loc6_ || _loc3_)
                     {
                        _loc2_.addChild(this.§09§);
                        this.§09§.x = _loc3_;
                        if(_loc6_ || param1)
                        {
                           addr117:
                           this.§09§.y = _loc4_ - 10;
                           super.open(param1);
                           if(!(_loc7_ && _loc2_))
                           {
                              addr133:
                              mClip.getChildByName("Container_Tutorial").visible = true;
                           }
                        }
                        return;
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr84);
               }
               §§push(int(§§pop()));
            }
            §§goto(addr84);
         }
         §§goto(addr133);
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
         if(_loc3_)
         {
            _loc2_.removeChild(this.§09§);
            if(!_loc4_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.close();
         }
      }
   }
}
