package § !x§
{
   public class §[!`§ extends §2k§ implements §#!K§
   {
       
      
      private var §87§:Number;
      
      private var §2_§:Boolean;
      
      private var §#m§:Boolean;
      
      private var §,Q§:String;
      
      private var §,t§:Object;
      
      private var §9!K§:Object;
      
      private var §6!i§:Object;
      
      public function §[!`§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§87§ = param4 * 1000;
         this.§,Q§ = param5;
         §?Q§ = 0;
         this.§#m§ = true;
         this.§2_§ = false;
         param2 = this.§+!I§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§+!I§(param3,param2);
            this.§!!r§(param2,param3);
         }
         else
         {
            this.§!!r§(param2,param1);
         }
         this.§,t§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§2_§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§#m§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§,t§ = null;
         this.§6!i§ = null;
         this.§9!K§ = null;
      }
      
      public function §2W§() : void
      {
         §?Q§ = -§%U§;
         this.§2_§ = false;
      }
      
      private function §+!I§(param1:Object, param2:Object) : Object
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
      
      private function §!!r§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§6!i§ = _loc3_;
         this.§9!K§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§2_§)
         {
            this.§2_§ = true;
            §9!0§ = null;
            §?Q§ = this.§87§;
         }
      }
      
      public function §;h§() : void
      {
         if(!this.§2_§)
         {
            this.§2_§ = true;
            §?Q§ = this.§87§;
            this.§-!p§();
         }
      }
      
      public function pause() : void
      {
         this.§#m§ = true;
      }
      
      public function play() : void
      {
         this.§#m§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§#m§ || this.isCompleted)
         {
            return;
         }
         §?Q§ += param1;
         if(§?Q§ >= this.§87§)
         {
            if(§;!6§)
            {
               §?Q§ = this.§87§;
               this.§2_§ = true;
            }
            else
            {
               §?Q§ = 0;
            }
         }
         this.§-!p§();
         this.§0u§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §-!p§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§<!M§();
            for(attribute in this.§6!i§)
            {
               this.§,t§[attribute] = this.§9!K§[attribute] + this.§6!i§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §2_§ = true;
            if(!§0b§)
            {
               throw e;
            }
         }
      }
      
      private function §0u§() : void
      {
         if(this.isCompleted && §9!0§ != null)
         {
            try
            {
               §9!0§();
               §9!0§ = null;
            }
            catch(e:Error)
            {
               §9!0§ = null;
               if(!§0b§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §<!M§() : Number
      {
         if(this.§87§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§?Q§);
         _loc1_ = Math.min(_loc1_,this.§87§);
         var _loc2_:Number = _loc1_ / this.§87§;
         switch(this.§,Q§)
         {
            case §5+§.§=2§:
               break;
            case §5+§.§>!u§:
            case §5+§.§&^§:
               if(this.§,Q§ == §5+§.§&^§)
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
            case §5+§.§^E§:
               return -_loc2_ * (_loc2_ - 2);
            case §5+§.§!!_§:
               return _loc2_ * _loc2_;
            case §5+§.§+!j§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §5+§.§2-§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §5+§.§>M§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §5+§.§^!;§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
