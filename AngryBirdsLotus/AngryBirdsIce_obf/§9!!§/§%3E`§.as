package §9!!§
{
   import §2]§.§#H§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §>`§ extends Popup
   {
       
      
      private var §^L§:Sprite;
      
      public function §>`§(param1:XML, param2:§#H§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2);
         }
         do
         {
            this.setVisibility(false);
            do
            {
               this.§^L§ = param3;
            }
            while(_loc4_);
            
         }
         while(_loc4_);
         
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§^L§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§^L§.height >> 1;
         var _loc5_:Rectangle = this.§^L§.getBounds(this.§^L§);
         §§push(_loc3_);
         loop0:
         while(true)
         {
            §§push(§§pop() - _loc5_.left);
            loop1:
            while(true)
            {
               §§push(int(§§pop()));
               loop2:
               while(true)
               {
                  _loc3_ = §§pop();
                  addr145:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc7_)
                     {
                        §§push(§§pop() - _loc5_.top);
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(int(§§pop()));
                     }
                     if(_loc6_ || _loc2_)
                     {
                        continue loop0;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.removeChild(this.§^L§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(_loc4_ && _loc3_);
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.close();
         }
      }
   }
}
