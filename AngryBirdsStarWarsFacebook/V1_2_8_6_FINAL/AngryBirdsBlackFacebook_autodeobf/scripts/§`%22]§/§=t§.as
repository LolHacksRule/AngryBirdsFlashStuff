package §`"]§
{
   import §!"-§.§]"_§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §=t§ extends EventDispatcher
   {
       
      
      private var §@!=§:MovieClip;
      
      private var §>!@§:MovieClip;
      
      private var §?!-§:Boolean;
      
      private var §+D§:Boolean = false;
      
      private var §5!B§:int;
      
      private var §1!5§:int;
      
      private var §%W§:int;
      
      private var §5!C§:Number = NaN;
      
      private var §6!5§:Boolean;
      
      private var §&@§:int;
      
      private var §#"U§:Object;
      
      private var §each §:Boolean = false;
      
      private var §]!9§:Number;
      
      private var §6!l§:§%b§;
      
      private var §6!?§:int;
      
      public function §=t§(param1:MovieClip, param2:MovieClip, param3:int)
      {
         super();
         this.§@!=§ = param1;
         this.§>!@§ = param2;
         this.§>!@§.txtScore.mouseEnabled = false;
         this.§&@§ = param3;
         this.§@!=§.mouseChildren = false;
         this.§@!=§.txtLevelNumber.text = param3.toString();
         this.§@!=§.z = 0;
         this.§]!9§ = this.§@!=§.scaleX;
         this.init();
         this.isLocked = true;
         this.canBuyToUnlock = false;
         this.§@!=§.addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         this.§@!=§.addEventListener(MouseEvent.ROLL_OUT,this.onOut);
         this.§@!=§.addEventListener(MouseEvent.CLICK,this.§3"%§);
      }
      
      private function init() : void
      {
         this.§@!=§.stop();
         this.§@!=§.levelStars.stop();
         this.§@!=§.unlockTimer.stop();
      }
      
      private function onOver(param1:MouseEvent) : void
      {
         if(!this.§@!=§.buttonMode)
         {
            return;
         }
         if(this.§6!l§)
         {
            this.§6!l§.stop();
         }
         this.§6!l§ = §5!%§.§!6§.§4!M§(this.§@!=§,{
            "scaleX":this.§]!9§ + 0.1,
            "scaleY":this.§]!9§ + 0.1
         },null,0.2,§]"_§.easeOut);
         this.§6!l§.play();
      }
      
      private function onOut(param1:MouseEvent) : void
      {
         if(!this.§@!=§.buttonMode)
         {
            return;
         }
         if(this.§6!l§)
         {
            this.§6!l§.stop();
         }
         this.§6!l§ = §5!%§.§!6§.§4!M§(this.§@!=§,{
            "scaleX":this.§]!9§,
            "scaleY":this.§]!9§
         },null,0.2,§]"_§.easeOut);
         this.§6!l§.play();
      }
      
      private function §3"%§(param1:MouseEvent) : void
      {
         dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      public function get §@!$§() : int
      {
         return this.§&@§;
      }
      
      public function get §-"G§() : Object
      {
         return this.§#"U§;
      }
      
      public function set §-"G§(param1:Object) : void
      {
         this.§#"U§ = param1;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§?!-§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§?!-§ = param1;
         this.§>!@§.visible = !this.isLocked;
         this.§@!=§.txtLevelNumber.visible = !this.§?!-§;
         this.§5"N§();
      }
      
      public function get §5!T§() : int
      {
         return this.§6!?§;
      }
      
      public function set §5!T§(param1:int) : void
      {
         this.§6!?§ = param1;
         this.§@!=§.txtUnlockAmount.text = this.§6!?§;
      }
      
      public function get canBuyToUnlock() : Boolean
      {
         return this.§6!5§;
      }
      
      public function set canBuyToUnlock(param1:Boolean) : void
      {
         this.§6!5§ = param1;
         this.§@!=§.txtUnlockAmount.visible = this.§6!5§;
         this.§5"N§();
      }
      
      private function §5"N§() : void
      {
         if(this.§?!-§)
         {
            if(this.§+D§)
            {
               this.§@!=§.gotoAndStop("unlocking");
            }
            else if(this.§6!5§)
            {
               this.§@!=§.gotoAndStop("buy");
            }
            else
            {
               this.§@!=§.gotoAndStop("locked");
            }
         }
         else
         {
            this.§@!=§.gotoAndStop("unlocked");
         }
         this.§@!=§.buttonMode = !this.§?!-§ || this.§6!5§ && !this.§+D§;
      }
      
      public function get §1!>§() : Boolean
      {
         return this.§+D§;
      }
      
      public function set §1!>§(param1:Boolean) : void
      {
         this.§+D§ = param1;
         this.§5"N§();
      }
      
      public function get score() : int
      {
         return this.§5!B§;
      }
      
      public function set score(param1:int) : void
      {
         this.§5!B§ = param1;
         this.§>!@§.txtScore.text = this.§5!B§.toString();
      }
      
      public function get §2z§() : int
      {
         return this.§1!5§;
      }
      
      public function set §2z§(param1:int) : void
      {
         this.§1!5§ = param1;
         this.§@!=§.levelStars.gotoAndStop(this.§1!5§.toString() + "_stars");
      }
      
      public function get §5!b§() : int
      {
         return this.§%W§;
      }
      
      public function set §5!b§(param1:int) : void
      {
         var _loc2_:String = null;
         this.§%W§ = param1;
         if(this.§%W§ > 0 && this.§%W§ <= 3)
         {
            _loc2_ = ["Gold","Silver","Bronze"][this.§%W§ - 1];
         }
         else
         {
            _loc2_ = "noCrown";
         }
         this.§@!=§.crown.gotoAndStop(_loc2_);
      }
      
      public function get §@!d§() : Number
      {
         return !!isNaN(this.§5!C§) ? Number(NaN) : Number(Math.floor((this.§5!C§ - getTimer()) / 1000));
      }
      
      public function §`"§(param1:Number) : void
      {
         if(param1 && param1 > getTimer())
         {
            this.§5!C§ = param1;
            this.isLocked = true;
            if(!this.§each §)
            {
               this.§@!=§.addEventListener(Event.ENTER_FRAME,this.§^!<§);
               this.§each § = true;
            }
         }
         else
         {
            this.isLocked = false;
         }
      }
      
      private function §^!<§(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Number = this.§@!d§;
         if(_loc2_ > 0)
         {
            _loc3_ = _loc2_ / (60 * 60 * 24);
            if(_loc3_ > 0)
            {
               if(_loc3_ > 4)
               {
                  _loc3_ = 4;
               }
               this.§@!=§.unlockTimer.gotoAndStop("days_" + _loc3_);
               this.§@!=§.unlockTimer.txtTimer.visible = false;
            }
            else
            {
               this.§@!=§.unlockTimer.gotoAndStop("hours");
               this.§@!=§.unlockTimer.txtTimer.visible = true;
               if(_loc2_ < 60)
               {
                  this.§@!=§.unlockTimer.txtTimer.text = _loc2_.toString() + " sec";
               }
               else
               {
                  _loc2_ += 60;
                  _loc4_ = _loc2_ / (60 * 60);
                  _loc5_ = (_loc2_ - _loc4_ * (60 * 60)) / 60;
                  this.§@!=§.unlockTimer.txtTimer.text = (_loc4_ < 10 ? "0" : "") + _loc4_ + ":" + (_loc5_ < 10 ? "0" : "") + _loc5_;
               }
            }
         }
         else
         {
            this.isLocked = false;
            this.§@!=§.removeEventListener(Event.ENTER_FRAME,this.§^!<§);
            this.§each § = false;
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public function §>!I§() : void
      {
         this.§@!=§.removeEventListener(Event.ENTER_FRAME,this.§^!<§);
         this.§each § = false;
         if(this.§6!l§)
         {
            this.§6!l§.stop();
            this.§6!l§ = null;
         }
         this.§@!=§.scaleX = this.§@!=§.scaleY = this.§]!9§;
      }
   }
}
