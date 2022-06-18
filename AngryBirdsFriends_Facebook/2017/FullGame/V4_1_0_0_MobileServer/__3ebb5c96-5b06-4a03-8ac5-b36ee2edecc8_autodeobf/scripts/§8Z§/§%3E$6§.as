package §8Z§
{
   public class §>$6§ extends §]"_§ implements §`!s§
   {
       
      
      private var §+_§:Number;
      
      private var §>"x§:Boolean;
      
      private var §%B§:Function;
      
      private var §,!T§:Object;
      
      private var §2"=§:Object;
      
      private var §,"r§:Object;
      
      private var §;!"§:Number = 0.0;
      
      public function §>$6§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§+_§ = param4 * 1000;
         this.§%B§ = param5;
         §7"D§ = 0;
         this.§>"x§ = false;
         param2 = this.§&"d§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§&"d§(param3,param2);
            this.§4"t§(param2,param3);
         }
         else
         {
            this.§4"t§(param2,param1);
         }
         this.§,!T§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§>"x§;
      }
      
      public function set §?Y§(param1:Number) : void
      {
         this.§;!"§ = param1;
      }
      
      public function get §?Y§() : Number
      {
         return this.§;!"§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§,!T§ = null;
         this.§,"r§ = null;
         this.§2"=§ = null;
         super.dispose();
      }
      
      public function §&"<§() : void
      {
         §7"D§ = -§%f§;
         this.§>"x§ = false;
      }
      
      private function §&"d§(param1:Object, param2:Object) : Object
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
      
      private function §4"t§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§,"r§ = _loc3_;
         this.§2"=§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§>"x§)
         {
            this.§>"x§ = true;
            §<$4§ = null;
            §7"D§ = this.§+_§;
         }
      }
      
      public function §=`§() : void
      {
         if(!this.§>"x§)
         {
            this.§>"x§ = true;
            §7"D§ = this.§+_§;
            this.§#K§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§ 5§(param1))
         {
            return;
         }
         if(§7"D§ >= this.§+_§ + this.§;!"§ * 1000)
         {
            if(§-#q§)
            {
               §7"D§ = this.§+_§;
               this.§>"x§ = true;
            }
            else
            {
               §7"D§ = 0;
            }
         }
         this.§#K§();
         this.§+$3§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §#K§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§&"n§();
            for(attribute in this.§,"r§)
            {
               this.§,!T§[attribute] = this.§2"=§[attribute] + this.§,"r§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §>"x§ = true;
            if(!§?!N§)
            {
               throw e;
            }
         }
      }
      
      private function §+$3§() : void
      {
         if(this.isCompleted && §<$4§ != null)
         {
            try
            {
               §<$4§();
               §<$4§ = null;
            }
            catch(e:Error)
            {
               §<$4§ = null;
               if(!§?!N§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §&"n§() : Number
      {
         if(this.§+_§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§7"D§);
         _loc1_ = Math.min(_loc1_,this.§+_§);
         return this.§%B§(_loc1_,0,1,this.§+_§);
      }
   }
}
