package §?!%§
{
   public class §3T§ extends §,m§ implements §+a§
   {
       
      
      private var §@+§:Number;
      
      private var §]!E§:Boolean;
      
      private var §"y§:Boolean;
      
      private var §%!@§:String;
      
      private var override:Object;
      
      private var §9m§:Object;
      
      private var §"'§:Object;
      
      public function §3T§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§@+§ = param4 * 1000;
         this.§%!@§ = param5;
         §&!9§ = 0;
         this.§"y§ = true;
         this.§]!E§ = false;
         param2 = this.§4!H§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§4!H§(param3,param2);
            this.§0"§(param2,param3);
         }
         else
         {
            this.§0"§(param2,param1);
         }
         this.override = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§]!E§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.override = null;
         this.§"'§ = null;
         this.§9m§ = null;
      }
      
      public function §8h§() : void
      {
         §&!9§ = -§'s§;
         this.§]!E§ = false;
      }
      
      private function §4!H§(param1:Object, param2:Object) : Object
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
      
      private function §0"§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§"'§ = _loc3_;
         this.§9m§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§]!E§)
         {
            this.§]!E§ = true;
            §,!F§ = null;
            §&!9§ = this.§@+§;
         }
      }
      
      public function §each §() : void
      {
         if(!this.§]!E§)
         {
            this.§]!E§ = true;
            §&!9§ = this.§@+§;
            this.§-L§();
         }
      }
      
      public function pause() : void
      {
         this.§"y§ = true;
      }
      
      public function play() : void
      {
         this.§"y§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§"y§ || this.isCompleted)
         {
            return;
         }
         §&!9§ += param1;
         if(§&!9§ >= this.§@+§)
         {
            if(§"!B§)
            {
               §&!9§ = this.§@+§;
               this.§]!E§ = true;
            }
            else
            {
               §&!9§ = 0;
            }
         }
         this.§-L§();
         this.§!d§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §-L§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§49§();
            for(attribute in this.§"'§)
            {
               this.override[attribute] = this.§9m§[attribute] + this.§"'§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §]!E§ = true;
            if(!§^!G§)
            {
               throw e;
            }
         }
      }
      
      private function §!d§() : void
      {
         if(this.isCompleted && §,!F§ != null)
         {
            try
            {
               §,!F§();
               §,!F§ = null;
            }
            catch(e:Error)
            {
               §,!F§ = null;
               if(!§^!G§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §49§() : Number
      {
         if(this.§@+§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§&!9§);
         _loc1_ = Math.min(_loc1_,this.§@+§);
         var _loc2_:Number = _loc1_ / this.§@+§;
         switch(this.§%!@§)
         {
            case §?!7§.§]!&§:
               break;
            case §?!7§.§null §:
            case §?!7§.§8!@§:
               if(this.§%!@§ == §?!7§.§8!@§)
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
            case §?!7§.§,u§:
               return -_loc2_ * (_loc2_ - 2);
            case §?!7§.§3!B§:
               return _loc2_ * _loc2_;
            case §?!7§.§+i§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §?!7§.§6b§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §?!7§.§%P§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §?!7§.§7c§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
