package §`!1§
{
   public class §<B§ extends §+<§ implements §6!>§
   {
       
      
      private var §%&§:Number;
      
      private var §,j§:Boolean;
      
      private var §3!4§:Boolean;
      
      private var § !F§:Function;
      
      private var §=r§:Object;
      
      private var §=<§:Object;
      
      private var §8l§:Object;
      
      public function §<B§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§%&§ = param4 * 1000;
         this.§ !F§ = param5;
         §"<§ = 0;
         this.§3!4§ = true;
         this.§,j§ = false;
         param2 = this.§3!I§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§3!I§(param3,param2);
            this.§<a§(param2,param3);
         }
         else
         {
            this.§<a§(param2,param1);
         }
         this.§=r§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§,j§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§3!4§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§=r§ = null;
         this.§8l§ = null;
         this.§=<§ = null;
      }
      
      public function §#Z§() : void
      {
         §"<§ = -§[s§;
         this.§,j§ = false;
      }
      
      private function §3!I§(param1:Object, param2:Object) : Object
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
      
      private function §<a§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§8l§ = _loc3_;
         this.§=<§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§,j§)
         {
            this.§,j§ = true;
            §"R§ = null;
            §"<§ = this.§%&§;
         }
      }
      
      public function §@?§() : void
      {
         if(!this.§,j§)
         {
            this.§,j§ = true;
            §"<§ = this.§%&§;
            this.§<r§();
         }
      }
      
      public function pause() : void
      {
         this.§3!4§ = true;
      }
      
      public function play() : void
      {
         this.§3!4§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§3!4§ || this.isCompleted)
         {
            return;
         }
         §"<§ += param1;
         if(§"<§ >= this.§%&§)
         {
            if(§@!O§)
            {
               §"<§ = this.§%&§;
               this.§,j§ = true;
            }
            else
            {
               §"<§ = 0;
            }
         }
         this.§<r§();
         this.§<;§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §<r§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§%A§();
            for(attribute in this.§8l§)
            {
               this.§=r§[attribute] = this.§=<§[attribute] + this.§8l§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §,j§ = true;
            if(!§!!C§)
            {
               throw e;
            }
         }
      }
      
      private function §<;§() : void
      {
         if(this.isCompleted && §"R§ != null)
         {
            try
            {
               §"R§();
               §"R§ = null;
            }
            catch(e:Error)
            {
               §"R§ = null;
               if(!§!!C§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §%A§() : Number
      {
         if(this.§%&§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§"<§);
         _loc1_ = Math.min(_loc1_,this.§%&§);
         return this.§ !F§(_loc1_,0,1,this.§%&§);
      }
   }
}
