package §-b§
{
   public class §^!z§ extends §8!_§ implements § !e§
   {
       
      
      private var §=S§:Number;
      
      private var §+c§:Boolean;
      
      private var §3!u§:Function;
      
      private var §!!0§:Object;
      
      private var §"_§:Object;
      
      private var §0%§:Object;
      
      public function §^!z§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§=S§ = param4 * 1000;
         this.§3!u§ = param5;
         static = 0;
         this.§+c§ = false;
         param2 = this.§+!5§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§+!5§(param3,param2);
            this.§5!g§(param2,param3);
         }
         else
         {
            this.§5!g§(param2,param1);
         }
         this.§!!0§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§+c§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§!!0§ = null;
         this.§0%§ = null;
         this.§"_§ = null;
         super.dispose();
      }
      
      public function §@E§() : void
      {
         static = -§1!%§;
         this.§+c§ = false;
      }
      
      private function §+!5§(param1:Object, param2:Object) : Object
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
      
      private function §5!g§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§0%§ = _loc3_;
         this.§"_§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§+c§)
         {
            this.§+c§ = true;
            §6l§ = null;
            static = this.§=S§;
         }
      }
      
      public function §8!E§() : void
      {
         if(!this.§+c§)
         {
            this.§+c§ = true;
            static = this.§=S§;
            this.§-<§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§!!K§(param1))
         {
            return;
         }
         if(static >= this.§=S§)
         {
            if(§^t§)
            {
               static = this.§=S§;
               this.§+c§ = true;
            }
            else
            {
               static = 0;
            }
         }
         this.§-<§();
         this.§3!3§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §-<§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§#=§();
            for(attribute in this.§0%§)
            {
               this.§!!0§[attribute] = this.§"_§[attribute] + this.§0%§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §+c§ = true;
            if(!§;p§)
            {
               throw e;
            }
         }
      }
      
      private function §3!3§() : void
      {
         if(this.isCompleted && §6l§ != null)
         {
            try
            {
               §6l§();
               §6l§ = null;
            }
            catch(e:Error)
            {
               §6l§ = null;
               if(!§;p§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §#=§() : Number
      {
         if(this.§=S§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,static);
         _loc1_ = Math.min(_loc1_,this.§=S§);
         return this.§3!u§(_loc1_,0,1,this.§=S§);
      }
   }
}
