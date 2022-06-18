package §;=§
{
   public class §#!D§ extends §"A§ implements §-!5§
   {
       
      
      private var §>!G§:Number;
      
      private var §0x§:Boolean;
      
      private var § %§:Boolean;
      
      private var § 5§:String;
      
      private var § N§:Object;
      
      private var §+!4§:Object;
      
      private var §with§:Object;
      
      public function §#!D§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§>!G§ = param4 * 1000;
         this.§ 5§ = param5;
         §;?§ = 0;
         this.§ %§ = true;
         this.§0x§ = false;
         param2 = this.§;!2§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§;!2§(param3,param2);
            this.§@,§(param2,param3);
         }
         else
         {
            this.§@,§(param2,param1);
         }
         this.§ N§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§0x§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§ %§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§ N§ = null;
         this.§with§ = null;
         this.§+!4§ = null;
      }
      
      public function §^3§() : void
      {
         §;?§ = -§`]§;
         this.§0x§ = false;
      }
      
      private function §;!2§(param1:Object, param2:Object) : Object
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
      
      private function §@,§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§with§ = _loc3_;
         this.§+!4§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§0x§)
         {
            this.§0x§ = true;
            §@P§ = null;
            §;?§ = this.§>!G§;
         }
      }
      
      public function §<!8§() : void
      {
         if(!this.§0x§)
         {
            this.§0x§ = true;
            §;?§ = this.§>!G§;
            this.§"h§();
         }
      }
      
      public function pause() : void
      {
         this.§ %§ = true;
      }
      
      public function play() : void
      {
         this.§ %§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§ %§ || this.isCompleted)
         {
            return;
         }
         §;?§ += param1;
         if(§;?§ >= this.§>!G§)
         {
            if(§=! §)
            {
               §;?§ = this.§>!G§;
               this.§0x§ = true;
            }
            else
            {
               §;?§ = 0;
            }
         }
         this.§"h§();
         this.§8!A§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §"h§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§[!0§();
            for(attribute in this.§with§)
            {
               this.§ N§[attribute] = this.§+!4§[attribute] + this.§with§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §0x§ = true;
            if(!§2n§)
            {
               throw e;
            }
         }
      }
      
      private function §8!A§() : void
      {
         if(this.isCompleted && §@P§ != null)
         {
            try
            {
               §@P§();
               §@P§ = null;
            }
            catch(e:Error)
            {
               §@P§ = null;
               if(!§2n§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §[!0§() : Number
      {
         if(this.§>!G§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§;?§);
         _loc1_ = Math.min(_loc1_,this.§>!G§);
         var _loc2_:Number = _loc1_ / this.§>!G§;
         switch(this.§ 5§)
         {
            case §>!2§.§;'§:
               break;
            case §>!2§.§5!=§:
            case §>!2§.§&b§:
               if(this.§ 5§ == §>!2§.§&b§)
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
            case §>!2§.§ !%§:
               return -_loc2_ * (_loc2_ - 2);
            case §>!2§.§7!B§:
               return _loc2_ * _loc2_;
            case §>!2§.§-S§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §>!2§.§+!=§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §>!2§.§'t§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §>!2§.§<T§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
