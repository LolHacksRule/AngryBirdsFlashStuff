package §37§
{
   import §3<§.§-2§;
   import §^m§.§=!a§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §@!N§ extends Popup
   {
       
      
      private var §false§:Sprite;
      
      public function §@!N§(param1:XML, param2:§-2§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§false§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
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
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§false§);
         var _loc2_:MovieClip = getItemByName("Button_CloseTutorial").mClip;
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).swapChildren(this.§false§,_loc2_);
         super.open(param1);
         setObjectToFront(getItemByName("Container_Tutorial"));
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
