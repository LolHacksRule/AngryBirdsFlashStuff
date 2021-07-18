package §_-dA§
{
   import §_-Ur§.§_-ru§;
   import flash.display.Sprite;
   
   public class §_-DX§ extends Popup
   {
       
      
      private var §_-72§:Sprite;
      
      public function §_-DX§(param1:XML, param2:§_-ru§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(param1,param2);
            if(!_loc5_)
            {
               param2.container.addComponent(this);
               if(!(_loc5_ && param1))
               {
                  this.setVisibility(false);
                  if(_loc4_)
                  {
                     addr56:
                     this.§_-72§ = param3;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.Container_Tutorial.addChildAt(this.§_-72§,1);
         }
         super.open(param1);
         if(!_loc3_)
         {
            mClip.getChildByName("Container_Tutorial").visible = true;
            this.§_-72§.x = 530 / 2;
            this.§_-72§.y = 310 / 2;
            if(_loc2_ || this)
            {
               §§goto(addr57);
            }
            §§goto(addr73);
         }
         addr57:
         mClip.getChildByName("Container_Tutorial").x = §_-Qu§.§_-1q§ / 2 - 530 / 2 - 100;
         if(!_loc3_)
         {
            mClip.getChildByName("Container_Tutorial").y = §_-Qu§.§_-SP§ / 2 - 310 / 2 - 20;
            addr73:
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.preClose(param1);
            if(_loc3_)
            {
               mClip.Container_Tutorial.removeChild(this.§_-72§);
               §§goto(addr33);
            }
            §§goto(addr47);
         }
         addr33:
         if(!_loc2_)
         {
            addr47:
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.close();
            if(!_loc2_)
            {
               §_-4W§.clean();
               if(!(_loc2_ && _loc2_))
               {
                  addr47:
                  §_-4W§ = null;
               }
               return;
            }
         }
         §§goto(addr47);
      }
   }
}
