package §2!H§
{
   public class §^'§ extends §!!1§ implements §6X§
   {
       
      
      private var §09§:Number;
      
      private var § +§:Boolean;
      
      private var §1i§:Boolean;
      
      private var §7!$§:String;
      
      private var §#j§:Object;
      
      private var §#!,§:Object;
      
      private var §0!V§:Object;
      
      public function §^'§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§09§ = param4 * 1000;
         this.§7!$§ = param5;
         §[f§ = 0;
         this.§1i§ = true;
         this.§ +§ = false;
         param2 = this.§"!v§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§"!v§(param3,param2);
            this.§"k§(param2,param3);
         }
         else
         {
            this.§"k§(param2,param1);
         }
         this.§#j§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§ +§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§1i§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§#j§ = null;
         this.§0!V§ = null;
         this.§#!,§ = null;
      }
      
      public function §"p§() : void
      {
         §[f§ = -§@z§;
         this.§ +§ = false;
      }
      
      private function §"!v§(param1:Object, param2:Object) : Object
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
      
      private function §"k§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§0!V§ = _loc3_;
         this.§#!,§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§ +§)
         {
            this.§ +§ = true;
            §3!U§ = null;
            §[f§ = this.§09§;
         }
      }
      
      public function §9!l§() : void
      {
         if(!this.§ +§)
         {
            this.§ +§ = true;
            §[f§ = this.§09§;
            this.§9!'§();
         }
      }
      
      public function pause() : void
      {
         this.§1i§ = true;
      }
      
      public function play() : void
      {
         this.§1i§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§1i§ || this.isCompleted)
         {
            return;
         }
         §[f§ += param1;
         if(§[f§ >= this.§09§)
         {
            if(§5!J§)
            {
               §[f§ = this.§09§;
               this.§ +§ = true;
            }
            else
            {
               §[f§ = 0;
            }
         }
         this.§9!'§();
         this.§#!^§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §9!'§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§]h§();
            for(attribute in this.§0!V§)
            {
               this.§#j§[attribute] = this.§#!,§[attribute] + this.§0!V§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            § +§ = true;
            if(!§6?§)
            {
               throw e;
            }
         }
      }
      
      private function §#!^§() : void
      {
         if(this.isCompleted && §3!U§ != null)
         {
            try
            {
               §3!U§();
               §3!U§ = null;
            }
            catch(e:Error)
            {
               §3!U§ = null;
               if(!§6?§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §]h§() : Number
      {
         if(this.§09§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§[f§);
         _loc1_ = Math.min(_loc1_,this.§09§);
         var _loc2_:Number = _loc1_ / this.§09§;
         switch(this.§7!$§)
         {
            case §-!,§.§@!0§:
               break;
            case §-!,§.§;!z§:
            case §-!,§.§1F§:
               if(this.§7!$§ == §-!,§.§1F§)
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
            case §-!,§.§&!8§:
               return -_loc2_ * (_loc2_ - 2);
            case §-!,§.§7!"§:
               return _loc2_ * _loc2_;
            case §-!,§.§var §:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §-!,§.§,!-§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §-!,§.§ !K§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §-!,§.§>!7§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
