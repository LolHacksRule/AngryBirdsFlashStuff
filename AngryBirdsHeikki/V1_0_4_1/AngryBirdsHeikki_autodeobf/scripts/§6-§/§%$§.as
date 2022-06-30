package §6-§
{
   public class §%$§ extends §^6§ implements §0!6§
   {
       
      
      private var §0!B§:Number;
      
      private var §#t§:Boolean;
      
      private var §<!T§:Boolean;
      
      private var §1!S§:String;
      
      private var §2[§:Object;
      
      private var §^!9§:Object;
      
      private var §`!,§:Object;
      
      public function §%$§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§0!B§ = param4 * 1000;
         this.§1!S§ = param5;
         §-9§ = 0;
         this.§<!T§ = true;
         this.§#t§ = false;
         param2 = this.§5K§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§5K§(param3,param2);
            this.§,x§(param2,param3);
         }
         else
         {
            this.§,x§(param2,param1);
         }
         this.§2[§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§#t§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§<!T§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§2[§ = null;
         this.§`!,§ = null;
         this.§^!9§ = null;
      }
      
      public function §4!N§() : void
      {
         §-9§ = -§>+§;
         this.§#t§ = false;
      }
      
      private function §5K§(param1:Object, param2:Object) : Object
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
      
      private function §,x§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§`!,§ = _loc3_;
         this.§^!9§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§#t§)
         {
            this.§#t§ = true;
            §0s§ = null;
            §-9§ = this.§0!B§;
         }
      }
      
      public function §?w§() : void
      {
         if(!this.§#t§)
         {
            this.§#t§ = true;
            §-9§ = this.§0!B§;
            this.§"!S§();
         }
      }
      
      public function §9@§() : void
      {
         this.§<!T§ = true;
      }
      
      public function play() : void
      {
         this.§<!T§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§<!T§ || this.isCompleted)
         {
            return;
         }
         §-9§ += param1;
         if(§-9§ >= this.§0!B§)
         {
            if(§3Q§)
            {
               §-9§ = this.§0!B§;
               this.§#t§ = true;
            }
            else
            {
               §-9§ = 0;
            }
         }
         this.§"!S§();
         this.§6!,§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §"!S§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§,9§();
            for(attribute in this.§`!,§)
            {
               this.§2[§[attribute] = this.§^!9§[attribute] + this.§`!,§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §#t§ = true;
            if(!§@!#§)
            {
               throw e;
            }
         }
      }
      
      private function §6!,§() : void
      {
         if(this.isCompleted && §0s§ != null)
         {
            try
            {
               §0s§();
               §0s§ = null;
            }
            catch(e:Error)
            {
               §0s§ = null;
               if(!§@!#§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §,9§() : Number
      {
         if(this.§0!B§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§-9§);
         _loc1_ = Math.min(_loc1_,this.§0!B§);
         var _loc2_:Number = _loc1_ / this.§0!B§;
         switch(this.§1!S§)
         {
            case §"H§.§;!5§:
               break;
            case §"H§.§[!M§:
            case §"H§.§#!7§:
               if(this.§1!S§ == §"H§.§#!7§)
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
            case §"H§.§]!J§:
               return -_loc2_ * (_loc2_ - 2);
            case §"H§.§]!H§:
               return _loc2_ * _loc2_;
            case §"H§.§+]§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §"H§.§#R§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §"H§.§!u§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §"H§.§ Y§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
