package §;!Q§
{
   import §##K§.§9#]§;
   import §%$!§.§+3§;
   import §4q§.§!#Q§;
   import §5"$§.§]!m§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §^"!§ extends Sprite
   {
      
      public static const §@"T§:String = "joined";
      
      public static const §#"v§:String = "not-joined";
      
      public static const §9§:String = "max-eggs-for-day";
       
      
      private var §&"R§:String;
      
      private var §8!J§:MovieClip;
      
      private var §"#1§:int;
      
      private var §"#l§:int;
      
      private var §]"C§:Boolean;
      
      public function §^"!§(param1:int, param2:String = "", param3:Boolean = false, param4:Boolean = true)
      {
         super();
         this.§"#l§ = param1;
         this.§]"C§ = param3;
         this.§;"_§(param2);
         this.§8!J§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(param4)
         {
            this.dataModel.§&!?§.addEventListener(§9#]§.§@";§,this.§`#;§);
         }
      }
      
      public function §7Z§() : void
      {
         this.§8!J§.eggBasket.gotoAndPlay("pulse");
      }
      
      private function §;"_§(param1:String = "") : void
      {
         if(param1 == "")
         {
            if(!this.dataModel.§&!?§.§5$6§())
            {
               this.setState(§#"v§);
            }
            else if(this.dataModel.§&!?§.§8"#§())
            {
               this.setState(§9§);
            }
            else
            {
               this.setState(§@"T§);
            }
         }
         else
         {
            this.setState(param1);
         }
      }
      
      private function §`#;§(param1:§9#]§) : void
      {
         this.§;"_§();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§8!J§ == null)
         {
            return;
         }
         if(this.§8!J§.eggBasket)
         {
            if(this.§8!J§.eggBasket.currentFrame == this.§8!J§.eggBasket.totalFrames)
            {
               this.§8!J§.eggBasket.gotoAndStop("normal");
            }
         }
         this.§9b§(this.dataModel.§&!?§.§^A§());
      }
      
      private function setState(param1:String) : void
      {
         var _loc2_:Class = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.§&"R§ = param1;
         if(this.§8!J§)
         {
            if(this.contains(this.§8!J§))
            {
               removeChild(this.§8!J§);
            }
         }
         switch(param1)
         {
            case §@"T§:
               _loc2_ = §@`§.§4!i§("WonderlandEggRaffle");
               break;
            case §#"v§:
               _loc2_ = §@`§.§4!i§("WonderlandEggRaffleNotJoined");
               break;
            case §9§:
               _loc2_ = §@`§.§4!i§("WonderlandEggRaffleMaxEggs");
         }
         this.§8!J§ = new _loc2_();
         if(this.§8!J§.enterCompetition)
         {
            (this.§8!J§.enterCompetition as SimpleButton).addEventListener(MouseEvent.CLICK,this.§+p§);
         }
         addChild(this.§8!J§);
         if(this.§8!J§.eggMeter)
         {
            this.§8!J§.eggMeter.visible = this.§]"C§;
            _loc3_ = this.dataModel.§&!?§.§["6§;
            _loc4_ = this.dataModel.§&!?§.§&!J§;
            this.§8!J§.eggMeter.eggsCollectedTextfield.text = _loc3_ + "/" + _loc4_ + " collected";
            this.§8!J§.eggMeter.stretcher.gotoAndStop(Math.floor(_loc3_ / _loc4_ * this.§8!J§.eggMeter.stretcher.totalFrames));
         }
         if(this.§8!J§.eggBasket)
         {
            this.§8!J§.eggBasket.gotoAndStop("normal");
         }
         if(this.§8!J§.collectMoreTextfield)
         {
            if(this.dataModel.§&!?§.§!"Z§())
            {
               this.§8!J§.collectMoreTextfield.text = "Raffle Ends in:";
            }
            else
            {
               this.§8!J§.collectMoreTextfield.text = "Collect More in:";
            }
         }
         this.§4"E§ = this.dataModel.§&!?§.§ #g§;
      }
      
      protected function §+p§(param1:MouseEvent) : void
      {
         if(this.dataModel.§&!?§.§=#t§())
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new §-q§(1,1,this.dataModel.userProgress.hasTutorialBeenSeen(§!#Q§.§5##§ + §7B§.§2!k§)));
         }
      }
      
      public function dispose() : void
      {
         if(this.§8!J§ == null)
         {
            return;
         }
         (this.§8!J§.enterCompetition as SimpleButton).removeEventListener(MouseEvent.MOUSE_UP,this.§+p§);
         this.dataModel.§&!?§.removeEventListener(§9#]§.§@";§,this.§`#;§);
         this.§8!J§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.contains(this.§8!J§))
         {
            removeChild(this.§8!J§);
         }
         this.§8!J§ = null;
      }
      
      public function §9b§(param1:Number) : void
      {
         if(this.§8!J§ && this.§8!J§.timeLeft)
         {
            this.§8!J§.timeLeft.text = §]!m§.§1!N§(Math.round(param1 / 1000));
         }
      }
      
      public function get §4"E§() : int
      {
         return this.§"#1§;
      }
      
      public function set §4"E§(param1:int) : void
      {
         this.§"#1§ = param1;
         if(this.§8!J§ && this.§8!J§.eggAmount)
         {
            this.§8!J§.eggAmount.text = param1 + "/" + this.§"#l§;
         }
      }
      
      private function get dataModel() : §+3§
      {
         return §+3§(§8G§.§%#S§.dataModel);
      }
   }
}
