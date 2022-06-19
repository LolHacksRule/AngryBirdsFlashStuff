package §#!V§
{
   public class §^P§ extends §[1§ implements §>!3§
   {
       
      
      private var §32§:Number;
      
      private var §'-§:Boolean;
      
      private var §=2§:Boolean;
      
      private var §2!C§:String;
      
      private var §`!^§:Object;
      
      private var §%[§:Object;
      
      private var § !;§:Object;
      
      public function §^P§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§32§ = param4 * 1000;
         this.§2!C§ = param5;
         §3-§ = 0;
         this.§=2§ = true;
         this.§'-§ = false;
         param2 = this.§5g§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§5g§(param3,param2);
            this.§@!U§(param2,param3);
         }
         else
         {
            this.§@!U§(param2,param1);
         }
         this.§`!^§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§'-§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§=2§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§`!^§ = null;
         this.§ !;§ = null;
         this.§%[§ = null;
      }
      
      public function § !R§() : void
      {
         §3-§ = -§2K§;
         this.§'-§ = false;
      }
      
      private function §5g§(param1:Object, param2:Object) : Object
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
      
      private function §@!U§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§ !;§ = _loc3_;
         this.§%[§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§'-§)
         {
            this.§'-§ = true;
            §='§ = null;
            §3-§ = this.§32§;
         }
      }
      
      public function §!S§() : void
      {
         if(!this.§'-§)
         {
            this.§'-§ = true;
            §3-§ = this.§32§;
            this.§=#§();
         }
      }
      
      public function §3J§() : void
      {
         this.§=2§ = true;
      }
      
      public function play() : void
      {
         this.§=2§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§=2§ || this.isCompleted)
         {
            return;
         }
         §3-§ += param1;
         if(§3-§ >= this.§32§)
         {
            if(§;m§)
            {
               §3-§ = this.§32§;
               this.§'-§ = true;
            }
            else
            {
               §3-§ = 0;
            }
         }
         this.§=#§();
         this.§0=§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §=#§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§"!<§();
            for(attribute in this.§ !;§)
            {
               this.§`!^§[attribute] = this.§%[§[attribute] + this.§ !;§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §'-§ = true;
            if(!§^b§)
            {
               throw e;
            }
         }
      }
      
      private function §0=§() : void
      {
         if(this.isCompleted && §='§ != null)
         {
            try
            {
               §='§();
               §='§ = null;
            }
            catch(e:Error)
            {
               §='§ = null;
               if(!§^b§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §"!<§() : Number
      {
         if(this.§32§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§3-§);
         _loc1_ = Math.min(_loc1_,this.§32§);
         var _loc2_:Number = _loc1_ / this.§32§;
         switch(this.§2!C§)
         {
            case §';§.§!! §:
               break;
            case §';§.§,!M§:
            case §';§.§[d§:
               if(this.§2!C§ == §';§.§[d§)
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
            case §';§.§3!P§:
               return -_loc2_ * (_loc2_ - 2);
            case §';§.§#P§:
               return _loc2_ * _loc2_;
            case §';§.§ j§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §';§.§88§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §';§.§+!=§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §';§.§^!P§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
