package §9!n§
{
   public class §6L§ extends §0e§ implements §;_§
   {
       
      
      private var §-D§:Number;
      
      private var §]!]§:Boolean;
      
      private var §`!;§:Boolean;
      
      private var § !@§:String;
      
      private var §8!$§:Object;
      
      private var §;!5§:Object;
      
      private var §2!F§:Object;
      
      public function §6L§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§-D§ = param4 * 1000;
         this.§ !@§ = param5;
         §8!N§ = 0;
         this.§`!;§ = true;
         this.§]!]§ = false;
         param2 = this.§4!M§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§4!M§(param3,param2);
            this.§>!h§(param2,param3);
         }
         else
         {
            this.§>!h§(param2,param1);
         }
         this.§8!$§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§]!]§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§8!$§ = null;
         this.§2!F§ = null;
         this.§;!5§ = null;
      }
      
      public function §^_§() : void
      {
         §8!N§ = -§ V§;
         this.§]!]§ = false;
      }
      
      private function §4!M§(param1:Object, param2:Object) : Object
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
      
      private function §>!h§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§2!F§ = _loc3_;
         this.§;!5§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§]!]§)
         {
            this.§]!]§ = true;
            §2S§ = null;
            §8!N§ = this.§-D§;
         }
      }
      
      public function §'!=§() : void
      {
         if(!this.§]!]§)
         {
            this.§]!]§ = true;
            §8!N§ = this.§-D§;
            this.§3!;§();
         }
      }
      
      public function pause() : void
      {
         this.§`!;§ = true;
      }
      
      public function play() : void
      {
         this.§`!;§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§`!;§ || this.isCompleted)
         {
            return;
         }
         §8!N§ += param1;
         if(§8!N§ >= this.§-D§)
         {
            if(§,!]§)
            {
               §8!N§ = this.§-D§;
               this.§]!]§ = true;
            }
            else
            {
               §8!N§ = 0;
            }
         }
         this.§3!;§();
         this.§5!4§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3!;§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§-!r§();
            for(attribute in this.§2!F§)
            {
               this.§8!$§[attribute] = this.§;!5§[attribute] + this.§2!F§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §]!]§ = true;
            if(!§4!V§)
            {
               throw e;
            }
         }
      }
      
      private function §5!4§() : void
      {
         if(this.isCompleted && §2S§ != null)
         {
            try
            {
               §2S§();
               §2S§ = null;
            }
            catch(e:Error)
            {
               §2S§ = null;
               if(!§4!V§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §-!r§() : Number
      {
         if(this.§-D§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§8!N§);
         _loc1_ = Math.min(_loc1_,this.§-D§);
         var _loc2_:Number = _loc1_ / this.§-D§;
         switch(this.§ !@§)
         {
            case §@!T§.§4!m§:
               break;
            case §@!T§.§?c§:
            case §@!T§.§1H§:
               if(this.§ !@§ == §@!T§.§1H§)
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
            case §@!T§.§2,§:
               return -_loc2_ * (_loc2_ - 2);
            case §@!T§.§2W§:
               return _loc2_ * _loc2_;
            case §@!T§.§%[§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §@!T§.§,!!§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §@!T§.§@d§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §@!T§.§41§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
