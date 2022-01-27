package §1!#§
{
   public class §'o§ extends §0&§ implements §+!7§
   {
       
      
      private var §'@§:Number;
      
      private var §-!#§:Boolean;
      
      private var §16§:Boolean;
      
      private var §2!E§:String;
      
      private var §9Q§:Object;
      
      private var §%!<§:Object;
      
      private var §`W§:Object;
      
      public function §'o§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§'@§ = param4 * 1000;
         this.§2!E§ = param5;
         §-f§ = 0;
         this.§16§ = true;
         this.§-!#§ = false;
         param2 = this.§;!=§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§;!=§(param3,param2);
            this.§"H§(param2,param3);
         }
         else
         {
            this.§"H§(param2,param1);
         }
         this.§9Q§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§-!#§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§16§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§9Q§ = null;
         this.§`W§ = null;
         this.§%!<§ = null;
      }
      
      public function §@l§() : void
      {
         §-f§ = -§@!8§;
         this.§-!#§ = false;
      }
      
      private function §;!=§(param1:Object, param2:Object) : Object
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
      
      private function §"H§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§`W§ = _loc3_;
         this.§%!<§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§-!#§)
         {
            this.§-!#§ = true;
            §=!5§ = null;
            §-f§ = this.§'@§;
         }
      }
      
      public function §`6§() : void
      {
         if(!this.§-!#§)
         {
            this.§-!#§ = true;
            §-f§ = this.§'@§;
            this.§5Q§();
         }
      }
      
      public function pause() : void
      {
         this.§16§ = true;
      }
      
      public function play() : void
      {
         this.§16§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§16§ || this.isCompleted)
         {
            return;
         }
         §-f§ += param1;
         if(§-f§ >= this.§'@§)
         {
            if(§@!A§)
            {
               §-f§ = this.§'@§;
               this.§-!#§ = true;
            }
            else
            {
               §-f§ = 0;
            }
         }
         this.§5Q§();
         this.§`!G§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §5Q§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§7-§();
            for(attribute in this.§`W§)
            {
               this.§9Q§[attribute] = this.§%!<§[attribute] + this.§`W§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §-!#§ = true;
            if(!§4Z§)
            {
               throw e;
            }
         }
      }
      
      private function §`!G§() : void
      {
         if(this.isCompleted && §=!5§ != null)
         {
            try
            {
               §=!5§();
               §=!5§ = null;
            }
            catch(e:Error)
            {
               §=!5§ = null;
               if(!§4Z§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §7-§() : Number
      {
         if(this.§'@§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§-f§);
         _loc1_ = Math.min(_loc1_,this.§'@§);
         var _loc2_:Number = _loc1_ / this.§'@§;
         switch(this.§2!E§)
         {
            case §<t§.§#V§:
               break;
            case §<t§.§?!;§:
            case §<t§.§?6§:
               if(this.§2!E§ == §<t§.§?6§)
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
            case §<t§.§=!&§:
               return -_loc2_ * (_loc2_ - 2);
            case §<t§.§6!E§:
               return _loc2_ * _loc2_;
            case §<t§.§]q§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §<t§.§7c§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §<t§.§32§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §<t§.§74§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
