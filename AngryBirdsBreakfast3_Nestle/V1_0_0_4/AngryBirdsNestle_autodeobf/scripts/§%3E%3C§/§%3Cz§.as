package §><§
{
   public class §<z§ extends §6!2§ implements §=!i§
   {
       
      
      private var §!!=§:Number;
      
      private var §7H§:Boolean;
      
      private var §3!e§:Function;
      
      private var §7!_§:Object;
      
      private var §&!s§:Object;
      
      private var §'"2§:Object;
      
      public function §<z§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§!!=§ = param4 * 1000;
         this.§3!e§ = param5;
         §6!d§ = 0;
         this.§7H§ = false;
         param2 = this.§5U§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§5U§(param3,param2);
            this.§;]§(param2,param3);
         }
         else
         {
            this.§;]§(param2,param1);
         }
         this.§7!_§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§7H§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§7!_§ = null;
         this.§'"2§ = null;
         this.§&!s§ = null;
         super.dispose();
      }
      
      public function §8!V§() : void
      {
         §6!d§ = -§[B§;
         this.§7H§ = false;
      }
      
      private function §5U§(param1:Object, param2:Object) : Object
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
      
      private function §;]§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§'"2§ = _loc3_;
         this.§&!s§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§7H§)
         {
            this.§7H§ = true;
            §@!C§ = null;
            §6!d§ = this.§!!=§;
         }
      }
      
      public function §6Y§() : void
      {
         if(!this.§7H§)
         {
            this.§7H§ = true;
            §6!d§ = this.§!!=§;
            this.§&!!§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§`!v§(param1))
         {
            return;
         }
         if(§6!d§ >= this.§!!=§)
         {
            if(§?!o§)
            {
               §6!d§ = this.§!!=§;
               this.§7H§ = true;
            }
            else
            {
               §6!d§ = 0;
            }
         }
         this.§&!!§();
         this.§`1§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §&!!§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§>!a§();
            for(attribute in this.§'"2§)
            {
               this.§7!_§[attribute] = this.§&!s§[attribute] + this.§'"2§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §7H§ = true;
            if(!§[v§)
            {
               throw e;
            }
         }
      }
      
      private function §`1§() : void
      {
         if(this.isCompleted && §@!C§ != null)
         {
            try
            {
               §@!C§();
               §@!C§ = null;
            }
            catch(e:Error)
            {
               §@!C§ = null;
               if(!§[v§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §>!a§() : Number
      {
         if(this.§!!=§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§6!d§);
         _loc1_ = Math.min(_loc1_,this.§!!=§);
         return this.§3!e§(_loc1_,0,1,this.§!!=§);
      }
   }
}
