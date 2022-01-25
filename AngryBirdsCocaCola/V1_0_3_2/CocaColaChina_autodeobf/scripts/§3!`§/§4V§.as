package §3!`§
{
   public class §4V§ extends §%r§ implements §-v§
   {
       
      
      private var §69§:Number;
      
      private var §20§:Boolean;
      
      private var §0l§:Boolean;
      
      private var §^!0§:String;
      
      private var §0!C§:Object;
      
      private var §'!#§:Object;
      
      private var §<!b§:Object;
      
      public function §4V§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§69§ = param4 * 1000;
         this.§^!0§ = param5;
         §>!+§ = 0;
         this.§0l§ = true;
         this.§20§ = false;
         param2 = this.§?u§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§?u§(param3,param2);
            this.§]]§(param2,param3);
         }
         else
         {
            this.§]]§(param2,param1);
         }
         this.§0!C§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§20§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§0!C§ = null;
         this.§<!b§ = null;
         this.§'!#§ = null;
      }
      
      public function §4!L§() : void
      {
         §>!+§ = -§]p§;
         this.§20§ = false;
      }
      
      private function §?u§(param1:Object, param2:Object) : Object
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
      
      private function §]]§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§<!b§ = _loc3_;
         this.§'!#§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§20§)
         {
            this.§20§ = true;
            §#Q§ = null;
            §>!+§ = this.§69§;
         }
      }
      
      public function §=!^§() : void
      {
         if(!this.§20§)
         {
            this.§20§ = true;
            §>!+§ = this.§69§;
            this.§3!1§();
         }
      }
      
      public function §0@§() : void
      {
         this.§0l§ = true;
      }
      
      public function play() : void
      {
         this.§0l§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§0l§ || this.isCompleted)
         {
            return;
         }
         §>!+§ += param1;
         if(§>!+§ >= this.§69§)
         {
            if(§,!<§)
            {
               §>!+§ = this.§69§;
               this.§20§ = true;
            }
            else
            {
               §>!+§ = 0;
            }
         }
         this.§3!1§();
         this.§<y§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3!1§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§7y§();
            for(attribute in this.§<!b§)
            {
               this.§0!C§[attribute] = this.§'!#§[attribute] + this.§<!b§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §20§ = true;
            if(!§`!'§)
            {
               throw e;
            }
         }
      }
      
      private function §<y§() : void
      {
         if(this.isCompleted && §#Q§ != null)
         {
            try
            {
               §#Q§();
               §#Q§ = null;
            }
            catch(e:Error)
            {
               §#Q§ = null;
               if(!§`!'§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §7y§() : Number
      {
         if(this.§69§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§>!+§);
         _loc1_ = Math.min(_loc1_,this.§69§);
         var _loc2_:Number = _loc1_ / this.§69§;
         switch(this.§^!0§)
         {
            case §8h§.§7!Y§:
               break;
            case §8h§.§]!#§:
            case §8h§.§"!!§:
               if(this.§^!0§ == §8h§.§"!!§)
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
            case §8h§.§var §:
               return -_loc2_ * (_loc2_ - 2);
            case §8h§.§0!X§:
               return _loc2_ * _loc2_;
            case §8h§.§2A§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §8h§.§',§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §8h§.§3!E§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §8h§.§#H§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
