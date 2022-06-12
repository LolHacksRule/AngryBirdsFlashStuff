package §0Z§
{
   public class §-C§ extends §?!X§ implements §9"5§
   {
       
      
      private var §?@§:Number;
      
      private var §<!o§:Boolean;
      
      private var §2x§:Boolean;
      
      private var §;!a§:Function;
      
      private var §%"6§:Object;
      
      private var §9!#§:Object;
      
      private var §#F§:Object;
      
      public function §-C§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§?@§ = param4 * 1000;
         this.§;!a§ = param5;
         §&!w§ = 0;
         this.§2x§ = true;
         this.§<!o§ = false;
         param2 = this.§+"<§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§+"<§(param3,param2);
            this.§7!p§(param2,param3);
         }
         else
         {
            this.§7!p§(param2,param1);
         }
         this.§%"6§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§<!o§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§2x§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§%"6§ = null;
         this.§#F§ = null;
         this.§9!#§ = null;
      }
      
      public function §"6§() : void
      {
         §&!w§ = -§>!G§;
         this.§<!o§ = false;
      }
      
      private function §+"<§(param1:Object, param2:Object) : Object
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
      
      private function §7!p§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§#F§ = _loc3_;
         this.§9!#§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§<!o§)
         {
            this.§<!o§ = true;
            §-!t§ = null;
            §&!w§ = this.§?@§;
         }
      }
      
      public function §%z§() : void
      {
         if(!this.§<!o§)
         {
            this.§<!o§ = true;
            §&!w§ = this.§?@§;
            this.§9"<§();
         }
      }
      
      public function pause() : void
      {
         this.§2x§ = true;
      }
      
      public function play() : void
      {
         this.§2x§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§2x§ || this.isCompleted)
         {
            return;
         }
         §&!w§ += param1;
         if(§&!w§ >= this.§?@§)
         {
            if(§7!=§)
            {
               §&!w§ = this.§?@§;
               this.§<!o§ = true;
            }
            else
            {
               §&!w§ = 0;
            }
         }
         this.§9"<§();
         this.§[S§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §9"<§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§%"§();
            for(attribute in this.§#F§)
            {
               this.§%"6§[attribute] = this.§9!#§[attribute] + this.§#F§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §<!o§ = true;
            if(!§6!]§)
            {
               throw e;
            }
         }
      }
      
      private function §[S§() : void
      {
         if(this.isCompleted && §-!t§ != null)
         {
            try
            {
               §-!t§();
               §-!t§ = null;
            }
            catch(e:Error)
            {
               §-!t§ = null;
               if(!§6!]§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §%"§() : Number
      {
         if(this.§?@§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§&!w§);
         _loc1_ = Math.min(_loc1_,this.§?@§);
         return this.§;!a§(_loc1_,0,1,this.§?@§);
      }
   }
}
