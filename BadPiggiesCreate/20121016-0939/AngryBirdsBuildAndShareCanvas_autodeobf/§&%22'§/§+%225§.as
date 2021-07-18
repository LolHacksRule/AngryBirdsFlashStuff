package §&"'§
{
   public class §+"5§ extends §1!X§ implements §@5§
   {
       
      
      private var §^!F§:Number;
      
      private var §`>§:Boolean;
      
      private var §93§:Boolean;
      
      private var §'!T§:Function;
      
      private var §;D§:Object;
      
      private var §>!;§:Object;
      
      private var §?",§:Object;
      
      public function §+"5§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§^!F§ = param4 * 1000;
         this.§'!T§ = param5;
         §7A§ = 0;
         this.§93§ = true;
         this.§`>§ = false;
         param2 = this.§="%§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§="%§(param3,param2);
            this.§""+§(param2,param3);
         }
         else
         {
            this.§""+§(param2,param1);
         }
         this.§;D§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§`>§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§93§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§;D§ = null;
         this.§?",§ = null;
         this.§>!;§ = null;
      }
      
      public function §'!w§() : void
      {
         §7A§ = -§0!<§;
         this.§`>§ = false;
      }
      
      private function §="%§(param1:Object, param2:Object) : Object
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
      
      private function §""+§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§?",§ = _loc3_;
         this.§>!;§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§`>§)
         {
            this.§`>§ = true;
            §&6§ = null;
            §7A§ = this.§^!F§;
         }
      }
      
      public function §9g§() : void
      {
         if(!this.§`>§)
         {
            this.§`>§ = true;
            §7A§ = this.§^!F§;
            this.§6?§();
         }
      }
      
      public function pause() : void
      {
         this.§93§ = true;
      }
      
      public function play() : void
      {
         this.§93§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§93§ || this.isCompleted)
         {
            return;
         }
         §7A§ += param1;
         if(§7A§ >= this.§^!F§)
         {
            if(§4!Y§)
            {
               §7A§ = this.§^!F§;
               this.§`>§ = true;
            }
            else
            {
               §7A§ = 0;
            }
         }
         this.§6?§();
         this.§1!m§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §6?§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§-""§();
            for(attribute in this.§?",§)
            {
               this.§;D§[attribute] = this.§>!;§[attribute] + this.§?",§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §`>§ = true;
            if(!§<!y§)
            {
               throw e;
            }
         }
      }
      
      private function §1!m§() : void
      {
         if(this.isCompleted && §&6§ != null)
         {
            try
            {
               §&6§();
               §&6§ = null;
            }
            catch(e:Error)
            {
               §&6§ = null;
               if(!§<!y§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §-""§() : Number
      {
         if(this.§^!F§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§7A§);
         _loc1_ = Math.min(_loc1_,this.§^!F§);
         return this.§'!T§(_loc1_,0,1,this.§^!F§);
      }
   }
}
