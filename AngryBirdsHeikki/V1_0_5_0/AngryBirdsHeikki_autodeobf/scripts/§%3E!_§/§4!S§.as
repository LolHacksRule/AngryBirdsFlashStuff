package §>!_§
{
   public class §4!S§ extends §;&§ implements §,!D§
   {
       
      
      private var §4!%§:Number;
      
      private var §?]§:Boolean;
      
      private var §`s§:Boolean;
      
      private var §6l§:String;
      
      private var §;J§:Object;
      
      private var §^!^§:Object;
      
      private var §9!2§:Object;
      
      public function §4!S§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§4!%§ = param4 * 1000;
         this.§6l§ = param5;
         §9E§ = 0;
         this.§`s§ = true;
         this.§?]§ = false;
         param2 = this.§?v§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§?v§(param3,param2);
            this.§=!^§(param2,param3);
         }
         else
         {
            this.§=!^§(param2,param1);
         }
         this.§;J§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§?]§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§`s§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§;J§ = null;
         this.§9!2§ = null;
         this.§^!^§ = null;
      }
      
      public function §5!%§() : void
      {
         §9E§ = -§]H§;
         this.§?]§ = false;
      }
      
      private function §?v§(param1:Object, param2:Object) : Object
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
      
      private function §=!^§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§9!2§ = _loc3_;
         this.§^!^§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§?]§)
         {
            this.§?]§ = true;
            §finally§ = null;
            §9E§ = this.§4!%§;
         }
      }
      
      public function §"!N§() : void
      {
         if(!this.§?]§)
         {
            this.§?]§ = true;
            §9E§ = this.§4!%§;
            this.§;!W§();
         }
      }
      
      public function §;!Q§() : void
      {
         this.§`s§ = true;
      }
      
      public function play() : void
      {
         this.§`s§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§`s§ || this.isCompleted)
         {
            return;
         }
         §9E§ += param1;
         if(§9E§ >= this.§4!%§)
         {
            if(§ !1§)
            {
               §9E§ = this.§4!%§;
               this.§?]§ = true;
            }
            else
            {
               §9E§ = 0;
            }
         }
         this.§;!W§();
         this.§1![§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §;!W§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§02§();
            for(attribute in this.§9!2§)
            {
               this.§;J§[attribute] = this.§^!^§[attribute] + this.§9!2§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §?]§ = true;
            if(!§-!H§)
            {
               throw e;
            }
         }
      }
      
      private function §1![§() : void
      {
         if(this.isCompleted && §finally§ != null)
         {
            try
            {
               §finally§();
               §finally§ = null;
            }
            catch(e:Error)
            {
               §finally§ = null;
               if(!§-!H§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §02§() : Number
      {
         if(this.§4!%§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§9E§);
         _loc1_ = Math.min(_loc1_,this.§4!%§);
         var _loc2_:Number = _loc1_ / this.§4!%§;
         switch(this.§6l§)
         {
            case §9!+§.§ #§:
               break;
            case §9!+§.§!!R§:
            case §9!+§.§1y§:
               if(this.§6l§ == §9!+§.§1y§)
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
            case §9!+§.§4!J§:
               return -_loc2_ * (_loc2_ - 2);
            case §9!+§.§4=§:
               return _loc2_ * _loc2_;
            case §9!+§.§0!>§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §9!+§.§9!7§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §9!+§.§#! §:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §9!+§.§8!_§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
