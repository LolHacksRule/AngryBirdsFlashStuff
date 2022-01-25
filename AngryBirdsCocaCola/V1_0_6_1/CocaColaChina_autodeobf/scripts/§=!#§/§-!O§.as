package §=!#§
{
   import §%3§.§7b§;
   import §4!W§.§@R§;
   import §6a§.§;!a§;
   import §7!H§.§&![§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §-!O§ extends Popup
   {
       
      
      private var §6l§:Sprite;
      
      public function §-!O§(param1:XML, param2:§7b§, param3:Sprite)
      {
         §]!]§ = new §@R§(0,0,0,0,false);
         super(param1,param2);
         this.setVisibility(false);
         this.§6l§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§3!_§ != null)
            {
               §3!_§.stop();
            }
            §3!_§ = §;!a§.§0%§.§,w§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§;!a§.§!!D§);
            §3!_§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§6l§);
         super.open(param1);
         var _loc2_:§&![§ = §]o§.getItemByName("HighScoreSideBar");
         if(_loc2_ != null)
         {
            §]o§.container.setObjectToFront(_loc2_);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§3!_§ != null)
            {
               §3!_§.stop();
            }
            §3!_§ = §;!a§.§0%§.§,w§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§;!a§.§5!L§);
            §3!_§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§6l§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
