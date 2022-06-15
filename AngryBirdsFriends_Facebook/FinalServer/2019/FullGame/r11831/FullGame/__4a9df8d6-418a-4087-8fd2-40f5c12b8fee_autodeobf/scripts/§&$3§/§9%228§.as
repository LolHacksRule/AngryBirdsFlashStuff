package §&$3§
{
   public class §9"8§ extends §&$5§ implements §0#m§
   {
       
      
      private var §&$!§:Number;
      
      private var §3! §:Boolean;
      
      private var §`#R§:Function;
      
      private var §##i§:Object;
      
      private var §3!#§:Object;
      
      private var §0"]§:Object;
      
      private var §<"g§:Number = 0.0;
      
      public function §9"8§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§&$!§ = param4 * 1000;
         this.§`#R§ = param5;
         §8"%§ = 0;
         this.§3! § = false;
         param2 = this.§]"^§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§]"^§(param3,param2);
            this.§?"^§(param2,param3);
         }
         else
         {
            this.§?"^§(param2,param1);
         }
         this.§##i§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§3! §;
      }
      
      public function set § !K§(param1:Number) : void
      {
         this.§<"g§ = param1;
      }
      
      public function get § !K§() : Number
      {
         return this.§<"g§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§##i§ = null;
         this.§0"]§ = null;
         this.§3!#§ = null;
         super.dispose();
      }
      
      public function §9#D§() : void
      {
         §8"%§ = -§;"5§;
         this.§3! § = false;
      }
      
      private function §]"^§(param1:Object, param2:Object) : Object
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
      
      private function §?"^§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§0"]§ = _loc3_;
         this.§3!#§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§3! §)
         {
            this.§3! § = true;
            §6"e§ = null;
            §8"%§ = this.§&$!§;
         }
      }
      
      public function §%"#§() : void
      {
         if(!this.§3! §)
         {
            this.§3! § = true;
            §8"%§ = this.§&$!§;
            this.§="V§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§+"a§(param1))
         {
            return;
         }
         if(§8"%§ >= this.§&$!§ + this.§<"g§ * 1000)
         {
            if(§2"a§)
            {
               §8"%§ = this.§&$!§;
               this.§3! § = true;
            }
            else
            {
               §8"%§ = 0;
            }
         }
         this.§="V§();
         this.§2R§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §="V§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§`#o§();
            for(attribute in this.§0"]§)
            {
               this.§##i§[attribute] = this.§3!#§[attribute] + this.§0"]§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §3! § = true;
            if(!§`4§)
            {
               throw e;
            }
         }
      }
      
      private function §2R§() : void
      {
         if(this.isCompleted && §6"e§ != null)
         {
            try
            {
               §6"e§();
               §6"e§ = null;
            }
            catch(e:Error)
            {
               §6"e§ = null;
               if(!§`4§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §`#o§() : Number
      {
         if(this.§&$!§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§8"%§);
         _loc1_ = Math.min(_loc1_,this.§&$!§);
         return this.§`#R§(_loc1_,0,1,this.§&$!§);
      }
   }
}
