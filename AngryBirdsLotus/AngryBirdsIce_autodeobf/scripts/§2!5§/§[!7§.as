package §2!5§
{
   public class §[!7§ extends §'n§ implements §=!$§
   {
       
      
      private var §-!8§:Number;
      
      private var §=u§:Boolean;
      
      private var §>2§:Boolean;
      
      private var §9A§:String;
      
      private var §3!2§:Object;
      
      private var §!a§:Object;
      
      private var §"J§:Object;
      
      public function §[!7§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§-!8§ = param4 * 1000;
         this.§9A§ = param5;
         § !A§ = 0;
         this.§>2§ = true;
         this.§=u§ = false;
         param2 = this.§9!@§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§9!@§(param3,param2);
            this.§do §(param2,param3);
         }
         else
         {
            this.§do §(param2,param1);
         }
         this.§3!2§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§=u§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§3!2§ = null;
         this.§"J§ = null;
         this.§!a§ = null;
      }
      
      public function §0N§() : void
      {
         § !A§ = -§<!C§;
         this.§=u§ = false;
      }
      
      private function §9!@§(param1:Object, param2:Object) : Object
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
      
      private function §do §(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§"J§ = _loc3_;
         this.§!a§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§=u§)
         {
            this.§=u§ = true;
            §@F§ = null;
            § !A§ = this.§-!8§;
         }
      }
      
      public function §5h§() : void
      {
         if(!this.§=u§)
         {
            this.§=u§ = true;
            § !A§ = this.§-!8§;
            this.§!A§();
         }
      }
      
      public function pause() : void
      {
         this.§>2§ = true;
      }
      
      public function play() : void
      {
         this.§>2§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§>2§ || this.isCompleted)
         {
            return;
         }
         § !A§ += param1;
         if(§ !A§ >= this.§-!8§)
         {
            if(§@_§)
            {
               § !A§ = this.§-!8§;
               this.§=u§ = true;
            }
            else
            {
               § !A§ = 0;
            }
         }
         this.§!A§();
         this.§#8§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §!A§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§"b§();
            for(attribute in this.§"J§)
            {
               this.§3!2§[attribute] = this.§!a§[attribute] + this.§"J§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §=u§ = true;
            if(!§+?§)
            {
               throw e;
            }
         }
      }
      
      private function §#8§() : void
      {
         if(this.isCompleted && §@F§ != null)
         {
            try
            {
               §@F§();
               §@F§ = null;
            }
            catch(e:Error)
            {
               §@F§ = null;
               if(!§+?§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §"b§() : Number
      {
         if(this.§-!8§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§ !A§);
         _loc1_ = Math.min(_loc1_,this.§-!8§);
         var _loc2_:Number = _loc1_ / this.§-!8§;
         switch(this.§9A§)
         {
            case §";§.§#!;§:
               break;
            case §";§.§`!>§:
            case §";§.§2l§:
               if(this.§9A§ == §";§.§2l§)
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
            case §";§.§&w§:
               return -_loc2_ * (_loc2_ - 2);
            case §";§.§43§:
               return _loc2_ * _loc2_;
            case §";§.§8R§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §";§.§%[§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §";§.§5!,§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §";§.§5K§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
