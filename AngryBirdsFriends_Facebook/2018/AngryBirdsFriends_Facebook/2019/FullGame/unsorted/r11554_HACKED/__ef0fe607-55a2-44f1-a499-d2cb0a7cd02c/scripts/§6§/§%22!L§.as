package §6§#7
{
   public class §"!L§ extends §5p§ implements §6$'§
   {
       
      
      private var §'"Q§:Number;
      
      private var §]$+§:Boolean;
      
      private var §#"s§:Function;
      
      private var §[! §:Object;
      
      private var §[$9§:Object;
      
      private var §#"B§:Object;
      
      private var §-"p§:Number = 0.0;
      
      public function §"!L§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§'"Q§ = param4 * 1000;
         this.§#"s§ = param5;
         §?"6§ = 0;
         this.§]$+§ = false;
         param2 = this.§4"r§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§4"r§(param3,param2);
            this.§2"r§(param2,param3);
         }
         else
         {
            this.§2"r§(param2,param1);
         }
         this.§[! § = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§]$+§;
      }
      
      public function set §^"p§(param1:Number) : void
      {
         this.§-"p§ = param1;
      }
      
      public function get §^"p§() : Number
      {
         return this.§-"p§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§[! § = null;
         this.§#"B§ = null;
         this.§[$9§ = null;
         super.dispose();
      }
      
      public function §@#g§() : void
      {
         §?"6§ = -§=#H§;
         this.§]$+§ = false;
      }
      
      private function §4"r§(param1:Object, param2:Object) : Object
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
      
      private function §2"r§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§#"B§ = _loc3_;
         this.§[$9§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§]$+§)
         {
            this.§]$+§ = true;
            §2$@§ = null;
            §?"6§ = this.§'"Q§;
         }
      }
      
      public function §6X§() : void
      {
         if(!this.§]$+§)
         {
            this.§]$+§ = true;
            §?"6§ = this.§'"Q§;
            this.§2V§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§5#^§(param1))
         {
            return;
         }
         if(§?"6§ >= this.§'"Q§ + this.§-"p§ * 1000)
         {
            if(§%"2§)
            {
               §?"6§ = this.§'"Q§;
               this.§]$+§ = true;
            }
            else
            {
               §?"6§ = 0;
            }
         }
         this.§2V§();
         this.§7#L§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §2V§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§&"w§();
            for(attribute in this.§#"B§)
            {
               this.§[! §[attribute] = this.§[$9§[attribute] + this.§#"B§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §]$+§ = true;
            if(!§+!5§)
            {
               throw e;
            }
         }
      }
      
      private function §7#L§() : void
      {
         if(this.isCompleted && §2$@§ != null)
         {
            try
            {
               §2$@§();
               §2$@§ = null;
            }
            catch(e:Error)
            {
               §2$@§ = null;
               if(!§+!5§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §&"w§() : Number
      {
         if(this.§'"Q§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§?"6§);
         _loc1_ = Math.min(_loc1_,this.§'"Q§);
         return this.§#"s§(_loc1_,0,1,this.§'"Q§);
      }
   }
}
