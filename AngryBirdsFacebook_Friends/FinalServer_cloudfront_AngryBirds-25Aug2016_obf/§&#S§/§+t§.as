package §&#S§
{
   public class §+t§ extends §^!0§ implements §^#[§
   {
       
      
      private var §'# §:Number;
      
      private var §"V§:Boolean;
      
      private var §+!x§:Function;
      
      private var §>F§:Object;
      
      private var §;!j§:Object;
      
      private var §##e§:Object;
      
      private var §;!U§:Number = 0.0;
      
      public function §+t§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§'# § = param4 * 1000;
         this.§+!x§ = param5;
         §&"Q§ = 0;
         this.§"V§ = false;
         param2 = this.§["3§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§["3§(param3,param2);
            this.§##]§(param2,param3);
         }
         else
         {
            this.§##]§(param2,param1);
         }
         this.§>F§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§"V§;
      }
      
      public function set §^#O§(param1:Number) : void
      {
         this.§;!U§ = param1;
      }
      
      public function get §^#O§() : Number
      {
         return this.§;!U§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§>F§ = null;
         this.§##e§ = null;
         this.§;!j§ = null;
         super.dispose();
      }
      
      public function §%"F§() : void
      {
         §&"Q§ = -§0"=§;
         this.§"V§ = false;
      }
      
      private function §["3§(param1:Object, param2:Object) : Object
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
      
      private function §##]§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§##e§ = _loc3_;
         this.§;!j§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§"V§)
         {
            this.§"V§ = true;
            §;#§ = null;
            §&"Q§ = this.§'# §;
         }
      }
      
      public function §?#$§() : void
      {
         if(!this.§"V§)
         {
            this.§"V§ = true;
            §&"Q§ = this.§'# §;
            this.§1T§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§0"z§(param1))
         {
            return;
         }
         if(§&"Q§ >= this.§'# § + this.§;!U§ * 1000)
         {
            if(§ !o§)
            {
               §&"Q§ = this.§'# §;
               this.§"V§ = true;
            }
            else
            {
               §&"Q§ = 0;
            }
         }
         this.§1T§();
         this.§0"Q§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §1T§() : void
      {
         var _loc4_:Boolean = false;
         true;
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§]z§();
            for(attribute in this.§##e§)
            {
               this.§>F§[attribute] = this.§;!j§[attribute] + this.§##e§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            if(!_loc4_)
            {
               §"V§ = true;
               if(_loc4_ && this)
               {
               }
               §§goto(addr87);
            }
            if(!§`"v§)
            {
               addr87:
               throw e;
            }
         }
      }
      
      private function §0"Q§() : void
      {
         var _loc3_:Boolean = false;
         true;
         if(this.isCompleted && §;#§ != null)
         {
            try
            {
               §;#§();
               §;#§ = null;
            }
            catch(e:Error)
            {
               var _loc2_:* = e;
               if(!(_loc3_ && _loc2_))
               {
                  §;#§ = null;
                  if(!_loc3_)
                  {
                     if(§`"v§)
                     {
                     }
                  }
               }
               throw e;
            }
         }
      }
      
      private function §]z§() : Number
      {
         if(this.§'# § <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§&"Q§);
         _loc1_ = Math.min(_loc1_,this.§'# §);
         return this.§+!x§(_loc1_,0,1,this.§'# §);
      }
   }
}
