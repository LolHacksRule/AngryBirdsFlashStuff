package §=T§
{
   import §'!W§.§>!m§;
   import §3l§.§9m§;
   import §9!8§.§0!7§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §[!7§ extends Popup
   {
       
      
      private var §-j§:Sprite;
      
      private var §93§:String;
      
      public function §[!7§(param1:XML, param2:§0!7§, param3:Sprite, param4:String)
      {
         § !§ = new §>!m§(0,0,0,0);
         super(param1,param2);
         this.§93§ = param4;
         this.setVisibility(false);
         this.§-j§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§>]§ != null)
            {
               §>]§.stop();
            }
            §>]§ = §9m§.§>E§.§"0§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§9m§.§'e§);
            §>]§.play();
         }
         _loc2_.addChild(this.§-j§);
         var _loc3_:MovieClip = getItemByName("Button_CloseTutorialPowerUp").mClip;
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).swapChildren(this.§-j§,_loc3_);
         this.§-j§.y -= 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§>]§ != null)
            {
               §>]§.stop();
            }
            §>]§ = §9m§.§>E§.§"0§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§9m§.§+y§);
            §>]§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§-j§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
