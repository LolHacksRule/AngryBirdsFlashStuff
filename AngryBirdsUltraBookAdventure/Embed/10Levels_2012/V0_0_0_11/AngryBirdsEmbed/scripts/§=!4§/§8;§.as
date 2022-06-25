package §=!4§
{
   import §1;§.§!!1§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §8;§ extends Popup
   {
       
      
      private var §]?§:Sprite;
      
      public function §8;§(param1:XML, param2:§!!1§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2);
            if(!(_loc4_ && param3))
            {
               this.setVisibility(false);
               if(!(_loc4_ && this))
               {
                  addr50:
                  this.§]?§ = param3;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§]?§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§]?§.height >> 1;
         var _loc5_:Rectangle = this.§]?§.getBounds(this.§]?§);
         §§push(_loc3_);
         if(!_loc6_)
         {
            §§push(§§pop() - _loc5_.left);
            if(_loc7_)
            {
               §§push(int(§§pop()));
               if(_loc7_)
               {
                  _loc3_ = §§pop();
                  if(!_loc6_)
                  {
                     §§push(_loc4_);
                     if(!(_loc6_ && param1))
                     {
                        addr85:
                        _loc4_ = int(§§pop() - _loc5_.top);
                        _loc2_.addChild(this.§]?§);
                        this.§]?§.x = _loc3_;
                        if(_loc7_ || param1)
                        {
                           this.§]?§.y = _loc4_ - 10;
                           if(_loc7_ || param1)
                           {
                              addr124:
                              super.open(param1);
                              mClip.getChildByName("Container_Tutorial").visible = true;
                           }
                           return;
                        }
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr124);
               }
            }
         }
         §§goto(addr85);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(_loc4_ || param1)
         {
            _loc2_.removeChild(this.§]?§);
            if(_loc4_)
            {
               addr67:
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            return;
         }
         §§goto(addr67);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.close();
         }
      }
   }
}
