package §2"'§
{
   public class §;5§ extends § "%§ implements §'v§
   {
       
      
      private var §^"!§:Number;
      
      private var §=>§:Boolean;
      
      private var §[$§:Boolean;
      
      private var §<"V§:Function;
      
      private var §1"'§:Object;
      
      private var §"!!§:Object;
      
      private var §^3§:Object;
      
      public function §;5§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§^"!§ = param4 * 1000;
         this.§<"V§ = param5;
         §"!M§ = 0;
         this.§[$§ = true;
         this.§=>§ = false;
         param2 = this.§^2§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§^2§(param3,param2);
            this.§#!C§(param2,param3);
         }
         else
         {
            this.§#!C§(param2,param1);
         }
         this.§1"'§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§=>§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§[$§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§1"'§ = null;
         this.§^3§ = null;
         this.§"!!§ = null;
      }
      
      public function §?!J§() : void
      {
         §"!M§ = -§!"U§;
         this.§=>§ = false;
      }
      
      private function §^2§(param1:Object, param2:Object) : Object
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
      
      private function §#!C§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§^3§ = _loc3_;
         this.§"!!§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§=>§)
         {
            this.§=>§ = true;
            §[!r§ = null;
            §"!M§ = this.§^"!§;
         }
      }
      
      public function §7!d§() : void
      {
         if(!this.§=>§)
         {
            this.§=>§ = true;
            §"!M§ = this.§^"!§;
            this.§3!T§();
         }
      }
      
      public function pause() : void
      {
         this.§[$§ = true;
      }
      
      public function play() : void
      {
         this.§[$§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§[$§ || this.isCompleted)
         {
            return;
         }
         §"!M§ += param1;
         if(§"!M§ >= this.§^"!§)
         {
            if(§1!>§)
            {
               §"!M§ = this.§^"!§;
               this.§=>§ = true;
            }
            else
            {
               §"!M§ = 0;
            }
         }
         this.§3!T§();
         this.§![§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3!T§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§9,§();
            for(attribute in this.§^3§)
            {
               this.§1"'§[attribute] = this.§"!!§[attribute] + this.§^3§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §=>§ = true;
            if(!§-$§)
            {
               throw e;
            }
         }
      }
      
      private function §![§() : void
      {
         if(this.isCompleted && §[!r§ != null)
         {
            try
            {
               §[!r§();
               §[!r§ = null;
            }
            catch(e:Error)
            {
               §[!r§ = null;
               if(!§-$§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §9,§() : Number
      {
         if(this.§^"!§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§"!M§);
         _loc1_ = Math.min(_loc1_,this.§^"!§);
         return this.§<"V§(_loc1_,0,1,this.§^"!§);
      }
   }
}
