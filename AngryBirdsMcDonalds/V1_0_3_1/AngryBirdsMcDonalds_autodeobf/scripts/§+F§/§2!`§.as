package §+F§
{
   import §,!h§.§9K§;
   import §3g§.§"!n§;
   import §`!"§.§;i§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §2!`§ extends Popup
   {
       
      
      private var §`>§:Sprite;
      
      private var §?!X§:String;
      
      public function §2!`§(param1:XML, param2:§"!n§, param3:Sprite, param4:String)
      {
         §-!_§ = new §9K§(0,0,0,0);
         super(param1,param2);
         this.§?!X§ = param4;
         this.setVisibility(false);
         this.§`>§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§;i§.§<l§);
            §"! §.play();
         }
         _loc2_.addChild(this.§`>§);
         var _loc3_:MovieClip = getItemByName("Button_CloseTutorialPowerUp").mClip;
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).swapChildren(this.§`>§,_loc3_);
         this.§`>§.y -= 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§;i§.§3C§);
            §"! §.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§`>§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
