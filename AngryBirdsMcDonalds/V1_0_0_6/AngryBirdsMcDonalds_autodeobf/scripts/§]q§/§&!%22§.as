package §]q§
{
   import §"f§.§%1§;
   import §'d§.§8!]§;
   import §0;§.§3=§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §&!"§ extends Popup
   {
       
      
      private var §4!M§:Sprite;
      
      private var §6!L§:String;
      
      public function §&!"§(param1:XML, param2:§3=§, param3:Sprite, param4:String)
      {
         §7!8§ = new §8!]§(0,0,0,0);
         super(param1,param2);
         this.§6!L§ = param4;
         this.setVisibility(false);
         this.§4!M§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§%1§.§=!1§);
            §<!J§.play();
         }
         _loc2_.addChild(this.§4!M§);
         var _loc3_:MovieClip = getItemByName("Button_CloseTutorialPowerUp").mClip;
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).swapChildren(this.§4!M§,_loc3_);
         this.§4!M§.y -= 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§%1§.§&!P§);
            §<!J§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§4!M§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
