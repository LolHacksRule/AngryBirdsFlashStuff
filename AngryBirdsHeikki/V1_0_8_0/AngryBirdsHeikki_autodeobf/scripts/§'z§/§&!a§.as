package §'z§
{
   import §#!+§.§"$§;
   import §2!D§.§'!7§;
   import §5!5§.§1!4§;
   import §;!0§.§-!'§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §&!a§ extends Popup
   {
       
      
      private var §[!6§:Sprite;
      
      public function §&!a§(param1:XML, param2:§"$§, param3:Sprite)
      {
         § !D§ = new §1!4§(0,0,0,0,false);
         super(param1,param2);
         this.setVisibility(false);
         this.§[!6§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§`s§ != null)
            {
               §`s§.stop();
            }
            §`s§ = §'!7§.§=,§.§5Z§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§'!7§.§4z§);
            §`s§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§[!6§);
         super.open(param1);
         var _loc2_:§-!'§ = §8T§.getItemByName("HighScoreSideBar");
         if(_loc2_ != null)
         {
            §8T§.container.setObjectToFront(_loc2_);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§`s§ != null)
            {
               §`s§.stop();
            }
            §`s§ = §'!7§.§=,§.§5Z§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§'!7§.§+d§);
            §`s§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§[!6§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
