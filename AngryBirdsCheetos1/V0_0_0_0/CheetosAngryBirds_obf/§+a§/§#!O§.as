package §+a§
{
   import §+?§.§,!N§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §#!O§ extends Popup
   {
       
      
      private var §]9§:Sprite;
      
      public function §#!O§(param1:XML, param2:§,!N§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2);
            while(true)
            {
               this.setVisibility(false);
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            this.§]9§ = param3;
            if(!_loc4_)
            {
               if(!(_loc4_ && param3))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§]9§);
            loop0:
            while(true)
            {
               super.open(param1);
               do
               {
                  mClip.getChildByName("Container_Tutorial").visible = true;
                  do
                  {
                     mClip.getChildByName("Container_Tutorial").x = §,l§.§"L§ / 2;
                     continue loop0;
                  }
                  while(_loc3_);
                  
               }
               while(_loc3_ && _loc2_);
               
            }
         }
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
         if(_loc4_)
         {
            _loc2_.removeChild(this.§]9§);
         }
         do
         {
            mClip.getChildByName("Container_Tutorial").visible = false;
         }
         while(!(_loc4_ || _loc3_));
         
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
