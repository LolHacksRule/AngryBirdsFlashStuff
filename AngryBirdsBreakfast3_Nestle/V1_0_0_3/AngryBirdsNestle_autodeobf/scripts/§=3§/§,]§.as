package §=3§
{
   public class §,]§ extends §->§ implements § !h§
   {
       
      
      private var §68§:Number;
      
      private var §5!d§:Boolean;
      
      private var §#"#§:Function;
      
      private var §6"'§:Object;
      
      private var §]"§:Object;
      
      private var §'X§:Object;
      
      public function §,]§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§68§ = param4 * 1000;
         this.§#"#§ = param5;
         §[!l§ = 0;
         this.§5!d§ = false;
         param2 = this.§3!J§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§3!J§(param3,param2);
            this.§;!A§(param2,param3);
         }
         else
         {
            this.§;!A§(param2,param1);
         }
         this.§6"'§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§5!d§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§6"'§ = null;
         this.§'X§ = null;
         this.§]"§ = null;
         super.dispose();
      }
      
      public function §#"+§() : void
      {
         §[!l§ = -§>!x§;
         this.§5!d§ = false;
      }
      
      private function §3!J§(param1:Object, param2:Object) : Object
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
      
      private function §;!A§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§'X§ = _loc3_;
         this.§]"§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§5!d§)
         {
            this.§5!d§ = true;
            § !o§ = null;
            §[!l§ = this.§68§;
         }
      }
      
      public function §5$§() : void
      {
         if(!this.§5!d§)
         {
            this.§5!d§ = true;
            §[!l§ = this.§68§;
            this.§9!7§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§8!z§(param1))
         {
            return;
         }
         if(§[!l§ >= this.§68§)
         {
            if(§"!6§)
            {
               §[!l§ = this.§68§;
               this.§5!d§ = true;
            }
            else
            {
               §[!l§ = 0;
            }
         }
         this.§9!7§();
         this.§=A§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §9!7§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§`!]§();
            for(attribute in this.§'X§)
            {
               this.§6"'§[attribute] = this.§]"§[attribute] + this.§'X§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §5!d§ = true;
            if(!§ !+§)
            {
               throw e;
            }
         }
      }
      
      private function §=A§() : void
      {
         if(this.isCompleted && § !o§ != null)
         {
            try
            {
               § !o§();
               § !o§ = null;
            }
            catch(e:Error)
            {
               § !o§ = null;
               if(!§ !+§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §`!]§() : Number
      {
         if(this.§68§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§[!l§);
         _loc1_ = Math.min(_loc1_,this.§68§);
         return this.§#"#§(_loc1_,0,1,this.§68§);
      }
   }
}
