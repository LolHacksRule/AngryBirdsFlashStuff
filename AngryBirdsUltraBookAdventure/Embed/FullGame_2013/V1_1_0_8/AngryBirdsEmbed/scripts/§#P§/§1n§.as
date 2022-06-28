package §#P§
{
   public class §1n§ extends §1!?§ implements §]!N§
   {
       
      
      private var §"8§:Number;
      
      private var §2_§:Boolean;
      
      private var §in §:Boolean;
      
      private var §>0§:Function;
      
      private var §@N§:Object;
      
      private var §&O§:Object;
      
      private var §;j§:Object;
      
      public function §1n§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§"8§ = param4 * 1000;
         this.§>0§ = param5;
         §^f§ = 0;
         this.§in § = true;
         this.§2_§ = false;
         param2 = this.§,!'§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§,!'§(param3,param2);
            this.§@d§(param2,param3);
         }
         else
         {
            this.§@d§(param2,param1);
         }
         this.§@N§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§2_§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§in §;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§@N§ = null;
         this.§;j§ = null;
         this.§&O§ = null;
      }
      
      public function §4R§() : void
      {
         §^f§ = -§40§;
         this.§2_§ = false;
      }
      
      private function §,!'§(param1:Object, param2:Object) : Object
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
      
      private function §@d§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§;j§ = _loc3_;
         this.§&O§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§2_§)
         {
            this.§2_§ = true;
            §7!%§ = null;
            §^f§ = this.§"8§;
         }
      }
      
      public function §;!-§() : void
      {
         if(!this.§2_§)
         {
            this.§2_§ = true;
            §^f§ = this.§"8§;
            this.§?n§();
         }
      }
      
      public function pause() : void
      {
         this.§in § = true;
      }
      
      public function play() : void
      {
         this.§in § = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§in § || this.isCompleted)
         {
            return;
         }
         §^f§ += param1;
         if(§^f§ >= this.§"8§)
         {
            if(§<!D§)
            {
               §^f§ = this.§"8§;
               this.§2_§ = true;
            }
            else
            {
               §^f§ = 0;
            }
         }
         this.§?n§();
         this.§^v§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §?n§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§4H§();
            for(attribute in this.§;j§)
            {
               this.§@N§[attribute] = this.§&O§[attribute] + this.§;j§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §2_§ = true;
            if(!§=!?§)
            {
               throw e;
            }
         }
      }
      
      private function §^v§() : void
      {
         if(this.isCompleted && §7!%§ != null)
         {
            try
            {
               §7!%§();
               §7!%§ = null;
            }
            catch(e:Error)
            {
               §7!%§ = null;
               if(!§=!?§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §4H§() : Number
      {
         if(this.§"8§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§^f§);
         _loc1_ = Math.min(_loc1_,this.§"8§);
         return this.§>0§(_loc1_,0,1,this.§"8§);
      }
   }
}
