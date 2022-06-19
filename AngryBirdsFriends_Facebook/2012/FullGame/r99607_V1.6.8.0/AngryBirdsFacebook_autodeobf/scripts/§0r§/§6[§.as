package §0r§
{
   public class §6[§ extends §4x§ implements §=S§
   {
       
      
      private var §'!t§:Vector.<§=S§>;
      
      private var §&v§:Boolean = true;
      
      private var §25§:int = 0;
      
      public function §6[§(param1:Array, param2:Boolean)
      {
         var _loc3_:§=S§ = null;
         this.§'!t§ = new Vector.<§=S§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§'!t§.push(_loc3_);
         }
         this.§&v§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§=S§ = null;
         for each(_loc1_ in this.§'!t§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc1_:§=S§ = null;
         for each(_loc1_ in this.§'!t§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §<s§() : int
      {
         if(this.§&v§)
         {
            return this.§'!t§.length;
         }
         if(this.§'!t§.length > this.§25§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §+6§() : int
      {
         if(this.§&v§)
         {
            return 0;
         }
         return this.§25§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=S§ = null;
         while(this.§'!t§.length > 0)
         {
            _loc1_ = this.§'!t§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§=S§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§'!t§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §@N§() : void
      {
         var _loc1_:§=S§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§'!t§)
            {
               _loc1_.§@N§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§=S§ = null;
         for each(_loc1_ in this.§'!t§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§=S§ = null;
         for each(_loc1_ in this.§'!t§)
         {
            _loc1_.play();
         }
      }
      
      public function §9!a§() : void
      {
         var _loc2_:§=S§ = null;
         §]!B§ = -§]4§;
         this.§25§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!t§.length)
         {
            _loc2_ = this.§'!t§[_loc1_];
            _loc2_.§9!a§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§=S§ = null;
         §]!B§ += param1;
         if(§]!B§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§<s§;
         var _loc3_:int = this.§+6§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§'!t§[_loc4_]).update(param1);
            this.§["4§(_loc5_);
            _loc4_++;
         }
         this.§"!x§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §["4§(param1:§=S§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§&v§)
            {
               ++this.§25§;
               if(this.§25§ < this.§'!t§.length)
               {
                  this.§'!t§[this.§25§].play();
               }
            }
         }
      }
      
      private function §"!x§() : void
      {
         if(this.isCompleted)
         {
            if(!§7!-§)
            {
               this.§9!a§();
               this.play();
            }
            else if(§%s§ != null)
            {
               try
               {
                  §%s§();
                  §%s§ = null;
               }
               catch(e:Error)
               {
                  §%s§ = null;
                  if(!§-"$§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
