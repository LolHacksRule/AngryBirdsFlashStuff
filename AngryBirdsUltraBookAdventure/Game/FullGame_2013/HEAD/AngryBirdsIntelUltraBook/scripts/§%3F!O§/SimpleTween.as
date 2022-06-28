package §?!O§
{
   public class SimpleTween extends §!i§ implements §9N§
   {
       
      
      private var §1W§:Number;
      
      private var §9!^§:Boolean;
      
      private var §^^§:Boolean;
      
      private var §[z§:String;
      
      private var §7@§:Object;
      
      private var §7!,§:Object;
      
      private var §9!M§:Object;
      
      public function SimpleTween(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§1W§ = param4 * 1000;
         this.§[z§ = param5;
         §28§ = 0;
         this.§^^§ = true;
         this.§9!^§ = false;
         param2 = this.§5S§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§5S§(param3,param2);
            this.§%4§(param2,param3);
         }
         else
         {
            this.§%4§(param2,param1);
         }
         this.§7@§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§9!^§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§^^§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§7@§ = null;
         this.§9!M§ = null;
         this.§7!,§ = null;
      }
      
      public function § !=§() : void
      {
         §28§ = -§^!5§;
         this.§9!^§ = false;
      }
      
      private function §5S§(param1:Object, param2:Object) : Object
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
      
      private function §%4§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§9!M§ = _loc3_;
         this.§7!,§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§9!^§)
         {
            this.§9!^§ = true;
            §3!K§ = null;
            §28§ = this.§1W§;
         }
      }
      
      public function §"f§() : void
      {
         if(!this.§9!^§)
         {
            this.§9!^§ = true;
            §28§ = this.§1W§;
            this.§2t§();
         }
      }
      
      public function pause() : void
      {
         this.§^^§ = true;
      }
      
      public function play() : void
      {
         this.§^^§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§^^§ || this.isCompleted)
         {
            return;
         }
         §28§ += param1;
         if(§28§ >= this.§1W§)
         {
            if(§!!J§)
            {
               §28§ = this.§1W§;
               this.§9!^§ = true;
            }
            else
            {
               §28§ = 0;
            }
         }
         this.§2t§();
         this.§;G§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §2t§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§#>§();
            for(attribute in this.§9!M§)
            {
               this.§7@§[attribute] = this.§7!,§[attribute] + this.§9!M§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §9!^§ = true;
            if(!§?4§)
            {
               throw e;
            }
         }
      }
      
      private function §;G§() : void
      {
         if(this.isCompleted && §3!K§ != null)
         {
            try
            {
               §3!K§();
               §3!K§ = null;
            }
            catch(e:Error)
            {
               §3!K§ = null;
               if(!§?4§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §#>§() : Number
      {
         if(this.§1W§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§28§);
         _loc1_ = Math.min(_loc1_,this.§1W§);
         var _loc2_:Number = _loc1_ / this.§1W§;
         switch(this.§[z§)
         {
            case TweenManager.§`!j§:
               break;
            case TweenManager.§&=§:
            case TweenManager.§6!'§:
               if(this.§[z§ == TweenManager.§6!'§)
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
            case TweenManager.§2!'§:
               return -_loc2_ * (_loc2_ - 2);
            case TweenManager.§6!N§:
               return _loc2_ * _loc2_;
            case TweenManager.§3!T§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case TweenManager.§import§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case TweenManager.§9!V§:
               _loc2_ -= 1;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case TweenManager.§>!0§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
