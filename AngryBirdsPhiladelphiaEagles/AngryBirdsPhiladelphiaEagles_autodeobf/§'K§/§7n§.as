package §'K§
{
   public class §7n§ extends §%!4§ implements §>#§
   {
       
      
      private var §+t§:Number;
      
      private var §@h§:Boolean;
      
      private var §4@§:Boolean;
      
      private var §[S§:String;
      
      private var §8S§:Object;
      
      private var §4!L§:Object;
      
      private var §1c§:Object;
      
      public function §7n§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§+t§ = param4 * 1000;
         this.§[S§ = param5;
         §-!9§ = 0;
         this.§4@§ = true;
         this.§@h§ = false;
         param2 = this.§0!K§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§0!K§(param3,param2);
            this.§ !3§(param2,param3);
         }
         else
         {
            this.§ !3§(param2,param1);
         }
         this.§8S§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§@h§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§4@§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§8S§ = null;
         this.§1c§ = null;
         this.§4!L§ = null;
      }
      
      public function §7!§() : void
      {
         §-!9§ = -§'!D§;
         this.§@h§ = false;
      }
      
      private function §0!K§(param1:Object, param2:Object) : Object
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
      
      private function § !3§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§1c§ = _loc3_;
         this.§4!L§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§@h§)
         {
            this.§@h§ = true;
            §1A§ = null;
            §-!9§ = this.§+t§;
         }
      }
      
      public function set() : void
      {
         if(!this.§@h§)
         {
            this.§@h§ = true;
            §-!9§ = this.§+t§;
            this.§`!E§();
         }
      }
      
      public function pause() : void
      {
         this.§4@§ = true;
      }
      
      public function play() : void
      {
         this.§4@§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§4@§ || this.isCompleted)
         {
            return;
         }
         §-!9§ += param1;
         if(§-!9§ >= this.§+t§)
         {
            if(§<!,§)
            {
               §-!9§ = this.§+t§;
               this.§@h§ = true;
            }
            else
            {
               §-!9§ = 0;
            }
         }
         this.§`!E§();
         this.§"r§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §`!E§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§^!8§();
            for(attribute in this.§1c§)
            {
               this.§8S§[attribute] = this.§4!L§[attribute] + this.§1c§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §@h§ = true;
            if(!§!y§)
            {
               throw e;
            }
         }
      }
      
      private function §"r§() : void
      {
         if(this.isCompleted && §1A§ != null)
         {
            try
            {
               §1A§();
               §1A§ = null;
            }
            catch(e:Error)
            {
               §1A§ = null;
               if(!§!y§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §^!8§() : Number
      {
         if(this.§+t§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§-!9§);
         _loc1_ = Math.min(_loc1_,this.§+t§);
         var _loc2_:Number = _loc1_ / this.§+t§;
         switch(this.§[S§)
         {
            case §3C§.§5t§:
               break;
            case §3C§.§ !1§:
            case §3C§.§'!7§:
               if(this.§[S§ == §3C§.§'!7§)
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
            case §3C§.§,k§:
               return -_loc2_ * (_loc2_ - 2);
            case §3C§.§!p§:
               return _loc2_ * _loc2_;
            case §3C§.§4Z§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §3C§.§9!M§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §3C§.§[!-§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §3C§.§%l§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
