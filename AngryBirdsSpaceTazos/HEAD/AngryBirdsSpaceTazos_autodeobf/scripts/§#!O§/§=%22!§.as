package §#!O§
{
   public class §="!§ extends § !O§ implements §9!o§
   {
       
      
      private var §5!F§:Number;
      
      private var §=%§:Boolean;
      
      private var §8!8§:Function;
      
      private var §4!v§:Object;
      
      private var §+!s§:Object;
      
      private var §6!,§:Object;
      
      public function §="!§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§5!F§ = param4 * 1000;
         this.§8!8§ = param5;
         §%!s§ = 0;
         this.§=%§ = false;
         param2 = this.§3!g§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§3!g§(param3,param2);
            this.§;!,§(param2,param3);
         }
         else
         {
            this.§;!,§(param2,param1);
         }
         this.§4!v§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§=%§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§4!v§ = null;
         this.§6!,§ = null;
         this.§+!s§ = null;
         super.dispose();
      }
      
      public function §`"§() : void
      {
         §%!s§ = -§0S§;
         this.§=%§ = false;
      }
      
      private function §3!g§(param1:Object, param2:Object) : Object
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
      
      private function §;!,§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§6!,§ = _loc3_;
         this.§+!s§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§=%§)
         {
            this.§=%§ = true;
            §9!]§ = null;
            §%!s§ = this.§5!F§;
         }
      }
      
      public function §^e§() : void
      {
         if(!this.§=%§)
         {
            this.§=%§ = true;
            §%!s§ = this.§5!F§;
            this.§>"?§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§=!]§(param1))
         {
            return;
         }
         if(§%!s§ >= this.§5!F§)
         {
            if(§ !w§)
            {
               §%!s§ = this.§5!F§;
               this.§=%§ = true;
            }
            else
            {
               §%!s§ = 0;
            }
         }
         this.§>"?§();
         this.§'1§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §>"?§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§+!R§();
            for(attribute in this.§6!,§)
            {
               this.§4!v§[attribute] = this.§+!s§[attribute] + this.§6!,§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §=%§ = true;
            if(!§7"§)
            {
               throw e;
            }
         }
      }
      
      private function §'1§() : void
      {
         if(this.isCompleted && §9!]§ != null)
         {
            try
            {
               §9!]§();
               §9!]§ = null;
            }
            catch(e:Error)
            {
               §9!]§ = null;
               if(!§7"§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §+!R§() : Number
      {
         if(this.§5!F§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§%!s§);
         _loc1_ = Math.min(_loc1_,this.§5!F§);
         return this.§8!8§(_loc1_,0,1,this.§5!F§);
      }
   }
}
