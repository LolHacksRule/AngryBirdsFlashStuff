package §[!=§
{
   public class §9j§ extends §%!!§ implements §&!D§
   {
       
      
      private var §#N§:Number;
      
      private var §7!,§:Boolean;
      
      private var §?r§:Boolean;
      
      private var §<j§:String;
      
      private var §&>§:Object;
      
      private var §]<§:Object;
      
      private var §?!R§:Object;
      
      public function §9j§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§#N§ = param4 * 1000;
         this.§<j§ = param5;
         §7!G§ = 0;
         this.§?r§ = true;
         this.§7!,§ = false;
         param2 = this.§ !_§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§ !_§(param3,param2);
            this.§0!`§(param2,param3);
         }
         else
         {
            this.§0!`§(param2,param1);
         }
         this.§&>§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§7!,§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§?r§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§&>§ = null;
         this.§?!R§ = null;
         this.§]<§ = null;
      }
      
      public function §+c§() : void
      {
         §7!G§ = -§++§;
         this.§7!,§ = false;
      }
      
      private function § !_§(param1:Object, param2:Object) : Object
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
      
      private function §0!`§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§?!R§ = _loc3_;
         this.§]<§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§7!,§)
         {
            this.§7!,§ = true;
            §3e§ = null;
            §7!G§ = this.§#N§;
         }
      }
      
      public function § !8§() : void
      {
         if(!this.§7!,§)
         {
            this.§7!,§ = true;
            §7!G§ = this.§#N§;
            this.§0&§();
         }
      }
      
      public function §]w§() : void
      {
         this.§?r§ = true;
      }
      
      public function play() : void
      {
         this.§?r§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§?r§ || this.isCompleted)
         {
            return;
         }
         §7!G§ += param1;
         if(§7!G§ >= this.§#N§)
         {
            if(§'!R§)
            {
               §7!G§ = this.§#N§;
               this.§7!,§ = true;
            }
            else
            {
               §7!G§ = 0;
            }
         }
         this.§0&§();
         this.§-!V§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §0&§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§^S§();
            for(attribute in this.§?!R§)
            {
               this.§&>§[attribute] = this.§]<§[attribute] + this.§?!R§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §7!,§ = true;
            if(!§`!X§)
            {
               throw e;
            }
         }
      }
      
      private function §-!V§() : void
      {
         if(this.isCompleted && §3e§ != null)
         {
            try
            {
               §3e§();
               §3e§ = null;
            }
            catch(e:Error)
            {
               §3e§ = null;
               if(!§`!X§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §^S§() : Number
      {
         if(this.§#N§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§7!G§);
         _loc1_ = Math.min(_loc1_,this.§#N§);
         var _loc2_:Number = _loc1_ / this.§#N§;
         switch(this.§<j§)
         {
            case §!!K§.§2-§:
               break;
            case §!!K§.§1<§:
            case §!!K§.§@b§:
               if(this.§<j§ == §!!K§.§@b§)
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
            case §!!K§.§^O§:
               return -_loc2_ * (_loc2_ - 2);
            case §!!K§.§;!c§:
               return _loc2_ * _loc2_;
            case §!!K§.§ i§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §!!K§.§-!§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §!!K§.§<!G§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §!!K§.§#,§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
