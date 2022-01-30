package §6t§
{
   public class §3'§ extends §=w§ implements §%v§
   {
       
      
      private var §>! §:Number;
      
      private var §'"'§:Boolean;
      
      private var §`!V§:Function;
      
      private var §7f§:Object;
      
      private var §&!v§:Object;
      
      private var §`5§:Object;
      
      public function §3'§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§>! § = param4 * 1000;
         this.§`!V§ = param5;
         §=!c§ = 0;
         this.§'"'§ = false;
         param2 = this.§&!b§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§&!b§(param3,param2);
            this.§false§(param2,param3);
         }
         else
         {
            this.§false§(param2,param1);
         }
         this.§7f§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§'"'§;
      }
      
      override public function dispose() : void
      {
         this.stop();
         this.§7f§ = null;
         this.§`5§ = null;
         this.§&!v§ = null;
         super.dispose();
      }
      
      public function §7!z§() : void
      {
         §=!c§ = -§`"5§;
         this.§'"'§ = false;
      }
      
      private function §&!b§(param1:Object, param2:Object) : Object
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
      
      private function §false§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§`5§ = _loc3_;
         this.§&!v§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§'"'§)
         {
            this.§'"'§ = true;
            §@!T§ = null;
            §=!c§ = this.§>! §;
         }
      }
      
      public function §'!b§() : void
      {
         if(!this.§'"'§)
         {
            this.§'"'§ = true;
            §=!c§ = this.§>! §;
            this.§4!o§();
         }
      }
      
      public function update(param1:Number) : void
      {
         if(!§>"%§(param1))
         {
            return;
         }
         if(§=!c§ >= this.§>! §)
         {
            if(§5!H§)
            {
               §=!c§ = this.§>! §;
               this.§'"'§ = true;
            }
            else
            {
               §=!c§ = 0;
            }
         }
         this.§4!o§();
         this.§2%§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §4!o§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§%!f§();
            for(attribute in this.§`5§)
            {
               this.§7f§[attribute] = this.§&!v§[attribute] + this.§`5§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §'"'§ = true;
            if(!§]!R§)
            {
               throw e;
            }
         }
      }
      
      private function §2%§() : void
      {
         if(this.isCompleted && §@!T§ != null)
         {
            try
            {
               §@!T§();
               §@!T§ = null;
            }
            catch(e:Error)
            {
               §@!T§ = null;
               if(!§]!R§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §%!f§() : Number
      {
         if(this.§>! § <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§=!c§);
         _loc1_ = Math.min(_loc1_,this.§>! §);
         return this.§`!V§(_loc1_,0,1,this.§>! §);
      }
   }
}
