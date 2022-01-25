package §;C§
{
   import §2!a§.§?O§;
   import §3!`§.§8h§;
   import §6l§.§-a§;
   import §>!8§.§4!0§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §,%§ extends Popup
   {
       
      
      private var §]t§:Sprite;
      
      public function §,%§(param1:XML, param2:§4!0§, param3:Sprite)
      {
         §&!B§ = new §?O§(0,0,0,0,false);
         super(param1,param2);
         this.setVisibility(false);
         this.§]t§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§,!_§ != null)
            {
               §,!_§.stop();
            }
            §,!_§ = §8h§.§`G§.§[O§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§8h§.§#H§);
            §,!_§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§]t§);
         super.open(param1);
         var _loc2_:§-a§ = §0D§.getItemByName("HighScoreSideBar");
         if(_loc2_ != null)
         {
            §0D§.container.setObjectToFront(_loc2_);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§,!_§ != null)
            {
               §,!_§.stop();
            }
            §,!_§ = §8h§.§`G§.§[O§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§8h§.§3!E§);
            §,!_§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§]t§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
