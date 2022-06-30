package §1!d§
{
   public class §5@§ extends §@!7§ implements §<!V§
   {
       
      
      private var §3j§:Number;
      
      private var §&q§:Boolean;
      
      private var §7!e§:Boolean;
      
      private var §%!c§:Function;
      
      private var §+! §:Object;
      
      private var §%!J§:Object;
      
      private var §,!H§:Object;
      
      public function §5@§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§3j§ = param4 * 1000;
         this.§%!c§ = param5;
         §2!N§ = 0;
         this.§7!e§ = true;
         this.§&q§ = false;
         param2 = this.§&Z§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§&Z§(param3,param2);
            this.§3!"§(param2,param3);
         }
         else
         {
            this.§3!"§(param2,param1);
         }
         this.§+! § = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§&q§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§7!e§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§+! § = null;
         this.§,!H§ = null;
         this.§%!J§ = null;
      }
      
      public function §4!H§() : void
      {
         §2!N§ = -§ F§;
         this.§&q§ = false;
      }
      
      private function §&Z§(param1:Object, param2:Object) : Object
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
      
      private function §3!"§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§,!H§ = _loc3_;
         this.§%!J§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§&q§)
         {
            this.§&q§ = true;
            §=a§ = null;
            §2!N§ = this.§3j§;
         }
      }
      
      public function §'L§() : void
      {
         if(!this.§&q§)
         {
            this.§&q§ = true;
            §2!N§ = this.§3j§;
            this.§+,§();
         }
      }
      
      public function §?p§() : void
      {
         this.§7!e§ = true;
      }
      
      public function play() : void
      {
         this.§7!e§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§7!e§ || this.isCompleted)
         {
            return;
         }
         §2!N§ += param1;
         if(§2!N§ >= this.§3j§)
         {
            if(§ !W§)
            {
               §2!N§ = this.§3j§;
               this.§&q§ = true;
            }
            else
            {
               §2!N§ = 0;
            }
         }
         this.§+,§();
         this.§ L§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §+,§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§>!C§();
            for(attribute in this.§,!H§)
            {
               this.§+! §[attribute] = this.§%!J§[attribute] + this.§,!H§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §&q§ = true;
            if(!§!!%§)
            {
               throw e;
            }
         }
      }
      
      private function § L§() : void
      {
         if(this.isCompleted && §=a§ != null)
         {
            try
            {
               §=a§();
               §=a§ = null;
            }
            catch(e:Error)
            {
               §=a§ = null;
               if(!§!!%§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §>!C§() : Number
      {
         if(this.§3j§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§2!N§);
         _loc1_ = Math.min(_loc1_,this.§3j§);
         return this.§%!c§(_loc1_,0,1,this.§3j§);
      }
   }
}
