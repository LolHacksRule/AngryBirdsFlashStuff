package §'4§
{
   import §%!G§.§ !G§;
   import §,@§.§"!'§;
   import §2!$§.§=!&§;
   import §[!=§.§!!K§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §?!_§ extends Popup
   {
       
      
      private var §;!G§:Sprite;
      
      public function §?!_§(param1:XML, param2:§ !G§, param3:Sprite)
      {
         §@!N§ = new §"!'§(0,0,0,0,false);
         super(param1,param2);
         this.setVisibility(false);
         this.§;!G§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§6!L§ != null)
            {
               §6!L§.stop();
            }
            §6!L§ = §!!K§.§'!C§.§'!H§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§!!K§.§#,§);
            §6!L§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§;!G§);
         super.open(param1);
         var _loc2_:§=!&§ = §!!#§.getItemByName("HighScoreSideBar");
         if(_loc2_ != null)
         {
            §!!#§.container.setObjectToFront(_loc2_);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§6!L§ != null)
            {
               §6!L§.stop();
            }
            §6!L§ = §!!K§.§'!C§.§'!H§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§!!K§.§<!G§);
            §6!L§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§;!G§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
