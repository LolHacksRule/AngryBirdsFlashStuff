package §2!D§
{
   public class §&!K§ extends §&!B§ implements §-!T§
   {
       
      
      private var §'!9§:Number;
      
      private var §;!c§:Boolean;
      
      private var §2!I§:Boolean;
      
      private var §3§:String;
      
      private var §8j§:Object;
      
      private var §02§:Object;
      
      private var §<!]§:Object;
      
      public function §&!K§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§'!9§ = param4 * 1000;
         this.§3§ = param5;
         §[E§ = 0;
         this.§2!I§ = true;
         this.§;!c§ = false;
         param2 = this.§0q§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§0q§(param3,param2);
            this.§>!"§(param2,param3);
         }
         else
         {
            this.§>!"§(param2,param1);
         }
         this.§8j§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§;!c§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§2!I§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§8j§ = null;
         this.§<!]§ = null;
         this.§02§ = null;
      }
      
      public function §@!-§() : void
      {
         §[E§ = -§5L§;
         this.§;!c§ = false;
      }
      
      private function §0q§(param1:Object, param2:Object) : Object
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
      
      private function §>!"§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§<!]§ = _loc3_;
         this.§02§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§;!c§)
         {
            this.§;!c§ = true;
            §=L§ = null;
            §[E§ = this.§'!9§;
         }
      }
      
      public function §+!c§() : void
      {
         if(!this.§;!c§)
         {
            this.§;!c§ = true;
            §[E§ = this.§'!9§;
            this.§>!&§();
         }
      }
      
      public function §"!J§() : void
      {
         this.§2!I§ = true;
      }
      
      public function play() : void
      {
         this.§2!I§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§2!I§ || this.isCompleted)
         {
            return;
         }
         §[E§ += param1;
         if(§[E§ >= this.§'!9§)
         {
            if(§&C§)
            {
               §[E§ = this.§'!9§;
               this.§;!c§ = true;
            }
            else
            {
               §[E§ = 0;
            }
         }
         this.§>!&§();
         this.§?!M§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §>!&§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§8!e§();
            for(attribute in this.§<!]§)
            {
               this.§8j§[attribute] = this.§02§[attribute] + this.§<!]§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §;!c§ = true;
            if(!§!!K§)
            {
               throw e;
            }
         }
      }
      
      private function §?!M§() : void
      {
         if(this.isCompleted && §=L§ != null)
         {
            try
            {
               §=L§();
               §=L§ = null;
            }
            catch(e:Error)
            {
               §=L§ = null;
               if(!§!!K§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §8!e§() : Number
      {
         if(this.§'!9§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§[E§);
         _loc1_ = Math.min(_loc1_,this.§'!9§);
         var _loc2_:Number = _loc1_ / this.§'!9§;
         switch(this.§3§)
         {
            case §'!7§.§=!L§:
               break;
            case §'!7§.§ ! §:
            case §'!7§.§#S§:
               if(this.§3§ == §'!7§.§#S§)
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
            case §'!7§.§1!N§:
               return -_loc2_ * (_loc2_ - 2);
            case §'!7§.§,!S§:
               return _loc2_ * _loc2_;
            case §'!7§.§@!H§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §'!7§.§-!C§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §'!7§.§+d§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §'!7§.§4z§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
