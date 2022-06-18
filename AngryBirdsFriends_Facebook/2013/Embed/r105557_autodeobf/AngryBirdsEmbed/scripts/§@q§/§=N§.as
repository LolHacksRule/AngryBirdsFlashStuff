package §@q§
{
   public class §=N§ extends §!!K§ implements §1b§
   {
       
      
      private var § !"§:Number;
      
      private var §3j§:Boolean;
      
      private var §]z§:Boolean;
      
      private var §<h§:Function;
      
      private var §4!-§:Object;
      
      private var §,!+§:Object;
      
      private var §8R§:Object;
      
      public function §=N§(param1:Object, param2:Object, param3:Object, param4:Number, param5:Function)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§ !"§ = param4 * 1000;
         this.§<h§ = param5;
         § in§ = 0;
         this.§]z§ = true;
         this.§3j§ = false;
         param2 = this.§&!5§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§&!5§(param3,param2);
            this.§@!K§(param2,param3);
         }
         else
         {
            this.§@!K§(param2,param1);
         }
         this.§4!-§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§3j§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§]z§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§4!-§ = null;
         this.§8R§ = null;
         this.§,!+§ = null;
      }
      
      public function §3a§() : void
      {
         § in§ = -§3!5§;
         this.§3j§ = false;
      }
      
      private function §&!5§(param1:Object, param2:Object) : Object
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
      
      private function §@!K§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§8R§ = _loc3_;
         this.§,!+§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§3j§)
         {
            this.§3j§ = true;
            §>u§ = null;
            § in§ = this.§ !"§;
         }
      }
      
      public function §3!"§() : void
      {
         if(!this.§3j§)
         {
            this.§3j§ = true;
            § in§ = this.§ !"§;
            this.§"w§();
         }
      }
      
      public function pause() : void
      {
         this.§]z§ = true;
      }
      
      public function play() : void
      {
         this.§]z§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§]z§ || this.isCompleted)
         {
            return;
         }
         § in§ += param1;
         if(§ in§ >= this.§ !"§)
         {
            if(§&2§)
            {
               § in§ = this.§ !"§;
               this.§3j§ = true;
            }
            else
            {
               § in§ = 0;
            }
         }
         this.§"w§();
         this.§9'§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §"w§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§[E§();
            for(attribute in this.§8R§)
            {
               this.§4!-§[attribute] = this.§,!+§[attribute] + this.§8R§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §3j§ = true;
            if(!§%"§)
            {
               throw e;
            }
         }
      }
      
      private function §9'§() : void
      {
         if(this.isCompleted && §>u§ != null)
         {
            try
            {
               §>u§();
               §>u§ = null;
            }
            catch(e:Error)
            {
               §>u§ = null;
               if(!§%"§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §[E§() : Number
      {
         if(this.§ !"§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§ in§);
         _loc1_ = Math.min(_loc1_,this.§ !"§);
         return this.§<h§(_loc1_,0,1,this.§ !"§);
      }
   }
}
