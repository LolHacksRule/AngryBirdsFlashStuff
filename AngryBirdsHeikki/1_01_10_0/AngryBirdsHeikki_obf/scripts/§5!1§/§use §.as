package §5!1§
{
   public class §use § extends §^Q§ implements §&C§
   {
       
      
      private var §7!T§:Number;
      
      private var §=!2§:Boolean;
      
      private var §6Q§:Boolean;
      
      private var §#b§:Function;
      
      private var §'Q§:Object;
      
      private var §##§:Object;
      
      private var §@!O§:Object;
      
      public function §use §(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§7!T§ = param4 * 1000;
         this.§#b§ = param5;
         §+K§ = 0;
         this.§6Q§ = true;
         this.§=!2§ = false;
         param2 = this.§do §(param2,param1);
         if(param3 != null)
         {
            param3 = this.§do §(param3,param2);
            this.§@!8§(param2,param3);
         }
         else
         {
            this.§@!8§(param2,param1);
         }
         this.§'Q§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§=!2§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§6Q§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§'Q§ = null;
         this.§@!O§ = null;
         this.§##§ = null;
      }
      
      public function §9!6§() : void
      {
         §+K§ = -§]A§;
         this.§=!2§ = false;
      }
      
      private function §do §(param1:Object, param2:Object) : Object
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
      
      private function §@!8§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§@!O§ = _loc3_;
         this.§##§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§=!2§)
         {
            this.§=!2§ = true;
            §,3§ = null;
            §+K§ = this.§7!T§;
         }
      }
      
      public function §2=§() : void
      {
         if(!this.§=!2§)
         {
            this.§=!2§ = true;
            §+K§ = this.§7!T§;
            this.§'!8§();
         }
      }
      
      public function §99§() : void
      {
         this.§6Q§ = true;
      }
      
      public function play() : void
      {
         this.§6Q§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§6Q§ || this.isCompleted)
         {
            return;
         }
         §+K§ += param1;
         if(§+K§ >= this.§7!T§)
         {
            if(§#c§)
            {
               §+K§ = this.§7!T§;
               this.§=!2§ = true;
            }
            else
            {
               §+K§ = 0;
            }
         }
         this.§'!8§();
         this.§8!e§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §'!8§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§'O§();
            for(attribute in this.§@!O§)
            {
               this.§'Q§[attribute] = this.§##§[attribute] + this.§@!O§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §=!2§ = true;
            if(!§ !Z§)
            {
               throw e;
            }
         }
      }
      
      private function §8!e§() : void
      {
         if(this.isCompleted && §,3§ != null)
         {
            try
            {
               §,3§();
               §,3§ = null;
            }
            catch(e:Error)
            {
               §,3§ = null;
               if(!§ !Z§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §'O§() : Number
      {
         if(this.§7!T§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§+K§);
         _loc1_ = Math.min(_loc1_,this.§7!T§);
         return this.§#b§(_loc1_,0,1,this.§7!T§);
      }
   }
}
