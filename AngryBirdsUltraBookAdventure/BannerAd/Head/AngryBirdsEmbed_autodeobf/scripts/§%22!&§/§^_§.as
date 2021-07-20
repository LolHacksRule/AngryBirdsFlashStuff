package §"!&§
{
   public class §^_§ extends §+!3§ implements §-!;§
   {
       
      
      private var §<R§:Number;
      
      private var §7!@§:Boolean;
      
      private var §;-§:Boolean;
      
      private var §?!-§:String;
      
      private var §&l§:Object;
      
      private var §7?§:Object;
      
      private var §-w§:Object;
      
      public function §^_§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§<R§ = param4 * 1000;
         this.§?!-§ = param5;
         §=,§ = 0;
         this.§;-§ = true;
         this.§7!@§ = false;
         param2 = this.§3! §(param2,param1);
         if(param3 != null)
         {
            param3 = this.§3! §(param3,param2);
            this.§2!3§(param2,param3);
         }
         else
         {
            this.§2!3§(param2,param1);
         }
         this.§&l§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§7!@§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§;-§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§&l§ = null;
         this.§-w§ = null;
         this.§7?§ = null;
      }
      
      public function §'! §() : void
      {
         §=,§ = -§?i§;
         this.§7!@§ = false;
      }
      
      private function §3! §(param1:Object, param2:Object) : Object
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
      
      private function §2!3§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§-w§ = _loc3_;
         this.§7?§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§7!@§)
         {
            this.§7!@§ = true;
            § S§ = null;
            §=,§ = this.§<R§;
         }
      }
      
      public function §+!=§() : void
      {
         if(!this.§7!@§)
         {
            this.§7!@§ = true;
            §=,§ = this.§<R§;
            this.§>w§();
         }
      }
      
      public function pause() : void
      {
         this.§;-§ = true;
      }
      
      public function play() : void
      {
         this.§;-§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§;-§ || this.isCompleted)
         {
            return;
         }
         §=,§ += param1;
         if(§=,§ >= this.§<R§)
         {
            if(§+L§)
            {
               §=,§ = this.§<R§;
               this.§7!@§ = true;
            }
            else
            {
               §=,§ = 0;
            }
         }
         this.§>w§();
         this.§!e§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §>w§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§1!2§();
            for(attribute in this.§-w§)
            {
               this.§&l§[attribute] = this.§7?§[attribute] + this.§-w§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §7!@§ = true;
            if(!§4L§)
            {
               throw e;
            }
         }
      }
      
      private function §!e§() : void
      {
         if(this.isCompleted && § S§ != null)
         {
            try
            {
               § S§();
               § S§ = null;
            }
            catch(e:Error)
            {
               § S§ = null;
               if(!§4L§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §1!2§() : Number
      {
         if(this.§<R§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§=,§);
         _loc1_ = Math.min(_loc1_,this.§<R§);
         var _loc2_:Number = _loc1_ / this.§<R§;
         switch(this.§?!-§)
         {
            case §%!>§.§ s§:
               break;
            case §%!>§.§##§:
            case §%!>§.§"x§:
               if(this.§?!-§ == §%!>§.§"x§)
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
            case §%!>§.§4G§:
               return -_loc2_ * (_loc2_ - 2);
            case §%!>§.§!!G§:
               return _loc2_ * _loc2_;
            case §%!>§.§1!C§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §%!>§.§%N§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §%!>§.§+1§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §%!>§.§>!'§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
