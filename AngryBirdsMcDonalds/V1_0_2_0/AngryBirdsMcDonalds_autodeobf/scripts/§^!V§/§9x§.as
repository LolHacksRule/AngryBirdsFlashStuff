package §^!V§
{
   import §=!F§.§"!2§;
   import §@`§.§>!S§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §9x§ extends Popup
   {
       
      
      private var §>r§:Sprite;
      
      public function §9x§(param1:XML, param2:§>!S§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§>r§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§?!A§ != null)
            {
               §?!A§.stop();
            }
            §?!A§ = §"!2§.§'!S§.§-!S§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§"!2§.§3d§);
            §?!A§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§>r§);
         var _loc2_:MovieClip = getItemByName("Button_CloseTutorial").mClip;
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).swapChildren(this.§>r§,_loc2_);
         super.open(param1);
         setObjectToFront(getItemByName("Container_Tutorial"));
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§?!A§ != null)
            {
               §?!A§.stop();
            }
            §?!A§ = §"!2§.§'!S§.§-!S§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§"!2§.§+!^§);
            §?!A§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§>r§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
