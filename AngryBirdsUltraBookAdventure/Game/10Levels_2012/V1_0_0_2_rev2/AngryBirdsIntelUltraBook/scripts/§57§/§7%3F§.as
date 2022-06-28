package §57§
{
   public class §7?§ extends §`!x§ implements §3!S§
   {
       
      
      private var §?!2§:Number;
      
      private var §,!;§:Boolean;
      
      private var § D§:Boolean;
      
      private var §#K§:String;
      
      private var §0!R§:Object;
      
      private var §^c§:Object;
      
      private var §%§:Object;
      
      public function §7?§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§?!2§ = param4 * 1000;
         this.§#K§ = param5;
         §=U§ = 0;
         this.§ D§ = true;
         this.§,!;§ = false;
         param2 = this.§;!c§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§;!c§(param3,param2);
            this.§4!h§(param2,param3);
         }
         else
         {
            this.§4!h§(param2,param1);
         }
         this.§0!R§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§,!;§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§ D§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§0!R§ = null;
         this.§%§ = null;
         this.§^c§ = null;
      }
      
      public function §0!r§() : void
      {
         §=U§ = -§1!o§;
         this.§,!;§ = false;
      }
      
      private function §;!c§(param1:Object, param2:Object) : Object
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
      
      private function §4!h§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§%§ = _loc3_;
         this.§^c§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§,!;§)
         {
            this.§,!;§ = true;
            §@V§ = null;
            §=U§ = this.§?!2§;
         }
      }
      
      public function §-!T§() : void
      {
         if(!this.§,!;§)
         {
            this.§,!;§ = true;
            §=U§ = this.§?!2§;
            this.§#M§();
         }
      }
      
      public function pause() : void
      {
         this.§ D§ = true;
      }
      
      public function play() : void
      {
         this.§ D§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§ D§ || this.isCompleted)
         {
            return;
         }
         §=U§ += param1;
         if(§=U§ >= this.§?!2§)
         {
            if(§5u§)
            {
               §=U§ = this.§?!2§;
               this.§,!;§ = true;
            }
            else
            {
               §=U§ = 0;
            }
         }
         this.§#M§();
         this.§-!r§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §#M§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§'X§();
            for(attribute in this.§%§)
            {
               this.§0!R§[attribute] = this.§^c§[attribute] + this.§%§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §,!;§ = true;
            if(!§+!p§)
            {
               throw e;
            }
         }
      }
      
      private function §-!r§() : void
      {
         if(this.isCompleted && §@V§ != null)
         {
            try
            {
               §@V§();
               §@V§ = null;
            }
            catch(e:Error)
            {
               §@V§ = null;
               if(!§+!p§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §'X§() : Number
      {
         if(this.§?!2§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§=U§);
         _loc1_ = Math.min(_loc1_,this.§?!2§);
         var _loc2_:Number = _loc1_ / this.§?!2§;
         switch(this.§#K§)
         {
            case §,!b§.§2!U§:
               break;
            case §,!b§.§8!k§:
            case §,!b§.§-7§:
               if(this.§#K§ == §,!b§.§-7§)
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
            case §,!b§.§4t§:
               return -_loc2_ * (_loc2_ - 2);
            case §,!b§.§5!b§:
               return _loc2_ * _loc2_;
            case §,!b§.§7'§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §,!b§.§4X§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §,!b§.§8!V§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §,!b§.§0!q§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
