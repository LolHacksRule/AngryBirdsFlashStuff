package §%q§
{
   public class §^Q§ extends §%!C§ implements §;i§
   {
       
      
      private var §const§:Number;
      
      private var §4!1§:Boolean;
      
      private var §'!&§:Boolean;
      
      private var §-!1§:Function;
      
      private var §?!<§:Object;
      
      private var §'@§:Object;
      
      private var §[&§:Object;
      
      public function §^Q§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§const§ = param4 * 1000;
         this.§-!1§ = param5;
         §%A§ = 0;
         this.§'!&§ = true;
         this.§4!1§ = false;
         param2 = this.§<k§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§<k§(param3,param2);
            this.§3!?§(param2,param3);
         }
         else
         {
            this.§3!?§(param2,param1);
         }
         this.§?!<§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§4!1§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§'!&§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§?!<§ = null;
         this.§[&§ = null;
         this.§'@§ = null;
      }
      
      public function §3!B§() : void
      {
         §%A§ = -§[D§;
         this.§4!1§ = false;
      }
      
      private function §<k§(param1:Object, param2:Object) : Object
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
      
      private function §3!?§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§[&§ = _loc3_;
         this.§'@§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§4!1§)
         {
            this.§4!1§ = true;
            §&S§ = null;
            §%A§ = this.§const§;
         }
      }
      
      public function §[!F§() : void
      {
         if(!this.§4!1§)
         {
            this.§4!1§ = true;
            §%A§ = this.§const§;
            this.§,!,§();
         }
      }
      
      public function pause() : void
      {
         this.§'!&§ = true;
      }
      
      public function play() : void
      {
         this.§'!&§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§'!&§ || this.isCompleted)
         {
            return;
         }
         §%A§ += param1;
         if(§%A§ >= this.§const§)
         {
            if(§&q§)
            {
               §%A§ = this.§const§;
               this.§4!1§ = true;
            }
            else
            {
               §%A§ = 0;
            }
         }
         this.§,!,§();
         this.§2!$§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §,!,§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§^[§();
            for(attribute in this.§[&§)
            {
               this.§?!<§[attribute] = this.§'@§[attribute] + this.§[&§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §4!1§ = true;
            if(!§-R§)
            {
               throw e;
            }
         }
      }
      
      private function §2!$§() : void
      {
         if(this.isCompleted && §&S§ != null)
         {
            try
            {
               §&S§();
               §&S§ = null;
            }
            catch(e:Error)
            {
               §&S§ = null;
               if(!§-R§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §^[§() : Number
      {
         if(this.§const§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§%A§);
         _loc1_ = Math.min(_loc1_,this.§const§);
         return this.§-!1§(_loc1_,0,1,this.§const§);
      }
   }
}
