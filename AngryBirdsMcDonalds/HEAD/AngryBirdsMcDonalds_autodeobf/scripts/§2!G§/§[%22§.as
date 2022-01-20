package §2!G§
{
   import §4!A§.§7#§;
   import §7p§.§%g§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §["§ extends Popup
   {
       
      
      private var § &§:Sprite;
      
      public function §["§(param1:XML, param2:§%g§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§ &§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
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
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§ &§);
         var _loc2_:MovieClip = getItemByName("Button_CloseTutorial").mClip;
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).swapChildren(this.§ &§,_loc2_);
         super.open(param1);
         setObjectToFront(getItemByName("Container_Tutorial"));
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
