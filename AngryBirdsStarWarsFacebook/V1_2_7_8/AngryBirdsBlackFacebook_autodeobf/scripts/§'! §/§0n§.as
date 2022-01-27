package §'! §
{
   public class §0n§ extends § "#§ implements §2";§
   {
       
      
      private var §]"@§:Number;
      
      private var §%P§:Boolean;
      
      private var §"D§:Function;
      
      private var §6"c§:Object;
      
      private var §]#'§:Object;
      
      private var §1"j§:Object;
      
      public function §0n§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§]"@§ = param4 * 1000;
         this.§"D§ = param5;
         §;5§ = 0;
         this.§%P§ = false;
         param2 = this.§1#"§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§1#"§(param3,param2);
            this.§4"a§(param2,param3);
         }
         else
         {
            this.§4"a§(param2,param1);
         }
         this.§6"c§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§%P§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§6"c§ = null;
         this.§1"j§ = null;
         this.§]#'§ = null;
         super.dispose();
      }
      
      public function §8!y§() : void
      {
         §;5§ = -§]"y§;
         this.§%P§ = false;
      }
      
      private function §1#"§(param1:Object, param2:Object) : Object
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
      
      private function §4"a§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§1"j§ = _loc3_;
         this.§]#'§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§%P§)
         {
            this.§%P§ = true;
            §6-§ = null;
            §;5§ = this.§]"@§;
         }
      }
      
      public function §7!"§() : void
      {
         if(!this.§%P§)
         {
            this.§%P§ = true;
            §;5§ = this.§]"@§;
            this.§]"1§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§%!A§(param1))
         {
            return;
         }
         if(§;5§ >= this.§]"@§)
         {
            if(§=!w§)
            {
               §;5§ = this.§]"@§;
               this.§%P§ = true;
            }
            else
            {
               §;5§ = 0;
            }
         }
         this.§]"1§();
         this.§1O§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §]"1§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§@"X§();
            for(attribute in this.§1"j§)
            {
               this.§6"c§[attribute] = this.§]#'§[attribute] + this.§1"j§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §%P§ = true;
            if(!§4"!§)
            {
               throw e;
            }
         }
      }
      
      private function §1O§() : void
      {
         if(this.isCompleted && §6-§ != null)
         {
            try
            {
               §6-§();
               §6-§ = null;
            }
            catch(e:Error)
            {
               §6-§ = null;
               if(!§4"!§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §@"X§() : Number
      {
         if(this.§]"@§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§;5§);
         _loc1_ = Math.min(_loc1_,this.§]"@§);
         return this.§"D§(_loc1_,0,1,this.§]"@§);
      }
   }
}
