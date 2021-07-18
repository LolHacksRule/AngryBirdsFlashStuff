package §false§
{
   import §!y§.§2U§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §@§ extends Popup
   {
       
      
      private var §?!`§:Sprite;
      
      public function §@§(param1:XML, param2:§2U§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(param1,param2);
            if(!(_loc4_ && param2))
            {
               this.setVisibility(false);
               if(_loc5_)
               {
                  addr50:
                  this.§?!`§ = param3;
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
         var _loc3_:* = _loc2_.width - this.§?!`§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§?!`§.height >> 1;
         var _loc5_:Rectangle = this.§?!`§.getBounds(this.§?!`§);
         if(_loc7_)
         {
            §§push(_loc3_);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() - _loc5_.left);
               if(_loc7_)
               {
                  §§push(int(§§pop()));
                  if(!(_loc6_ && this))
                  {
                     _loc3_ = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        §§push(_loc4_);
                        if(_loc7_)
                        {
                           addr97:
                           _loc4_ = int(§§pop() - _loc5_.top);
                           if(_loc7_)
                           {
                              _loc2_.addChild(this.§?!`§);
                              if(_loc7_ || param1)
                              {
                                 addr121:
                                 this.§?!`§.x = _loc3_;
                                 if(_loc7_)
                                 {
                                    this.§?!`§.y = _loc4_ - 10;
                                    if(_loc6_ && this)
                                    {
                                    }
                                    §§goto(addr145);
                                 }
                                 super.open(param1);
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr145);
                              }
                           }
                        }
                        §§goto(addr97);
                     }
                     addr145:
                     mClip.getChildByName("Container_Tutorial").visible = true;
                     return;
                  }
               }
            }
            §§goto(addr97);
         }
         §§goto(addr121);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!(_loc3_ && this))
         {
            _loc2_.removeChild(this.§?!`§);
            if(_loc4_ || _loc3_)
            {
               addr72:
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            return;
         }
         §§goto(addr72);
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
