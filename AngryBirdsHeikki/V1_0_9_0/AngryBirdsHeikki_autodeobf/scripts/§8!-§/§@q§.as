package §8!-§
{
   public class §@q§ extends §,I§ implements §98§
   {
       
      
      private var §`4§:Number;
      
      private var §#9§:Boolean;
      
      private var §@@§:Boolean;
      
      private var §>E§:Function;
      
      private var §2Z§:Object;
      
      private var §2<§:Object;
      
      private var §,!4§:Object;
      
      public function §@q§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§`4§ = param4 * 1000;
         this.§>E§ = param5;
         §"x§ = 0;
         this.§@@§ = true;
         this.§#9§ = false;
         param2 = this.§2!L§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§2!L§(param3,param2);
            this.§>!Y§(param2,param3);
         }
         else
         {
            this.§>!Y§(param2,param1);
         }
         this.§2Z§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§#9§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§@@§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§2Z§ = null;
         this.§,!4§ = null;
         this.§2<§ = null;
      }
      
      public function §+J§() : void
      {
         §"x§ = -§=u§;
         this.§#9§ = false;
      }
      
      private function §2!L§(param1:Object, param2:Object) : Object
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
      
      private function §>!Y§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§,!4§ = _loc3_;
         this.§2<§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§#9§)
         {
            this.§#9§ = true;
            §&!A§ = null;
            §"x§ = this.§`4§;
         }
      }
      
      public function §4!A§() : void
      {
         if(!this.§#9§)
         {
            this.§#9§ = true;
            §"x§ = this.§`4§;
            this.§]J§();
         }
      }
      
      public function §0!G§() : void
      {
         this.§@@§ = true;
      }
      
      public function play() : void
      {
         this.§@@§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§@@§ || this.isCompleted)
         {
            return;
         }
         §"x§ += param1;
         if(§"x§ >= this.§`4§)
         {
            if(§-h§)
            {
               §"x§ = this.§`4§;
               this.§#9§ = true;
            }
            else
            {
               §"x§ = 0;
            }
         }
         this.§]J§();
         this.§4w§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §]J§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§5!7§();
            for(attribute in this.§,!4§)
            {
               this.§2Z§[attribute] = this.§2<§[attribute] + this.§,!4§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §#9§ = true;
            if(!§3!b§)
            {
               throw e;
            }
         }
      }
      
      private function §4w§() : void
      {
         if(this.isCompleted && §&!A§ != null)
         {
            try
            {
               §&!A§();
               §&!A§ = null;
            }
            catch(e:Error)
            {
               §&!A§ = null;
               if(!§3!b§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §5!7§() : Number
      {
         if(this.§`4§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§"x§);
         _loc1_ = Math.min(_loc1_,this.§`4§);
         return this.§>E§(_loc1_,0,1,this.§`4§);
      }
   }
}
