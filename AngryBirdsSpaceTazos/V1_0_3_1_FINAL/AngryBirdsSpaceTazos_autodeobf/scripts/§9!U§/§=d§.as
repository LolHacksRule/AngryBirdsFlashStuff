package §9!U§
{
   public class §=d§ extends §]"D§ implements §^"3§
   {
       
      
      private var §5"+§:Number;
      
      private var §#!+§:Boolean;
      
      private var § ?§:Function;
      
      private var §?!§:Object;
      
      private var §%!h§:Object;
      
      private var §,!1§:Object;
      
      public function §=d§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§5"+§ = param4 * 1000;
         this.§ ?§ = param5;
         §#"D§ = 0;
         this.§#!+§ = false;
         param2 = this.§6V§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§6V§(param3,param2);
            this.§0;§(param2,param3);
         }
         else
         {
            this.§0;§(param2,param1);
         }
         this.§?!§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§#!+§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§?!§ = null;
         this.§,!1§ = null;
         this.§%!h§ = null;
         super.dispose();
      }
      
      public function §9#§() : void
      {
         §#"D§ = -§""3§;
         this.§#!+§ = false;
      }
      
      private function §6V§(param1:Object, param2:Object) : Object
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
      
      private function §0;§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§,!1§ = _loc3_;
         this.§%!h§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§#!+§)
         {
            this.§#!+§ = true;
            § "1§ = null;
            §#"D§ = this.§5"+§;
         }
      }
      
      public function §`w§() : void
      {
         if(!this.§#!+§)
         {
            this.§#!+§ = true;
            §#"D§ = this.§5"+§;
            this.§<!f§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§5!h§(param1))
         {
            return;
         }
         if(§#"D§ >= this.§5"+§)
         {
            if(§ !M§)
            {
               §#"D§ = this.§5"+§;
               this.§#!+§ = true;
            }
            else
            {
               §#"D§ = 0;
            }
         }
         this.§<!f§();
         this.§]!_§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §<!f§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§5H§();
            for(attribute in this.§,!1§)
            {
               this.§?!§[attribute] = this.§%!h§[attribute] + this.§,!1§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §#!+§ = true;
            if(!§%"A§)
            {
               throw e;
            }
         }
      }
      
      private function §]!_§() : void
      {
         if(this.isCompleted && § "1§ != null)
         {
            try
            {
               § "1§();
               § "1§ = null;
            }
            catch(e:Error)
            {
               § "1§ = null;
               if(!§%"A§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §5H§() : Number
      {
         if(this.§5"+§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§#"D§);
         _loc1_ = Math.min(_loc1_,this.§5"+§);
         return this.§ ?§(_loc1_,0,1,this.§5"+§);
      }
   }
}
