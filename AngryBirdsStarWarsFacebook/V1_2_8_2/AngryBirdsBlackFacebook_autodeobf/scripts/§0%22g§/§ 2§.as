package §0"g§
{
   public class § 2§ extends §6[§ implements §8"f§
   {
       
      
      private var §3! §:Number;
      
      private var §"",§:Boolean;
      
      private var §'"^§:Function;
      
      private var §'"§:Object;
      
      private var §;!v§:Object;
      
      private var §`"j§:Object;
      
      public function § 2§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§3! § = param4 * 1000;
         this.§'"^§ = param5;
         §7#4§ = 0;
         this.§"",§ = false;
         param2 = this.§3"<§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§3"<§(param3,param2);
            this.§%#0§(param2,param3);
         }
         else
         {
            this.§%#0§(param2,param1);
         }
         this.§'"§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§"",§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§'"§ = null;
         this.§`"j§ = null;
         this.§;!v§ = null;
         super.dispose();
      }
      
      public function §,f§() : void
      {
         §7#4§ = -§1!4§;
         this.§"",§ = false;
      }
      
      private function §3"<§(param1:Object, param2:Object) : Object
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
      
      private function §%#0§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§`"j§ = _loc3_;
         this.§;!v§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§"",§)
         {
            this.§"",§ = true;
            §^@§ = null;
            §7#4§ = this.§3! §;
         }
      }
      
      public function §=!L§() : void
      {
         if(!this.§"",§)
         {
            this.§"",§ = true;
            §7#4§ = this.§3! §;
            this.§]"&§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§9!;§(param1))
         {
            return;
         }
         if(§7#4§ >= this.§3! §)
         {
            if(§`!d§)
            {
               §7#4§ = this.§3! §;
               this.§"",§ = true;
            }
            else
            {
               §7#4§ = 0;
            }
         }
         this.§]"&§();
         this.§>!8§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §]"&§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§["Q§();
            for(attribute in this.§`"j§)
            {
               this.§'"§[attribute] = this.§;!v§[attribute] + this.§`"j§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §"",§ = true;
            if(!§@!>§)
            {
               throw e;
            }
         }
      }
      
      private function §>!8§() : void
      {
         if(this.isCompleted && §^@§ != null)
         {
            try
            {
               §^@§();
               §^@§ = null;
            }
            catch(e:Error)
            {
               §^@§ = null;
               if(!§@!>§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §["Q§() : Number
      {
         if(this.§3! § <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§7#4§);
         _loc1_ = Math.min(_loc1_,this.§3! §);
         return this.§'"^§(_loc1_,0,1,this.§3! §);
      }
   }
}
