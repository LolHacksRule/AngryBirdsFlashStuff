package §+!c§
{
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §&"[§ extends EventDispatcher
   {
       
      
      private var §##K§:MovieClip;
      
      private var §'!j§:MovieClip;
      
      private var §'!2§:Boolean;
      
      private var §0q§:Boolean = false;
      
      private var §,!D§:int;
      
      private var §4#<§:int;
      
      private var §8#-§:int;
      
      private var §"!v§:Number = NaN;
      
      private var §5o§:Boolean;
      
      private var §;"L§:int;
      
      private var §1;§:Object;
      
      private var §&!;§:Boolean = false;
      
      private var §,c§:Number;
      
      private var §]k§:§[#R§;
      
      private var §@!#§:int;
      
      public function §&"[§(param1:MovieClip, param2:MovieClip, param3:int)
      {
         super();
         this.§##K§ = param1;
         this.§'!j§ = param2;
         this.§'!j§.txtScore.mouseEnabled = false;
         this.§;"L§ = param3;
         this.§##K§.mouseChildren = false;
         this.§##K§.txtLevelNumber.text = param3.toString();
         this.§##K§.z = 0;
         this.§,c§ = this.§##K§.scaleX;
         this.init();
         this.isLocked = true;
         this.canBuyToUnlock = false;
         this.§##K§.addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         this.§##K§.addEventListener(MouseEvent.ROLL_OUT,this.onOut);
         this.§##K§.addEventListener(MouseEvent.CLICK,this.§^!R§);
      }
      
      private function init() : void
      {
         this.§##K§.stop();
         this.§##K§.levelStars.stop();
         this.§##K§.unlockTimer.stop();
      }
      
      private function onOver(param1:MouseEvent) : void
      {
         if(!this.§##K§.buttonMode)
         {
            return;
         }
         if(this.§]k§)
         {
            this.§]k§.stop();
         }
         this.§]k§ = §-#C§.§%!E§.§^!H§(this.§##K§,{
            "scaleX":this.§,c§ + 0.1,
            "scaleY":this.§,c§ + 0.1
         },null,0.2,§9!Z§.easeOut);
         this.§]k§.play();
      }
      
      private function onOut(param1:MouseEvent) : void
      {
         if(!this.§##K§.buttonMode)
         {
            return;
         }
         if(this.§]k§)
         {
            this.§]k§.stop();
         }
         this.§]k§ = §-#C§.§%!E§.§^!H§(this.§##K§,{
            "scaleX":this.§,c§,
            "scaleY":this.§,c§
         },null,0.2,§9!Z§.easeOut);
         this.§]k§.play();
      }
      
      private function §^!R§(param1:MouseEvent) : void
      {
         dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      public function get §@"T§() : int
      {
         return this.§;"L§;
      }
      
      public function get §[!@§() : Object
      {
         return this.§1;§;
      }
      
      public function set §[!@§(param1:Object) : void
      {
         this.§1;§ = param1;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§'!2§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§'!2§ = param1;
         this.§'!j§.visible = !this.isLocked;
         this.§##K§.txtLevelNumber.visible = !this.§'!2§;
         this.§"r§();
      }
      
      public function get §?!N§() : int
      {
         return this.§@!#§;
      }
      
      public function set §?!N§(param1:int) : void
      {
         this.§@!#§ = param1;
         this.§##K§.txtUnlockAmount.text = this.§@!#§;
      }
      
      public function get canBuyToUnlock() : Boolean
      {
         return this.§5o§;
      }
      
      public function set canBuyToUnlock(param1:Boolean) : void
      {
         this.§5o§ = param1;
         this.§##K§.txtUnlockAmount.visible = this.§5o§;
         this.§"r§();
      }
      
      private function §"r§() : void
      {
         if(this.§'!2§)
         {
            if(this.§0q§)
            {
               this.§##K§.gotoAndStop("unlocking");
            }
            else if(this.§5o§)
            {
               this.§##K§.gotoAndStop("buy");
            }
            else
            {
               this.§##K§.gotoAndStop("locked");
            }
         }
         else
         {
            this.§##K§.gotoAndStop("unlocked");
         }
         this.§##K§.buttonMode = !this.§'!2§ || this.§5o§ && !this.§0q§;
      }
      
      public function get §'#I§() : Boolean
      {
         return this.§0q§;
      }
      
      public function set §'#I§(param1:Boolean) : void
      {
         this.§0q§ = param1;
         this.§"r§();
      }
      
      public function get score() : int
      {
         return this.§,!D§;
      }
      
      public function set score(param1:int) : void
      {
         this.§,!D§ = param1;
         this.§'!j§.txtScore.text = this.§,!D§.toString();
      }
      
      public function get §[!F§() : int
      {
         return this.§4#<§;
      }
      
      public function set §[!F§(param1:int) : void
      {
         this.§4#<§ = param1;
         this.§##K§.levelStars.gotoAndStop(this.§4#<§.toString() + "_stars");
      }
      
      public function get §9!<§() : int
      {
         return this.§8#-§;
      }
      
      public function set §9!<§(param1:int) : void
      {
         var _loc2_:String = null;
         this.§8#-§ = param1;
         if(this.§8#-§ > 0 && this.§8#-§ <= 3)
         {
            _loc2_ = ["Gold","Silver","Bronze"][this.§8#-§ - 1];
         }
         else
         {
            _loc2_ = "noCrown";
         }
         this.§##K§.crown.gotoAndStop(_loc2_);
      }
      
      public function get §,Y§() : Number
      {
         return !!isNaN(this.§"!v§) ? Number(NaN) : Number(Math.floor((this.§"!v§ - getTimer()) / 1000));
      }
      
      public function §1Y§(param1:Number) : void
      {
         if(param1 && param1 > getTimer())
         {
            this.§"!v§ = param1;
            this.isLocked = true;
            if(!this.§&!;§)
            {
               this.§##K§.addEventListener(Event.ENTER_FRAME,this.§-!u§);
               this.§&!;§ = true;
            }
         }
         else
         {
            this.isLocked = false;
         }
      }
      
      private function §-!u§(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Number = this.§,Y§;
         if(_loc2_ > 0)
         {
            _loc3_ = _loc2_ / (60 * 60 * 24);
            if(_loc3_ > 0)
            {
               if(_loc3_ > 4)
               {
                  _loc3_ = 4;
               }
               this.§##K§.unlockTimer.gotoAndStop("days_" + _loc3_);
               this.§##K§.unlockTimer.txtTimer.visible = false;
            }
            else
            {
               this.§##K§.unlockTimer.gotoAndStop("hours");
               this.§##K§.unlockTimer.txtTimer.visible = true;
               if(_loc2_ < 60)
               {
                  this.§##K§.unlockTimer.txtTimer.text = _loc2_.toString() + " sec";
               }
               else
               {
                  _loc2_ += 60;
                  _loc4_ = _loc2_ / (60 * 60);
                  _loc5_ = (_loc2_ - _loc4_ * (60 * 60)) / 60;
                  this.§##K§.unlockTimer.txtTimer.text = (_loc4_ < 10 ? "0" : "") + _loc4_ + ":" + (_loc5_ < 10 ? "0" : "") + _loc5_;
               }
            }
         }
         else
         {
            this.isLocked = false;
            this.§##K§.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
            this.§&!;§ = false;
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public function §6!@§() : void
      {
         this.§##K§.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
         this.§&!;§ = false;
         if(this.§]k§)
         {
            this.§]k§.stop();
            this.§]k§ = null;
         }
         this.§##K§.scaleX = this.§##K§.scaleY = this.§,c§;
      }
   }
}
