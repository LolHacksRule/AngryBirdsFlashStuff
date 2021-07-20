package §]F§
{
   public class §`Y§ extends §!Q§ implements §9!A§
   {
       
      
      private var §4!P§:Number;
      
      private var §?!c§:Boolean;
      
      private var §9!U§:Boolean;
      
      private var §]!q§:Function;
      
      private var §+F§:Object;
      
      private var § a§:Object;
      
      private var §@;§:Object;
      
      public function §`Y§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§4!P§ = param4 * 1000;
         this.§]!q§ = param5;
         §!!L§ = 0;
         this.§9!U§ = true;
         this.§?!c§ = false;
         param2 = this.§-! §(param2,param1);
         if(param3 != null)
         {
            param3 = this.§-! §(param3,param2);
            this.§`!t§(param2,param3);
         }
         else
         {
            this.§`!t§(param2,param1);
         }
         this.§+F§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§?!c§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§9!U§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§+F§ = null;
         this.§@;§ = null;
         this.§ a§ = null;
      }
      
      public function §>!$§() : void
      {
         §!!L§ = -§+!e§;
         this.§?!c§ = false;
      }
      
      private function §-! §(param1:Object, param2:Object) : Object
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
      
      private function §`!t§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§@;§ = _loc3_;
         this.§ a§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§?!c§)
         {
            this.§?!c§ = true;
            §10§ = null;
            §!!L§ = this.§4!P§;
         }
      }
      
      public function §&T§() : void
      {
         if(!this.§?!c§)
         {
            this.§?!c§ = true;
            §!!L§ = this.§4!P§;
            this.§%<§();
         }
      }
      
      public function pause() : void
      {
         this.§9!U§ = true;
      }
      
      public function play() : void
      {
         this.§9!U§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§9!U§ || this.isCompleted)
         {
            return;
         }
         §!!L§ += param1;
         if(§!!L§ >= this.§4!P§)
         {
            if(§2!L§)
            {
               §!!L§ = this.§4!P§;
               this.§?!c§ = true;
            }
            else
            {
               §!!L§ = 0;
            }
         }
         this.§%<§();
         this.§3Y§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §%<§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§]!Q§();
            for(attribute in this.§@;§)
            {
               this.§+F§[attribute] = this.§ a§[attribute] + this.§@;§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §?!c§ = true;
            if(!§[!c§)
            {
               throw e;
            }
         }
      }
      
      private function §3Y§() : void
      {
         if(this.isCompleted && §10§ != null)
         {
            try
            {
               §10§();
               §10§ = null;
            }
            catch(e:Error)
            {
               §10§ = null;
               if(!§[!c§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §]!Q§() : Number
      {
         if(this.§4!P§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§!!L§);
         _loc1_ = Math.min(_loc1_,this.§4!P§);
         return this.§]!q§(_loc1_,0,1,this.§4!P§);
      }
   }
}
