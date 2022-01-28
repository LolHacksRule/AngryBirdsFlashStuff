package §_-cJ§
{
   public class §_-Mq§ extends §_-xa§ implements §_-Vn§
   {
       
      
      private var §_-eQ§:Number;
      
      private var §_-Ie§:Boolean;
      
      private var §_-DP§:Boolean;
      
      private var §_-CR§:String;
      
      private var §_-d8§:Object;
      
      private var §_-ef§:Object;
      
      private var §_-j1§:Object;
      
      public function §_-Mq§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§_-eQ§ = param4 * 1000;
         this.§_-CR§ = param5;
         §_-OY§ = 0;
         this.§_-DP§ = true;
         this.§_-Ie§ = false;
         param2 = this.§_-hP§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§_-hP§(param3,param2);
            this.§_-sU§(param2,param3);
         }
         else
         {
            this.§_-sU§(param2,param1);
         }
         this.§_-d8§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§_-Ie§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§_-d8§ = null;
         this.§_-j1§ = null;
         this.§_-ef§ = null;
      }
      
      public function §_-g4§() : void
      {
         §_-OY§ = -§_-SM§;
         this.§_-Ie§ = false;
      }
      
      private function §_-hP§(param1:Object, param2:Object) : Object
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
      
      private function §_-sU§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§_-j1§ = _loc3_;
         this.§_-ef§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§_-Ie§)
         {
            this.§_-Ie§ = true;
            §_-oZ§ = null;
            §_-OY§ = this.§_-eQ§;
         }
      }
      
      public function §_-d1§() : void
      {
         if(!this.§_-Ie§)
         {
            this.§_-Ie§ = true;
            §_-OY§ = this.§_-eQ§;
            this.§_-EN§();
         }
      }
      
      public function §_-sR§() : void
      {
         this.§_-DP§ = true;
      }
      
      public function play() : void
      {
         this.§_-DP§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§_-DP§ || this.isCompleted)
         {
            return;
         }
         §_-OY§ += param1;
         if(§_-OY§ >= this.§_-eQ§)
         {
            if(§_-0n§)
            {
               §_-OY§ = this.§_-eQ§;
               this.§_-Ie§ = true;
            }
            else
            {
               §_-OY§ = 0;
            }
         }
         this.§_-EN§();
         this.§_-Ji§();
      }
      
      private function §_-EN§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§_-G1§();
            for(attribute in this.§_-j1§)
            {
               this.§_-d8§[attribute] = this.§_-ef§[attribute] + this.§_-j1§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §_-Ie§ = true;
            if(!§_-zh§)
            {
               throw e;
            }
         }
      }
      
      private function §_-Ji§() : void
      {
         if(this.isCompleted && §_-oZ§ != null)
         {
            try
            {
               §_-oZ§();
               §_-oZ§ = null;
            }
            catch(e:Error)
            {
               §_-oZ§ = null;
               if(!§_-zh§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §_-G1§() : Number
      {
         if(this.§_-eQ§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§_-OY§);
         var _loc2_:Number = _loc1_ / this.§_-eQ§;
         switch(this.§_-CR§)
         {
            case §_-xx§.§_-n-§:
               break;
            case §_-xx§.§_-aS§:
            case §_-xx§.§_-HY§:
               if(this.§_-CR§ == §_-xx§.§_-HY§)
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
            case §_-xx§.§_-CT§:
               return -_loc2_ * (_loc2_ - 2);
            case §_-xx§.§_-h0§:
               return _loc2_ * _loc2_;
            case §_-xx§.§_-cv§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §_-xx§.§_-6E§:
               return 1 - Math.sin(_loc2_ * (Math.PI / 2));
            case §_-xx§.§_-kF§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §_-xx§.§_-hq§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
