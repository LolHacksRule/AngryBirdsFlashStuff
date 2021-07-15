package §?@§
{
   public class §<c§ extends §-w§ implements §9!k§
   {
       
      
      private var §3Z§:Number;
      
      private var § S§:Boolean;
      
      private var §1S§:Function;
      
      private var §9U§:Object;
      
      private var §;!K§:Object;
      
      private var §9!S§:Object;
      
      public function §<c§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§3Z§ = param4 * 1000;
         this.§1S§ = param5;
         §^B§ = 0;
         this.§ S§ = false;
         param2 = this.§]!x§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§]!x§(param3,param2);
            this.§+J§(param2,param3);
         }
         else
         {
            this.§+J§(param2,param1);
         }
         this.§9U§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§ S§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§9U§ = null;
         this.§9!S§ = null;
         this.§;!K§ = null;
         super.dispose();
      }
      
      public function §8_§() : void
      {
         §^B§ = -§55§;
         this.§ S§ = false;
      }
      
      private function §]!x§(param1:Object, param2:Object) : Object
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
      
      private function §+J§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§9!S§ = _loc3_;
         this.§;!K§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§ S§)
         {
            this.§ S§ = true;
            §try§ = null;
            §^B§ = this.§3Z§;
         }
      }
      
      public function §+-§() : void
      {
         if(!this.§ S§)
         {
            this.§ S§ = true;
            §^B§ = this.§3Z§;
            this.§["&§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§`G§(param1))
         {
            return;
         }
         if(§^B§ >= this.§3Z§)
         {
            if(§7f§)
            {
               §^B§ = this.§3Z§;
               this.§ S§ = true;
            }
            else
            {
               §^B§ = 0;
            }
         }
         this.§["&§();
         this.§'!r§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §["&§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§<!1§();
            for(attribute in this.§9!S§)
            {
               this.§9U§[attribute] = this.§;!K§[attribute] + this.§9!S§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            § S§ = true;
            if(!§5l§)
            {
               throw e;
            }
         }
      }
      
      private function §'!r§() : void
      {
         if(this.isCompleted && §try§ != null)
         {
            try
            {
               §try§();
               §try§ = null;
            }
            catch(e:Error)
            {
               §try§ = null;
               if(!§5l§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §<!1§() : Number
      {
         if(this.§3Z§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§^B§);
         _loc1_ = Math.min(_loc1_,this.§3Z§);
         return this.§1S§(_loc1_,0,1,this.§3Z§);
      }
   }
}
