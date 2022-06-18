package §!7§
{
   public class §`>§ extends §>K§ implements §&!R§
   {
       
      
      private var §&!G§:Number;
      
      private var §`4§:Boolean;
      
      private var §[@§:Boolean;
      
      private var §&!M§:String;
      
      private var §+S§:Object;
      
      private var §6V§:Object;
      
      private var §[!&§:Object;
      
      public function §`>§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§&!G§ = param4 * 1000;
         this.§&!M§ = param5;
         §5!&§ = 0;
         this.§[@§ = true;
         this.§`4§ = false;
         param2 = this.§6!W§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§6!W§(param3,param2);
            this.§-o§(param2,param3);
         }
         else
         {
            this.§-o§(param2,param1);
         }
         this.§+S§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§`4§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§[@§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§+S§ = null;
         this.§[!&§ = null;
         this.§6V§ = null;
      }
      
      public function § @§() : void
      {
         §5!&§ = -§>_§;
         this.§`4§ = false;
      }
      
      private function §6!W§(param1:Object, param2:Object) : Object
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
      
      private function §-o§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§[!&§ = _loc3_;
         this.§6V§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§`4§)
         {
            this.§`4§ = true;
            §<!-§ = null;
            §5!&§ = this.§&!G§;
         }
      }
      
      public function §7!E§() : void
      {
         if(!this.§`4§)
         {
            this.§`4§ = true;
            §5!&§ = this.§&!G§;
            this.§5!%§();
         }
      }
      
      public function §?!]§() : void
      {
         this.§[@§ = true;
      }
      
      public function play() : void
      {
         this.§[@§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§[@§ || this.isCompleted)
         {
            return;
         }
         §5!&§ += param1;
         if(§5!&§ >= this.§&!G§)
         {
            if(§7!D§)
            {
               §5!&§ = this.§&!G§;
               this.§`4§ = true;
            }
            else
            {
               §5!&§ = 0;
            }
         }
         this.§5!%§();
         this.§?U§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §5!%§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§2!-§();
            for(attribute in this.§[!&§)
            {
               this.§+S§[attribute] = this.§6V§[attribute] + this.§[!&§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §`4§ = true;
            if(!§;C§)
            {
               throw e;
            }
         }
      }
      
      private function §?U§() : void
      {
         if(this.isCompleted && §<!-§ != null)
         {
            try
            {
               §<!-§();
               §<!-§ = null;
            }
            catch(e:Error)
            {
               §<!-§ = null;
               if(!§;C§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §2!-§() : Number
      {
         if(this.§&!G§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§5!&§);
         _loc1_ = Math.min(_loc1_,this.§&!G§);
         var _loc2_:Number = _loc1_ / this.§&!G§;
         switch(this.§&!M§)
         {
            case §`R§.§"!M§:
               break;
            case §`R§.§5!`§:
            case §`R§.§ !Y§:
               if(this.§&!M§ == §`R§.§ !Y§)
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
            case §`R§.§+h§:
               return -_loc2_ * (_loc2_ - 2);
            case §`R§.§4!R§:
               return _loc2_ * _loc2_;
            case §`R§.§[!E§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §`R§.§;Q§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §`R§.§2!>§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §`R§.§@![§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
