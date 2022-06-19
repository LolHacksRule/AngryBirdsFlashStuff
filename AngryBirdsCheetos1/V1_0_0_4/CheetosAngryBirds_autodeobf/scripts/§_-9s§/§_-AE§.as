package §_-9s§
{
   public class §_-AE§ extends §_-vP§ implements §_-d7§
   {
       
      
      private var §_-co§:Number;
      
      private var §_-uh§:Boolean;
      
      private var §_-uQ§:Boolean;
      
      private var §_-dQ§:String;
      
      private var §_-wF§:Object;
      
      private var §_-rT§:Object;
      
      private var §_-oI§:Object;
      
      public function §_-AE§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§_-co§ = param4 * 1000;
         this.§_-dQ§ = param5;
         §_-zI§ = 0;
         this.§_-uQ§ = true;
         this.§_-uh§ = false;
         param2 = this.§_-41§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§_-41§(param3,param2);
            this.§_-1Z§(param2,param3);
         }
         else
         {
            this.§_-1Z§(param2,param1);
         }
         this.§_-wF§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§_-uh§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§_-wF§ = null;
         this.§_-oI§ = null;
         this.§_-rT§ = null;
      }
      
      public function §_-1A§() : void
      {
         §_-zI§ = -§_-yS§;
         this.§_-uh§ = false;
      }
      
      private function §_-41§(param1:Object, param2:Object) : Object
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
      
      private function §_-1Z§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§_-oI§ = _loc3_;
         this.§_-rT§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§_-uh§)
         {
            this.§_-uh§ = true;
            §_-PU§ = null;
            §_-zI§ = this.§_-co§;
         }
      }
      
      public function §_-NG§() : void
      {
         if(!this.§_-uh§)
         {
            this.§_-uh§ = true;
            §_-zI§ = this.§_-co§;
            this.§_-7§();
         }
      }
      
      public function §_-fc§() : void
      {
         this.§_-uQ§ = true;
      }
      
      public function play() : void
      {
         this.§_-uQ§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§_-uQ§ || this.isCompleted)
         {
            return;
         }
         §_-zI§ += param1;
         if(§_-zI§ >= this.§_-co§)
         {
            if(§_-9E§)
            {
               §_-zI§ = this.§_-co§;
               this.§_-uh§ = true;
            }
            else
            {
               §_-zI§ = 0;
            }
         }
         this.§_-7§();
         this.§_-wW§();
      }
      
      private function §_-7§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§_-V5§();
            for(attribute in this.§_-oI§)
            {
               this.§_-wF§[attribute] = this.§_-rT§[attribute] + this.§_-oI§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §_-uh§ = true;
            if(!§_-WR§)
            {
               throw e;
            }
         }
      }
      
      private function §_-wW§() : void
      {
         if(this.isCompleted && §_-PU§ != null)
         {
            try
            {
               §_-PU§();
               §_-PU§ = null;
            }
            catch(e:Error)
            {
               §_-PU§ = null;
               if(!§_-WR§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §_-V5§() : Number
      {
         if(this.§_-co§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§_-zI§);
         var _loc2_:Number = _loc1_ / this.§_-co§;
         switch(this.§_-dQ§)
         {
            case §_-db§.§_-sK§:
               break;
            case §_-db§.§_-qY§:
            case §_-db§.§_-P7§:
               if(this.§_-dQ§ == §_-db§.§_-P7§)
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
            case §_-db§.§_-UX§:
               return -_loc2_ * (_loc2_ - 2);
            case §_-db§.§_-Dm§:
               return _loc2_ * _loc2_;
            case §_-db§.§_-zY§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §_-db§.§_-Je§:
               return 1 - Math.sin(_loc2_ * (Math.PI / 2));
            case §_-db§.§_-Q1§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §_-db§.§_-nI§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
