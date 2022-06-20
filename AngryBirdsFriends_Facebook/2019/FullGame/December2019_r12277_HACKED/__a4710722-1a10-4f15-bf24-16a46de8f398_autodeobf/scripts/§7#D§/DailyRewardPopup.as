package §7#D§
{
   import § h§.ErrorPopup;
   import §2E§.§'@§;
   import §2E§.§]!P§;
   import §4$A§.§=$5§;
   import §7!3§.§-!>§;
   import §9!6§.AbstractPopup;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §>#Y§.§2$8§;
   import §[#A§.§&n§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class DailyRewardPopup extends AbstractPopup implements §;"P§, §=$5§
   {
      
      public static const ID:String = "DailyRewardPopup";
      
      private static var §,#6§:Object;
      
      private static const §4"s§:Number = 60 * 1000;
      
      private static const §1!I§:Number = 60 * §4"s§;
      
      private static const §##A§:Number = 24 * §1!I§;
       
      
      private var §1"w§:Wallet;
      
      private var §3`§:MovieClip;
      
      private var §<#Q§:Timer;
      
      private var § "G§:Vector.<§23§>;
      
      private var §@"e§:Boolean;
      
      public function DailyRewardPopup(param1:int, param2:int, param3:Boolean = false)
      {
         this.§ "G§ = new Vector.<§23§>();
         super(param1,param2,§&n§.§7a§.Views.PopupView_DailyReward[0],ID);
         this.§@"e§ = param3;
         if(!§,#6§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Can\'t open daily gift popup when there is no gifts."));
            return;
         }
      }
      
      public static function §"!8§(param1:Object) : void
      {
         §,#6§.items = param1.items;
      }
      
      public static function §;#,§(param1:Object) : void
      {
         if(§,#6§ == null)
         {
            §,#6§ = new Object();
         }
         §,#6§ = param1;
      }
      
      public static function get §["p§() : Boolean
      {
         return §,#6§ && §,#6§.items;
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      override protected function init() : void
      {
         this.§3`§ = §'o§.mClip;
         this.§ "@§(new Wallet(this,false,false));
         this.§1"w§.§6""§.x -= 20;
         this.§1"w§.§6""§.y -= 4;
         this.§3`§.txtPowerup.text = "";
         this.§3`§.btnContinue.addEventListener(MouseEvent.CLICK,this.§1",§);
         this.§<#Q§ = new Timer(300,1);
         this.§<#Q§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ ! §);
         this.§<#Q§.start();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc3_:§23§ = null;
         super.show(param1);
         if(!§,#6§ || !§,#6§.prizeSchedule)
         {
            return;
         }
         var _loc2_:int = §,#6§.prizeSchedule.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = new §23§(§,#6§.prizeSchedule[_loc2_],§,#6§.dayInSchedule,_loc2_);
            this.§ "G§.push(_loc3_);
            this.§3`§.mcContainer.addChild(_loc3_);
            _loc3_.x = 110 + 500 * (_loc2_ / (§,#6§.prizeSchedule.length - 1));
            _loc3_.y = 385;
            _loc2_--;
         }
         this.§3`§.mcReward.visible = false;
      }
      
      private function § ! §(param1:TimerEvent) : void
      {
         this.§<#Q§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ ! §);
         this.§<#Q§.stop();
         if(!this.§1"w§ || !§,#6§ || !§,#6§.items)
         {
            close();
            return;
         }
         var _loc2_:Object = §,#6§.prizeSchedule[§,#6§.dayInSchedule - 1];
         this.§3`§.mcReward.visible = true;
         var _loc3_:String = §2$8§.§4#3§;
         this.§3`§.mcCount.awardCount.text = "x " + _loc2_.quantity;
         this.§3`§.txtPowerup.text = _loc3_;
         §'@§.§""N§(§'@§.§@",§,§2$8§.§,"p§,_loc2_.quantity);
         §'@§.§ "?§(§'@§.§@",§,§2$8§.§,"p§,_loc2_.quantity);
         var _loc4_:§-!>§;
         (_loc4_ = new §-!>§()).screen = ID;
         _loc4_.amount = _loc2_.quantity;
         _loc4_.currency = "IVC";
         _loc4_.§'#w§ = §]!P§.§-$6§;
         _loc4_.itemType = §2$8§.§,"p§;
         _loc4_.§>#$§ = §2$8§.§,"p§;
         _loc4_.itemName = §2$8§.§,"p§;
         [_loc4_];
         §]!P§.§1!7§().§=#3§(false,_loc4_.itemType,_loc4_.amount,_loc4_.§'#w§,_loc4_.screen,_loc4_.level,_loc4_.itemName,_loc4_.§>#$§,_loc4_.§7$&§,_loc4_.currency,_loc4_.§;"u§);
         §!",§.§3"1§.§,"&§();
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function dispose() : void
      {
         var _loc1_:§23§ = null;
         super.dispose();
         for each(_loc1_ in this.§ "G§)
         {
            _loc1_.dispose();
         }
         this.§ "G§ = new Vector.<§23§>();
         §,#6§ = null;
         this.§<#Q§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ ! §);
         this.§<#Q§.reset();
         this.§+E§(this.§1"w§);
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§3`§.mcContainer;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      public function §9M§() : String
      {
         return ID;
      }
   }
}
