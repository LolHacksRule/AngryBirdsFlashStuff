package §@!M§
{
   public class §;P§ extends §#^§ implements §"!C§
   {
       
      
      private var §55§:Number;
      
      private var §<!%§:Boolean;
      
      private var §^%§:Boolean;
      
      private var §[j§:String;
      
      private var §3j§:Object;
      
      private var §,!H§:Object;
      
      private var §'O§:Object;
      
      public function §;P§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§55§ = param4 * 1000;
         this.§[j§ = param5;
         §`!3§ = 0;
         this.§^%§ = true;
         this.§<!%§ = false;
         param2 = this.§=v§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§=v§(param3,param2);
            this.§4!4§(param2,param3);
         }
         else
         {
            this.§4!4§(param2,param1);
         }
         this.§3j§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§<!%§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§^%§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§3j§ = null;
         this.§'O§ = null;
         this.§,!H§ = null;
      }
      
      public function §%u§() : void
      {
         §`!3§ = -§=!#§;
         this.§<!%§ = false;
      }
      
      private function §=v§(param1:Object, param2:Object) : Object
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
      
      private function §4!4§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§'O§ = _loc3_;
         this.§,!H§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§<!%§)
         {
            this.§<!%§ = true;
            §&!L§ = null;
            §`!3§ = this.§55§;
         }
      }
      
      public function §?0§() : void
      {
         if(!this.§<!%§)
         {
            this.§<!%§ = true;
            §`!3§ = this.§55§;
            this.§3!P§();
         }
      }
      
      public function pause() : void
      {
         this.§^%§ = true;
      }
      
      public function play() : void
      {
         this.§^%§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§^%§ || this.isCompleted)
         {
            return;
         }
         §`!3§ += param1;
         if(§`!3§ >= this.§55§)
         {
            if(§&b§)
            {
               §`!3§ = this.§55§;
               this.§<!%§ = true;
            }
            else
            {
               §`!3§ = 0;
            }
         }
         this.§3!P§();
         this.§8@§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3!P§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§3V§();
            for(attribute in this.§'O§)
            {
               this.§3j§[attribute] = this.§,!H§[attribute] + this.§'O§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §<!%§ = true;
            if(!§^4§)
            {
               throw e;
            }
         }
      }
      
      private function §8@§() : void
      {
         if(this.isCompleted && §&!L§ != null)
         {
            try
            {
               §&!L§();
               §&!L§ = null;
            }
            catch(e:Error)
            {
               §&!L§ = null;
               if(!§^4§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §3V§() : Number
      {
         if(this.§55§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§`!3§);
         _loc1_ = Math.min(_loc1_,this.§55§);
         var _loc2_:Number = _loc1_ / this.§55§;
         switch(this.§[j§)
         {
            case §5!&§.§9!>§:
               break;
            case §5!&§.§3!K§:
            case §5!&§.§ <§:
               if(this.§[j§ == §5!&§.§ <§)
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
            case §5!&§.§-y§:
               return -_loc2_ * (_loc2_ - 2);
            case §5!&§.§97§:
               return _loc2_ * _loc2_;
            case §5!&§.§<!C§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §5!&§.§<G§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §5!&§.§&[§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §5!&§.§"f§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
