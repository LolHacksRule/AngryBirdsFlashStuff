package §20§
{
   import §5!1§.§"!X§;
   import §8P§.§&-§;
   import §9!@§.§-k§;
   import §<u§.§]!Q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §3!$§ extends Popup
   {
       
      
      private var §@^§:Sprite;
      
      public function §3!$§(param1:XML, param2:§]!Q§, param3:Sprite)
      {
         §+!_§ = new §-k§(0,0,0,0,false);
         super(param1,param2);
         this.setVisibility(false);
         this.§@^§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§@J§ != null)
            {
               §@J§.stop();
            }
            §@J§ = §"!X§.§ s§.§%!;§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§"!X§.§<!e§);
            §@J§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§@^§);
         super.open(param1);
         var _loc2_:§&-§ = §>K§.getItemByName("HighScoreSideBar");
         if(_loc2_ != null)
         {
            §>K§.container.setObjectToFront(_loc2_);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§@J§ != null)
            {
               §@J§.stop();
            }
            §@J§ = §"!X§.§ s§.§%!;§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§"!X§.§@4§);
            §@J§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§@^§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
