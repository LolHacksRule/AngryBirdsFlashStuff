package §]c§
{
   import § !Y§.§if§;
   import §93§.§"6§;
   import §>!_§.§9!+§;
   import §@=§.§'3§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §[l§ extends Popup
   {
       
      
      private var §]!0§:Sprite;
      
      public function §[l§(param1:XML, param2:§if§, param3:Sprite)
      {
         §4<§ = new §'3§(0,0,0,0,false);
         super(param1,param2);
         this.setVisibility(false);
         this.§]!0§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§%T§ != null)
            {
               §%T§.stop();
            }
            §%T§ = §9!+§.§;!F§.§`!'§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§9!+§.§8!_§);
            §%T§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§]!0§);
         super.open(param1);
         var _loc2_:§"6§ = §%a§.getItemByName("HighScoreSideBar");
         if(_loc2_ != null)
         {
            §%a§.container.setObjectToFront(_loc2_);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§%T§ != null)
            {
               §%T§.stop();
            }
            §%T§ = §9!+§.§;!F§.§`!'§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§9!+§.§#! §);
            §%T§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§]!0§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
