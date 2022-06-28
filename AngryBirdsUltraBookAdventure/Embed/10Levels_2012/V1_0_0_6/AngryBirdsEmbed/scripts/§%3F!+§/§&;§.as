package §?!+§
{
   public class §&;§ extends §1!"§ implements §,!§
   {
       
      
      private var §='§:Number;
      
      private var §>!=§:Boolean;
      
      private var §5F§:Boolean;
      
      private var §#1§:String;
      
      private var §#B§:Object;
      
      private var §2r§:Object;
      
      private var §-!'§:Object;
      
      public function §&;§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§='§ = param4 * 1000;
         this.§#1§ = param5;
         §9!8§ = 0;
         this.§5F§ = true;
         this.§>!=§ = false;
         param2 = this.§=!@§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§=!@§(param3,param2);
            this.§[!9§(param2,param3);
         }
         else
         {
            this.§[!9§(param2,param1);
         }
         this.§#B§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§>!=§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§5F§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§#B§ = null;
         this.§-!'§ = null;
         this.§2r§ = null;
      }
      
      public function §!z§() : void
      {
         §9!8§ = -§0! §;
         this.§>!=§ = false;
      }
      
      private function §=!@§(param1:Object, param2:Object) : Object
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
      
      private function §[!9§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§-!'§ = _loc3_;
         this.§2r§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§>!=§)
         {
            this.§>!=§ = true;
            §"3§ = null;
            §9!8§ = this.§='§;
         }
      }
      
      public function §'!5§() : void
      {
         if(!this.§>!=§)
         {
            this.§>!=§ = true;
            §9!8§ = this.§='§;
            this.§6z§();
         }
      }
      
      public function pause() : void
      {
         this.§5F§ = true;
      }
      
      public function play() : void
      {
         this.§5F§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§5F§ || this.isCompleted)
         {
            return;
         }
         §9!8§ += param1;
         if(§9!8§ >= this.§='§)
         {
            if(§<!8§)
            {
               §9!8§ = this.§='§;
               this.§>!=§ = true;
            }
            else
            {
               §9!8§ = 0;
            }
         }
         this.§6z§();
         this.§^!$§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §6z§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§9!;§();
            for(attribute in this.§-!'§)
            {
               this.§#B§[attribute] = this.§2r§[attribute] + this.§-!'§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §>!=§ = true;
            if(!§[d§)
            {
               throw e;
            }
         }
      }
      
      private function §^!$§() : void
      {
         if(this.isCompleted && §"3§ != null)
         {
            try
            {
               §"3§();
               §"3§ = null;
            }
            catch(e:Error)
            {
               §"3§ = null;
               if(!§[d§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §9!;§() : Number
      {
         if(this.§='§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§9!8§);
         _loc1_ = Math.min(_loc1_,this.§='§);
         var _loc2_:Number = _loc1_ / this.§='§;
         switch(this.§#1§)
         {
            case §,!G§.§]w§:
               break;
            case §,!G§.§3l§:
            case §,!G§.§2R§:
               if(this.§#1§ == §,!G§.§2R§)
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
            case §,!G§.§,&§:
               return -_loc2_ * (_loc2_ - 2);
            case §,!G§.§]d§:
               return _loc2_ * _loc2_;
            case §,!G§.§6!5§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §,!G§.§1z§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §,!G§.§;q§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §,!G§.§5]§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
