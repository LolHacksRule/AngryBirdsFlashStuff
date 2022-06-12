package §;u§
{
   import §,l§.§+I§;
   import §<"F§.§6h§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   
   public class §5<§ extends §7D§
   {
      
      public static const §&7§:String = "4000";
      
      public static const STATE_NAME:String = "WonderlandLevelSelection";
       
      
      private var §]1§:§6h§;
      
      public function §5<§(param1:Boolean = false, param2:String = "WonderlandLevelSelection")
      {
         super(param1,param2);
      }
      
      override protected function initView() : void
      {
         super.initView();
         var _loc1_:Class = §?q§.§ q§("LevelSelectionBg_Wonderland");
         var _loc2_:MovieClip = new _loc1_();
         §2"@§.getItemByName("MovieClip_LevelSelectionBG").mClip.addChild(_loc2_);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§9"%§.§7"T§.§+!!§())
         {
            while(§2"@§.getItemByName("MovieClip_ThemeCenter").mClip.numChildren > 0)
            {
               §2"@§.getItemByName("MovieClip_ThemeCenter").mClip.removeChildAt(0);
            }
            this.§]1§ = new §6h§(this.§9"%§.§7"T§.§="U§,"",true);
            this.§]1§.x = 275;
            this.§]1§.y = -150;
            this.§]1§.eggs = this.§9"%§.§7"T§.§5!4§;
            §2"@§.getItemByName("MovieClip_ThemeCenter").mClip.addChild(this.§]1§);
            this.§]1§.scaleY = 1.1;
            this.§]1§.scaleX = 1.1;
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§]1§)
         {
            §2"@§.getItemByName("MovieClip_ThemeCenter").mClip.removeChild(this.§]1§);
            this.§]1§.dispose();
            this.§]1§ = null;
         }
         super.deActivate();
      }
      
      public function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
