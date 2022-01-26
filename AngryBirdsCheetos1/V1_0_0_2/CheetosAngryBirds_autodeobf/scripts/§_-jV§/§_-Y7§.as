package §_-jV§
{
   public class §_-Y7§ extends §_-li§ implements §_-vU§
   {
       
      
      private var §_-5Y§:Number;
      
      private var §_-G5§:Boolean;
      
      private var §_-IG§:Boolean;
      
      private var §_-vm§:String;
      
      private var §_-GK§:Object;
      
      private var §_-Sb§:Object;
      
      private var §_-Ai§:Object;
      
      public function §_-Y7§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§_-5Y§ = param4 * 1000;
         this.§_-vm§ = param5;
         §_-RE§ = 0;
         this.§_-IG§ = true;
         this.§_-G5§ = false;
         param2 = this.§_-yh§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§_-yh§(param3,param2);
            this.§_-2C§(param2,param3);
         }
         else
         {
            this.§_-2C§(param2,param1);
         }
         this.§_-GK§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§_-G5§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§_-GK§ = null;
         this.§_-Ai§ = null;
         this.§_-Sb§ = null;
      }
      
      public function §_-CQ§() : void
      {
         §_-RE§ = -§_-FM§;
         this.§_-G5§ = false;
      }
      
      private function §_-yh§(param1:Object, param2:Object) : Object
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
      
      private function §_-2C§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§_-Ai§ = _loc3_;
         this.§_-Sb§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§_-G5§)
         {
            this.§_-G5§ = true;
            §_-lq§ = null;
            §_-RE§ = this.§_-5Y§;
         }
      }
      
      public function §_-hf§() : void
      {
         if(!this.§_-G5§)
         {
            this.§_-G5§ = true;
            §_-RE§ = this.§_-5Y§;
            this.§_-6o§();
         }
      }
      
      public function §_-Xb§() : void
      {
         this.§_-IG§ = true;
      }
      
      public function play() : void
      {
         this.§_-IG§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§_-IG§ || this.isCompleted)
         {
            return;
         }
         §_-RE§ += param1;
         if(§_-RE§ >= this.§_-5Y§)
         {
            if(§_-NU§)
            {
               §_-RE§ = this.§_-5Y§;
               this.§_-G5§ = true;
            }
            else
            {
               §_-RE§ = 0;
            }
         }
         this.§_-6o§();
         this.§_-f4§();
      }
      
      private function §_-6o§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§_-lx§();
            for(attribute in this.§_-Ai§)
            {
               this.§_-GK§[attribute] = this.§_-Sb§[attribute] + this.§_-Ai§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §_-G5§ = true;
            if(!§_-SE§)
            {
               throw e;
            }
         }
      }
      
      private function §_-f4§() : void
      {
         if(this.isCompleted && §_-lq§ != null)
         {
            try
            {
               §_-lq§();
               §_-lq§ = null;
            }
            catch(e:Error)
            {
               §_-lq§ = null;
               if(!§_-SE§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §_-lx§() : Number
      {
         if(this.§_-5Y§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§_-RE§);
         var _loc2_:Number = _loc1_ / this.§_-5Y§;
         switch(this.§_-vm§)
         {
            case §_-mI§.§_-fX§:
               break;
            case §_-mI§.§_-Wh§:
            case §_-mI§.§_-5n§:
               if(this.§_-vm§ == §_-mI§.§_-5n§)
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
            case §_-mI§.§_-jw§:
               return -_loc2_ * (_loc2_ - 2);
            case §_-mI§.§_-i5§:
               return _loc2_ * _loc2_;
            case §_-mI§.§_-Yd§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §_-mI§.§_-az§:
               return 1 - Math.sin(_loc2_ * (Math.PI / 2));
            case §_-mI§.§_-zG§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §_-mI§.§_-ru§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
