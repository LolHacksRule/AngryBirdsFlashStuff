package §'!F§
{
   import §+!M§.§`q§;
   import §-!f§.§ else§;
   import §1!d§.§9m§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import §use §.§;0§;
   
   public class §',§ extends Popup
   {
       
      
      private var §93§:Sprite;
      
      public function §',§(param1:XML, param2:§ else§, param3:Sprite)
      {
         §[!V§ = new §;0§(0,0,0,0,false);
         super(param1,param2);
         this.setVisibility(false);
         this.§93§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§3x§ != null)
            {
               §3x§.stop();
            }
            §3x§ = §9m§.§?! §.§]C§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§9m§.§7l§);
            §3x§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§93§);
         super.open(param1);
         var _loc2_:§`q§ = §<8§.getItemByName("HighScoreSideBar");
         if(_loc2_ != null)
         {
            §<8§.container.setObjectToFront(_loc2_);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§3x§ != null)
            {
               §3x§.stop();
            }
            §3x§ = §9m§.§?! §.§]C§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§9m§.§4`§);
            §3x§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§93§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
