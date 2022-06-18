package §]5§
{
   public class § >§ extends § j§ implements §-!B§
   {
       
      
      private var §3!+§:Number;
      
      private var § Y§:Boolean;
      
      private var §++§:Boolean;
      
      private var §#!1§:String;
      
      private var §+v§:Object;
      
      private var §6+§:Object;
      
      private var §7y§:Object;
      
      public function § >§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§3!+§ = param4 * 1000;
         this.§#!1§ = param5;
         §`!,§ = 0;
         this.§++§ = true;
         this.§ Y§ = false;
         param2 = this.§?_§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§?_§(param3,param2);
            this.§8!9§(param2,param3);
         }
         else
         {
            this.§8!9§(param2,param1);
         }
         this.§+v§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§ Y§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§+v§ = null;
         this.§7y§ = null;
         this.§6+§ = null;
      }
      
      public function §;6§() : void
      {
         §`!,§ = -§1O§;
         this.§ Y§ = false;
      }
      
      private function §?_§(param1:Object, param2:Object) : Object
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
      
      private function §8!9§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§7y§ = _loc3_;
         this.§6+§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§ Y§)
         {
            this.§ Y§ = true;
            §7f§ = null;
            §`!,§ = this.§3!+§;
         }
      }
      
      public function §4?§() : void
      {
         if(!this.§ Y§)
         {
            this.§ Y§ = true;
            §`!,§ = this.§3!+§;
            this.§7!4§();
         }
      }
      
      public function pause() : void
      {
         this.§++§ = true;
      }
      
      public function play() : void
      {
         this.§++§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§++§ || this.isCompleted)
         {
            return;
         }
         §`!,§ += param1;
         if(§`!,§ >= this.§3!+§)
         {
            if(§;!B§)
            {
               §`!,§ = this.§3!+§;
               this.§ Y§ = true;
            }
            else
            {
               §`!,§ = 0;
            }
         }
         this.§7!4§();
         this.§ !9§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §7!4§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§9!-§();
            for(attribute in this.§7y§)
            {
               this.§+v§[attribute] = this.§6+§[attribute] + this.§7y§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            § Y§ = true;
            if(!§2m§)
            {
               throw e;
            }
         }
      }
      
      private function § !9§() : void
      {
         if(this.isCompleted && §7f§ != null)
         {
            try
            {
               §7f§();
               §7f§ = null;
            }
            catch(e:Error)
            {
               §7f§ = null;
               if(!§2m§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §9!-§() : Number
      {
         if(this.§3!+§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§`!,§);
         _loc1_ = Math.min(_loc1_,this.§3!+§);
         var _loc2_:Number = _loc1_ / this.§3!+§;
         switch(this.§#!1§)
         {
            case §,G§.§@v§:
               break;
            case §,G§.§'G§:
            case §,G§.§!G§:
               if(this.§#!1§ == §,G§.§!G§)
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
            case §,G§.§ each§:
               return -_loc2_ * (_loc2_ - 2);
            case §,G§.§<b§:
               return _loc2_ * _loc2_;
            case §,G§.§!!#§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §,G§.§]p§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §,G§.§8m§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §,G§.§;§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
