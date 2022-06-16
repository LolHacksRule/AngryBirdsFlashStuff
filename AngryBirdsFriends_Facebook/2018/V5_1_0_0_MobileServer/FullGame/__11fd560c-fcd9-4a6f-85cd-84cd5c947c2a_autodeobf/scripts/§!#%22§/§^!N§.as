package §!#"§
{
   public class §^!N§ extends §='§ implements §7Y§
   {
       
      
      private var §"!>§:Number;
      
      private var §-P§:Boolean;
      
      private var §6#y§:Function;
      
      private var §%"P§:Object;
      
      private var §true§:Object;
      
      private var §2"4§:Object;
      
      private var §]#r§:Number = 0.0;
      
      public function §^!N§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§"!>§ = param4 * 1000;
         this.§6#y§ = param5;
         §]"6§ = 0;
         this.§-P§ = false;
         param2 = this.§[!6§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§[!6§(param3,param2);
            this.§3Z§(param2,param3);
         }
         else
         {
            this.§3Z§(param2,param1);
         }
         this.§%"P§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§-P§;
      }
      
      public function set §"'§(param1:Number) : void
      {
         this.§]#r§ = param1;
      }
      
      public function get §"'§() : Number
      {
         return this.§]#r§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§%"P§ = null;
         this.§2"4§ = null;
         this.§true§ = null;
         super.dispose();
      }
      
      public function §3"Q§() : void
      {
         §]"6§ = -§"W§;
         this.§-P§ = false;
      }
      
      private function §[!6§(param1:Object, param2:Object) : Object
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
      
      private function §3Z§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§2"4§ = _loc3_;
         this.§true§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§-P§)
         {
            this.§-P§ = true;
            §+"3§ = null;
            §]"6§ = this.§"!>§;
         }
      }
      
      public function §@g§() : void
      {
         if(!this.§-P§)
         {
            this.§-P§ = true;
            §]"6§ = this.§"!>§;
            this.§=!e§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§#$A§(param1))
         {
            return;
         }
         if(§]"6§ >= this.§"!>§ + this.§]#r§ * 1000)
         {
            if(§!#b§)
            {
               §]"6§ = this.§"!>§;
               this.§-P§ = true;
            }
            else
            {
               §]"6§ = 0;
            }
         }
         this.§=!e§();
         this.§-S§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §=!e§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§<"u§();
            for(attribute in this.§2"4§)
            {
               this.§%"P§[attribute] = this.§true§[attribute] + this.§2"4§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §-P§ = true;
            if(!§2!I§)
            {
               throw e;
            }
         }
      }
      
      private function §-S§() : void
      {
         if(this.isCompleted && §+"3§ != null)
         {
            try
            {
               §+"3§();
               §+"3§ = null;
            }
            catch(e:Error)
            {
               §+"3§ = null;
               if(!§2!I§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §<"u§() : Number
      {
         if(this.§"!>§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§]"6§);
         _loc1_ = Math.min(_loc1_,this.§"!>§);
         return this.§6#y§(_loc1_,0,1,this.§"!>§);
      }
   }
}
