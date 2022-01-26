package §_-hx§
{
   public class §_-y5§ extends §_-v1§ implements §_-Cn§
   {
       
      
      private var §_-Gr§:Number;
      
      private var §_-qq§:Boolean;
      
      private var §_-rV§:Boolean;
      
      private var §_-6b§:String;
      
      private var §_-tB§:Object;
      
      private var §_-ei§:Object;
      
      private var §_-Tm§:Object;
      
      public function §_-y5§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§_-Gr§ = param4 * 1000;
         this.§_-6b§ = param5;
         §_-pE§ = 0;
         this.§_-rV§ = true;
         this.§_-qq§ = false;
         param2 = this.§_-xJ§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§_-xJ§(param3,param2);
            this.§_-VU§(param2,param3);
         }
         else
         {
            this.§_-VU§(param2,param1);
         }
         this.§_-tB§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§_-qq§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§_-tB§ = null;
         this.§_-Tm§ = null;
         this.§_-ei§ = null;
      }
      
      public function §_-tS§() : void
      {
         §_-pE§ = -§_-9K§;
         this.§_-qq§ = false;
      }
      
      private function §_-xJ§(param1:Object, param2:Object) : Object
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
      
      private function §_-VU§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§_-Tm§ = _loc3_;
         this.§_-ei§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§_-qq§)
         {
            this.§_-qq§ = true;
            §_-8H§ = null;
            §_-pE§ = this.§_-Gr§;
         }
      }
      
      public function §_-00-§() : void
      {
         if(!this.§_-qq§)
         {
            this.§_-qq§ = true;
            §_-pE§ = this.§_-Gr§;
            this.§_-fu§();
         }
      }
      
      public function §_-Tr§() : void
      {
         this.§_-rV§ = true;
      }
      
      public function play() : void
      {
         this.§_-rV§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§_-rV§ || this.isCompleted)
         {
            return;
         }
         §_-pE§ += param1;
         if(§_-pE§ >= this.§_-Gr§)
         {
            if(§_-G8§)
            {
               §_-pE§ = this.§_-Gr§;
               this.§_-qq§ = true;
            }
            else
            {
               §_-pE§ = 0;
            }
         }
         this.§_-fu§();
         this.§_-Dq§();
      }
      
      private function §_-fu§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§_-ba§();
            for(attribute in this.§_-Tm§)
            {
               this.§_-tB§[attribute] = this.§_-ei§[attribute] + this.§_-Tm§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §_-qq§ = true;
            if(!§_-Y2§)
            {
               throw e;
            }
         }
      }
      
      private function §_-Dq§() : void
      {
         if(this.isCompleted && §_-8H§ != null)
         {
            try
            {
               §_-8H§();
               §_-8H§ = null;
            }
            catch(e:Error)
            {
               §_-8H§ = null;
               if(!§_-Y2§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §_-ba§() : Number
      {
         if(this.§_-Gr§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§_-pE§);
         var _loc2_:Number = _loc1_ / this.§_-Gr§;
         switch(this.§_-6b§)
         {
            case §_-lq§.§_-0-K§:
               break;
            case §_-lq§.§_-7P§:
            case §_-lq§.§_-0C§:
               if(this.§_-6b§ == §_-lq§.§_-0C§)
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
            case §_-lq§.§_-qf§:
               return -_loc2_ * (_loc2_ - 2);
            case §_-lq§.§_-af§:
               return _loc2_ * _loc2_;
            case §_-lq§.§_-mA§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §_-lq§.§_-aq§:
               return 1 - Math.sin(_loc2_ * (Math.PI / 2));
            case §_-lq§.§_-Br§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §_-lq§.§_-7y§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
