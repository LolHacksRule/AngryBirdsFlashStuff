package §6"G§
{
   public class §9Z§ extends §?!4§ implements § #B§
   {
       
      
      private var §5"v§:Number;
      
      private var §9"6§:Boolean;
      
      private var §!"c§:Function;
      
      private var §%!c§:Object;
      
      private var §[!e§:Object;
      
      private var §3!>§:Object;
      
      private var §<!i§:Number = 0.0;
      
      public function §9Z§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§5"v§ = param4 * 1000;
         this.§!"c§ = param5;
         §@o§ = 0;
         this.§9"6§ = false;
         param2 = this.§'#6§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§'#6§(param3,param2);
            this.§-g§(param2,param3);
         }
         else
         {
            this.§-g§(param2,param1);
         }
         this.§%!c§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§9"6§;
      }
      
      public function set §]!X§(param1:Number) : void
      {
         this.§<!i§ = param1;
      }
      
      public function get §]!X§() : Number
      {
         return this.§<!i§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§%!c§ = null;
         this.§3!>§ = null;
         this.§[!e§ = null;
         super.dispose();
      }
      
      public function §=#O§() : void
      {
         §@o§ = -§"!l§;
         this.§9"6§ = false;
      }
      
      private function §'#6§(param1:Object, param2:Object) : Object
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
      
      private function §-g§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§3!>§ = _loc3_;
         this.§[!e§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§9"6§)
         {
            this.§9"6§ = true;
            §;!S§ = null;
            §@o§ = this.§5"v§;
         }
      }
      
      public function §^"P§() : void
      {
         if(!this.§9"6§)
         {
            this.§9"6§ = true;
            §@o§ = this.§5"v§;
            this.§,!r§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§"c§(param1))
         {
            return;
         }
         if(§@o§ >= this.§5"v§ + this.§<!i§ * 1000)
         {
            if(§'#_§)
            {
               §@o§ = this.§5"v§;
               this.§9"6§ = true;
            }
            else
            {
               §@o§ = 0;
            }
         }
         this.§,!r§();
         this.§+#'§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §,!r§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§="a§();
            for(attribute in this.§3!>§)
            {
               this.§%!c§[attribute] = this.§[!e§[attribute] + this.§3!>§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §9"6§ = true;
            if(!§4"q§)
            {
               throw e;
            }
         }
      }
      
      private function §+#'§() : void
      {
         if(this.isCompleted && §;!S§ != null)
         {
            try
            {
               §;!S§();
               §;!S§ = null;
            }
            catch(e:Error)
            {
               §;!S§ = null;
               if(!§4"q§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §="a§() : Number
      {
         if(this.§5"v§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§@o§);
         _loc1_ = Math.min(_loc1_,this.§5"v§);
         return this.§!"c§(_loc1_,0,1,this.§5"v§);
      }
   }
}
