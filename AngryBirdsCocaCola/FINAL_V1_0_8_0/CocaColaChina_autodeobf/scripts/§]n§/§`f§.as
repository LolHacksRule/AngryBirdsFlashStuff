package §]n§
{
   import §&V§.§!q§;
   import §0!_§.§>!'§;
   import §7H§.§8Q§;
   import §^6§.§;l§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §`f§ extends Popup
   {
       
      
      private var §0l§:Sprite;
      
      public function §`f§(param1:XML, param2:§;l§, param3:Sprite)
      {
         §,]§ = new §>!'§(0,0,0,0,false);
         super(param1,param2);
         this.setVisibility(false);
         this.§0l§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            getItemByName("Container_Tutorial").mClip.scaleX = 0;
            getItemByName("Container_Tutorial").mClip.scaleY = 0;
            if(§@!M§ != null)
            {
               §@!M§.stop();
            }
            §@!M§ = §8Q§.§]!D§.§^w§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.2,§8Q§.§,j§);
            §@!M§.play();
         }
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§0l§);
         super.open(param1);
         var _loc2_:§!q§ = §'B§.getItemByName("HighScoreSideBar");
         if(_loc2_ != null)
         {
            §'B§.container.setObjectToFront(_loc2_);
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§@!M§ != null)
            {
               §@!M§.stop();
            }
            §@!M§ = §8Q§.§]!D§.§^w§(this.getItemByName("Container_Tutorial").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.2,§8Q§.§;!'§);
            §@!M§.play();
         }
      }
      
      override public function close() : void
      {
         super.close();
         var _loc1_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.removeChild(this.§0l§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
   }
}
