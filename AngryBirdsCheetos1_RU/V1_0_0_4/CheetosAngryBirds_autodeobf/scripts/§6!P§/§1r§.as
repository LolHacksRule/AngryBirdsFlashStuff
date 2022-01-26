package §6!P§
{
   public class §1r§ extends §9!D§ implements §+$§
   {
       
      
      private var §;b§:Number;
      
      private var §;>§:Boolean;
      
      private var §]![§:Boolean;
      
      private var §6i§:String;
      
      private var §5^§:Object;
      
      private var §5_§:Object;
      
      private var §0$§:Object;
      
      public function §1r§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§;b§ = param4 * 1000;
         this.§6i§ = param5;
         §`Q§ = 0;
         this.§]![§ = true;
         this.§;>§ = false;
         param2 = this.§0`§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§0`§(param3,param2);
            this.§9!J§(param2,param3);
         }
         else
         {
            this.§9!J§(param2,param1);
         }
         this.§5^§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§;>§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§]![§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§5^§ = null;
         this.§0$§ = null;
         this.§5_§ = null;
      }
      
      public function §'!I§() : void
      {
         §`Q§ = -§"9§;
         this.§;>§ = false;
      }
      
      private function §0`§(param1:Object, param2:Object) : Object
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
      
      private function §9!J§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§0$§ = _loc3_;
         this.§5_§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§;>§)
         {
            this.§;>§ = true;
            §^Z§ = null;
            §`Q§ = this.§;b§;
         }
      }
      
      public function §-!B§() : void
      {
         if(!this.§;>§)
         {
            this.§;>§ = true;
            §`Q§ = this.§;b§;
            this.§#@§();
         }
      }
      
      public function §,-§() : void
      {
         this.§]![§ = true;
      }
      
      public function play() : void
      {
         this.§]![§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§]![§ || this.isCompleted)
         {
            return;
         }
         §`Q§ += param1;
         if(§`Q§ >= this.§;b§)
         {
            if(§7!S§)
            {
               §`Q§ = this.§;b§;
               this.§;>§ = true;
            }
            else
            {
               §`Q§ = 0;
            }
         }
         this.§#@§();
         this.§1!S§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §#@§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§9!M§();
            for(attribute in this.§0$§)
            {
               this.§5^§[attribute] = this.§5_§[attribute] + this.§0$§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §;>§ = true;
            if(!§3!H§)
            {
               throw e;
            }
         }
      }
      
      private function §1!S§() : void
      {
         if(this.isCompleted && §^Z§ != null)
         {
            try
            {
               §^Z§();
               §^Z§ = null;
            }
            catch(e:Error)
            {
               §^Z§ = null;
               if(!§3!H§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §9!M§() : Number
      {
         if(this.§;b§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§`Q§);
         _loc1_ = Math.min(_loc1_,this.§;b§);
         var _loc2_:Number = _loc1_ / this.§;b§;
         switch(this.§6i§)
         {
            case §^!>§.§33§:
               break;
            case §^!>§.§4m§:
            case §^!>§.§%>§:
               if(this.§6i§ == §^!>§.§%>§)
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
            case §^!>§.§[!-§:
               return -_loc2_ * (_loc2_ - 2);
            case §^!>§.§;Q§:
               return _loc2_ * _loc2_;
            case §^!>§.§<!'§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §^!>§.§-9§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §^!>§.§?9§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §^!>§.§8!Q§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
