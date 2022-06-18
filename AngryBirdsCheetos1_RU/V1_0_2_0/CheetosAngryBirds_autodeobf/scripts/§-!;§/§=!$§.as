package §-!;§
{
   public class §=!$§ extends §4!?§ implements §'a§
   {
       
      
      private var §,!D§:Number;
      
      private var §<f§:Boolean;
      
      private var §[7§:Boolean;
      
      private var §[G§:String;
      
      private var §8+§:Object;
      
      private var §0!P§:Object;
      
      private var §]w§:Object;
      
      public function §=!$§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§,!D§ = param4 * 1000;
         this.§[G§ = param5;
         §7!,§ = 0;
         this.§[7§ = true;
         this.§<f§ = false;
         param2 = this.§3!C§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§3!C§(param3,param2);
            this.§]>§(param2,param3);
         }
         else
         {
            this.§]>§(param2,param1);
         }
         this.§8+§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§<f§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§[7§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§8+§ = null;
         this.§]w§ = null;
         this.§0!P§ = null;
      }
      
      public function §`y§() : void
      {
         §7!,§ = -§0!]§;
         this.§<f§ = false;
      }
      
      private function §3!C§(param1:Object, param2:Object) : Object
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
      
      private function §]>§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§]w§ = _loc3_;
         this.§0!P§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§<f§)
         {
            this.§<f§ = true;
            §5^§ = null;
            §7!,§ = this.§,!D§;
         }
      }
      
      public function §<J§() : void
      {
         if(!this.§<f§)
         {
            this.§<f§ = true;
            §7!,§ = this.§,!D§;
            this.§2O§();
         }
      }
      
      public function §-'§() : void
      {
         this.§[7§ = true;
      }
      
      public function play() : void
      {
         this.§[7§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§[7§ || this.isCompleted)
         {
            return;
         }
         §7!,§ += param1;
         if(§7!,§ >= this.§,!D§)
         {
            if(§>t§)
            {
               §7!,§ = this.§,!D§;
               this.§<f§ = true;
            }
            else
            {
               §7!,§ = 0;
            }
         }
         this.§2O§();
         this.§9!,§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §2O§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§1!6§();
            for(attribute in this.§]w§)
            {
               this.§8+§[attribute] = this.§0!P§[attribute] + this.§]w§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §<f§ = true;
            if(!§<P§)
            {
               throw e;
            }
         }
      }
      
      private function §9!,§() : void
      {
         if(this.isCompleted && §5^§ != null)
         {
            try
            {
               §5^§();
               §5^§ = null;
            }
            catch(e:Error)
            {
               §5^§ = null;
               if(!§<P§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §1!6§() : Number
      {
         if(this.§,!D§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§7!,§);
         _loc1_ = Math.min(_loc1_,this.§,!D§);
         var _loc2_:Number = _loc1_ / this.§,!D§;
         switch(this.§[G§)
         {
            case §^!,§.§7d§:
               break;
            case §^!,§.§+C§:
            case §^!,§.§5r§:
               if(this.§[G§ == §^!,§.§5r§)
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
            case §^!,§.§@!^§:
               return -_loc2_ * (_loc2_ - 2);
            case §^!,§.§`!?§:
               return _loc2_ * _loc2_;
            case §^!,§.§-§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §^!,§.§-S§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §^!,§.§<!§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §^!,§.§4q§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
