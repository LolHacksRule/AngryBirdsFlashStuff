package §[!^§
{
   import §6!"§.§<!+§;
   import §6-§.§"H§;
   import §7!X§.§7g§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import §var§.§;!&§;
   
   public class §4!&§ extends Popup
   {
       
      
      private var §4U§:Sprite;
      
      public function §4!&§(param1:XML, param2:§7g§, param3:Sprite)
      {
         §#Z§ = new §<!+§(0,0,0,0,false);
         super(param1,param2);
         this.setVisibility(false);
         this.§4U§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§&&§ != null)
            {
               §&&§.stop();
            }
            §&&§ = §"H§.§'![§.§8Y§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§"H§.§ Y§);
            §&&§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§4U§);
         super.open(param1);
         var _loc2_:§;!&§ = § !D§.getItemByName("HighScoreSideBar");
         if(_loc2_ != null)
         {
            § !D§.container.setObjectToFront(_loc2_);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§&&§ != null)
            {
               §&&§.stop();
            }
            §&&§ = §"H§.§'![§.§8Y§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§"H§.§!u§);
            §&&§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§4U§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
