package §@!0§
{
   public class §5!a§ extends § "'§ implements §'!t§
   {
       
      
      private var §<"5§:Number;
      
      private var §6x§:Boolean;
      
      private var §@p§:Function;
      
      private var §'X§:Object;
      
      private var §6!5§:Object;
      
      private var §+!8§:Object;
      
      public function §5!a§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§<"5§ = param4 * 1000;
         this.§@p§ = param5;
         §;!$§ = 0;
         this.§6x§ = false;
         param2 = this.§^6§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§^6§(param3,param2);
            this.§"$§(param2,param3);
         }
         else
         {
            this.§"$§(param2,param1);
         }
         this.§'X§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§6x§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§'X§ = null;
         this.§+!8§ = null;
         this.§6!5§ = null;
         super.dispose();
      }
      
      public function §;@§() : void
      {
         §;!$§ = -§%"8§;
         this.§6x§ = false;
      }
      
      private function §^6§(param1:Object, param2:Object) : Object
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
      
      private function §"$§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§+!8§ = _loc3_;
         this.§6!5§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§6x§)
         {
            this.§6x§ = true;
            §1!e§ = null;
            §;!$§ = this.§<"5§;
         }
      }
      
      public function §-!m§() : void
      {
         if(!this.§6x§)
         {
            this.§6x§ = true;
            §;!$§ = this.§<"5§;
            this.§0z§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§,!O§(param1))
         {
            return;
         }
         if(§;!$§ >= this.§<"5§)
         {
            if(§@!S§)
            {
               §;!$§ = this.§<"5§;
               this.§6x§ = true;
            }
            else
            {
               §;!$§ = 0;
            }
         }
         this.§0z§();
         this.§=!m§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §0z§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§@!!§();
            for(attribute in this.§+!8§)
            {
               this.§'X§[attribute] = this.§6!5§[attribute] + this.§+!8§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §6x§ = true;
            if(!§<!H§)
            {
               throw e;
            }
         }
      }
      
      private function §=!m§() : void
      {
         if(this.isCompleted && §1!e§ != null)
         {
            try
            {
               §1!e§();
               §1!e§ = null;
            }
            catch(e:Error)
            {
               §1!e§ = null;
               if(!§<!H§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §@!!§() : Number
      {
         if(this.§<"5§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§;!$§);
         _loc1_ = Math.min(_loc1_,this.§<"5§);
         return this.§@p§(_loc1_,0,1,this.§<"5§);
      }
   }
}
