package §@!?§
{
   import §0F§.§'j§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §'u§ extends Popup
   {
       
      
      private var §;<§:Sprite;
      
      public function §'u§(param1:XML, param2:§'j§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super(param1,param2);
         }
         do
         {
            this.setVisibility(false);
            do
            {
               this.§;<§ = param3;
            }
            while(_loc4_);
            
         }
         while(_loc4_ && param3);
         
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§;<§);
            loop0:
            while(true)
            {
               super.open(param1);
               loop1:
               while(true)
               {
                  mClip.getChildByName("Container_Tutorial").visible = true;
                  while(true)
                  {
                     mClip.getChildByName("Container_Tutorial").x = §#x§.§;#§ / 2;
                     continue loop1;
                     addr40:
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.preClose(param1);
         }
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.removeChild(this.§;<§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(!(_loc4_ || _loc2_));
         
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.close();
         }
      }
   }
}
