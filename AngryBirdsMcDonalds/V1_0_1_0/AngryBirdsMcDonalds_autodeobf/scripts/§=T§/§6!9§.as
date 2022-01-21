package §=T§
{
   import §3l§.§9m§;
   import §9!8§.§0!7§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §6!9§ extends Popup
   {
       
      
      private var §-j§:Sprite;
      
      public function §6!9§(param1:XML, param2:§0!7§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§-j§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
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
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§-j§);
         var _loc2_:MovieClip = getItemByName("Button_CloseTutorial").mClip;
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).swapChildren(this.§-j§,_loc2_);
         super.open(param1);
         setObjectToFront(getItemByName("Container_Tutorial"));
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
