package §;"5§
{
   public class §1"h§ extends §`"h§ implements §@"§
   {
       
      
      private var §@"s§:Number;
      
      private var §4"=§:Boolean;
      
      private var §`"d§:Function;
      
      private var §["8§:Object;
      
      private var §@"A§:Object;
      
      private var §,#"§:Object;
      
      private var §2!v§:Number = 0.0;
      
      public function §1"h§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§@"s§ = param4 * 1000;
         this.§`"d§ = param5;
         §;C§ = 0;
         this.§4"=§ = false;
         param2 = this.§&"V§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§&"V§(param3,param2);
            this.§>"z§(param2,param3);
         }
         else
         {
            this.§>"z§(param2,param1);
         }
         this.§["8§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§4"=§;
      }
      
      public function set §@n§(param1:Number) : void
      {
         this.§2!v§ = param1;
      }
      
      public function get §@n§() : Number
      {
         return this.§2!v§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§["8§ = null;
         this.§,#"§ = null;
         this.§@"A§ = null;
         super.dispose();
      }
      
      public function §'C§() : void
      {
         §;C§ = -§'!8§;
         this.§4"=§ = false;
      }
      
      private function §&"V§(param1:Object, param2:Object) : Object
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
      
      private function §>"z§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§,#"§ = _loc3_;
         this.§@"A§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§4"=§)
         {
            this.§4"=§ = true;
            §-!^§ = null;
            §;C§ = this.§@"s§;
         }
      }
      
      public function §0"D§() : void
      {
         if(!this.§4"=§)
         {
            this.§4"=§ = true;
            §;C§ = this.§@"s§;
            this.§-t§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§2#5§(param1))
         {
            return;
         }
         if(§;C§ >= this.§@"s§ + this.§2!v§ * 1000)
         {
            if(§-#I§)
            {
               §;C§ = this.§@"s§;
               this.§4"=§ = true;
            }
            else
            {
               §;C§ = 0;
            }
         }
         this.§-t§();
         this.§%7§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §-t§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§["9§();
            for(attribute in this.§,#"§)
            {
               this.§["8§[attribute] = this.§@"A§[attribute] + this.§,#"§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §4"=§ = true;
            if(!§7#M§)
            {
               throw e;
            }
         }
      }
      
      private function §%7§() : void
      {
         if(this.isCompleted && §-!^§ != null)
         {
            try
            {
               §-!^§();
               §-!^§ = null;
            }
            catch(e:Error)
            {
               §-!^§ = null;
               if(!§7#M§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §["9§() : Number
      {
         if(this.§@"s§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§;C§);
         _loc1_ = Math.min(_loc1_,this.§@"s§);
         return this.§`"d§(_loc1_,0,1,this.§@"s§);
      }
   }
}
