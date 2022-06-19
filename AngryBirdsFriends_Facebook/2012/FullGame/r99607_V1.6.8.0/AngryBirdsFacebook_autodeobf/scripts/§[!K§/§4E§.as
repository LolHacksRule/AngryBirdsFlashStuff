package §[!K§
{
   import §"",§.§"Z§;
   import §"",§.§2[§;
   import §"",§.§<+§;
   import §#""§.§+!J§;
   import §1"2§.§,!]§;
   import §1k§.§ !M§;
   import §1k§.§%4§;
   import §1k§.§'"9§;
   import §1k§.§;W§;
   import §1k§.§`!d§;
   import §7N§.§43§;
   import §;^§.§""3§;
   import §<!<§.§%!#§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §4E§ extends §%!_§
   {
      
      public static const STATE_NAME:String = "GreenDayLevelSelection";
       
      
      private var §<"%§:§"Z§;
      
      private var §-!e§:Number = 41.666666666666664;
      
      private var §;e§:int = 0;
      
      private var §>"-§:Vector.<MovieClip>;
      
      private var state:String;
      
      public function §4E§(param1:Boolean = false, param2:String = "GreenDayLevelSelection")
      {
         this.state = mNextState;
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_LevelSelectionGreenDay[0]);
         §]!0§ = §2"-§.getItemByName("Container_LevelRepeaters") as §<+§;
         §]!0§.y = 120;
         §?Z§ = §2"-§.getItemByName("Container_LevelSelection") as §<+§;
         this.§>"-§ = new Vector.<MovieClip>();
         this.§>"-§.push(§2"-§.getItemByName("MovieClip_BassPig").mClip["pig"]);
         this.§>"-§.push(§2"-§.getItemByName("MovieClip_BassPig").mClip["instrument"]);
         this.§>"-§.push(§2"-§.getItemByName("MovieClip_GuitarPig").mClip["pig"]);
         this.§>"-§.push(§2"-§.getItemByName("MovieClip_GuitarPig").mClip["instrument"]);
         this.§>"-§.push(§2"-§.getItemByName("MovieClip_DrumPig").mClip["pig"]);
         this.§>"-§.push(§2"-§.getItemByName("MovieClip_DrumPig").mClip["instrument"]["cimbal"]);
         this.§>"-§.push(§2"-§.getItemByName("MovieClip_DrumPig").mClip["instrument"]["snare"]);
         this.§>"-§.push(§2"-§.getItemByName("MovieClip_DrumPig").mClip["instrument"]["bass"]);
         this.§>"-§.push(§2"-§.getItemByName("MovieClip_Amp").mClip["instrument"]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §&j§.§;!@§ = STATE_NAME;
      }
      
      override protected function countStarsAndFeathers(param1:§]f§) : void
      {
         param1 = LevelManager.§,4§("3000");
         super.countStarsAndFeathers(param1);
      }
      
      override protected function showStarsAndFeathers(param1:§]f§, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:§]f§ = LevelManager.§,4§(§%!_§.EPISODE_GREEN_DAY_EGG);
         param2 += AngryBirdsFP11.sUserProgress.§@y§(_loc6_);
         param3 += AngryBirdsFP11.sUserProgress.§56§(_loc6_);
         param4 += AngryBirdsFP11.sUserProgress.§8!^§(_loc6_);
         param5 += AngryBirdsFP11.sUserProgress.§6!X§(_loc6_);
         super.showStarsAndFeathers(param1,param2,param3,param4,param5);
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc1_:§;W§ = § W§.§%!y§.§1`§();
         _loc1_.§>4§(§`!d§.§6!K§,false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override protected function stopCurrentTheme() : void
      {
         var _loc2_:§'"9§ = null;
         var _loc1_:§ !M§ = §%4§.§+!y§(§`!d§.§0!F§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§finally§(§`!d§.§6!K§);
            if(_loc2_)
            {
               §&j§.§?!8§ = _loc2_.position;
            }
         }
         super.stopCurrentTheme();
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc9_:Array = null;
         var _loc1_:Number = 0;
         §6"-§ = [];
         §,"3§ = [];
         var _loc3_:§]f§ = LevelManager.§3"1§(6);
         var _loc4_:Number = 0;
         while(_loc4_ < _loc3_.pageIndexes.length)
         {
            _loc9_ = _loc3_.§ !%§(_loc3_.pageIndexes[_loc4_]);
            §6"-§.push(_loc3_.§2!u§(_loc4_));
            §,"3§.push(_loc3_.§&"4§(_loc4_));
            _loc1_ = §@S§(_loc9_,_loc4_,_loc1_,_loc3_);
            _loc4_++;
         }
         var _loc5_:int = LevelManager.§3"1§(6).§4z§;
         §#!i§ = new §+!J§(§6"-§[_loc5_].red,§6"-§[_loc5_].green,§6"-§[_loc5_].blue,1);
         §2"-§.getItemByName("MovieClip_ColorFade").changeMovieClip(§#!i§);
         this.§<"%§ = new §"Z§(<na/>,§]!0§,new §#!J§.§1!Y§("GreenDayGoldenEggLevelSelection")());
         this.§<"%§.x += AngryBirdsFP11.§#!T§ * §9!h§.length;
         §]!0§.addComponent(this.§<"%§);
         §9!h§.push(this.§<"%§);
         var _loc6_:§""3§;
         (_loc6_ = new §""3§(this.§<"%§.mClip.goldenGrenade1,"3001-1")).addEventListener(MouseEvent.CLICK,this.§?T§);
         _loc6_.updateEgg();
         var _loc7_:§""3§;
         (_loc7_ = new §""3§(this.§<"%§.mClip.goldenGrenade2,"3001-2")).addEventListener(MouseEvent.CLICK,this.§?T§);
         _loc7_.updateEgg();
         §2!2§();
         var _loc8_:String = LevelManager.§8!§().name;
         §]!5§ = §#!7§;
         §3A§ = §#!7§;
         if(§;!@§ == StateCutScene.STATE_NAME)
         {
            §;!@§ = "";
            §&!"§(§3A§);
         }
         else
         {
            §&!"§(§#!7§,true);
         }
      }
      
      protected function §7"'§(param1:MovieClip) : void
      {
         var _loc2_:int = param1.currentFrame + 1;
         if(_loc2_ >= param1.totalFrames)
         {
            _loc2_ = 0;
         }
         param1.gotoAndStop(_loc2_);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = 0;
         this.§;e§ += param1;
         if(this.§;e§ >= this.§-!e§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§>"-§.length)
            {
               this.§7"'§(this.§>"-§[_loc2_]);
               _loc2_++;
            }
            this.§;e§ = 0;
         }
         return super.run(param1);
      }
      
      protected function §?T§(param1:MouseEvent) : void
      {
         LevelManager.§@O§ = 7;
         var _loc2_:String = §""3§(param1.currentTarget).§8!e§;
         § W§.§%!y§.§!!Z§(_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         if(param2.length > 0 && param3 is §2[§ && ((param3 as §2[§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §2[§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15"))
         {
            if(!§@!s§)
            {
               _loc4_ = LevelManager.§?">§(param2.toLowerCase());
               LevelManager.§'!"§(_loc4_);
               mNextState = StateCutScene.STATE_NAME;
               if(_loc4_.indexOf("3000-") > -1)
               {
                  ++§&j§.§!!?§;
               }
            }
         }
         else
         {
            super.uiInteractionHandler(param1,param2,param3);
            switch(param2)
            {
               case "showCredits":
                  mNextState = §2&§.STATE_NAME;
                  break;
               case "CODES":
                  § W§.§%!y§.§'H§();
                  §43§.§"!G§();
                  break;
               case "NOWPLAYING_BUTTON":
                  _loc5_ = "https://www.facebook.com/GreenDay/app_256012207815369";
                  §%!#§.§9!q§(_loc5_);
                  § W§.§%!y§.§'H§();
                  _loc6_ = new URLRequest(_loc5_);
                  navigateToURL(_loc6_,"_blank");
            }
         }
      }
   }
}
