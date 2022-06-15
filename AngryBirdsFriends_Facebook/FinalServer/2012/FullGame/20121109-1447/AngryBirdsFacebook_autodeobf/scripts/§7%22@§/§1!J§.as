package §7"@§
{
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&q§.§%1§;
   import §'!s§.§%?§;
   import §1r§.§%_§;
   import §2!i§.§'M§;
   import §4!e§.§+w§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §6!B§.§ do§;
   import §6!B§.§&!7§;
   import §6!B§.§,!p§;
   import §6!B§.§7M§;
   import §6!B§.§>!E§;
   import §<a§.§+!B§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §1!J§ extends §]!K§
   {
      
      public static const STATE_NAME:String = "GreenDayLevelSelection";
       
      
      private var §,"5§:§7"-§;
      
      private var §8!t§:Number = 41.666666666666664;
      
      private var §5!'§:int = 0;
      
      private var §[!t§:Vector.<MovieClip>;
      
      private var state:String;
      
      public function §1!J§(param1:Boolean = false, param2:String = "GreenDayLevelSelection")
      {
         this.state = mNextState;
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_LevelSelectionGreenDay[0]);
         §4!5§ = §6w§.getItemByName("Container_LevelRepeaters") as §08§;
         §4!5§.y = 120;
         §]!d§ = §6w§.getItemByName("Container_LevelSelection") as §08§;
         this.§[!t§ = new Vector.<MovieClip>();
         this.§[!t§.push(§6w§.getItemByName("MovieClip_BassPig").mClip["pig"]);
         this.§[!t§.push(§6w§.getItemByName("MovieClip_BassPig").mClip["instrument"]);
         this.§[!t§.push(§6w§.getItemByName("MovieClip_GuitarPig").mClip["pig"]);
         this.§[!t§.push(§6w§.getItemByName("MovieClip_GuitarPig").mClip["instrument"]);
         this.§[!t§.push(§6w§.getItemByName("MovieClip_DrumPig").mClip["pig"]);
         this.§[!t§.push(§6w§.getItemByName("MovieClip_DrumPig").mClip["instrument"]["cimbal"]);
         this.§[!t§.push(§6w§.getItemByName("MovieClip_DrumPig").mClip["instrument"]["snare"]);
         this.§[!t§.push(§6w§.getItemByName("MovieClip_DrumPig").mClip["instrument"]["bass"]);
         this.§[!t§.push(§6w§.getItemByName("MovieClip_Amp").mClip["instrument"]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §2!e§.§5;§ = STATE_NAME;
      }
      
      override protected function countStarsAndFeathers(param1:§>x§) : void
      {
         param1 = LevelManager.§5!W§("3000");
         super.countStarsAndFeathers(param1);
      }
      
      override protected function showStarsAndFeathers(param1:§>x§, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:§>x§ = LevelManager.§5!W§(§]!K§.EPISODE_GREEN_DAY_EGG);
         param2 += AngryBirdsFP11.sUserProgress.§9o§(_loc6_);
         param3 += AngryBirdsFP11.sUserProgress.§`!g§(_loc6_);
         param4 += AngryBirdsFP11.sUserProgress.§7L§(_loc6_);
         param5 += AngryBirdsFP11.sUserProgress.§,!b§(_loc6_);
         super.showStarsAndFeathers(param1,param2,param3,param4,param5);
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc1_:§ do§ = §3T§.§67§.§2!c§();
         _loc1_.§"!r§(§&!7§.§+"8§,false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override protected function stopCurrentTheme() : void
      {
         var _loc2_:§,!p§ = null;
         var _loc1_:§7M§ = §>!E§.§"h§(§&!7§.§2![§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§?"+§(§&!7§.§+"8§);
            if(_loc2_)
            {
               §2!e§.§,T§ = _loc2_.position;
            }
         }
         super.stopCurrentTheme();
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc9_:Array = null;
         var _loc1_:Number = 0;
         §!"E§ = [];
         §@H§ = [];
         var _loc3_:§>x§ = LevelManager.§;X§(6);
         var _loc4_:Number = 0;
         while(_loc4_ < _loc3_.pageIndexes.length)
         {
            _loc9_ = _loc3_.§<6§(_loc3_.pageIndexes[_loc4_]);
            §!"E§.push(_loc3_.§^" §(_loc4_));
            §@H§.push(_loc3_.§?T§(_loc4_));
            _loc1_ = §[k§(_loc9_,_loc4_,_loc1_,_loc3_);
            _loc4_++;
         }
         var _loc5_:int = LevelManager.§;X§(6).§9!f§;
         §-9§ = new §%1§(§!"E§[_loc5_].red,§!"E§[_loc5_].green,§!"E§[_loc5_].blue,1);
         §6w§.getItemByName("MovieClip_ColorFade").changeMovieClip(§-9§);
         this.§,"5§ = new §7"-§(<na/>,§4!5§,new §8B§.§6"C§("GreenDayGoldenEggLevelSelection")());
         this.§,"5§.x += AngryBirdsFP11.§=!u§ * §>]§.length;
         §4!5§.addComponent(this.§,"5§);
         §>]§.push(this.§,"5§);
         var _loc6_:§%_§;
         (_loc6_ = new §%_§(this.§,"5§.mClip.goldenGrenade1,"3001-1")).addEventListener(MouseEvent.CLICK,this.§%n§);
         _loc6_.updateEgg();
         var _loc7_:§%_§;
         (_loc7_ = new §%_§(this.§,"5§.mClip.goldenGrenade2,"3001-2")).addEventListener(MouseEvent.CLICK,this.§%n§);
         _loc7_.updateEgg();
         §3!j§();
         var _loc8_:String = LevelManager.§9"D§().name;
         §1m§ = §#!L§;
         §`&§ = §#!L§;
         if(§5;§ == StateCutScene.STATE_NAME)
         {
            §5;§ = "";
            §`6§(§`&§);
         }
         else
         {
            §`6§(§#!L§,true);
         }
      }
      
      protected function §9f§(param1:MovieClip) : void
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
         this.§5!'§ += param1;
         if(this.§5!'§ >= this.§8!t§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§[!t§.length)
            {
               this.§9f§(this.§[!t§[_loc2_]);
               _loc2_++;
            }
            this.§5!'§ = 0;
         }
         return super.run(param1);
      }
      
      protected function §%n§(param1:MouseEvent) : void
      {
         LevelManager.§2?§ = 7;
         var _loc2_:String = §%_§(param1.currentTarget).§@"=§;
         §3T§.§67§.§5O§(_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         if(param2.length > 0 && param3 is §+w§ && ((param3 as §+w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §+w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15"))
         {
            if(!§6!H§)
            {
               _loc4_ = LevelManager.§;!f§(param2.toLowerCase());
               LevelManager.§-!4§(_loc4_);
               mNextState = StateCutScene.STATE_NAME;
               if(_loc4_.indexOf("3000-") > -1)
               {
                  ++§2!e§.§4"#§;
               }
            }
         }
         else
         {
            super.uiInteractionHandler(param1,param2,param3);
            switch(param2)
            {
               case "showCredits":
                  mNextState = §9<§.STATE_NAME;
                  break;
               case "CODES":
                  §3T§.§67§.§#m§();
                  §%?§.§ !p§();
                  break;
               case "NOWPLAYING_BUTTON":
                  _loc5_ = "https://www.facebook.com/GreenDay/app_256012207815369";
                  §+!B§.§[B§(_loc5_);
                  §3T§.§67§.§#m§();
                  _loc6_ = new URLRequest(_loc5_);
                  navigateToURL(_loc6_,"_blank");
            }
         }
      }
   }
}
