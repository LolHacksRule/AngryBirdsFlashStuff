package §+N§
{
   public class §,5§ extends §!!!§ implements §=!<§
   {
       
      
      private var §7Q§:Number;
      
      private var §5H§:Boolean;
      
      private var §2A§:Boolean;
      
      private var §=e§:String;
      
      private var §">§:Object;
      
      private var §%H§:Object;
      
      private var §@e§:Object;
      
      public function §,5§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§7Q§ = param4 * 1000;
         this.§=e§ = param5;
         §`+§ = 0;
         this.§2A§ = true;
         this.§5H§ = false;
         param2 = this.§5!-§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§5!-§(param3,param2);
            this.§<!>§(param2,param3);
         }
         else
         {
            this.§<!>§(param2,param1);
         }
         this.§">§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§5H§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§">§ = null;
         this.§@e§ = null;
         this.§%H§ = null;
      }
      
      public function §9G§() : void
      {
         §`+§ = -§1!<§;
         this.§5H§ = false;
      }
      
      private function §5!-§(param1:Object, param2:Object) : Object
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
      
      private function §<!>§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§@e§ = _loc3_;
         this.§%H§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§5H§)
         {
            this.§5H§ = true;
            §6;§ = null;
            §`+§ = this.§7Q§;
         }
      }
      
      public function §2d§() : void
      {
         if(!this.§5H§)
         {
            this.§5H§ = true;
            §`+§ = this.§7Q§;
            this.§=w§();
         }
      }
      
      public function pause() : void
      {
         this.§2A§ = true;
      }
      
      public function play() : void
      {
         this.§2A§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§2A§ || this.isCompleted)
         {
            return;
         }
         §`+§ += param1;
         if(§`+§ >= this.§7Q§)
         {
            if(§'!1§)
            {
               §`+§ = this.§7Q§;
               this.§5H§ = true;
            }
            else
            {
               §`+§ = 0;
            }
         }
         this.§=w§();
         this.§7d§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §=w§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§>!-§();
            for(attribute in this.§@e§)
            {
               this.§">§[attribute] = this.§%H§[attribute] + this.§@e§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §5H§ = true;
            if(!§]C§)
            {
               throw e;
            }
         }
      }
      
      private function §7d§() : void
      {
         if(this.isCompleted && §6;§ != null)
         {
            try
            {
               §6;§();
               §6;§ = null;
            }
            catch(e:Error)
            {
               §6;§ = null;
               if(!§]C§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §>!-§() : Number
      {
         if(this.§7Q§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§`+§);
         _loc1_ = Math.min(_loc1_,this.§7Q§);
         var _loc2_:Number = _loc1_ / this.§7Q§;
         switch(this.§=e§)
         {
            case §!j§.§9X§:
               break;
            case §!j§.§5!?§:
            case §!j§.§&q§:
               if(this.§=e§ == §!j§.§&q§)
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
            case §!j§.§?!F§:
               return -_loc2_ * (_loc2_ - 2);
            case §!j§.§<z§:
               return _loc2_ * _loc2_;
            case §!j§.§;L§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §!j§.§@J§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §!j§.§9!0§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §!j§.§5_§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
