package §+k§
{
   public class §@t§ extends §2N§ implements §%9§
   {
       
      
      private var §'!H§:Number;
      
      private var §9!]§:Boolean;
      
      private var §<S§:Boolean;
      
      private var §var §:String;
      
      private var §?Z§:Object;
      
      private var §"!I§:Object;
      
      private var §#![§:Object;
      
      public function §@t§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§'!H§ = param4 * 1000;
         this.§var § = param5;
         § H§ = 0;
         this.§<S§ = true;
         this.§9!]§ = false;
         param2 = this.§3k§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§3k§(param3,param2);
            this.§5d§(param2,param3);
         }
         else
         {
            this.§5d§(param2,param1);
         }
         this.§?Z§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§9!]§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§<S§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§?Z§ = null;
         this.§#![§ = null;
         this.§"!I§ = null;
      }
      
      public function §9n§() : void
      {
         § H§ = -§!!+§;
         this.§9!]§ = false;
      }
      
      private function §3k§(param1:Object, param2:Object) : Object
      {
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         for(_loc4_ in param1)
         {
            if(param2[_loc4_] != null && param1[_loc4_] is Number && param2[_loc4_] is Number)
            {
               _loc3_[_loc4_] = param1[_loc4_];
            }
         }
         return _loc3_;
      }
      
      private function §5d§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§#![§ = _loc3_;
         this.§"!I§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§9!]§)
         {
            this.§9!]§ = true;
            §9D§ = null;
            § H§ = this.§'!H§;
         }
      }
      
      public function §-e§() : void
      {
         if(!this.§9!]§)
         {
            this.§9!]§ = true;
            § H§ = this.§'!H§;
            this.§5c§();
         }
      }
      
      public function §-!>§() : void
      {
         this.§<S§ = true;
      }
      
      public function play() : void
      {
         this.§<S§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§<S§ || this.isCompleted)
         {
            return;
         }
         § H§ += param1;
         if(§ H§ >= this.§'!H§)
         {
            if(§3!<§)
            {
               § H§ = this.§'!H§;
               this.§9!]§ = true;
            }
            else
            {
               § H§ = 0;
            }
         }
         this.§5c§();
         this.§"5§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §5c§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§!!6§();
            for(attribute in this.§#![§)
            {
               this.§?Z§[attribute] = this.§"!I§[attribute] + this.§#![§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §9!]§ = true;
            if(!§^!Y§)
            {
               throw e;
            }
         }
      }
      
      private function §"5§() : void
      {
         if(this.isCompleted && §9D§ != null)
         {
            try
            {
               §9D§();
               §9D§ = null;
            }
            catch(e:Error)
            {
               §9D§ = null;
               if(!§^!Y§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §!!6§() : Number
      {
         if(this.§'!H§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§ H§);
         _loc1_ = Math.min(_loc1_,this.§'!H§);
         var _loc2_:Number = _loc1_ / this.§'!H§;
         switch(this.§var §)
         {
            case §+!&§.§!"§:
               break;
            case §+!&§.§`!V§:
            case §+!&§.§<!O§:
               if(this.§var § == §+!&§.§<!O§)
               {
                  _loc2_ = 1 - _loc2_;
               }
               if(_loc2_ < 1 / 2.75)
               {
                  return 7.5625 * _loc2_ * _loc2_;
               }
               if(_loc2_ < 2 / 2.75)
               {
                  return 7.5625 * (_loc2_ = _loc2_ - 1.5 / 2.75) * _loc2_ + 0.75;
               }
               if(_loc2_ < 2.5 / 2.75)
               {
                  return 7.5625 * (_loc2_ = _loc2_ - 2.25 / 2.75) * _loc2_ + 0.9375;
               }
               return 7.5625 * (_loc2_ = _loc2_ - 2.625 / 2.75) * _loc2_ + 0.984375;
               break;
            case §+!&§.§,"§:
               return -_loc2_ * (_loc2_ - 2);
            case §+!&§.§'C§:
               return _loc2_ * _loc2_;
            case §+!&§.§=!C§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §+!&§.§7!>§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §+!&§.§3!-§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §+!&§.§5N§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
