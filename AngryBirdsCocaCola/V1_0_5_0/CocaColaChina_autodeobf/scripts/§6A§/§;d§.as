package §6a§
{
   public class §;d§ extends §^>§ implements §&6§
   {
       
      
      private var §break§:Number;
      
      private var §@!+§:Boolean;
      
      private var §4!c§:Boolean;
      
      private var § W§:String;
      
      private var §9!J§:Object;
      
      private var §+!a§:Object;
      
      private var §!?§:Object;
      
      public function §;d§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§break§ = param4 * 1000;
         this.§ W§ = param5;
         §&!a§ = 0;
         this.§4!c§ = true;
         this.§@!+§ = false;
         param2 = this.§6g§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§6g§(param3,param2);
            this.§ !V§(param2,param3);
         }
         else
         {
            this.§ !V§(param2,param1);
         }
         this.§9!J§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§@!+§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§4!c§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§9!J§ = null;
         this.§!?§ = null;
         this.§+!a§ = null;
      }
      
      public function §"!b§() : void
      {
         §&!a§ = -§9E§;
         this.§@!+§ = false;
      }
      
      private function §6g§(param1:Object, param2:Object) : Object
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
      
      private function § !V§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§!?§ = _loc3_;
         this.§+!a§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§@!+§)
         {
            this.§@!+§ = true;
            §=!9§ = null;
            §&!a§ = this.§break§;
         }
      }
      
      public function §&?§() : void
      {
         if(!this.§@!+§)
         {
            this.§@!+§ = true;
            §&!a§ = this.§break§;
            this.§0!&§();
         }
      }
      
      public function §]T§() : void
      {
         this.§4!c§ = true;
      }
      
      public function play() : void
      {
         this.§4!c§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§4!c§ || this.isCompleted)
         {
            return;
         }
         §&!a§ += param1;
         if(§&!a§ >= this.§break§)
         {
            if(§"w§)
            {
               §&!a§ = this.§break§;
               this.§@!+§ = true;
            }
            else
            {
               §&!a§ = 0;
            }
         }
         this.§0!&§();
         this.§6!C§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §0!&§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§+m§();
            for(attribute in this.§!?§)
            {
               this.§9!J§[attribute] = this.§+!a§[attribute] + this.§!?§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §@!+§ = true;
            if(!§6!#§)
            {
               throw e;
            }
         }
      }
      
      private function §6!C§() : void
      {
         if(this.isCompleted && §=!9§ != null)
         {
            try
            {
               §=!9§();
               §=!9§ = null;
            }
            catch(e:Error)
            {
               §=!9§ = null;
               if(!§6!#§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §+m§() : Number
      {
         if(this.§break§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§&!a§);
         _loc1_ = Math.min(_loc1_,this.§break§);
         var _loc2_:Number = _loc1_ / this.§break§;
         switch(this.§ W§)
         {
            case §;!a§.§;!§:
               break;
            case §;!a§.§^!;§:
            case §;!a§.§-?§:
               if(this.§ W§ == §;!a§.§-?§)
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
            case §;!a§.§"d§:
               return -_loc2_ * (_loc2_ - 2);
            case §;!a§.§8y§:
               return _loc2_ * _loc2_;
            case §;!a§.§?l§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §;!a§.§<!N§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §;!a§.§5!L§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §;!a§.§!!D§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
