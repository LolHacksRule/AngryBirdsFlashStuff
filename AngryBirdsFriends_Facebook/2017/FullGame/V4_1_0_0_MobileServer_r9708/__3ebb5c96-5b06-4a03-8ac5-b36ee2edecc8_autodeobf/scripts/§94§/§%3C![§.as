package §94§
{
   import §&$!§.§+#!§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §<!b§.§&!i§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import §^"f§.§5,§;
   import §`!R§.§&"8§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §<![§ extends §'!!§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var §#"o§:uint;
      
      private var §9!#§:uint = 5000;
      
      private var §`"<§:int = 10;
      
      protected var §3"F§:MovieClip;
      
      private var §`#k§:Vector.<§5,§>;
      
      public function §<![§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "GoldenEggsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.§3"F§ = new §+$#§.§["`§("GoldenEggsLevelSelection")();
         §2#H§.mClip.addChild(this.§3"F§);
         this.§,#X§();
      }
      
      override protected function moveToPage(param1:int, param2:Boolean = false) : void
      {
      }
      
      override protected function gotoNextPage() : void
      {
      }
      
      override protected function gotoPrevPage() : void
      {
      }
      
      private function §,#X§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§5,§ = null;
         this.§`#k§ = new Vector.<§5,§>(this.§`"<§);
         var _loc1_:int = 1;
         while(_loc1_ <= this.§`"<§)
         {
            _loc2_ = "1000-" + _loc1_;
            _loc3_ = this.§3"F§["egg" + _loc1_];
            (_loc4_ = new §5,§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§+!z§);
            this.§`#k§[_loc1_] = _loc4_;
            _loc1_++;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§9##§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name != "1000")
         {
            §?Q§.visible = false;
            §5"p§(§7!c§.STATE_NAME);
            return;
         }
         §?Q§.visible = true;
         (§!#A§.§>q§ as §-#+§).§[#G§.§''§ = false;
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§ #Y§);
         if(§!#A§.§#F§.background)
         {
            §!#A§.§#F§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §?Q§.setText(_loc3_,"TextField_LevelName");
         §?Q§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§@"V§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§%n§(_loc2_),"Textfield_CollectedStars");
         §?Q§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§8M§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§26§(_loc2_),"Textfield_ME_Score");
         §?Q§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         §?Q§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         §?Q§.getItemByName("Button_Prev").setVisibility(false);
         §?Q§.getItemByName("Button_Next").setVisibility(false);
         §?Q§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var _loc4_:Object = _loc2_.§?#v§(0);
         §`#Y§ = new §&!i§(_loc4_.red,_loc4_.green,_loc4_.blue,1);
         §?Q§.getItemByName("MovieClip_ColorFade").changeMovieClip(§`#Y§);
         this.§%!q§();
         this.§#"o§ = getTimer();
         §!#A§.§>q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §3j§();
      }
      
      override public function deActivate() : void
      {
         §!#A§.§>q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.deActivate();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(getTimer() - this.§#"o§ >= this.§9!#§)
         {
            this.§#"o§ = getTimer();
            this.§%!q§();
         }
      }
      
      private function §%!q§() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.§`"<§)
         {
            this.updateEgg(_loc1_);
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         this.§`#k§[param1].updateEgg();
      }
      
      protected function §+!z§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         var _loc2_:String = §5,§(param1.currentTarget).§4"0§;
         §-#+§.§;!$§.§'"=§(_loc2_);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
