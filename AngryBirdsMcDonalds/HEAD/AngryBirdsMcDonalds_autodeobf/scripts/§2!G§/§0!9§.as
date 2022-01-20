package §2!G§
{
   import §-a§.§5C§;
   import §4!A§.§7#§;
   import §7p§.§%g§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0!9§ extends Popup
   {
       
      
      private var § &§:Sprite;
      
      private var §^!-§:String;
      
      public function §0!9§(param1:XML, param2:§%g§, param3:Sprite, param4:String)
      {
         §^S§ = new §5C§(0,0,0,0);
         super(param1,param2);
         this.§^!-§ = param4;
         this.setVisibility(false);
         this.§ &§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§]R§ != null)
            {
               §]R§.stop();
            }
            §]R§ = §7#§.§5!!§.§30§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§7#§.§=Y§);
            §]R§.play();
         }
         _loc2_.addChild(this.§ &§);
         var _loc3_:MovieClip = getItemByName("Button_CloseTutorialPowerUp").mClip;
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).swapChildren(this.§ &§,_loc3_);
         this.§ &§.y -= 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§]R§ != null)
            {
               §]R§.stop();
            }
            §]R§ = §7#§.§5!!§.§30§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§7#§.§4@§);
            §]R§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§ &§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
