package §<§
{
   public class §8"@§ extends §1"&§ implements §=D§
   {
       
      
      private var §?!;§:Number;
      
      private var §9"0§:Boolean;
      
      private var §@!N§:Function;
      
      private var §+!>§:Object;
      
      private var §]9§:Object;
      
      private var §+F§:Object;
      
      public function §8"@§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§?!;§ = param4 * 1000;
         this.§@!N§ = param5;
         §"!e§ = 0;
         this.§9"0§ = false;
         param2 = this.§+O§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§+O§(param3,param2);
            this.§5!U§(param2,param3);
         }
         else
         {
            this.§5!U§(param2,param1);
         }
         this.§+!>§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§9"0§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§+!>§ = null;
         this.§+F§ = null;
         this.§]9§ = null;
         super.dispose();
      }
      
      public function §6!t§() : void
      {
         §"!e§ = -§@"9§;
         this.§9"0§ = false;
      }
      
      private function §+O§(param1:Object, param2:Object) : Object
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
      
      private function §5!U§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§+F§ = _loc3_;
         this.§]9§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§9"0§)
         {
            this.§9"0§ = true;
            §5A§ = null;
            §"!e§ = this.§?!;§;
         }
      }
      
      public function §?!v§() : void
      {
         if(!this.§9"0§)
         {
            this.§9"0§ = true;
            §"!e§ = this.§?!;§;
            this.§^;§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§-I§(param1))
         {
            return;
         }
         if(§"!e§ >= this.§?!;§)
         {
            if(§2!E§)
            {
               §"!e§ = this.§?!;§;
               this.§9"0§ = true;
            }
            else
            {
               §"!e§ = 0;
            }
         }
         this.§^;§();
         this.§5p§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §^;§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§ M§();
            for(attribute in this.§+F§)
            {
               this.§+!>§[attribute] = this.§]9§[attribute] + this.§+F§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §9"0§ = true;
            if(!§]"D§)
            {
               throw e;
            }
         }
      }
      
      private function §5p§() : void
      {
         if(this.isCompleted && §5A§ != null)
         {
            try
            {
               §5A§();
               §5A§ = null;
            }
            catch(e:Error)
            {
               §5A§ = null;
               if(!§]"D§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function § M§() : Number
      {
         if(this.§?!;§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§"!e§);
         _loc1_ = Math.min(_loc1_,this.§?!;§);
         return this.§@!N§(_loc1_,0,1,this.§?!;§);
      }
   }
}
