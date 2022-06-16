package §8!v§
{
   public class §@!3§ extends §'!6§ implements §+!W§
   {
       
      
      private var §]!a§:Number;
      
      private var §`!h§:Boolean;
      
      private var §^!C§:Boolean;
      
      private var §1!i§:Function;
      
      private var § !8§:Object;
      
      private var §63§:Object;
      
      private var §2!^§:Object;
      
      public function §@!3§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§]!a§ = param4 * 1000;
         this.§1!i§ = param5;
         §?!x§ = 0;
         this.§^!C§ = true;
         this.§`!h§ = false;
         param2 = this.§5!i§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§5!i§(param3,param2);
            this.§^"C§(param2,param3);
         }
         else
         {
            this.§^"C§(param2,param1);
         }
         this.§ !8§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§`!h§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§^!C§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§ !8§ = null;
         this.§2!^§ = null;
         this.§63§ = null;
      }
      
      public function § set§() : void
      {
         §?!x§ = -§0!t§;
         this.§`!h§ = false;
      }
      
      private function §5!i§(param1:Object, param2:Object) : Object
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
      
      private function §^"C§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§2!^§ = _loc3_;
         this.§63§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§`!h§)
         {
            this.§`!h§ = true;
            §>!8§ = null;
            §?!x§ = this.§]!a§;
         }
      }
      
      public function §?"3§() : void
      {
         if(!this.§`!h§)
         {
            this.§`!h§ = true;
            §?!x§ = this.§]!a§;
            this.§8!2§();
         }
      }
      
      public function pause() : void
      {
         this.§^!C§ = true;
      }
      
      public function play() : void
      {
         this.§^!C§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§^!C§ || this.isCompleted)
         {
            return;
         }
         §?!x§ += param1;
         if(§?!x§ >= this.§]!a§)
         {
            if(§%"?§)
            {
               §?!x§ = this.§]!a§;
               this.§`!h§ = true;
            }
            else
            {
               §?!x§ = 0;
            }
         }
         this.§8!2§();
         this.§^!k§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §8!2§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§7!<§();
            for(attribute in this.§2!^§)
            {
               this.§ !8§[attribute] = this.§63§[attribute] + this.§2!^§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §`!h§ = true;
            if(!§3"!§)
            {
               throw e;
            }
         }
      }
      
      private function §^!k§() : void
      {
         if(this.isCompleted && §>!8§ != null)
         {
            try
            {
               §>!8§();
               §>!8§ = null;
            }
            catch(e:Error)
            {
               §>!8§ = null;
               if(!§3"!§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §7!<§() : Number
      {
         if(this.§]!a§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§?!x§);
         _loc1_ = Math.min(_loc1_,this.§]!a§);
         return this.§1!i§(_loc1_,0,1,this.§]!a§);
      }
   }
}
