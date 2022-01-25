package §2"§
{
   import §,@§.§"!'§;
   import §7]§.§'T§;
   import §[!=§.§!!K§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §^!U§ extends Popup
   {
       
      
      private var §2o§:Sprite;
      
      public function §^!U§(param1:XML, param2:§^R§, param3:Sprite)
      {
         §@!N§ = new §"!'§(0,0,0,0,false);
         super(param1,param2);
         this.setVisibility(false);
         this.§2o§ = param3;
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
            §6!L§ = §!!K§.§@!c§.§'!H§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§!!K§.§#,§);
            §6!L§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§2o§);
         super.open(param1);
         var _loc2_:§'T§ = §&!Q§.getItemByName("HighScoreSideBar");
         if(_loc2_ != null)
         {
            §&!Q§.container.setObjectToFront(_loc2_);
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
            §6!L§ = §!!K§.§@!c§.§'!H§(this.getItemByName("Container_Tutorial").mClip,{
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
         _loc1_.removeChild(this.§2o§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
