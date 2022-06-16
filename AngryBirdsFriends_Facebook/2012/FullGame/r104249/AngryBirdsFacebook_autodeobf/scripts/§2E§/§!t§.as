package §2E§
{
   public class §!t§ extends §8!B§ implements §2l§
   {
       
      
      private var §%K§:Number;
      
      private var §4![§:Boolean;
      
      private var §5L§:Boolean;
      
      private var §4"<§:Function;
      
      private var §^e§:Object;
      
      private var §+,§:Object;
      
      private var §-"4§:Object;
      
      public function §!t§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§%K§ = param4 * 1000;
         this.§4"<§ = param5;
         §=!S§ = 0;
         this.§5L§ = true;
         this.§4![§ = false;
         param2 = this.§`"0§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§`"0§(param3,param2);
            this.§?!J§(param2,param3);
         }
         else
         {
            this.§?!J§(param2,param1);
         }
         this.§^e§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§4![§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§5L§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§^e§ = null;
         this.§-"4§ = null;
         this.§+,§ = null;
      }
      
      public function §>!_§() : void
      {
         §=!S§ = -§;`§;
         this.§4![§ = false;
      }
      
      private function §`"0§(param1:Object, param2:Object) : Object
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
      
      private function §?!J§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§-"4§ = _loc3_;
         this.§+,§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§4![§)
         {
            this.§4![§ = true;
            §6!_§ = null;
            §=!S§ = this.§%K§;
         }
      }
      
      public function §7V§() : void
      {
         if(!this.§4![§)
         {
            this.§4![§ = true;
            §=!S§ = this.§%K§;
            this.§6"%§();
         }
      }
      
      public function pause() : void
      {
         this.§5L§ = true;
      }
      
      public function play() : void
      {
         this.§5L§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§5L§ || this.isCompleted)
         {
            return;
         }
         §=!S§ += param1;
         if(§=!S§ >= this.§%K§)
         {
            if(§1f§)
            {
               §=!S§ = this.§%K§;
               this.§4![§ = true;
            }
            else
            {
               §=!S§ = 0;
            }
         }
         this.§6"%§();
         this.§4!1§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §6"%§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§9e§();
            for(attribute in this.§-"4§)
            {
               this.§^e§[attribute] = this.§+,§[attribute] + this.§-"4§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §4![§ = true;
            if(!§@!9§)
            {
               throw e;
            }
         }
      }
      
      private function §4!1§() : void
      {
         if(this.isCompleted && §6!_§ != null)
         {
            try
            {
               §6!_§();
               §6!_§ = null;
            }
            catch(e:Error)
            {
               §6!_§ = null;
               if(!§@!9§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §9e§() : Number
      {
         if(this.§%K§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§=!S§);
         _loc1_ = Math.min(_loc1_,this.§%K§);
         return this.§4"<§(_loc1_,0,1,this.§%K§);
      }
   }
}
