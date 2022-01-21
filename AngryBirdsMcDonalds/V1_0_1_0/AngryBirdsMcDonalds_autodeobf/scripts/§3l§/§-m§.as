package §3l§
{
   public class §-m§ extends §1^§ implements §+!h§
   {
       
      
      private var § !l§:Number;
      
      private var §7S§:Boolean;
      
      private var §-!'§:Boolean;
      
      private var §#!<§:String;
      
      private var §[e§:Object;
      
      private var §"!F§:Object;
      
      private var §0!S§:Object;
      
      public function §-m§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§ !l§ = param4 * 1000;
         this.§#!<§ = param5;
         §=!<§ = 0;
         this.§-!'§ = true;
         this.§7S§ = false;
         param2 = this.§0h§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§0h§(param3,param2);
            this.§^!K§(param2,param3);
         }
         else
         {
            this.§^!K§(param2,param1);
         }
         this.§[e§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§7S§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§-!'§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§[e§ = null;
         this.§0!S§ = null;
         this.§"!F§ = null;
      }
      
      public function §,!`§() : void
      {
         §=!<§ = -§8!;§;
         this.§7S§ = false;
      }
      
      private function §0h§(param1:Object, param2:Object) : Object
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
      
      private function §^!K§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§0!S§ = _loc3_;
         this.§"!F§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§7S§)
         {
            this.§7S§ = true;
            §3!a§ = null;
            §=!<§ = this.§ !l§;
         }
      }
      
      public function §'Q§() : void
      {
         if(!this.§7S§)
         {
            this.§7S§ = true;
            §=!<§ = this.§ !l§;
            this.§!!#§();
         }
      }
      
      public function §5j§() : void
      {
         this.§-!'§ = true;
      }
      
      public function play() : void
      {
         this.§-!'§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§-!'§ || this.isCompleted)
         {
            return;
         }
         §=!<§ += param1;
         if(§=!<§ >= this.§ !l§)
         {
            if(§"A§)
            {
               §=!<§ = this.§ !l§;
               this.§7S§ = true;
            }
            else
            {
               §=!<§ = 0;
            }
         }
         this.§!!#§();
         this.§^+§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §!!#§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§^t§();
            for(attribute in this.§0!S§)
            {
               this.§[e§[attribute] = this.§"!F§[attribute] + this.§0!S§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §7S§ = true;
            if(!§!!c§)
            {
               throw e;
            }
         }
      }
      
      private function §^+§() : void
      {
         if(this.isCompleted && §3!a§ != null)
         {
            try
            {
               §3!a§();
               §3!a§ = null;
            }
            catch(e:Error)
            {
               §3!a§ = null;
               if(!§!!c§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §^t§() : Number
      {
         if(this.§ !l§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§=!<§);
         _loc1_ = Math.min(_loc1_,this.§ !l§);
         var _loc2_:Number = _loc1_ / this.§ !l§;
         switch(this.§#!<§)
         {
            case §9m§.§>-§:
               break;
            case §9m§.§#!l§:
            case §9m§.§+!4§:
               if(this.§#!<§ == §9m§.§+!4§)
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
            case §9m§.§5!b§:
               return -_loc2_ * (_loc2_ - 2);
            case §9m§.§=!U§:
               return _loc2_ * _loc2_;
            case §9m§.§'!6§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §9m§.§,D§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §9m§.§+y§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §9m§.§'e§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
