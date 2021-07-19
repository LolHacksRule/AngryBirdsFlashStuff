package §<!0§
{
   public class §9!G§ extends §`v§ implements §'c§
   {
       
      
      private var §>V§:Number;
      
      private var §1!O§:Boolean;
      
      private var §`!"§:Boolean;
      
      private var §else§:Function;
      
      private var §[!W§:Object;
      
      private var §?P§:Object;
      
      private var §9!e§:Object;
      
      public function §9!G§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§>V§ = param4 * 1000;
         this.§else§ = param5;
         §#!c§ = 0;
         this.§`!"§ = true;
         this.§1!O§ = false;
         param2 = this.§[!_§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§[!_§(param3,param2);
            this.§4L§(param2,param3);
         }
         else
         {
            this.§4L§(param2,param1);
         }
         this.§[!W§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§1!O§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§`!"§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§[!W§ = null;
         this.§9!e§ = null;
         this.§?P§ = null;
      }
      
      public function §6c§() : void
      {
         §#!c§ = -§9T§;
         this.§1!O§ = false;
      }
      
      private function §[!_§(param1:Object, param2:Object) : Object
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
      
      private function §4L§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§9!e§ = _loc3_;
         this.§?P§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§1!O§)
         {
            this.§1!O§ = true;
            §%H§ = null;
            §#!c§ = this.§>V§;
         }
      }
      
      public function §!^§() : void
      {
         if(!this.§1!O§)
         {
            this.§1!O§ = true;
            §#!c§ = this.§>V§;
            this.§ !?§();
         }
      }
      
      public function §@0§() : void
      {
         this.§`!"§ = true;
      }
      
      public function play() : void
      {
         this.§`!"§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§`!"§ || this.isCompleted)
         {
            return;
         }
         §#!c§ += param1;
         if(§#!c§ >= this.§>V§)
         {
            if(§=O§)
            {
               §#!c§ = this.§>V§;
               this.§1!O§ = true;
            }
            else
            {
               §#!c§ = 0;
            }
         }
         this.§ !?§();
         this.§'!%§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function § !?§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§<m§();
            for(attribute in this.§9!e§)
            {
               this.§[!W§[attribute] = this.§?P§[attribute] + this.§9!e§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §1!O§ = true;
            if(!§,s§)
            {
               throw e;
            }
         }
      }
      
      private function §'!%§() : void
      {
         if(this.isCompleted && §%H§ != null)
         {
            try
            {
               §%H§();
               §%H§ = null;
            }
            catch(e:Error)
            {
               §%H§ = null;
               if(!§,s§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §<m§() : Number
      {
         if(this.§>V§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§#!c§);
         _loc1_ = Math.min(_loc1_,this.§>V§);
         return this.§else§(_loc1_,0,1,this.§>V§);
      }
   }
}
