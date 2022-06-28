package §<!G§
{
   public class SimpleTween extends §'=§ implements §;K§
   {
       
      
      private var §;![§:Number;
      
      private var §!!a§:Boolean;
      
      private var §"^§:Boolean;
      
      private var §9!@§:String;
      
      private var §`N§:Object;
      
      private var §3C§:Object;
      
      private var §?"§:Object;
      
      public function SimpleTween(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§;![§ = param4 * 1000;
         this.§9!@§ = param5;
         §>2§ = 0;
         this.§"^§ = true;
         this.§!!a§ = false;
         param2 = this.§]N§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§]N§(param3,param2);
            this.§>!§(param2,param3);
         }
         else
         {
            this.§>!§(param2,param1);
         }
         this.§`N§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§!!a§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§"^§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§`N§ = null;
         this.§?"§ = null;
         this.§3C§ = null;
      }
      
      public function §!f§() : void
      {
         §>2§ = -§=8§;
         this.§!!a§ = false;
      }
      
      private function §]N§(param1:Object, param2:Object) : Object
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
      
      private function §>!§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§?"§ = _loc3_;
         this.§3C§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§!!a§)
         {
            this.§!!a§ = true;
            §1!1§ = null;
            §>2§ = this.§;![§;
         }
      }
      
      public function §]8§() : void
      {
         if(!this.§!!a§)
         {
            this.§!!a§ = true;
            §>2§ = this.§;![§;
            this.§'6§();
         }
      }
      
      public function pause() : void
      {
         this.§"^§ = true;
      }
      
      public function play() : void
      {
         this.§"^§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§"^§ || this.isCompleted)
         {
            return;
         }
         §>2§ += param1;
         if(§>2§ >= this.§;![§)
         {
            if(§2N§)
            {
               §>2§ = this.§;![§;
               this.§!!a§ = true;
            }
            else
            {
               §>2§ = 0;
            }
         }
         this.§'6§();
         this.§"!e§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §'6§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§9s§();
            for(attribute in this.§?"§)
            {
               this.§`N§[attribute] = this.§3C§[attribute] + this.§?"§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §!!a§ = true;
            if(!§9i§)
            {
               throw e;
            }
         }
      }
      
      private function §"!e§() : void
      {
         if(this.isCompleted && §1!1§ != null)
         {
            try
            {
               §1!1§();
               §1!1§ = null;
            }
            catch(e:Error)
            {
               §1!1§ = null;
               if(!§9i§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §9s§() : Number
      {
         if(this.§;![§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§>2§);
         _loc1_ = Math.min(_loc1_,this.§;![§);
         var _loc2_:Number = _loc1_ / this.§;![§;
         switch(this.§9!@§)
         {
            case TweenManager.§#R§:
               break;
            case TweenManager.§4!-§:
            case TweenManager.§0]§:
               if(this.§9!@§ == TweenManager.§0]§)
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
            case TweenManager.§[!0§:
               return -_loc2_ * (_loc2_ - 2);
            case TweenManager.§3!]§:
               return _loc2_ * _loc2_;
            case TweenManager.§+v§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case TweenManager.§@6§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case TweenManager.§<M§:
               _loc2_ -= 1;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case TweenManager.§?!X§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
