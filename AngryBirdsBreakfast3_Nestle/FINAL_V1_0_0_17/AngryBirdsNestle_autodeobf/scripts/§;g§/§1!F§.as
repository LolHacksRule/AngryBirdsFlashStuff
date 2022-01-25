package §;g§
{
   public class §1!F§ extends §]w§ implements §<!9§
   {
       
      
      private var §9k§:Number;
      
      private var §2!g§:Boolean;
      
      private var §5k§:Function;
      
      private var §!N§:Object;
      
      private var §7U§:Object;
      
      private var §'S§:Object;
      
      public function §1!F§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§9k§ = param4 * 1000;
         this.§5k§ = param5;
         §>!?§ = 0;
         this.§2!g§ = false;
         param2 = this.§?!#§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§?!#§(param3,param2);
            this.§<W§(param2,param3);
         }
         else
         {
            this.§<W§(param2,param1);
         }
         this.§!N§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§2!g§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§!N§ = null;
         this.§'S§ = null;
         this.§7U§ = null;
         super.dispose();
      }
      
      public function §=E§() : void
      {
         §>!?§ = -§<!n§;
         this.§2!g§ = false;
      }
      
      private function §?!#§(param1:Object, param2:Object) : Object
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
      
      private function §<W§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§'S§ = _loc3_;
         this.§7U§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§2!g§)
         {
            this.§2!g§ = true;
            §;!h§ = null;
            §>!?§ = this.§9k§;
         }
      }
      
      public function §?"+§() : void
      {
         if(!this.§2!g§)
         {
            this.§2!g§ = true;
            §>!?§ = this.§9k§;
            this.§?!d§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§^!m§(param1))
         {
            return;
         }
         if(§>!?§ >= this.§9k§)
         {
            if(§7!>§)
            {
               §>!?§ = this.§9k§;
               this.§2!g§ = true;
            }
            else
            {
               §>!?§ = 0;
            }
         }
         this.§?!d§();
         this.§=!c§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §?!d§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§56§();
            for(attribute in this.§'S§)
            {
               this.§!N§[attribute] = this.§7U§[attribute] + this.§'S§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §2!g§ = true;
            if(!§#M§)
            {
               throw e;
            }
         }
      }
      
      private function §=!c§() : void
      {
         if(this.isCompleted && §;!h§ != null)
         {
            try
            {
               §;!h§();
               §;!h§ = null;
            }
            catch(e:Error)
            {
               §;!h§ = null;
               if(!§#M§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §56§() : Number
      {
         if(this.§9k§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§>!?§);
         _loc1_ = Math.min(_loc1_,this.§9k§);
         return this.§5k§(_loc1_,0,1,this.§9k§);
      }
   }
}
