package §,!=§
{
   import §#v§.§#!?§;
   import §%$!§.§+3§;
   import §'U§.§]#[§;
   import §;!Q§.§^"!§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   
   public class §5#J§ extends §=!-§
   {
      
      public static const §2#W§:String = "4000";
      
      public static const STATE_NAME:String = "WonderlandLevelSelection";
       
      
      private var §?#D§:§^"!§;
      
      public function §5#J§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "WonderlandLevelSelection")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initView() : void
      {
         super.initView();
         var _loc1_:Class = §@`§.§4!i§("LevelSelectionBg_Wonderland");
         var _loc2_:MovieClip = new _loc1_();
         §!$§.getItemByName("MovieClip_LevelSelectionBG").mClip.addChild(_loc2_);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         if(this.dataModel.§&!?§.§=#t§())
         {
            while(§!$§.getItemByName("MovieClip_ThemeCenter").mClip.numChildren > 0)
            {
               §!$§.getItemByName("MovieClip_ThemeCenter").mClip.removeChildAt(0);
            }
            this.§?#D§ = new §^"!§(this.dataModel.§&!?§.§?!>§,"",true);
            this.§?#D§.x = 275;
            this.§?#D§.y = -150;
            this.§?#D§.§4"E§ = this.dataModel.§&!?§.§ #g§;
            §!$§.getItemByName("MovieClip_ThemeCenter").mClip.addChild(this.§?#D§);
            this.§?#D§.scaleY = 1.1;
            this.§?#D§.scaleX = 1.1;
         }
         §9"m§();
      }
      
      override public function deActivate() : void
      {
         if(this.§?#D§)
         {
            §!$§.getItemByName("MovieClip_ThemeCenter").mClip.removeChild(this.§?#D§);
            this.§?#D§.dispose();
            this.§?#D§ = null;
         }
         super.deActivate();
      }
      
      public function get dataModel() : §+3§
      {
         return §+3§(§8G§.§%#S§.dataModel);
      }
   }
}
