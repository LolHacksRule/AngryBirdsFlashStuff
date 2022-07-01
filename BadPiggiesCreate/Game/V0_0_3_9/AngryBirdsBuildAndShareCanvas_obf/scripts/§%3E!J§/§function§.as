package §>!J§
{
   public class §function§ extends §+!b§ implements § !8§
   {
       
      
      private var §^"8§:Number;
      
      private var §9!w§:Boolean;
      
      private var §4!§:Boolean;
      
      private var §?!k§:Function;
      
      private var §9#§:Object;
      
      private var §1t§:Object;
      
      private var §7!o§:Object;
      
      public function §function§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§^"8§ = param4 * 1000;
         this.§?!k§ = param5;
         §7!n§ = 0;
         this.§4!§ = true;
         this.§9!w§ = false;
         param2 = this.§+!N§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§+!N§(param3,param2);
            this.§^!j§(param2,param3);
         }
         else
         {
            this.§^!j§(param2,param1);
         }
         this.§9#§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§9!w§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§4!§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§9#§ = null;
         this.§7!o§ = null;
         this.§1t§ = null;
      }
      
      public function §7J§() : void
      {
         §7!n§ = -§4!$§;
         this.§9!w§ = false;
      }
      
      private function §+!N§(param1:Object, param2:Object) : Object
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
      
      private function §^!j§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§7!o§ = _loc3_;
         this.§1t§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§9!w§)
         {
            this.§9!w§ = true;
            §%!g§ = null;
            §7!n§ = this.§^"8§;
         }
      }
      
      public function §0%§() : void
      {
         if(!this.§9!w§)
         {
            this.§9!w§ = true;
            §7!n§ = this.§^"8§;
            this.§4v§();
         }
      }
      
      public function pause() : void
      {
         this.§4!§ = true;
      }
      
      public function play() : void
      {
         this.§4!§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§4!§ || this.isCompleted)
         {
            return;
         }
         §7!n§ += param1;
         if(§7!n§ >= this.§^"8§)
         {
            if(§%@§)
            {
               §7!n§ = this.§^"8§;
               this.§9!w§ = true;
            }
            else
            {
               §7!n§ = 0;
            }
         }
         this.§4v§();
         this.§-!h§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §4v§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§,g§();
            for(attribute in this.§7!o§)
            {
               this.§9#§[attribute] = this.§1t§[attribute] + this.§7!o§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §9!w§ = true;
            if(!§@!I§)
            {
               throw e;
            }
         }
      }
      
      private function §-!h§() : void
      {
         if(this.isCompleted && §%!g§ != null)
         {
            try
            {
               §%!g§();
               §%!g§ = null;
            }
            catch(e:Error)
            {
               §%!g§ = null;
               if(!§@!I§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §,g§() : Number
      {
         if(this.§^"8§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§7!n§);
         _loc1_ = Math.min(_loc1_,this.§^"8§);
         return this.§?!k§(_loc1_,0,1,this.§^"8§);
      }
   }
}
