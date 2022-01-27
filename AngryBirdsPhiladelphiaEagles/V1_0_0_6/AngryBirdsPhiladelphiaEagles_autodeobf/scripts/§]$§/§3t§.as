package §]$§
{
   public class §3t§ extends §&4§ implements §0!F§
   {
       
      
      private var §%U§:Number;
      
      private var §[v§:Boolean;
      
      private var §=!E§:Boolean;
      
      private var §^"§:String;
      
      private var §6!-§:Object;
      
      private var §&!=§:Object;
      
      private var §6y§:Object;
      
      public function §3t§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§%U§ = param4 * 1000;
         this.§^"§ = param5;
         §%i§ = 0;
         this.§=!E§ = true;
         this.§[v§ = false;
         param2 = this.§9!8§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§9!8§(param3,param2);
            this.§1!N§(param2,param3);
         }
         else
         {
            this.§1!N§(param2,param1);
         }
         this.§6!-§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§[v§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§=!E§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§6!-§ = null;
         this.§6y§ = null;
         this.§&!=§ = null;
      }
      
      public function §#!9§() : void
      {
         §%i§ = -§0v§;
         this.§[v§ = false;
      }
      
      private function §9!8§(param1:Object, param2:Object) : Object
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
      
      private function §1!N§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§6y§ = _loc3_;
         this.§&!=§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§[v§)
         {
            this.§[v§ = true;
            §"!4§ = null;
            §%i§ = this.§%U§;
         }
      }
      
      public function §>!J§() : void
      {
         if(!this.§[v§)
         {
            this.§[v§ = true;
            §%i§ = this.§%U§;
            this.§6§();
         }
      }
      
      public function pause() : void
      {
         this.§=!E§ = true;
      }
      
      public function play() : void
      {
         this.§=!E§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§=!E§ || this.isCompleted)
         {
            return;
         }
         §%i§ += param1;
         if(§%i§ >= this.§%U§)
         {
            if(§-!0§)
            {
               §%i§ = this.§%U§;
               this.§[v§ = true;
            }
            else
            {
               §%i§ = 0;
            }
         }
         this.§6§();
         this.§1!3§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §6§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§?R§();
            for(attribute in this.§6y§)
            {
               this.§6!-§[attribute] = this.§&!=§[attribute] + this.§6y§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §[v§ = true;
            if(!§6!"§)
            {
               throw e;
            }
         }
      }
      
      private function §1!3§() : void
      {
         if(this.isCompleted && §"!4§ != null)
         {
            try
            {
               §"!4§();
               §"!4§ = null;
            }
            catch(e:Error)
            {
               §"!4§ = null;
               if(!§6!"§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §?R§() : Number
      {
         if(this.§%U§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§%i§);
         _loc1_ = Math.min(_loc1_,this.§%U§);
         var _loc2_:Number = _loc1_ / this.§%U§;
         switch(this.§^"§)
         {
            case §5^§.§5]§:
               break;
            case §5^§.§]!8§:
            case §5^§.§[!=§:
               if(this.§^"§ == §5^§.§[!=§)
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
            case §5^§.§,3§:
               return -_loc2_ * (_loc2_ - 2);
            case §5^§.§2!C§:
               return _loc2_ * _loc2_;
            case §5^§.§6I§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §5^§.§%E§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §5^§.§+!;§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §5^§.§throw§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
