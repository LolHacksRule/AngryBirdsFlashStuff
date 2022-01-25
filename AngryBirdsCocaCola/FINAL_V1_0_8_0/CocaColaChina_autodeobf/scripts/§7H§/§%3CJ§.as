package §7H§
{
   public class §<J§ extends §6F§ implements §%!?§
   {
       
      
      private var §#-§:Number;
      
      private var §6-§:Boolean;
      
      private var §&[§:Boolean;
      
      private var §+!9§:String;
      
      private var §+Q§:Object;
      
      private var §0S§:Object;
      
      private var §]!T§:Object;
      
      public function §<J§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§#-§ = param4 * 1000;
         this.§+!9§ = param5;
         §]L§ = 0;
         this.§&[§ = true;
         this.§6-§ = false;
         param2 = this.§"x§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§"x§(param3,param2);
            this.§;!<§(param2,param3);
         }
         else
         {
            this.§;!<§(param2,param1);
         }
         this.§+Q§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§6-§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§&[§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§+Q§ = null;
         this.§]!T§ = null;
         this.§0S§ = null;
      }
      
      public function §!s§() : void
      {
         §]L§ = -§@H§;
         this.§6-§ = false;
      }
      
      private function §"x§(param1:Object, param2:Object) : Object
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
      
      private function §;!<§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§]!T§ = _loc3_;
         this.§0S§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§6-§)
         {
            this.§6-§ = true;
            §0V§ = null;
            §]L§ = this.§#-§;
         }
      }
      
      public function §='§() : void
      {
         if(!this.§6-§)
         {
            this.§6-§ = true;
            §]L§ = this.§#-§;
            this.§,X§();
         }
      }
      
      public function §8!§() : void
      {
         this.§&[§ = true;
      }
      
      public function play() : void
      {
         this.§&[§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§&[§ || this.isCompleted)
         {
            return;
         }
         §]L§ += param1;
         if(§]L§ >= this.§#-§)
         {
            if(§1?§)
            {
               §]L§ = this.§#-§;
               this.§6-§ = true;
            }
            else
            {
               §]L§ = 0;
            }
         }
         this.§,X§();
         this.§9!e§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §,X§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§'%§();
            for(attribute in this.§]!T§)
            {
               this.§+Q§[attribute] = this.§0S§[attribute] + this.§]!T§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §6-§ = true;
            if(!§?D§)
            {
               throw e;
            }
         }
      }
      
      private function §9!e§() : void
      {
         if(this.isCompleted && §0V§ != null)
         {
            try
            {
               §0V§();
               §0V§ = null;
            }
            catch(e:Error)
            {
               §0V§ = null;
               if(!§?D§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §'%§() : Number
      {
         if(this.§#-§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§]L§);
         _loc1_ = Math.min(_loc1_,this.§#-§);
         var _loc2_:Number = _loc1_ / this.§#-§;
         switch(this.§+!9§)
         {
            case §8Q§.§1!?§:
               break;
            case §8Q§.§6^§:
            case §8Q§.§?d§:
               if(this.§+!9§ == §8Q§.§?d§)
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
            case §8Q§.§8!E§:
               return -_loc2_ * (_loc2_ - 2);
            case §8Q§.§;y§:
               return _loc2_ * _loc2_;
            case §8Q§.§^![§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §8Q§.§&@§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §8Q§.§;!'§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §8Q§.§,j§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
