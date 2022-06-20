package § null§
{
   public class §0"?§ extends §[!O§ implements §0!N§
   {
       
      
      private var §=Z§:Number;
      
      private var §-!I§:Boolean;
      
      private var §0"F§:Function;
      
      private var §7N§:Object;
      
      private var §3!@§:Object;
      
      private var §8";§:Object;
      
      private var §`$1§:Number = 0.0;
      
      public function §0"?§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§=Z§ = param4 * 1000;
         this.§0"F§ = param5;
         §]!&§ = 0;
         this.§-!I§ = false;
         param2 = this.§@"F§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§@"F§(param3,param2);
            this.§<,§(param2,param3);
         }
         else
         {
            this.§<,§(param2,param1);
         }
         this.§7N§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§-!I§;
      }
      
      public function set §]"O§(param1:Number) : void
      {
         this.§`$1§ = param1;
      }
      
      public function get §]"O§() : Number
      {
         return this.§`$1§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§7N§ = null;
         this.§8";§ = null;
         this.§3!@§ = null;
         super.dispose();
      }
      
      public function §="_§() : void
      {
         §]!&§ = -§#"z§;
         this.§-!I§ = false;
      }
      
      private function §@"F§(param1:Object, param2:Object) : Object
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
      
      private function §<,§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§8";§ = _loc3_;
         this.§3!@§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§-!I§)
         {
            this.§-!I§ = true;
            §"#L§ = null;
            §]!&§ = this.§=Z§;
         }
      }
      
      public function §+!_§() : void
      {
         if(!this.§-!I§)
         {
            this.§-!I§ = true;
            §]!&§ = this.§=Z§;
            this.§>$0§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§`#u§(param1))
         {
            return;
         }
         if(§]!&§ >= this.§=Z§ + this.§`$1§ * 1000)
         {
            if(§,!^§)
            {
               §]!&§ = this.§=Z§;
               this.§-!I§ = true;
            }
            else
            {
               §]!&§ = 0;
            }
         }
         this.§>$0§();
         this.§5-§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §>$0§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§8f§();
            for(attribute in this.§8";§)
            {
               this.§7N§[attribute] = this.§3!@§[attribute] + this.§8";§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §-!I§ = true;
            if(!§=$B§)
            {
               throw e;
            }
         }
      }
      
      private function §5-§() : void
      {
         if(this.isCompleted && §"#L§ != null)
         {
            try
            {
               §"#L§();
               §"#L§ = null;
            }
            catch(e:Error)
            {
               §"#L§ = null;
               if(!§=$B§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §8f§() : Number
      {
         if(this.§=Z§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§]!&§);
         _loc1_ = Math.min(_loc1_,this.§=Z§);
         return this.§0"F§(_loc1_,0,1,this.§=Z§);
      }
   }
}
