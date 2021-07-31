package §`F§
{
   public class §9`§ extends §^F§ implements §4!A§
   {
       
      
      private var §0^§:Number;
      
      private var §-t§:Boolean;
      
      private var §6!§:Boolean;
      
      private var §4!E§:String;
      
      private var §6[§:Object;
      
      private var §7!>§:Object;
      
      private var §,§:Object;
      
      public function §9`§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§0^§ = param4 * 1000;
         this.§4!E§ = param5;
         §3j§ = 0;
         this.§6!§ = true;
         this.§-t§ = false;
         param2 = this.§<k§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§<k§(param3,param2);
            this.§#!A§(param2,param3);
         }
         else
         {
            this.§#!A§(param2,param1);
         }
         this.§6[§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§-t§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§6!§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§6[§ = null;
         this.§,§ = null;
         this.§7!>§ = null;
      }
      
      public function §-g§() : void
      {
         §3j§ = -§?-§;
         this.§-t§ = false;
      }
      
      private function §<k§(param1:Object, param2:Object) : Object
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
      
      private function §#!A§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§,§ = _loc3_;
         this.§7!>§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§-t§)
         {
            this.§-t§ = true;
            §]!8§ = null;
            §3j§ = this.§0^§;
         }
      }
      
      public function §0C§() : void
      {
         if(!this.§-t§)
         {
            this.§-t§ = true;
            §3j§ = this.§0^§;
            this.§9!@§();
         }
      }
      
      public function pause() : void
      {
         this.§6!§ = true;
      }
      
      public function play() : void
      {
         this.§6!§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§6!§ || this.isCompleted)
         {
            return;
         }
         §3j§ += param1;
         if(§3j§ >= this.§0^§)
         {
            if(§,!D§)
            {
               §3j§ = this.§0^§;
               this.§-t§ = true;
            }
            else
            {
               §3j§ = 0;
            }
         }
         this.§9!@§();
         this.§]!#§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §9!@§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§ f§();
            for(attribute in this.§,§)
            {
               this.§6[§[attribute] = this.§7!>§[attribute] + this.§,§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §-t§ = true;
            if(!§4v§)
            {
               throw e;
            }
         }
      }
      
      private function §]!#§() : void
      {
         if(this.isCompleted && §]!8§ != null)
         {
            try
            {
               §]!8§();
               §]!8§ = null;
            }
            catch(e:Error)
            {
               §]!8§ = null;
               if(!§4v§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function § f§() : Number
      {
         if(this.§0^§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§3j§);
         _loc1_ = Math.min(_loc1_,this.§0^§);
         var _loc2_:Number = _loc1_ / this.§0^§;
         switch(this.§4!E§)
         {
            case §,B§.§,Y§:
               break;
            case §,B§.§5!C§:
            case §,B§.§8!4§:
               if(this.§4!E§ == §,B§.§8!4§)
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
            case §,B§.§[!F§:
               return -_loc2_ * (_loc2_ - 2);
            case §,B§.§1R§:
               return _loc2_ * _loc2_;
            case §,B§.§@R§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §,B§.§"l§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §,B§.§'§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §,B§.§;C§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
