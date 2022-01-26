package §6!S§
{
   public class §&!§ extends §;!<§ implements §1a§
   {
       
      
      private var §0=§:Number;
      
      private var §-4§:Boolean;
      
      private var §]c§:Boolean;
      
      private var §!!%§:Function;
      
      private var §%j§:Object;
      
      private var §%e§:Object;
      
      private var §!!0§:Object;
      
      public function §&!§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§0=§ = param4 * 1000;
         this.§!!%§ = param5;
         §4!§ = 0;
         this.§]c§ = true;
         this.§-4§ = false;
         param2 = this.§'!Z§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§'!Z§(param3,param2);
            this.§2!$§(param2,param3);
         }
         else
         {
            this.§2!$§(param2,param1);
         }
         this.§%j§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§-4§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§]c§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§%j§ = null;
         this.§!!0§ = null;
         this.§%e§ = null;
      }
      
      public function §'!=§() : void
      {
         §4!§ = -§"!S§;
         this.§-4§ = false;
      }
      
      private function §'!Z§(param1:Object, param2:Object) : Object
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
      
      private function §2!$§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§!!0§ = _loc3_;
         this.§%e§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§-4§)
         {
            this.§-4§ = true;
            §]b§ = null;
            §4!§ = this.§0=§;
         }
      }
      
      public function §5!!§() : void
      {
         if(!this.§-4§)
         {
            this.§-4§ = true;
            §4!§ = this.§0=§;
            this.§4n§();
         }
      }
      
      public function §9!§() : void
      {
         this.§]c§ = true;
      }
      
      public function play() : void
      {
         this.§]c§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§]c§ || this.isCompleted)
         {
            return;
         }
         §4!§ += param1;
         if(§4!§ >= this.§0=§)
         {
            if(§'!2§)
            {
               §4!§ = this.§0=§;
               this.§-4§ = true;
            }
            else
            {
               §4!§ = 0;
            }
         }
         this.§4n§();
         this.§2!1§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §4n§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§]!H§();
            for(attribute in this.§!!0§)
            {
               this.§%j§[attribute] = this.§%e§[attribute] + this.§!!0§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §-4§ = true;
            if(!§^!=§)
            {
               throw e;
            }
         }
      }
      
      private function §2!1§() : void
      {
         if(this.isCompleted && §]b§ != null)
         {
            try
            {
               §]b§();
               §]b§ = null;
            }
            catch(e:Error)
            {
               §]b§ = null;
               if(!§^!=§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §]!H§() : Number
      {
         if(this.§0=§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§4!§);
         _loc1_ = Math.min(_loc1_,this.§0=§);
         return this.§!!%§(_loc1_,0,1,this.§0=§);
      }
   }
}
