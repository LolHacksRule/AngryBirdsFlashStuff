package §'V§
{
   public class §[!c§ extends §8a§ implements §%!"§
   {
       
      
      private var §%6§:Number;
      
      private var §'"7§:Boolean;
      
      private var §`!-§:Boolean;
      
      private var §6!?§:Function;
      
      private var §&d§:Object;
      
      private var §<!9§:Object;
      
      private var §%J§:Object;
      
      public function §[!c§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§%6§ = param4 * 1000;
         this.§6!?§ = param5;
         §9R§ = 0;
         this.§`!-§ = true;
         this.§'"7§ = false;
         param2 = this.§3n§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§3n§(param3,param2);
            this.§-!&§(param2,param3);
         }
         else
         {
            this.§-!&§(param2,param1);
         }
         this.§&d§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§'"7§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§`!-§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§&d§ = null;
         this.§%J§ = null;
         this.§<!9§ = null;
      }
      
      public function §!1§() : void
      {
         §9R§ = -§&l§;
         this.§'"7§ = false;
      }
      
      private function §3n§(param1:Object, param2:Object) : Object
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
      
      private function §-!&§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§%J§ = _loc3_;
         this.§<!9§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§'"7§)
         {
            this.§'"7§ = true;
            §,h§ = null;
            §9R§ = this.§%6§;
         }
      }
      
      public function §]!!§() : void
      {
         if(!this.§'"7§)
         {
            this.§'"7§ = true;
            §9R§ = this.§%6§;
            this.§<w§();
         }
      }
      
      public function pause() : void
      {
         this.§`!-§ = true;
      }
      
      public function play() : void
      {
         this.§`!-§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§`!-§ || this.isCompleted)
         {
            return;
         }
         §9R§ += param1;
         if(§9R§ >= this.§%6§)
         {
            if(§;!n§)
            {
               §9R§ = this.§%6§;
               this.§'"7§ = true;
            }
            else
            {
               §9R§ = 0;
            }
         }
         this.§<w§();
         this.§6!P§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §<w§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§]"$§();
            for(attribute in this.§%J§)
            {
               this.§&d§[attribute] = this.§<!9§[attribute] + this.§%J§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §'"7§ = true;
            if(!§!!p§)
            {
               throw e;
            }
         }
      }
      
      private function §6!P§() : void
      {
         if(this.isCompleted && §,h§ != null)
         {
            try
            {
               §,h§();
               §,h§ = null;
            }
            catch(e:Error)
            {
               §,h§ = null;
               if(!§!!p§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §]"$§() : Number
      {
         if(this.§%6§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§9R§);
         _loc1_ = Math.min(_loc1_,this.§%6§);
         return this.§6!?§(_loc1_,0,1,this.§%6§);
      }
   }
}
