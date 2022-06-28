package §2=§
{
   public class SimpleTween extends §=N§ implements §4x§
   {
       
      
      private var §5!i§:Number;
      
      private var §9!Y§:Boolean;
      
      private var §"!&§:Boolean;
      
      private var §4`§:String;
      
      private var §#!+§:Object;
      
      private var §4!N§:Object;
      
      private var §4!h§:Object;
      
      public function SimpleTween(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§5!i§ = param4 * 1000;
         this.§4`§ = param5;
         §2+§ = 0;
         this.§"!&§ = true;
         this.§9!Y§ = false;
         param2 = this.§1!C§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§1!C§(param3,param2);
            this.§9!8§(param2,param3);
         }
         else
         {
            this.§9!8§(param2,param1);
         }
         this.§#!+§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§9!Y§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§"!&§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§#!+§ = null;
         this.§4!h§ = null;
         this.§4!N§ = null;
      }
      
      public function §#j§() : void
      {
         §2+§ = -§'r§;
         this.§9!Y§ = false;
      }
      
      private function §1!C§(param1:Object, param2:Object) : Object
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
      
      private function §9!8§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§4!h§ = _loc3_;
         this.§4!N§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§9!Y§)
         {
            this.§9!Y§ = true;
            §>!@§ = null;
            §2+§ = this.§5!i§;
         }
      }
      
      public function §,'§() : void
      {
         if(!this.§9!Y§)
         {
            this.§9!Y§ = true;
            §2+§ = this.§5!i§;
            this.§-[§();
         }
      }
      
      public function pause() : void
      {
         this.§"!&§ = true;
      }
      
      public function play() : void
      {
         this.§"!&§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§"!&§ || this.isCompleted)
         {
            return;
         }
         §2+§ += param1;
         if(§2+§ >= this.§5!i§)
         {
            if(§""§)
            {
               §2+§ = this.§5!i§;
               this.§9!Y§ = true;
            }
            else
            {
               §2+§ = 0;
            }
         }
         this.§-[§();
         this.§1!D§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §-[§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§do§();
            for(attribute in this.§4!h§)
            {
               this.§#!+§[attribute] = this.§4!N§[attribute] + this.§4!h§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §9!Y§ = true;
            if(!§+j§)
            {
               throw e;
            }
         }
      }
      
      private function §1!D§() : void
      {
         if(this.isCompleted && §>!@§ != null)
         {
            try
            {
               §>!@§();
               §>!@§ = null;
            }
            catch(e:Error)
            {
               §>!@§ = null;
               if(!§+j§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §do§() : Number
      {
         if(this.§5!i§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§2+§);
         _loc1_ = Math.min(_loc1_,this.§5!i§);
         var _loc2_:Number = _loc1_ / this.§5!i§;
         switch(this.§4`§)
         {
            case TweenManager.§[u§:
               break;
            case TweenManager.§0D§:
            case TweenManager.§#Z§:
               if(this.§4`§ == TweenManager.§#Z§)
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
            case TweenManager.§&T§:
               return -_loc2_ * (_loc2_ - 2);
            case TweenManager.§5!@§:
               return _loc2_ * _loc2_;
            case TweenManager.§-!g§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case TweenManager.§ !V§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case TweenManager.§7x§:
               _loc2_ -= 1;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case TweenManager.§package§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
