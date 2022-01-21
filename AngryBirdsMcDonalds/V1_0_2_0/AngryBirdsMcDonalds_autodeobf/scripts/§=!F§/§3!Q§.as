package §=!F§
{
   public class §3!Q§ extends §?Y§ implements §#!P§
   {
       
      
      private var §=+§:Number;
      
      private var §3N§:Boolean;
      
      private var §^l§:Boolean;
      
      private var §6!G§:String;
      
      private var §3!]§:Object;
      
      private var §=!n§:Object;
      
      private var §'!C§:Object;
      
      public function §3!Q§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§=+§ = param4 * 1000;
         this.§6!G§ = param5;
         §6g§ = 0;
         this.§^l§ = true;
         this.§3N§ = false;
         param2 = this.§1!8§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§1!8§(param3,param2);
            this.§9!B§(param2,param3);
         }
         else
         {
            this.§9!B§(param2,param1);
         }
         this.§3!]§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§3N§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§^l§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§3!]§ = null;
         this.§'!C§ = null;
         this.§=!n§ = null;
      }
      
      public function §7!U§() : void
      {
         §6g§ = -§!!W§;
         this.§3N§ = false;
      }
      
      private function §1!8§(param1:Object, param2:Object) : Object
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
      
      private function §9!B§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§'!C§ = _loc3_;
         this.§=!n§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§3N§)
         {
            this.§3N§ = true;
            §-!=§ = null;
            §6g§ = this.§=+§;
         }
      }
      
      public function §1Y§() : void
      {
         if(!this.§3N§)
         {
            this.§3N§ = true;
            §6g§ = this.§=+§;
            this.§&<§();
         }
      }
      
      public function §%!&§() : void
      {
         this.§^l§ = true;
      }
      
      public function play() : void
      {
         this.§^l§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§^l§ || this.isCompleted)
         {
            return;
         }
         §6g§ += param1;
         if(§6g§ >= this.§=+§)
         {
            if(§4x§)
            {
               §6g§ = this.§=+§;
               this.§3N§ = true;
            }
            else
            {
               §6g§ = 0;
            }
         }
         this.§&<§();
         this.§`,§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §&<§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§,a§();
            for(attribute in this.§'!C§)
            {
               this.§3!]§[attribute] = this.§=!n§[attribute] + this.§'!C§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §3N§ = true;
            if(!§7C§)
            {
               throw e;
            }
         }
      }
      
      private function §`,§() : void
      {
         if(this.isCompleted && §-!=§ != null)
         {
            try
            {
               §-!=§();
               §-!=§ = null;
            }
            catch(e:Error)
            {
               §-!=§ = null;
               if(!§7C§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §,a§() : Number
      {
         if(this.§=+§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§6g§);
         _loc1_ = Math.min(_loc1_,this.§=+§);
         var _loc2_:Number = _loc1_ / this.§=+§;
         switch(this.§6!G§)
         {
            case §"!2§.§8N§:
               break;
            case §"!2§.§6f§:
            case §"!2§.§[!%§:
               if(this.§6!G§ == §"!2§.§[!%§)
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
            case §"!2§.§"H§:
               return -_loc2_ * (_loc2_ - 2);
            case §"!2§.§ !<§:
               return _loc2_ * _loc2_;
            case §"!2§.§@!P§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §"!2§.§7!,§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §"!2§.§+!^§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §"!2§.§3d§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
