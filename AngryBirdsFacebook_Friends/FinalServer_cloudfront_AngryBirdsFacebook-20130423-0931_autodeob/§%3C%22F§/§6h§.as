package §<"F§
{
   import §,l§.§+I§;
   import §0!i§.§]q§;
   import §0D§.§3!R§;
   import §5!Y§.§9"6§;
   import §@!%§.§#!$§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §6h§ extends Sprite
   {
      
      public static const §?H§:String = "joined";
      
      public static const §8,§:String = "not-joined";
      
      public static const §8D§:String = "max-eggs-for-day";
       
      
      private var §;E§:String;
      
      private var §!!Q§:MovieClip;
      
      private var §3! §:int;
      
      private var §]_§:int;
      
      private var §+!d§:Boolean;
      
      public function §6h§(param1:int, param2:String = "", param3:Boolean = false, param4:Boolean = true)
      {
         super();
         this.§]_§ = param1;
         this.§+!d§ = param3;
         this.§7!U§(param2);
         this.§!!Q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(param4)
         {
            this.§9"%§.§7"T§.addEventListener(§]q§.§!"D§,this.§^O§);
         }
      }
      
      public function §<s§() : void
      {
         this.§!!Q§.eggBasket.gotoAndPlay("pulse");
      }
      
      private function §7!U§(param1:String = "") : void
      {
         if(param1 == "")
         {
            if(!this.§9"%§.§7"T§.§<!'§())
            {
               this.§`",§(§8,§);
            }
            else if(this.§9"%§.§7"T§.§+4§())
            {
               this.§`",§(§8D§);
            }
            else
            {
               this.§`",§(§?H§);
            }
         }
         else
         {
            this.§`",§(param1);
         }
      }
      
      private function §^O§(param1:§]q§) : void
      {
         this.§7!U§();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§!!Q§ == null)
         {
            return;
         }
         if(this.§!!Q§.eggBasket)
         {
            if(this.§!!Q§.eggBasket.currentFrame == this.§!!Q§.eggBasket.totalFrames)
            {
               this.§!!Q§.eggBasket.gotoAndStop("normal");
            }
         }
         this.§<!z§(this.§9"%§.§7"T§.§5t§());
      }
      
      private function §`",§(param1:String) : void
      {
         var _loc2_:Class = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.§;E§ = param1;
         if(this.§!!Q§)
         {
            if(this.contains(this.§!!Q§))
            {
               removeChild(this.§!!Q§);
            }
         }
         switch(param1)
         {
            case §?H§:
               _loc2_ = §?q§.§ q§("WonderlandEggRaffle");
               break;
            case §8,§:
               _loc2_ = §?q§.§ q§("WonderlandEggRaffleNotJoined");
               break;
            case §8D§:
               _loc2_ = §?q§.§ q§("WonderlandEggRaffleMaxEggs");
         }
         this.§!!Q§ = new _loc2_();
         if(this.§!!Q§.enterCompetition)
         {
            (this.§!!Q§.enterCompetition as SimpleButton).addEventListener(MouseEvent.CLICK,this.§8S§);
         }
         addChild(this.§!!Q§);
         if(this.§!!Q§.eggMeter)
         {
            this.§!!Q§.eggMeter.visible = this.§+!d§;
            _loc3_ = this.§9"%§.§7"T§.§-"5§;
            _loc4_ = this.§9"%§.§7"T§.§,"!§;
            this.§!!Q§.eggMeter.eggsCollectedTextfield.text = _loc3_ + "/" + _loc4_ + " collected";
            this.§!!Q§.eggMeter.stretcher.gotoAndStop(Math.floor(_loc3_ / _loc4_ * this.§!!Q§.eggMeter.stretcher.totalFrames));
         }
         if(this.§!!Q§.eggBasket)
         {
            this.§!!Q§.eggBasket.gotoAndStop("normal");
         }
         if(this.§!!Q§.collectMoreTextfield)
         {
            if(this.§9"%§.§7"T§.§1"B§())
            {
               this.§!!Q§.collectMoreTextfield.text = "Raffle Ends in:";
            }
            else
            {
               this.§!!Q§.collectMoreTextfield.text = "Collect More in:";
            }
         }
         this.eggs = this.§9"%§.§7"T§.§5!4§;
      }
      
      protected function §8S§(param1:MouseEvent) : void
      {
         if(this.§9"%§.§7"T§.§+!!§())
         {
            §9"6§.§2!U§(AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(§#!$§.§4"P§ + §["M§.§0<§));
         }
      }
      
      public function dispose() : void
      {
         if(this.§!!Q§ == null)
         {
            return;
         }
         (this.§!!Q§.enterCompetition as SimpleButton).removeEventListener(MouseEvent.MOUSE_UP,this.§8S§);
         this.§9"%§.§7"T§.removeEventListener(§]q§.§!"D§,this.§^O§);
         this.§!!Q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.contains(this.§!!Q§))
         {
            removeChild(this.§!!Q§);
         }
         this.§!!Q§ = null;
      }
      
      public function §<!z§(param1:Number) : void
      {
         if(this.§!!Q§ && this.§!!Q§.timeLeft)
         {
            this.§!!Q§.timeLeft.text = §3!R§.§"A§(Math.round(param1 / 1000));
         }
      }
      
      public function get eggs() : int
      {
         return this.§3! §;
      }
      
      public function set eggs(param1:int) : void
      {
         this.§3! § = param1;
         if(this.§!!Q§ && this.§!!Q§.eggAmount)
         {
            this.§!!Q§.eggAmount.text = param1 + "/" + this.§]_§;
         }
      }
      
      private function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
