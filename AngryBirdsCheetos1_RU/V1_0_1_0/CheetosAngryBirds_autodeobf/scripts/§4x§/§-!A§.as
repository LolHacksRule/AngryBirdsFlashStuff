package §4x§
{
   public class §-!A§ extends §7!B§ implements §!!<§
   {
       
      
      private var §,U§:Number;
      
      private var §7!I§:Boolean;
      
      private var §'t§:Boolean;
      
      private var §=W§:String;
      
      private var §&7§:Object;
      
      private var §1U§:Object;
      
      private var §#'§:Object;
      
      public function §-!A§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§,U§ = param4 * 1000;
         this.§=W§ = param5;
         §9!6§ = 0;
         this.§'t§ = true;
         this.§7!I§ = false;
         param2 = this.§`!0§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§`!0§(param3,param2);
            this.§08§(param2,param3);
         }
         else
         {
            this.§08§(param2,param1);
         }
         this.§&7§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§7!I§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§'t§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§&7§ = null;
         this.§#'§ = null;
         this.§1U§ = null;
      }
      
      public function §#!§() : void
      {
         §9!6§ = -§ ,§;
         this.§7!I§ = false;
      }
      
      private function §`!0§(param1:Object, param2:Object) : Object
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
      
      private function §08§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§#'§ = _loc3_;
         this.§1U§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§7!I§)
         {
            this.§7!I§ = true;
            §4!P§ = null;
            §9!6§ = this.§,U§;
         }
      }
      
      public function § p§() : void
      {
         if(!this.§7!I§)
         {
            this.§7!I§ = true;
            §9!6§ = this.§,U§;
            this.§=!V§();
         }
      }
      
      public function §5q§() : void
      {
         this.§'t§ = true;
      }
      
      public function play() : void
      {
         this.§'t§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§'t§ || this.isCompleted)
         {
            return;
         }
         §9!6§ += param1;
         if(§9!6§ >= this.§,U§)
         {
            if(§>n§)
            {
               §9!6§ = this.§,U§;
               this.§7!I§ = true;
            }
            else
            {
               §9!6§ = 0;
            }
         }
         this.§=!V§();
         this.§<!0§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §=!V§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§;!X§();
            for(attribute in this.§#'§)
            {
               this.§&7§[attribute] = this.§1U§[attribute] + this.§#'§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §7!I§ = true;
            if(!§ !3§)
            {
               throw e;
            }
         }
      }
      
      private function §<!0§() : void
      {
         if(this.isCompleted && §4!P§ != null)
         {
            try
            {
               §4!P§();
               §4!P§ = null;
            }
            catch(e:Error)
            {
               §4!P§ = null;
               if(!§ !3§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §;!X§() : Number
      {
         if(this.§,U§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§9!6§);
         _loc1_ = Math.min(_loc1_,this.§,U§);
         var _loc2_:Number = _loc1_ / this.§,U§;
         switch(this.§=W§)
         {
            case §"!X§.§%h§:
               break;
            case §"!X§.§2!4§:
            case §"!X§.§[]§:
               if(this.§=W§ == §"!X§.§[]§)
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
            case §"!X§.§2@§:
               return -_loc2_ * (_loc2_ - 2);
            case §"!X§.§3L§:
               return _loc2_ * _loc2_;
            case §"!X§.§1§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §"!X§.§=y§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §"!X§.§%b§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §"!X§.§4F§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
