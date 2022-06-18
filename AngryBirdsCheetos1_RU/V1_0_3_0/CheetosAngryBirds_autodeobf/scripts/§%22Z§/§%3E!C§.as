package §"Z§
{
   public class §>!C§ extends §2!'§ implements §-c§
   {
       
      
      private var §1x§:Number;
      
      private var §^!U§:Boolean;
      
      private var §8!K§:Boolean;
      
      private var § -§:String;
      
      private var §@r§:Object;
      
      private var §;!M§:Object;
      
      private var § !&§:Object;
      
      public function §>!C§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§1x§ = param4 * 1000;
         this.§ -§ = param5;
         §;c§ = 0;
         this.§8!K§ = true;
         this.§^!U§ = false;
         param2 = this.§?S§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§?S§(param3,param2);
            this.§4!"§(param2,param3);
         }
         else
         {
            this.§4!"§(param2,param1);
         }
         this.§@r§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§^!U§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§8!K§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§@r§ = null;
         this.§ !&§ = null;
         this.§;!M§ = null;
      }
      
      public function §4!T§() : void
      {
         §;c§ = -§4!%§;
         this.§^!U§ = false;
      }
      
      private function §?S§(param1:Object, param2:Object) : Object
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
      
      private function §4!"§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§ !&§ = _loc3_;
         this.§;!M§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§^!U§)
         {
            this.§^!U§ = true;
            §=6§ = null;
            §;c§ = this.§1x§;
         }
      }
      
      public function §7§() : void
      {
         if(!this.§^!U§)
         {
            this.§^!U§ = true;
            §;c§ = this.§1x§;
            this.§9$§();
         }
      }
      
      public function § D§() : void
      {
         this.§8!K§ = true;
      }
      
      public function play() : void
      {
         this.§8!K§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§8!K§ || this.isCompleted)
         {
            return;
         }
         §;c§ += param1;
         if(§;c§ >= this.§1x§)
         {
            if(§3m§)
            {
               §;c§ = this.§1x§;
               this.§^!U§ = true;
            }
            else
            {
               §;c§ = 0;
            }
         }
         this.§9$§();
         this.§?!=§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §9$§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§[! §();
            for(attribute in this.§ !&§)
            {
               this.§@r§[attribute] = this.§;!M§[attribute] + this.§ !&§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §^!U§ = true;
            if(!§?q§)
            {
               throw e;
            }
         }
      }
      
      private function §?!=§() : void
      {
         if(this.isCompleted && §=6§ != null)
         {
            try
            {
               §=6§();
               §=6§ = null;
            }
            catch(e:Error)
            {
               §=6§ = null;
               if(!§?q§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §[! §() : Number
      {
         if(this.§1x§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§;c§);
         _loc1_ = Math.min(_loc1_,this.§1x§);
         var _loc2_:Number = _loc1_ / this.§1x§;
         switch(this.§ -§)
         {
            case §-N§.§&!U§:
               break;
            case §-N§.§6L§:
            case §-N§.§!z§:
               if(this.§ -§ == §-N§.§!z§)
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
            case §-N§.§?!T§:
               return -_loc2_ * (_loc2_ - 2);
            case §-N§.§7!V§:
               return _loc2_ * _loc2_;
            case §-N§.§>=§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §-N§.§5l§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §-N§.§"!+§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §-N§.§'P§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
