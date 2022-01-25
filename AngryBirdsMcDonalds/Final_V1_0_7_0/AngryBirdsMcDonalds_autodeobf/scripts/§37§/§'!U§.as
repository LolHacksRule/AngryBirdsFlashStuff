package §37§
{
   import §3<§.§-2§;
   import §6x§.§9E§;
   import §^m§.§=!a§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'!U§ extends Popup
   {
       
      
      private var §false§:Sprite;
      
      private var §1Y§:String;
      
      public function §'!U§(param1:XML, param2:§-2§, param3:Sprite, param4:String)
      {
         §4?§ = new §9E§(0,0,0,0);
         super(param1,param2);
         this.§1Y§ = param4;
         this.setVisibility(false);
         this.§false§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§+!Y§ != null)
            {
               §+!Y§.stop();
            }
            §+!Y§ = §=!a§.§9$§.§9!H§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§=!a§.§@!m§);
            §+!Y§.play();
         }
         _loc2_.addChild(this.§false§);
         var _loc3_:MovieClip = getItemByName("Button_CloseTutorialPowerUp").mClip;
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).swapChildren(this.§false§,_loc3_);
         this.§false§.y -= 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§+!Y§ != null)
            {
               §+!Y§.stop();
            }
            §+!Y§ = §=!a§.§9$§.§9!H§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§=!a§.§%!R§);
            §+!Y§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§false§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
