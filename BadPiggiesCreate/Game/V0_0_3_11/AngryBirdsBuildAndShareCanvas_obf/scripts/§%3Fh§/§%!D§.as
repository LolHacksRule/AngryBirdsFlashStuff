package §?h§
{
   public class §%!D§ extends § !r§ implements §?!M§
   {
       
      
      private var §,o§:Number;
      
      private var §?"-§:Boolean;
      
      private var §%!r§:Boolean;
      
      private var §<H§:Function;
      
      private var §&!A§:Object;
      
      private var §6§:Object;
      
      private var §?"5§:Object;
      
      public function §%!D§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§,o§ = param4 * 1000;
         this.§<H§ = param5;
         §]!p§ = 0;
         this.§%!r§ = true;
         this.§?"-§ = false;
         param2 = this.§2"8§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§2"8§(param3,param2);
            this.§6B§(param2,param3);
         }
         else
         {
            this.§6B§(param2,param1);
         }
         this.§&!A§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§?"-§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§%!r§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§&!A§ = null;
         this.§?"5§ = null;
         this.§6§ = null;
      }
      
      public function §!"%§() : void
      {
         §]!p§ = -§%[§;
         this.§?"-§ = false;
      }
      
      private function §2"8§(param1:Object, param2:Object) : Object
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
      
      private function §6B§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§?"5§ = _loc3_;
         this.§6§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§?"-§)
         {
            this.§?"-§ = true;
            §^!M§ = null;
            §]!p§ = this.§,o§;
         }
      }
      
      public function §,!O§() : void
      {
         if(!this.§?"-§)
         {
            this.§?"-§ = true;
            §]!p§ = this.§,o§;
            this.§2!9§();
         }
      }
      
      public function pause() : void
      {
         this.§%!r§ = true;
      }
      
      public function play() : void
      {
         this.§%!r§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§%!r§ || this.isCompleted)
         {
            return;
         }
         §]!p§ += param1;
         if(§]!p§ >= this.§,o§)
         {
            if(§"w§)
            {
               §]!p§ = this.§,o§;
               this.§?"-§ = true;
            }
            else
            {
               §]!p§ = 0;
            }
         }
         this.§2!9§();
         this.§!!H§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §2!9§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§+!f§();
            for(attribute in this.§?"5§)
            {
               this.§&!A§[attribute] = this.§6§[attribute] + this.§?"5§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §?"-§ = true;
            if(!§7"4§)
            {
               throw e;
            }
         }
      }
      
      private function §!!H§() : void
      {
         if(this.isCompleted && §^!M§ != null)
         {
            try
            {
               §^!M§();
               §^!M§ = null;
            }
            catch(e:Error)
            {
               §^!M§ = null;
               if(!§7"4§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §+!f§() : Number
      {
         if(this.§,o§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§]!p§);
         _loc1_ = Math.min(_loc1_,this.§,o§);
         return this.§<H§(_loc1_,0,1,this.§,o§);
      }
   }
}
