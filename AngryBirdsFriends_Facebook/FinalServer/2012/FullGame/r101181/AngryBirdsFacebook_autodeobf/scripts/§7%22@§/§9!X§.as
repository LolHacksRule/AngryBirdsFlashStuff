package §7"@§
{
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §&q§.§%1§;
   import §1r§.§%_§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §9!X§ extends §]!K§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var §4z§:uint;
      
      private var §["=§:uint = 5000;
      
      private var §""0§:int = 10;
      
      protected var §6"9§:MovieClip;
      
      private var §;!r§:Vector.<§%_§>;
      
      public function §9!X§(param1:Boolean = false, param2:String = "GoldenEggsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.§6"9§ = new §8B§.§6"C§("GoldenEggsLevelSelection")();
         §]!d§.mClip.addChild(this.§6"9§);
         this.§35§();
      }
      
      private function §35§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§%_§ = null;
         this.§;!r§ = new Vector.<§%_§>(this.§""0§);
         var _loc1_:int = 1;
         while(_loc1_ <= this.§""0§)
         {
            _loc2_ = "1000-" + _loc1_;
            _loc3_ = this.§6"9§["egg" + _loc1_];
            (_loc4_ = new §%_§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§%n§);
            this.§;!r§[_loc1_] = _loc4_;
            _loc1_++;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:§>x§ = LevelManager.§9"D§();
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.name != "1000")
         {
            §6w§.visible = false;
            mNextState = §8"D§.STATE_NAME;
            return;
         }
         §6w§.visible = true;
         (§#6§.§ q§ as §3T§).§9!Q§.§`W§ = false;
         (§#6§.§ q§ as §3T§).§?D§("");
         (§#6§.§ q§ as §3T§).§`!P§(§ K§.§7!y§);
         if(§#6§.§6!z§.background)
         {
            §#6§.§6!z§.background.§^!P§();
         }
         var _loc2_:String = LevelManager.§9"D§().writtenName;
         §6w§.setText(_loc2_,"TextField_LevelName");
         §6w§.setText(AngryBirdsFP11.sUserProgress.§9o§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§`!g§(_loc1_),"Textfield_CollectedStars");
         §6w§.setText(AngryBirdsFP11.sUserProgress.§7L§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§,!b§(_loc1_),"Textfield_ME_Score");
         §6w§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         §6w§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         §6w§.getItemByName("Button_Prev").setVisibility(false);
         §6w§.getItemByName("Button_Next").setVisibility(false);
         §6w§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var _loc3_:Object = _loc1_.§^" §(0);
         §-9§ = new §%1§(_loc3_.red,_loc3_.green,_loc3_.blue,1);
         §6w§.getItemByName("MovieClip_ColorFade").changeMovieClip(§-9§);
         this.§^![§();
         this.§4z§ = getTimer();
         §#6§.§ q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override public function deActivate() : void
      {
         §#6§.§ q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(getTimer() - this.§4z§ >= this.§["=§)
         {
            this.§4z§ = getTimer();
            this.§^![§();
         }
      }
      
      private function §^![§() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.§""0§)
         {
            this.updateEgg(_loc1_);
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         this.§;!r§[param1].updateEgg();
      }
      
      protected function §%n§(param1:MouseEvent) : void
      {
         var _loc2_:String = §%_§(param1.currentTarget).§@"=§;
         §3T§.§67§.§5O§(_loc2_);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
