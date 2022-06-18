package §6[§
{
   public class §]#§ extends §&=§ implements §5!1§
   {
       
      
      private var §%#§:Number;
      
      private var §7W§:Boolean;
      
      private var § !9§:Boolean;
      
      private var §+2§:String;
      
      private var §&P§:Object;
      
      private var §9x§:Object;
      
      private var §?q§:Object;
      
      public function §]#§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§%#§ = param4 * 1000;
         this.§+2§ = param5;
         §8]§ = 0;
         this.§ !9§ = true;
         this.§7W§ = false;
         param2 = this.§>!<§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§>!<§(param3,param2);
            this.§7!#§(param2,param3);
         }
         else
         {
            this.§7!#§(param2,param1);
         }
         this.§&P§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§7W§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§ !9§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§&P§ = null;
         this.§?q§ = null;
         this.§9x§ = null;
      }
      
      public function §[y§() : void
      {
         §8]§ = -§?,§;
         this.§7W§ = false;
      }
      
      private function §>!<§(param1:Object, param2:Object) : Object
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
      
      private function §7!#§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§?q§ = _loc3_;
         this.§9x§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§7W§)
         {
            this.§7W§ = true;
            §[@§ = null;
            §8]§ = this.§%#§;
         }
      }
      
      public function §6z§() : void
      {
         if(!this.§7W§)
         {
            this.§7W§ = true;
            §8]§ = this.§%#§;
            this.§#Z§();
         }
      }
      
      public function pause() : void
      {
         this.§ !9§ = true;
      }
      
      public function play() : void
      {
         this.§ !9§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§ !9§ || this.isCompleted)
         {
            return;
         }
         §8]§ += param1;
         if(§8]§ >= this.§%#§)
         {
            if(§ a§)
            {
               §8]§ = this.§%#§;
               this.§7W§ = true;
            }
            else
            {
               §8]§ = 0;
            }
         }
         this.§#Z§();
         this.§;_§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §#Z§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§!+§();
            for(attribute in this.§?q§)
            {
               this.§&P§[attribute] = this.§9x§[attribute] + this.§?q§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §7W§ = true;
            if(!§<! §)
            {
               throw e;
            }
         }
      }
      
      private function §;_§() : void
      {
         if(this.isCompleted && §[@§ != null)
         {
            try
            {
               §[@§();
               §[@§ = null;
            }
            catch(e:Error)
            {
               §[@§ = null;
               if(!§<! §)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §!+§() : Number
      {
         if(this.§%#§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§8]§);
         _loc1_ = Math.min(_loc1_,this.§%#§);
         var _loc2_:Number = _loc1_ / this.§%#§;
         switch(this.§+2§)
         {
            case §;q§.§throw§:
               break;
            case §;q§.§3I§:
            case §;q§.§]! §:
               if(this.§+2§ == §;q§.§]! §)
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
            case §;q§.§-'§:
               return -_loc2_ * (_loc2_ - 2);
            case §;q§.§5Z§:
               return _loc2_ * _loc2_;
            case §;q§.§6! §:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §;q§.§8S§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §;q§.§<!0§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §;q§.§]`§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
