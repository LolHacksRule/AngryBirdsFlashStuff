package §?!C§
{
   public class §!@§ extends §!M§ implements §7!3§
   {
       
      
      private var §2!'§:Vector.<§7!3§>;
      
      private var §;U§:Boolean = true;
      
      private var §,-§:int = 0;
      
      public function §!@§(param1:Array, param2:Boolean)
      {
         var _loc3_:§7!3§ = null;
         this.§2!'§ = new Vector.<§7!3§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§2!'§.push(_loc3_);
         }
         this.§;U§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§7!3§ = null;
         for each(_loc1_ in this.§2!'§)
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
         var _loc1_:§7!3§ = null;
         for each(_loc1_ in this.§2!'§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §3!C§() : int
      {
         if(this.§;U§)
         {
            return this.§2!'§.length;
         }
         if(this.§2!'§.length > this.§,-§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §%T§() : int
      {
         if(this.§;U§)
         {
            return 0;
         }
         return this.§,-§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7!3§ = null;
         while(this.§2!'§.length > 0)
         {
            _loc1_ = this.§2!'§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§7!3§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§2!'§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function § O§() : void
      {
         var _loc1_:§7!3§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§2!'§)
            {
               _loc1_.§ O§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§7!3§ = null;
         for each(_loc1_ in this.§2!'§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§7!3§ = null;
         for each(_loc1_ in this.§2!'§)
         {
            _loc1_.play();
         }
      }
      
      public function §"U§() : void
      {
         var _loc2_:§7!3§ = null;
         §!p§ = -§#!N§;
         this.§,-§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!'§.length)
         {
            _loc2_ = this.§2!'§[_loc1_];
            _loc2_.§"U§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§7!3§ = null;
         §!p§ += param1;
         if(§!p§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§3!C§;
         var _loc3_:int = this.§%T§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§2!'§[_loc4_]).update(param1);
            this.§7h§(_loc5_);
            _loc4_++;
         }
         this.§4-§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §7h§(param1:§7!3§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§;U§)
            {
               ++this.§,-§;
               if(this.§,-§ < this.§2!'§.length)
               {
                  this.§2!'§[this.§,-§].play();
               }
            }
         }
      }
      
      private function §4-§() : void
      {
         if(this.isCompleted)
         {
            if(!§ !0§)
            {
               this.§"U§();
               this.play();
            }
            else if(§&m§ != null)
            {
               try
               {
                  §&m§();
                  §&m§ = null;
               }
               catch(e:Error)
               {
                  §&m§ = null;
                  if(!§@E§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
