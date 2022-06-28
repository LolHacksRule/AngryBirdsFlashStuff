package §_-0AB§
{
   public class §_-3w§ extends §_-Ok§ implements §_-IP§
   {
       
      
      private var §_-047§:Number;
      
      private var §_-01O§:Boolean;
      
      private var §_-A5§:Boolean;
      
      private var §_-rn§:String;
      
      private var §_-EY§:Object;
      
      private var §_-00Z§:Object;
      
      private var §_-Z0§:Object;
      
      public function §_-3w§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§_-047§ = param4 * 1000;
         this.§_-rn§ = param5;
         §_-063§ = 0;
         this.§_-A5§ = true;
         this.§_-01O§ = false;
         param2 = this.§_-4Z§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§_-4Z§(param3,param2);
            this.§_-085§(param2,param3);
         }
         else
         {
            this.§_-085§(param2,param1);
         }
         this.§_-EY§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§_-01O§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§_-A5§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§_-EY§ = null;
         this.§_-Z0§ = null;
         this.§_-00Z§ = null;
      }
      
      public function §_-qj§() : void
      {
         §_-063§ = -§_-kv§;
         this.§_-01O§ = false;
      }
      
      private function §_-4Z§(param1:Object, param2:Object) : Object
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
      
      private function §_-085§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§_-Z0§ = _loc3_;
         this.§_-00Z§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§_-01O§)
         {
            this.§_-01O§ = true;
            §_-9L§ = null;
            §_-063§ = this.§_-047§;
         }
      }
      
      public function §_-02V§() : void
      {
         if(!this.§_-01O§)
         {
            this.§_-01O§ = true;
            §_-063§ = this.§_-047§;
            this.§_-no§();
         }
      }
      
      public function pause() : void
      {
         this.§_-A5§ = true;
      }
      
      public function play() : void
      {
         this.§_-A5§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§_-A5§ || this.isCompleted)
         {
            return;
         }
         §_-063§ += param1;
         if(§_-063§ >= this.§_-047§)
         {
            if(§_-W2§)
            {
               §_-063§ = this.§_-047§;
               this.§_-01O§ = true;
            }
            else
            {
               §_-063§ = 0;
            }
         }
         this.§_-no§();
         this.§_-A9§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §_-no§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§_-vp§();
            for(attribute in this.§_-Z0§)
            {
               this.§_-EY§[attribute] = this.§_-00Z§[attribute] + this.§_-Z0§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §_-01O§ = true;
            if(!§_-i-§)
            {
               throw e;
            }
         }
      }
      
      private function §_-A9§() : void
      {
         if(this.isCompleted && §_-9L§ != null)
         {
            try
            {
               §_-9L§();
               §_-9L§ = null;
            }
            catch(e:Error)
            {
               §_-9L§ = null;
               if(!§_-i-§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §_-vp§() : Number
      {
         if(this.§_-047§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§_-063§);
         _loc1_ = Math.min(_loc1_,this.§_-047§);
         var _loc2_:Number = _loc1_ / this.§_-047§;
         switch(this.§_-rn§)
         {
            case §_-cx§.§_-pt§:
               break;
            case §_-cx§.§_-Kl§:
            case §_-cx§.§_-bI§:
               if(this.§_-rn§ == §_-cx§.§_-bI§)
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
            case §_-cx§.§_-037§:
               return -_loc2_ * (_loc2_ - 2);
            case §_-cx§.§_-aZ§:
               return _loc2_ * _loc2_;
            case §_-cx§.§_-x-§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §_-cx§.§_-0c§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §_-cx§.§_-61§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §_-cx§.§_-0-U§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
