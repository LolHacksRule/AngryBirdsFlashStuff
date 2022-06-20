package §0r§
{
   public class §break§ extends §4x§ implements §=S§
   {
       
      
      private var §`!7§:Number;
      
      private var §9!#§:Boolean;
      
      private var §'"6§:Boolean;
      
      private var §8!'§:Function;
      
      private var §@"<§:Object;
      
      private var §2E§:Object;
      
      private var §3!d§:Object;
      
      public function §break§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§`!7§ = param4 * 1000;
         this.§8!'§ = param5;
         §]!B§ = 0;
         this.§'"6§ = true;
         this.§9!#§ = false;
         param2 = this.§]!?§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§]!?§(param3,param2);
            this.§%`§(param2,param3);
         }
         else
         {
            this.§%`§(param2,param1);
         }
         this.§@"<§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§9!#§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§'"6§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§@"<§ = null;
         this.§3!d§ = null;
         this.§2E§ = null;
      }
      
      public function §9!a§() : void
      {
         §]!B§ = -§]4§;
         this.§9!#§ = false;
      }
      
      private function §]!?§(param1:Object, param2:Object) : Object
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
      
      private function §%`§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§3!d§ = _loc3_;
         this.§2E§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§9!#§)
         {
            this.§9!#§ = true;
            §%s§ = null;
            §]!B§ = this.§`!7§;
         }
      }
      
      public function §@N§() : void
      {
         if(!this.§9!#§)
         {
            this.§9!#§ = true;
            §]!B§ = this.§`!7§;
            this.§%!?§();
         }
      }
      
      public function pause() : void
      {
         this.§'"6§ = true;
      }
      
      public function play() : void
      {
         this.§'"6§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§'"6§ || this.isCompleted)
         {
            return;
         }
         §]!B§ += param1;
         if(§]!B§ >= this.§`!7§)
         {
            if(§7!-§)
            {
               §]!B§ = this.§`!7§;
               this.§9!#§ = true;
            }
            else
            {
               §]!B§ = 0;
            }
         }
         this.§%!?§();
         this.§"!x§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §%!?§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§-[§();
            for(attribute in this.§3!d§)
            {
               this.§@"<§[attribute] = this.§2E§[attribute] + this.§3!d§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §9!#§ = true;
            if(!§-"$§)
            {
               throw e;
            }
         }
      }
      
      private function §"!x§() : void
      {
         if(this.isCompleted && §%s§ != null)
         {
            try
            {
               §%s§();
               §%s§ = null;
            }
            catch(e:Error)
            {
               §%s§ = null;
               if(!§-"$§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §-[§() : Number
      {
         if(this.§`!7§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§]!B§);
         _loc1_ = Math.min(_loc1_,this.§`!7§);
         return this.§8!'§(_loc1_,0,1,this.§`!7§);
      }
   }
}
