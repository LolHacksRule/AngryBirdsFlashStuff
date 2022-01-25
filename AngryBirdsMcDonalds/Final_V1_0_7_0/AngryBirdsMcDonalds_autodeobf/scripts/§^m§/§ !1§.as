package §^m§
{
   public class § !1§ extends §"!_§ implements §-!O§
   {
       
      
      private var §+!&§:Number;
      
      private var §[m§:Boolean;
      
      private var §=!P§:Boolean;
      
      private var §4v§:Function;
      
      private var §]A§:Object;
      
      private var §]?§:Object;
      
      private var §@]§:Object;
      
      public function § !1§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§+!&§ = param4 * 1000;
         this.§4v§ = param5;
         §&! § = 0;
         this.§=!P§ = true;
         this.§[m§ = false;
         param2 = this.§5!m§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§5!m§(param3,param2);
            this.§,!`§(param2,param3);
         }
         else
         {
            this.§,!`§(param2,param1);
         }
         this.§]A§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§[m§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§=!P§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§]A§ = null;
         this.§@]§ = null;
         this.§]?§ = null;
      }
      
      public function §[I§() : void
      {
         §&! § = -§+L§;
         this.§[m§ = false;
      }
      
      private function §5!m§(param1:Object, param2:Object) : Object
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
      
      private function §,!`§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§@]§ = _loc3_;
         this.§]?§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§[m§)
         {
            this.§[m§ = true;
            §%S§ = null;
            §&! § = this.§+!&§;
         }
      }
      
      public function §7!S§() : void
      {
         if(!this.§[m§)
         {
            this.§[m§ = true;
            §&! § = this.§+!&§;
            this.§??§();
         }
      }
      
      public function §-!3§() : void
      {
         this.§=!P§ = true;
      }
      
      public function play() : void
      {
         this.§=!P§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§=!P§ || this.isCompleted)
         {
            return;
         }
         §&! § += param1;
         if(§&! § >= this.§+!&§)
         {
            if(§%!m§)
            {
               §&! § = this.§+!&§;
               this.§[m§ = true;
            }
            else
            {
               §&! § = 0;
            }
         }
         this.§??§();
         this.§2!L§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §??§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§`f§();
            for(attribute in this.§@]§)
            {
               this.§]A§[attribute] = this.§]?§[attribute] + this.§@]§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §[m§ = true;
            if(!§8!<§)
            {
               throw e;
            }
         }
      }
      
      private function §2!L§() : void
      {
         if(this.isCompleted && §%S§ != null)
         {
            try
            {
               §%S§();
               §%S§ = null;
            }
            catch(e:Error)
            {
               §%S§ = null;
               if(!§8!<§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §`f§() : Number
      {
         if(this.§+!&§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§&! §);
         _loc1_ = Math.min(_loc1_,this.§+!&§);
         return this.§4v§(_loc1_,0,1,this.§+!&§);
      }
   }
}
