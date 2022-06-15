package §%$!§
{
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §!#C§.§null§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&!_§.§0I§;
   import §0!s§.AbstractPopup;
   import §>z§.ErrorPopup;
   import §^&§.§%!#§;
   import §`"3§.§^!Z§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class DailyRewardPopup extends AbstractPopup implements §&>§, §%!#§
   {
      
      public static const ID:String = "DailyRewardPopup";
      
      private static var §="o§:Object;
      
      private static const §;#B§:Number = 60 * 1000;
      
      private static const §#"u§:Number = 60 * §;#B§;
      
      private static const §;!'§:Number = 24 * §#"u§;
       
      
      private var §1!B§:Wallet;
      
      private var §&r§:MovieClip;
      
      private var §8"M§:Timer;
      
      private var §="C§:Vector.<§>#U§>;
      
      private var §]#r§:Boolean;
      
      public function DailyRewardPopup(param1:int, param2:int, param3:Boolean = false)
      {
         this.§="C§ = new Vector.<§>#U§>();
         super(param1,param2,§?l§.§3m§.Views.PopupView_DailyReward[0],ID);
         this.§]#r§ = param3;
         if(!§="o§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Can\'t open daily gift popup when there is no gifts."));
            return;
         }
      }
      
      public static function §#S§(param1:Object) : void
      {
         §="o§.items = param1.items;
      }
      
      public static function §&!2§(param1:Object) : void
      {
         if(§="o§ == null)
         {
            §="o§ = new Object();
         }
         §="o§ = param1;
      }
      
      public static function get §'"y§() : Boolean
      {
         return §="o§ && §="o§.items;
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      override protected function init() : void
      {
         this.§&r§ = §&!M§.mClip;
         this.§0!A§(new Wallet(this,false,false));
         this.§1!B§.§+F§.x -= 20;
         this.§1!B§.§+F§.y -= 4;
         this.§&r§.txtPowerup.text = "";
         this.§&r§.btnContinue.addEventListener(MouseEvent.CLICK,this.§@!2§);
         this.§8"M§ = new Timer(300,1);
         this.§8"M§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§&"a§);
         this.§8"M§.start();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc3_:§>#U§ = null;
         super.show(param1);
         if(!§="o§ || !§="o§.prizeSchedule)
         {
            return;
         }
         var _loc2_:int = §="o§.prizeSchedule.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = new §>#U§(§="o§.prizeSchedule[_loc2_],§="o§.dayInSchedule,_loc2_);
            this.§="C§.push(_loc3_);
            this.§&r§.mcContainer.addChild(_loc3_);
            _loc3_.x = 110 + 500 * (_loc2_ / (§="o§.prizeSchedule.length - 1));
            _loc3_.y = 385;
            _loc2_--;
         }
         this.§&r§.mcReward.visible = false;
      }
      
      private function §&"a§(param1:TimerEvent) : void
      {
         this.§8"M§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§&"a§);
         this.§8"M§.stop();
         if(!this.§1!B§ || !§="o§ || !§="o§.items)
         {
            close();
            return;
         }
         var _loc2_:Object = §="o§.prizeSchedule[§="o§.dayInSchedule - 1];
         this.§&r§.mcReward.visible = true;
         var _loc3_:String = §null§.§=#k§;
         this.§&r§.mcCount.awardCount.text = "x " + _loc2_.quantity;
         this.§&r§.txtPowerup.text = _loc3_;
         §0I§.§3#A§(§0I§.§!#r§,§null§.§%l§,_loc2_.quantity);
         §0I§.§^!L§(§0I§.§!#r§,§null§.§%l§,_loc2_.quantity);
         var _loc4_:§^!Z§;
         (_loc4_ = new §^!Z§()).screen = ID;
         _loc4_.amount = _loc2_.quantity;
         _loc4_.currency = "IVC";
         _loc4_.§`"x§ = §!!K§.§0#+§;
         _loc4_.itemType = §null§.§%l§;
         _loc4_.§'$,§ = §null§.§%l§;
         _loc4_.itemName = §null§.§%l§;
         var _loc5_:Array = [_loc4_];
         §!!K§.§%#S§().§%!D§(false,_loc4_.itemType,_loc4_.amount,_loc4_.§`"x§,_loc4_.screen,_loc4_.level,_loc4_.itemName,_loc4_.§'$,§,_loc4_.§%#&§,_loc4_.currency,_loc4_.§#Z§);
         § $?§.§`"H§.§-!P§();
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function dispose() : void
      {
         var _loc1_:§>#U§ = null;
         super.dispose();
         for each(_loc1_ in this.§="C§)
         {
            _loc1_.dispose();
         }
         this.§="C§ = new Vector.<§>#U§>();
         §="o§ = null;
         this.§8"M§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§&"a§);
         this.§8"M§.reset();
         this.§&!U§(this.§1!B§);
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§&r§.mcContainer;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      public function §+"-§() : String
      {
         return ID;
      }
   }
}
