package §!>§
{
   public class §>!<§ extends §#S§ implements §+!C§
   {
       
      
      private var §&N§:Number;
      
      private var §&m§:Boolean;
      
      private var §4!G§:Boolean;
      
      private var §4!3§:String;
      
      private var §>M§:Object;
      
      private var §,!#§:Object;
      
      private var §4!&§:Object;
      
      public function §>!<§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§&N§ = param4 * 1000;
         this.§4!3§ = param5;
         §5+§ = 0;
         this.§4!G§ = true;
         this.§&m§ = false;
         param2 = this.§"o§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§"o§(param3,param2);
            this.§6%§(param2,param3);
         }
         else
         {
            this.§6%§(param2,param1);
         }
         this.§>M§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§&m§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§4!G§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§>M§ = null;
         this.§4!&§ = null;
         this.§,!#§ = null;
      }
      
      public function §?!C§() : void
      {
         §5+§ = -§!T§;
         this.§&m§ = false;
      }
      
      private function §"o§(param1:Object, param2:Object) : Object
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
      
      private function §6%§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§4!&§ = _loc3_;
         this.§,!#§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§&m§)
         {
            this.§&m§ = true;
            §?!%§ = null;
            §5+§ = this.§&N§;
         }
      }
      
      public function §]#§() : void
      {
         if(!this.§&m§)
         {
            this.§&m§ = true;
            §5+§ = this.§&N§;
            this.§-`§();
         }
      }
      
      public function §9!V§() : void
      {
         this.§4!G§ = true;
      }
      
      public function play() : void
      {
         this.§4!G§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§4!G§ || this.isCompleted)
         {
            return;
         }
         §5+§ += param1;
         if(§5+§ >= this.§&N§)
         {
            if(§%o§)
            {
               §5+§ = this.§&N§;
               this.§&m§ = true;
            }
            else
            {
               §5+§ = 0;
            }
         }
         this.§-`§();
         this.§8A§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §-`§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§7!,§();
            for(attribute in this.§4!&§)
            {
               this.§>M§[attribute] = this.§,!#§[attribute] + this.§4!&§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §&m§ = true;
            if(!§ !;§)
            {
               throw e;
            }
         }
      }
      
      private function §8A§() : void
      {
         if(this.isCompleted && §?!%§ != null)
         {
            try
            {
               §?!%§();
               §?!%§ = null;
            }
            catch(e:Error)
            {
               §?!%§ = null;
               if(!§ !;§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §7!,§() : Number
      {
         if(this.§&N§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§5+§);
         _loc1_ = Math.min(_loc1_,this.§&N§);
         var _loc2_:Number = _loc1_ / this.§&N§;
         switch(this.§4!3§)
         {
            case §!#§.§+`§:
               break;
            case §!#§.§5!2§:
            case §!#§.§8%§:
               if(this.§4!3§ == §!#§.§8%§)
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
            case §!#§.§<Z§:
               return -_loc2_ * (_loc2_ - 2);
            case §!#§.§1]§:
               return _loc2_ * _loc2_;
            case §!#§.§`$§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §!#§.§=G§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §!#§.§+&§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §!#§.§^!P§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
