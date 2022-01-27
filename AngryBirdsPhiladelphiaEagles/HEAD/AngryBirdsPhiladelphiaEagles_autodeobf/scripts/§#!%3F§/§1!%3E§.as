package §#!?§
{
   public class §1!>§ extends §'o§ implements §&N§
   {
       
      
      private var §>-§:Number;
      
      private var §+C§:Boolean;
      
      private var §>N§:Boolean;
      
      private var §&!;§:String;
      
      private var §<[§:Object;
      
      private var §#C§:Object;
      
      private var §=!2§:Object;
      
      public function §1!>§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§>-§ = param4 * 1000;
         this.§&!;§ = param5;
         §'z§ = 0;
         this.§>N§ = true;
         this.§+C§ = false;
         param2 = this.§,$§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§,$§(param3,param2);
            this.§6u§(param2,param3);
         }
         else
         {
            this.§6u§(param2,param1);
         }
         this.§<[§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§+C§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§>N§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§<[§ = null;
         this.§=!2§ = null;
         this.§#C§ = null;
      }
      
      public function §-!B§() : void
      {
         §'z§ = -§+D§;
         this.§+C§ = false;
      }
      
      private function §,$§(param1:Object, param2:Object) : Object
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
      
      private function §6u§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§=!2§ = _loc3_;
         this.§#C§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§+C§)
         {
            this.§+C§ = true;
            §;"§ = null;
            §'z§ = this.§>-§;
         }
      }
      
      public function §=;§() : void
      {
         if(!this.§+C§)
         {
            this.§+C§ = true;
            §'z§ = this.§>-§;
            this.§6G§();
         }
      }
      
      public function pause() : void
      {
         this.§>N§ = true;
      }
      
      public function play() : void
      {
         this.§>N§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§>N§ || this.isCompleted)
         {
            return;
         }
         §'z§ += param1;
         if(§'z§ >= this.§>-§)
         {
            if(§7!7§)
            {
               §'z§ = this.§>-§;
               this.§+C§ = true;
            }
            else
            {
               §'z§ = 0;
            }
         }
         this.§6G§();
         this.§!9§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §6G§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§1!G§();
            for(attribute in this.§=!2§)
            {
               this.§<[§[attribute] = this.§#C§[attribute] + this.§=!2§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §+C§ = true;
            if(!§-+§)
            {
               throw e;
            }
         }
      }
      
      private function §!9§() : void
      {
         if(this.isCompleted && §;"§ != null)
         {
            try
            {
               §;"§();
               §;"§ = null;
            }
            catch(e:Error)
            {
               §;"§ = null;
               if(!§-+§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §1!G§() : Number
      {
         if(this.§>-§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§'z§);
         _loc1_ = Math.min(_loc1_,this.§>-§);
         var _loc2_:Number = _loc1_ / this.§>-§;
         switch(this.§&!;§)
         {
            case §49§.§%!2§:
               break;
            case §49§.§ get§:
            case §49§.§-X§:
               if(this.§&!;§ == §49§.§-X§)
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
            case §49§.§+<§:
               return -_loc2_ * (_loc2_ - 2);
            case §49§.§5y§:
               return _loc2_ * _loc2_;
            case §49§.§-!O§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §49§.§#J§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §49§.§3z§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §49§.§4a§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
