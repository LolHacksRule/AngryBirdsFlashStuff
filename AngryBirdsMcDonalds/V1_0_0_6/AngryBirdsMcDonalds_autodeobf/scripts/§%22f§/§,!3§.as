package §"f§
{
   public class §,!3§ extends §9i§ implements §7!e§
   {
       
      
      private var §,!,§:Number;
      
      private var §>!S§:Boolean;
      
      private var §6!$§:Boolean;
      
      private var §"E§:String;
      
      private var §+!N§:Object;
      
      private var §]!Y§:Object;
      
      private var §,N§:Object;
      
      public function §,!3§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§,!,§ = param4 * 1000;
         this.§"E§ = param5;
         §>!b§ = 0;
         this.§6!$§ = true;
         this.§>!S§ = false;
         param2 = this.§#!1§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§#!1§(param3,param2);
            this.§`c§(param2,param3);
         }
         else
         {
            this.§`c§(param2,param1);
         }
         this.§+!N§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§>!S§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§6!$§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§+!N§ = null;
         this.§,N§ = null;
         this.§]!Y§ = null;
      }
      
      public function §;!`§() : void
      {
         §>!b§ = -§?d§;
         this.§>!S§ = false;
      }
      
      private function §#!1§(param1:Object, param2:Object) : Object
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
      
      private function §`c§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§,N§ = _loc3_;
         this.§]!Y§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§>!S§)
         {
            this.§>!S§ = true;
            §]!K§ = null;
            §>!b§ = this.§,!,§;
         }
      }
      
      public function §%e§() : void
      {
         if(!this.§>!S§)
         {
            this.§>!S§ = true;
            §>!b§ = this.§,!,§;
            this.§3!J§();
         }
      }
      
      public function §2!§() : void
      {
         this.§6!$§ = true;
      }
      
      public function play() : void
      {
         this.§6!$§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§6!$§ || this.isCompleted)
         {
            return;
         }
         §>!b§ += param1;
         if(§>!b§ >= this.§,!,§)
         {
            if(§5!J§)
            {
               §>!b§ = this.§,!,§;
               this.§>!S§ = true;
            }
            else
            {
               §>!b§ = 0;
            }
         }
         this.§3!J§();
         this.§-n§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3!J§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§^!M§();
            for(attribute in this.§,N§)
            {
               this.§+!N§[attribute] = this.§]!Y§[attribute] + this.§,N§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §>!S§ = true;
            if(!§`z§)
            {
               throw e;
            }
         }
      }
      
      private function §-n§() : void
      {
         if(this.isCompleted && §]!K§ != null)
         {
            try
            {
               §]!K§();
               §]!K§ = null;
            }
            catch(e:Error)
            {
               §]!K§ = null;
               if(!§`z§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §^!M§() : Number
      {
         if(this.§,!,§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§>!b§);
         _loc1_ = Math.min(_loc1_,this.§,!,§);
         var _loc2_:Number = _loc1_ / this.§,!,§;
         switch(this.§"E§)
         {
            case §%1§.§=!H§:
               break;
            case §%1§.§&S§:
            case §%1§.§98§:
               if(this.§"E§ == §%1§.§98§)
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
            case §%1§.§2!<§:
               return -_loc2_ * (_loc2_ - 2);
            case §%1§.§=!B§:
               return _loc2_ * _loc2_;
            case §%1§.§-!X§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §%1§.§=i§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §%1§.§&!P§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §%1§.§=!1§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
