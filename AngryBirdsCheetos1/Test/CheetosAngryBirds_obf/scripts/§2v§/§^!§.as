package §2v§
{
   import §>P§.§5!§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §^!§ extends Popup
   {
       
      
      private var §5!c§:Sprite;
      
      public function §^!§(param1:XML, param2:§5!§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2);
         }
         while(true)
         {
            this.setVisibility(false);
            while(!_loc4_)
            {
               this.§5!c§ = param3;
               if(_loc5_ || this)
               {
                  return;
               }
            }
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§5!c§);
            while(true)
            {
               super.open(param1);
               while(_loc2_ || _loc2_)
               {
                  mClip.getChildByName("Container_Tutorial").visible = true;
                  loop2:
                  while(!(_loc3_ && _loc2_))
                  {
                     while(true)
                     {
                        mClip.getChildByName("Container_Tutorial").x = §5!9§.§?!L§ / 2;
                        while(_loc2_)
                        {
                           mClip.getChildByName("Container_Tutorial").y = §5!9§.§"r§ / 2;
                           if(_loc2_)
                           {
                              return;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
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
         if(!(_loc4_ && this))
         {
            _loc2_.removeChild(this.§5!c§);
            do
            {
               mClip.getChildByName("Container_Tutorial").visible = false;
            }
            while(_loc4_);
            
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.close();
         }
      }
   }
}
