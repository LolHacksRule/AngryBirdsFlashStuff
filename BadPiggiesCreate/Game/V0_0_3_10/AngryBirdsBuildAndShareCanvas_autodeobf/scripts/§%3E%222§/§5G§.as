package §>"2§
{
   public class §5G§ extends §55§ implements §%!Y§
   {
       
      
      private var §>>§:Number;
      
      private var §9K§:Boolean;
      
      private var §+!?§:Boolean;
      
      private var §0V§:Function;
      
      private var §<6§:Object;
      
      private var §0c§:Object;
      
      private var §`q§:Object;
      
      public function §5G§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§>>§ = param4 * 1000;
         this.§0V§ = param5;
         §;k§ = 0;
         this.§+!?§ = true;
         this.§9K§ = false;
         param2 = this.§^8§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§^8§(param3,param2);
            this.§4"'§(param2,param3);
         }
         else
         {
            this.§4"'§(param2,param1);
         }
         this.§<6§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§9K§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§+!?§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§<6§ = null;
         this.§`q§ = null;
         this.§0c§ = null;
      }
      
      public function §6!-§() : void
      {
         §;k§ = -§="3§;
         this.§9K§ = false;
      }
      
      private function §^8§(param1:Object, param2:Object) : Object
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
      
      private function §4"'§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§`q§ = _loc3_;
         this.§0c§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§9K§)
         {
            this.§9K§ = true;
            § "!§ = null;
            §;k§ = this.§>>§;
         }
      }
      
      public function §!K§() : void
      {
         if(!this.§9K§)
         {
            this.§9K§ = true;
            §;k§ = this.§>>§;
            this.§?P§();
         }
      }
      
      public function pause() : void
      {
         this.§+!?§ = true;
      }
      
      public function play() : void
      {
         this.§+!?§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§+!?§ || this.isCompleted)
         {
            return;
         }
         §;k§ += param1;
         if(§;k§ >= this.§>>§)
         {
            if(§,!§)
            {
               §;k§ = this.§>>§;
               this.§9K§ = true;
            }
            else
            {
               §;k§ = 0;
            }
         }
         this.§?P§();
         this.§>l§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §?P§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§`!i§();
            for(attribute in this.§`q§)
            {
               this.§<6§[attribute] = this.§0c§[attribute] + this.§`q§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §9K§ = true;
            if(!§!!D§)
            {
               throw e;
            }
         }
      }
      
      private function §>l§() : void
      {
         if(this.isCompleted && § "!§ != null)
         {
            try
            {
               § "!§();
               § "!§ = null;
            }
            catch(e:Error)
            {
               § "!§ = null;
               if(!§!!D§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §`!i§() : Number
      {
         if(this.§>>§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§;k§);
         _loc1_ = Math.min(_loc1_,this.§>>§);
         return this.§0V§(_loc1_,0,1,this.§>>§);
      }
   }
}
