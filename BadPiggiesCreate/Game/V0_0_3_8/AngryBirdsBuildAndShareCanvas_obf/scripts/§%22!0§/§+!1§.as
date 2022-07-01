package §"!0§
{
   public class §+!1§ extends §@u§ implements §"Z§
   {
       
      
      private var §=>§:Number;
      
      private var §-K§:Boolean;
      
      private var §3!f§:Boolean;
      
      private var §3!H§:String;
      
      private var §^!X§:Object;
      
      private var §4e§:Object;
      
      private var §;!_§:Object;
      
      public function §+!1§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§=>§ = param4 * 1000;
         this.§3!H§ = param5;
         §<h§ = 0;
         this.§3!f§ = true;
         this.§-K§ = false;
         param2 = this.§;"3§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§;"3§(param3,param2);
            this.§7!S§(param2,param3);
         }
         else
         {
            this.§7!S§(param2,param1);
         }
         this.§^!X§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§-K§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§3!f§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§^!X§ = null;
         this.§;!_§ = null;
         this.§4e§ = null;
      }
      
      public function §]!I§() : void
      {
         §<h§ = -§"Y§;
         this.§-K§ = false;
      }
      
      private function §;"3§(param1:Object, param2:Object) : Object
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
      
      private function §7!S§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§;!_§ = _loc3_;
         this.§4e§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§-K§)
         {
            this.§-K§ = true;
            § C§ = null;
            §<h§ = this.§=>§;
         }
      }
      
      public function §1!+§() : void
      {
         if(!this.§-K§)
         {
            this.§-K§ = true;
            §<h§ = this.§=>§;
            this.§0!o§();
         }
      }
      
      public function pause() : void
      {
         this.§3!f§ = true;
      }
      
      public function play() : void
      {
         this.§3!f§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§3!f§ || this.isCompleted)
         {
            return;
         }
         §<h§ += param1;
         if(§<h§ >= this.§=>§)
         {
            if(§3"3§)
            {
               §<h§ = this.§=>§;
               this.§-K§ = true;
            }
            else
            {
               §<h§ = 0;
            }
         }
         this.§0!o§();
         this.§;!e§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §0!o§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§&t§();
            for(attribute in this.§;!_§)
            {
               this.§^!X§[attribute] = this.§4e§[attribute] + this.§;!_§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §-K§ = true;
            if(!§!=§)
            {
               throw e;
            }
         }
      }
      
      private function §;!e§() : void
      {
         if(this.isCompleted && § C§ != null)
         {
            try
            {
               § C§();
               § C§ = null;
            }
            catch(e:Error)
            {
               § C§ = null;
               if(!§!=§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §&t§() : Number
      {
         if(this.§=>§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§<h§);
         _loc1_ = Math.min(_loc1_,this.§=>§);
         var _loc2_:Number = _loc1_ / this.§=>§;
         switch(this.§3!H§)
         {
            case §"!5§.§0!1§:
               break;
            case §"!5§.§1a§:
            case §"!5§.§6-§:
               if(this.§3!H§ == §"!5§.§6-§)
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
            case §"!5§.§+!F§:
               return -_loc2_ * (_loc2_ - 2);
            case §"!5§.§;!D§:
               return _loc2_ * _loc2_;
            case §"!5§.§@!g§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §"!5§.§ !>§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §"!5§.§&!X§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §"!5§.§7!3§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
