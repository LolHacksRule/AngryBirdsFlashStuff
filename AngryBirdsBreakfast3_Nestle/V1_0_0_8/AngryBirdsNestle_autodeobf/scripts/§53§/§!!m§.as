package §53§
{
   public class §!!m§ extends §'!L§ implements §0!%§
   {
       
      
      private var §8r§:Number;
      
      private var §5T§:Boolean;
      
      private var §8! §:Function;
      
      private var §`!a§:Object;
      
      private var §""!§:Object;
      
      private var §^0§:Object;
      
      public function §!!m§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§8r§ = param4 * 1000;
         this.§8! § = param5;
         §>§ = 0;
         this.§5T§ = false;
         param2 = this.§+!`§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§+!`§(param3,param2);
            this.§+!t§(param2,param3);
         }
         else
         {
            this.§+!t§(param2,param1);
         }
         this.§`!a§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§5T§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§`!a§ = null;
         this.§^0§ = null;
         this.§""!§ = null;
         super.dispose();
      }
      
      public function §#"7§() : void
      {
         §>§ = -§3!t§;
         this.§5T§ = false;
      }
      
      private function §+!`§(param1:Object, param2:Object) : Object
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
      
      private function §+!t§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§^0§ = _loc3_;
         this.§""!§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§5T§)
         {
            this.§5T§ = true;
            §4r§ = null;
            §>§ = this.§8r§;
         }
      }
      
      public function §6!;§() : void
      {
         if(!this.§5T§)
         {
            this.§5T§ = true;
            §>§ = this.§8r§;
            this.§#!Q§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§%!I§(param1))
         {
            return;
         }
         if(§>§ >= this.§8r§)
         {
            if(§=!$§)
            {
               §>§ = this.§8r§;
               this.§5T§ = true;
            }
            else
            {
               §>§ = 0;
            }
         }
         this.§#!Q§();
         this.§6![§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §#!Q§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§0!4§();
            for(attribute in this.§^0§)
            {
               this.§`!a§[attribute] = this.§""!§[attribute] + this.§^0§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §5T§ = true;
            if(!§&!,§)
            {
               throw e;
            }
         }
      }
      
      private function §6![§() : void
      {
         if(this.isCompleted && §4r§ != null)
         {
            try
            {
               §4r§();
               §4r§ = null;
            }
            catch(e:Error)
            {
               §4r§ = null;
               if(!§&!,§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §0!4§() : Number
      {
         if(this.§8r§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§>§);
         _loc1_ = Math.min(_loc1_,this.§8r§);
         return this.§8! §(_loc1_,0,1,this.§8r§);
      }
   }
}
