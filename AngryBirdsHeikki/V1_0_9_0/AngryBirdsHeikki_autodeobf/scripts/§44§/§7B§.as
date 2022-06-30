package §44§
{
   import §#Q§.§8Y§;
   import §'!C§.§-!S§;
   import §1Q§.§6'§;
   import §8!-§.§2!B§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §7B§ extends Popup
   {
       
      
      private var §5z§:Sprite;
      
      public function §7B§(param1:XML, param2:§8Y§, param3:Sprite)
      {
         §-!F§ = new §-!S§(0,0,0,0,false);
         super(param1,param2);
         this.setVisibility(false);
         this.§5z§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§,'§ != null)
            {
               §,'§.stop();
            }
            §,'§ = §2!B§.§,!U§.§%!K§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§2!B§.§6p§);
            §,'§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§5z§);
         super.open(param1);
         var _loc2_:§6'§ = §7O§.getItemByName("HighScoreSideBar");
         if(_loc2_ != null)
         {
            §7O§.container.setObjectToFront(_loc2_);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§,'§ != null)
            {
               §,'§.stop();
            }
            §,'§ = §2!B§.§,!U§.§%!K§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§2!B§.§8!@§);
            §,'§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§5z§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
