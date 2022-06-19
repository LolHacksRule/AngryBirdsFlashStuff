package § ;§
{
   public class §3!Y§ extends §2^§ implements § X§
   {
       
      
      private var §>!%§:Number;
      
      private var §9!K§:Boolean;
      
      private var §<y§:Boolean;
      
      private var §+O§:String;
      
      private var §2L§:Object;
      
      private var §'!#§:Object;
      
      private var §1w§:Object;
      
      public function §3!Y§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§>!%§ = param4 * 1000;
         this.§+O§ = param5;
         §[R§ = 0;
         this.§<y§ = true;
         this.§9!K§ = false;
         param2 = this.§,!U§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§,!U§(param3,param2);
            this.§2R§(param2,param3);
         }
         else
         {
            this.§2R§(param2,param1);
         }
         this.§2L§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§9!K§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§2L§ = null;
         this.§1w§ = null;
         this.§'!#§ = null;
      }
      
      public function §=!R§() : void
      {
         §[R§ = -§+u§;
         this.§9!K§ = false;
      }
      
      private function §,!U§(param1:Object, param2:Object) : Object
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
      
      private function §2R§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§1w§ = _loc3_;
         this.§'!#§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§9!K§)
         {
            this.§9!K§ = true;
            §]8§ = null;
            §[R§ = this.§>!%§;
         }
      }
      
      public function §7!T§() : void
      {
         if(!this.§9!K§)
         {
            this.§9!K§ = true;
            §[R§ = this.§>!%§;
            this.§'!R§();
         }
      }
      
      public function §[]§() : void
      {
         this.§<y§ = true;
      }
      
      public function play() : void
      {
         this.§<y§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§<y§ || this.isCompleted)
         {
            return;
         }
         §[R§ += param1;
         if(§[R§ >= this.§>!%§)
         {
            if(§^!>§)
            {
               §[R§ = this.§>!%§;
               this.§9!K§ = true;
            }
            else
            {
               §[R§ = 0;
            }
         }
         this.§'!R§();
         this.§+!A§();
      }
      
      private function §'!R§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§#^§();
            for(attribute in this.§1w§)
            {
               this.§2L§[attribute] = this.§'!#§[attribute] + this.§1w§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §9!K§ = true;
            if(!§6,§)
            {
               throw e;
            }
         }
      }
      
      private function §+!A§() : void
      {
         if(this.isCompleted && §]8§ != null)
         {
            try
            {
               §]8§();
               §]8§ = null;
            }
            catch(e:Error)
            {
               §]8§ = null;
               if(!§6,§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §#^§() : Number
      {
         if(this.§>!%§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§[R§);
         var _loc2_:Number = _loc1_ / this.§>!%§;
         switch(this.§+O§)
         {
            case §4N§.§7k§:
               break;
            case §4N§.§@T§:
            case §4N§.§<x§:
               if(this.§+O§ == §4N§.§<x§)
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
            case §4N§.§;j§:
               return -_loc2_ * (_loc2_ - 2);
            case §4N§.§6!9§:
               return _loc2_ * _loc2_;
            case §4N§.§>x§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §4N§.§0!+§:
               return 1 - Math.sin(_loc2_ * (Math.PI / 2));
            case §4N§.§>!F§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §4N§.§=!!§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
