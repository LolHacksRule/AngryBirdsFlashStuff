package §!7§
{
   public class §#X§ extends §>K§ implements §&!R§
   {
       
      
      private var §2=§:Vector.<§&!R§>;
      
      private var §+3§:Boolean = true;
      
      private var §^!'§:int = 0;
      
      public function §#X§(param1:Array, param2:Boolean)
      {
         var _loc3_:§&!R§ = null;
         this.§2=§ = new Vector.<§&!R§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§2=§.push(_loc3_);
         }
         this.§+3§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§&!R§ = null;
         for each(_loc1_ in this.§2=§)
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
         var _loc1_:§&!R§ = null;
         for each(_loc1_ in this.§2=§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §^T§() : int
      {
         if(this.§+3§)
         {
            return this.§2=§.length;
         }
         if(this.§2=§.length > this.§^!'§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §2!?§() : int
      {
         if(this.§+3§)
         {
            return 0;
         }
         return this.§^!'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&!R§ = null;
         while(this.§2=§.length > 0)
         {
            _loc1_ = this.§2=§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§&!R§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§2=§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §7!E§() : void
      {
         var _loc1_:§&!R§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§2=§)
            {
               _loc1_.§7!E§();
            }
         }
      }
      
      public function §?!]§() : void
      {
         var _loc1_:§&!R§ = null;
         for each(_loc1_ in this.§2=§)
         {
            _loc1_.§?!]§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§&!R§ = null;
         for each(_loc1_ in this.§2=§)
         {
            _loc1_.play();
         }
      }
      
      public function § @§() : void
      {
         var _loc2_:§&!R§ = null;
         §5!&§ = -§>_§;
         this.§^!'§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2=§.length)
         {
            _loc2_ = this.§2=§[_loc1_];
            _loc2_.§ @§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§&!R§ = null;
         §5!&§ += param1;
         if(§5!&§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§^T§;
         var _loc3_:int = this.§2!?§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§2=§[_loc4_]).update(param1);
            this.§15§(_loc5_);
            _loc4_++;
         }
         this.§?U§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §15§(param1:§&!R§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§+3§)
            {
               ++this.§^!'§;
               if(this.§^!'§ < this.§2=§.length)
               {
                  this.§2=§[this.§^!'§].play();
               }
            }
         }
      }
      
      private function §?U§() : void
      {
         if(this.isCompleted)
         {
            if(!§7!D§)
            {
               this.§ @§();
               this.play();
            }
            else if(§<!-§ != null)
            {
               try
               {
                  §<!-§();
                  §<!-§ = null;
               }
               catch(e:Error)
               {
                  §<!-§ = null;
                  if(!§;C§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
