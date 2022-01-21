package §`!"§
{
   public class §+!Z§ extends §"!b§ implements §`!&§
   {
       
      
      private var §&z§:Number;
      
      private var §2%§:Boolean;
      
      private var §6!!§:Boolean;
      
      private var §6_§:Function;
      
      private var §&J§:Object;
      
      private var §"!Y§:Object;
      
      private var §9!R§:Object;
      
      public function §+!Z§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§&z§ = param4 * 1000;
         this.§6_§ = param5;
         §6!S§ = 0;
         this.§6!!§ = true;
         this.§2%§ = false;
         param2 = this.§?!^§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§?!^§(param3,param2);
            this.§'!V§(param2,param3);
         }
         else
         {
            this.§'!V§(param2,param1);
         }
         this.§&J§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§2%§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§6!!§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§&J§ = null;
         this.§9!R§ = null;
         this.§"!Y§ = null;
      }
      
      public function §7!`§() : void
      {
         §6!S§ = -§",§;
         this.§2%§ = false;
      }
      
      private function §?!^§(param1:Object, param2:Object) : Object
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
      
      private function §'!V§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§9!R§ = _loc3_;
         this.§"!Y§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§2%§)
         {
            this.§2%§ = true;
            §>m§ = null;
            §6!S§ = this.§&z§;
         }
      }
      
      public function §'V§() : void
      {
         if(!this.§2%§)
         {
            this.§2%§ = true;
            §6!S§ = this.§&z§;
            this.§ case§();
         }
      }
      
      public function §2![§() : void
      {
         this.§6!!§ = true;
      }
      
      public function play() : void
      {
         this.§6!!§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§6!!§ || this.isCompleted)
         {
            return;
         }
         §6!S§ += param1;
         if(§6!S§ >= this.§&z§)
         {
            if(§6!j§)
            {
               §6!S§ = this.§&z§;
               this.§2%§ = true;
            }
            else
            {
               §6!S§ = 0;
            }
         }
         this.§ case§();
         this.§%O§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function § case§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§[@§();
            for(attribute in this.§9!R§)
            {
               this.§&J§[attribute] = this.§"!Y§[attribute] + this.§9!R§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §2%§ = true;
            if(!§^!6§)
            {
               throw e;
            }
         }
      }
      
      private function §%O§() : void
      {
         if(this.isCompleted && §>m§ != null)
         {
            try
            {
               §>m§();
               §>m§ = null;
            }
            catch(e:Error)
            {
               §>m§ = null;
               if(!§^!6§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §[@§() : Number
      {
         if(this.§&z§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§6!S§);
         _loc1_ = Math.min(_loc1_,this.§&z§);
         return this.§6_§(_loc1_,0,1,this.§&z§);
      }
   }
}
