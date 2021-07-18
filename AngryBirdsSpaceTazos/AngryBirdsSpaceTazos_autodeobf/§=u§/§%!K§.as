package §=u§
{
   public class §%!K§ extends § ">§ implements § "1§
   {
       
      
      private var §1!?§:Number;
      
      private var §'O§:Boolean;
      
      private var §&" §:Function;
      
      private var §?!<§:Object;
      
      private var §1!r§:Object;
      
      private var §%j§:Object;
      
      public function §%!K§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§1!?§ = param4 * 1000;
         this.§&" § = param5;
         § "?§ = 0;
         this.§'O§ = false;
         param2 = this.§5"'§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§5"'§(param3,param2);
            this.§,"E§(param2,param3);
         }
         else
         {
            this.§,"E§(param2,param1);
         }
         this.§?!<§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§'O§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§?!<§ = null;
         this.§%j§ = null;
         this.§1!r§ = null;
         super.dispose();
      }
      
      public function §[§() : void
      {
         § "?§ = -§1"'§;
         this.§'O§ = false;
      }
      
      private function §5"'§(param1:Object, param2:Object) : Object
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
      
      private function §,"E§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§%j§ = _loc3_;
         this.§1!r§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§'O§)
         {
            this.§'O§ = true;
            §6!s§ = null;
            § "?§ = this.§1!?§;
         }
      }
      
      public function §+e§() : void
      {
         if(!this.§'O§)
         {
            this.§'O§ = true;
            § "?§ = this.§1!?§;
            this.§'a§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§7z§(param1))
         {
            return;
         }
         if(§ "?§ >= this.§1!?§)
         {
            if(§["-§)
            {
               § "?§ = this.§1!?§;
               this.§'O§ = true;
            }
            else
            {
               § "?§ = 0;
            }
         }
         this.§'a§();
         this.§@"<§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §'a§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§?!=§();
            for(attribute in this.§%j§)
            {
               this.§?!<§[attribute] = this.§1!r§[attribute] + this.§%j§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §'O§ = true;
            if(!§1"G§)
            {
               throw e;
            }
         }
      }
      
      private function §@"<§() : void
      {
         if(this.isCompleted && §6!s§ != null)
         {
            try
            {
               §6!s§();
               §6!s§ = null;
            }
            catch(e:Error)
            {
               §6!s§ = null;
               if(!§1"G§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §?!=§() : Number
      {
         if(this.§1!?§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§ "?§);
         _loc1_ = Math.min(_loc1_,this.§1!?§);
         return this.§&" §(_loc1_,0,1,this.§1!?§);
      }
   }
}
