package §7""§
{
   import §#"_§.§<!Q§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §>!5§ extends EventDispatcher
   {
       
      
      private var §4L§:MovieClip;
      
      private var §!U§:MovieClip;
      
      private var §`0§:Boolean;
      
      private var §-Q§:Boolean = false;
      
      private var §1"g§:int;
      
      private var §&b§:int;
      
      private var §1[§:int;
      
      private var §?"%§:Number = NaN;
      
      private var §5E§:Boolean;
      
      private var §6"k§:int;
      
      private var §+3§:Object;
      
      private var §6!r§:Boolean = false;
      
      private var §;E§:Number;
      
      private var §]u§:§4!Q§;
      
      private var § !5§:int;
      
      public function §>!5§(param1:MovieClip, param2:MovieClip, param3:int)
      {
         super();
         this.§4L§ = param1;
         this.§!U§ = param2;
         this.§!U§.txtScore.mouseEnabled = false;
         this.§6"k§ = param3;
         this.§4L§.mouseChildren = false;
         this.§4L§.txtLevelNumber.text = param3.toString();
         this.§4L§.z = 0;
         this.§;E§ = this.§4L§.scaleX;
         this.init();
         this.isLocked = true;
         this.canBuyToUnlock = false;
         this.§4L§.addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         this.§4L§.addEventListener(MouseEvent.ROLL_OUT,this.onOut);
         this.§4L§.addEventListener(MouseEvent.CLICK,this.§#";§);
      }
      
      private function init() : void
      {
         this.§4L§.stop();
         this.§4L§.levelStars.stop();
         this.§4L§.unlockTimer.stop();
      }
      
      private function onOver(param1:MouseEvent) : void
      {
         if(!this.§4L§.buttonMode)
         {
            return;
         }
         if(this.§]u§)
         {
            this.§]u§.stop();
         }
         this.§]u§ = §41§.§-G§.§&#'§(this.§4L§,{
            "scaleX":this.§;E§ + 0.1,
            "scaleY":this.§;E§ + 0.1
         },null,0.2,§<!Q§.easeOut);
         this.§]u§.play();
      }
      
      private function onOut(param1:MouseEvent) : void
      {
         if(!this.§4L§.buttonMode)
         {
            return;
         }
         if(this.§]u§)
         {
            this.§]u§.stop();
         }
         this.§]u§ = §41§.§-G§.§&#'§(this.§4L§,{
            "scaleX":this.§;E§,
            "scaleY":this.§;E§
         },null,0.2,§<!Q§.easeOut);
         this.§]u§.play();
      }
      
      private function §#";§(param1:MouseEvent) : void
      {
         dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      public function get §^a§() : int
      {
         return this.§6"k§;
      }
      
      public function get §^=§() : Object
      {
         return this.§+3§;
      }
      
      public function set §^=§(param1:Object) : void
      {
         this.§+3§ = param1;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§`0§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§`0§ = param1;
         this.§!U§.visible = !this.isLocked;
         this.§4L§.txtLevelNumber.visible = !this.§`0§;
         this.§ case§();
      }
      
      public function get §,"=§() : int
      {
         return this.§ !5§;
      }
      
      public function set §,"=§(param1:int) : void
      {
         this.§ !5§ = param1;
         this.§4L§.txtUnlockAmount.text = this.§ !5§;
      }
      
      public function get canBuyToUnlock() : Boolean
      {
         return this.§5E§;
      }
      
      public function set canBuyToUnlock(param1:Boolean) : void
      {
         this.§5E§ = param1;
         this.§4L§.txtUnlockAmount.visible = this.§5E§;
         this.§ case§();
      }
      
      private function § case§() : void
      {
         if(this.§`0§)
         {
            if(this.§-Q§)
            {
               this.§4L§.gotoAndStop("unlocking");
            }
            else if(this.§5E§)
            {
               this.§4L§.gotoAndStop("buy");
            }
            else
            {
               this.§4L§.gotoAndStop("locked");
            }
         }
         else
         {
            this.§4L§.gotoAndStop("unlocked");
         }
         this.§4L§.buttonMode = !this.§`0§ || this.§5E§ && !this.§-Q§;
      }
      
      public function get §@!l§() : Boolean
      {
         return this.§-Q§;
      }
      
      public function set §@!l§(param1:Boolean) : void
      {
         this.§-Q§ = param1;
         this.§ case§();
      }
      
      public function get score() : int
      {
         return this.§1"g§;
      }
      
      public function set score(param1:int) : void
      {
         this.§1"g§ = param1;
         this.§!U§.txtScore.text = this.§1"g§.toString();
      }
      
      public function get §^"2§() : int
      {
         return this.§&b§;
      }
      
      public function set §^"2§(param1:int) : void
      {
         this.§&b§ = param1;
         this.§4L§.levelStars.gotoAndStop(this.§&b§.toString() + "_stars");
      }
      
      public function get §["Q§() : int
      {
         return this.§1[§;
      }
      
      public function set §["Q§(param1:int) : void
      {
         var _loc2_:String = null;
         this.§1[§ = param1;
         if(this.§1[§ > 0 && this.§1[§ <= 3)
         {
            _loc2_ = ["Gold","Silver","Bronze"][this.§1[§ - 1];
         }
         else
         {
            _loc2_ = "noCrown";
         }
         this.§4L§.crown.gotoAndStop(_loc2_);
      }
      
      public function get §8@§() : Number
      {
         return !!isNaN(this.§?"%§) ? Number(NaN) : Number(Math.floor((this.§?"%§ - getTimer()) / 1000));
      }
      
      public function §-">§(param1:Number) : void
      {
         if(param1 && param1 > getTimer())
         {
            this.§?"%§ = param1;
            this.isLocked = true;
            if(!this.§6!r§)
            {
               this.§4L§.addEventListener(Event.ENTER_FRAME,this.§`_§);
               this.§6!r§ = true;
            }
         }
         else
         {
            this.isLocked = false;
         }
      }
      
      private function §`_§(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Number = this.§8@§;
         if(_loc2_ > 0)
         {
            _loc3_ = _loc2_ / (60 * 60 * 24);
            if(_loc3_ > 0)
            {
               if(_loc3_ > 4)
               {
                  _loc3_ = 4;
               }
               this.§4L§.unlockTimer.gotoAndStop("days_" + _loc3_);
               this.§4L§.unlockTimer.txtTimer.visible = false;
            }
            else
            {
               this.§4L§.unlockTimer.gotoAndStop("hours");
               this.§4L§.unlockTimer.txtTimer.visible = true;
               if(_loc2_ < 60)
               {
                  this.§4L§.unlockTimer.txtTimer.text = _loc2_.toString() + " sec";
               }
               else
               {
                  _loc2_ += 60;
                  _loc4_ = _loc2_ / (60 * 60);
                  _loc5_ = (_loc2_ - _loc4_ * (60 * 60)) / 60;
                  this.§4L§.unlockTimer.txtTimer.text = (_loc4_ < 10 ? "0" : "") + _loc4_ + ":" + (_loc5_ < 10 ? "0" : "") + _loc5_;
               }
            }
         }
         else
         {
            this.isLocked = false;
            this.§4L§.removeEventListener(Event.ENTER_FRAME,this.§`_§);
            this.§6!r§ = false;
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public function §8!x§() : void
      {
         this.§4L§.removeEventListener(Event.ENTER_FRAME,this.§`_§);
         this.§6!r§ = false;
         if(this.§]u§)
         {
            this.§]u§.stop();
            this.§]u§ = null;
         }
         this.§4L§.scaleX = this.§4L§.scaleY = this.§;E§;
      }
   }
}
