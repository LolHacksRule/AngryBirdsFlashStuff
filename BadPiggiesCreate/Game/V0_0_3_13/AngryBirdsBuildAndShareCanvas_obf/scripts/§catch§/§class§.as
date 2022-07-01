package §catch§
{
   public class §class§ extends §?5§ implements §!M§
   {
       
      
      private var §#"!§:Number;
      
      private var §%O§:Boolean;
      
      private var §`!K§:Boolean;
      
      private var §=![§:Function;
      
      private var §;Z§:Object;
      
      private var §?U§:Object;
      
      private var §60§:Object;
      
      public function §class§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§#"!§ = param4 * 1000;
         this.§=![§ = param5;
         §[!#§ = 0;
         this.§`!K§ = true;
         this.§%O§ = false;
         param2 = this.§""6§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§""6§(param3,param2);
            this.§;!-§(param2,param3);
         }
         else
         {
            this.§;!-§(param2,param1);
         }
         this.§;Z§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§%O§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§`!K§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§;Z§ = null;
         this.§60§ = null;
         this.§?U§ = null;
      }
      
      public function §6!-§() : void
      {
         §[!#§ = -§7%§;
         this.§%O§ = false;
      }
      
      private function §""6§(param1:Object, param2:Object) : Object
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
      
      private function §;!-§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§60§ = _loc3_;
         this.§?U§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§%O§)
         {
            this.§%O§ = true;
            §&!Q§ = null;
            §[!#§ = this.§#"!§;
         }
      }
      
      public function §8!§() : void
      {
         if(!this.§%O§)
         {
            this.§%O§ = true;
            §[!#§ = this.§#"!§;
            this.§;!Y§();
         }
      }
      
      public function pause() : void
      {
         this.§`!K§ = true;
      }
      
      public function play() : void
      {
         this.§`!K§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§`!K§ || this.isCompleted)
         {
            return;
         }
         §[!#§ += param1;
         if(§[!#§ >= this.§#"!§)
         {
            if(§ set§)
            {
               §[!#§ = this.§#"!§;
               this.§%O§ = true;
            }
            else
            {
               §[!#§ = 0;
            }
         }
         this.§;!Y§();
         this.§;!n§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §;!Y§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§>A§();
            for(attribute in this.§60§)
            {
               this.§;Z§[attribute] = this.§?U§[attribute] + this.§60§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §%O§ = true;
            if(!§+"%§)
            {
               throw e;
            }
         }
      }
      
      private function §;!n§() : void
      {
         if(this.isCompleted && §&!Q§ != null)
         {
            try
            {
               §&!Q§();
               §&!Q§ = null;
            }
            catch(e:Error)
            {
               §&!Q§ = null;
               if(!§+"%§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §>A§() : Number
      {
         if(this.§#"!§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§[!#§);
         _loc1_ = Math.min(_loc1_,this.§#"!§);
         return this.§=![§(_loc1_,0,1,this.§#"!§);
      }
   }
}
