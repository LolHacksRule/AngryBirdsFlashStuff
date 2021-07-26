package §&!a§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §&=§.§<#V§;
   import §,#,§.§=#o§;
   import §,#,§.§>#g§;
   import §,#,§.§]§;
   import §7"&§.§1k§;
   import §?Q§.ErrorPopup;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class DailyRewardPopup extends AbstractPopup implements §+#?§, §1k§
   {
      
      public static const ID:String = "DailyRewardPopup";
      
      private static var §5#"§:Object;
      
      private static const §]!&§:Number = 60 * 1000;
      
      private static const §,!$§:Number = 60 * §]!&§;
      
      private static const § !§:Number = 24 * §,!$§;
       
      
      private var §"#W§:Wallet;
      
      private var §8#M§:MovieClip;
      
      private var §%"U§:Timer;
      
      private var §5h§:Vector.<§9#h§>;
      
      private var §7!&§:Boolean;
      
      public function DailyRewardPopup(param1:int, param2:int, param3:Boolean = false)
      {
         this.§5h§ = new Vector.<§9#h§>();
         super(param1,param2,§false§.§4#;§.Views.PopupView_DailyReward[0],ID);
         this.§7!&§ = param3;
         if(!§5#"§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Can\'t open daily gift popup when there is no gifts."));
            return;
         }
      }
      
      public static function §+6§(param1:Object) : void
      {
         §5#"§.items = param1.items;
      }
      
      public static function §[e§(param1:Object) : void
      {
         if(§5#"§ == null)
         {
            §5#"§ = new Object();
         }
         §5#"§ = param1;
      }
      
      public static function get §1!I§() : Boolean
      {
         return §5#"§ && §5#"§.items;
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      override protected function init() : void
      {
         this.§8#M§ = §;#'§.mClip;
         this.§6"h§(new Wallet(this,false,false));
         this.§"#W§.§`#8§.x -= 20;
         this.§"#W§.§`#8§.y -= 4;
         this.§8#M§.txtPowerup.text = "";
         this.§8#M§.btnContinue.addEventListener(MouseEvent.CLICK,this.§,!<§);
         this.§%"U§ = new Timer(300,1);
         this.§%"U§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§7'§);
         this.§%"U§.start();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc3_:§9#h§ = null;
         super.show(param1);
         if(!§5#"§ || !§5#"§.prizeSchedule)
         {
            return;
         }
         var _loc2_:int = §5#"§.prizeSchedule.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = new §9#h§(§5#"§.prizeSchedule[_loc2_],§5#"§.dayInSchedule,_loc2_);
            this.§5h§.push(_loc3_);
            this.§8#M§.mcContainer.addChild(_loc3_);
            _loc3_.x = 110 + 500 * (_loc2_ / (§5#"§.prizeSchedule.length - 1));
            _loc3_.y = 385;
            _loc2_--;
         }
         this.§8#M§.mcReward.visible = false;
      }
      
      private function §7'§(param1:TimerEvent) : void
      {
         this.§%"U§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§7'§);
         this.§%"U§.stop();
         if(!this.§"#W§ || !§5#"§ || !§5#"§.items)
         {
            close();
            return;
         }
         var _loc2_:Object = §5#"§.prizeSchedule[§5#"§.dayInSchedule - 1];
         this.§8#M§.mcReward.visible = true;
         var _loc3_:String = §>#g§.§#I§;
         this.§8#M§.mcCount.awardCount.text = "x " + _loc2_.quantity;
         this.§8#M§.txtPowerup.text = _loc3_;
         §<"G§.§16§(§<"G§.§<!_§,§>#g§.§=-§,_loc2_.quantity);
         §<"G§.§%!V§(§<"G§.§<!_§,§>#g§.§=-§,_loc2_.quantity);
         var _loc4_:§<#V§;
         (_loc4_ = new §<#V§()).screen = ID;
         _loc4_.amount = _loc2_.quantity;
         _loc4_.currency = "IVC";
         _loc4_.§]#=§ = §3";§.§+!V§;
         _loc4_.itemType = §>#g§.§=-§;
         _loc4_.§#!D§ = §>#g§.§=-§;
         _loc4_.itemName = §>#g§.§=-§;
         var _loc5_:Array = [_loc4_];
         §3";§.§#"'§().§7"Q§(false,_loc4_.itemType,_loc4_.amount,_loc4_.§]#=§,_loc4_.screen,_loc4_.level,_loc4_.itemName,_loc4_.§#!D§,_loc4_.§&$3§,_loc4_.currency,_loc4_.§>$%§);
         §]#0§.§+!,§.§@!z§();
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function dispose() : void
      {
         var _loc1_:§9#h§ = null;
         super.dispose();
         for each(_loc1_ in this.§5h§)
         {
            _loc1_.dispose();
         }
         this.§5h§ = new Vector.<§9#h§>();
         §5#"§ = null;
         this.§%"U§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§7'§);
         this.§%"U§.reset();
         this.§7=§(this.§"#W§);
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§8#M§.mcContainer;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      public function §6#n§() : String
      {
         return ID;
      }
   }
}
