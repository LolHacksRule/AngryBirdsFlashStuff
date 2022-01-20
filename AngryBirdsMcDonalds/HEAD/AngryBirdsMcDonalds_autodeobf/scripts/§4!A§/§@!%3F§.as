package §4!A§
{
   public class §@!?§ extends §3!"§ implements §0Y§
   {
       
      
      private var §[!3§:Number;
      
      private var §?K§:Boolean;
      
      private var §+!=§:Boolean;
      
      private var §3!%§:Function;
      
      private var §6,§:Object;
      
      private var §^!`§:Object;
      
      private var §[g§:Object;
      
      public function §@!?§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§[!3§ = param4 * 1000;
         this.§3!%§ = param5;
         §@!M§ = 0;
         this.§+!=§ = true;
         this.§?K§ = false;
         param2 = this.§?S§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§?S§(param3,param2);
            this.§7=§(param2,param3);
         }
         else
         {
            this.§7=§(param2,param1);
         }
         this.§6,§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§?K§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§+!=§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§6,§ = null;
         this.§[g§ = null;
         this.§^!`§ = null;
      }
      
      public function §>;§() : void
      {
         §@!M§ = -§?x§;
         this.§?K§ = false;
      }
      
      private function §?S§(param1:Object, param2:Object) : Object
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
      
      private function §7=§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§[g§ = _loc3_;
         this.§^!`§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§?K§)
         {
            this.§?K§ = true;
            §]2§ = null;
            §@!M§ = this.§[!3§;
         }
      }
      
      public function §'!§() : void
      {
         if(!this.§?K§)
         {
            this.§?K§ = true;
            §@!M§ = this.§[!3§;
            this.§?1§();
         }
      }
      
      public function §[,§() : void
      {
         this.§+!=§ = true;
      }
      
      public function play() : void
      {
         this.§+!=§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§+!=§ || this.isCompleted)
         {
            return;
         }
         §@!M§ += param1;
         if(§@!M§ >= this.§[!3§)
         {
            if(§@!H§)
            {
               §@!M§ = this.§[!3§;
               this.§?K§ = true;
            }
            else
            {
               §@!M§ = 0;
            }
         }
         this.§?1§();
         this.§1!-§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §?1§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§5!7§();
            for(attribute in this.§[g§)
            {
               this.§6,§[attribute] = this.§^!`§[attribute] + this.§[g§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §?K§ = true;
            if(!§=!%§)
            {
               throw e;
            }
         }
      }
      
      private function §1!-§() : void
      {
         if(this.isCompleted && §]2§ != null)
         {
            try
            {
               §]2§();
               §]2§ = null;
            }
            catch(e:Error)
            {
               §]2§ = null;
               if(!§=!%§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §5!7§() : Number
      {
         if(this.§[!3§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§@!M§);
         _loc1_ = Math.min(_loc1_,this.§[!3§);
         return this.§3!%§(_loc1_,0,1,this.§[!3§);
      }
   }
}
