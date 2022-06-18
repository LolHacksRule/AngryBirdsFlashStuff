package §;=§
{
   public class §9!@§ extends §"A§ implements §-!5§
   {
       
      
      private var §+J§:Vector.<§-!5§>;
      
      private var §4w§:Boolean = true;
      
      private var §]!!§:int = 0;
      
      public function §9!@§(param1:Array, param2:Boolean)
      {
         var _loc3_:§-!5§ = null;
         this.§+J§ = new Vector.<§-!5§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§+J§.push(_loc3_);
         }
         this.§4w§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§-!5§ = null;
         for each(_loc1_ in this.§+J§)
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
         var _loc1_:§-!5§ = null;
         for each(_loc1_ in this.§+J§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §<A§() : int
      {
         if(this.§4w§)
         {
            return this.§+J§.length;
         }
         if(this.§+J§.length > this.§]!!§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §1Z§() : int
      {
         if(this.§4w§)
         {
            return 0;
         }
         return this.§]!!§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-!5§ = null;
         while(this.§+J§.length > 0)
         {
            _loc1_ = this.§+J§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§-!5§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+J§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §<!8§() : void
      {
         var _loc1_:§-!5§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+J§)
            {
               _loc1_.§<!8§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§-!5§ = null;
         for each(_loc1_ in this.§+J§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§-!5§ = null;
         for each(_loc1_ in this.§+J§)
         {
            _loc1_.play();
         }
      }
      
      public function §^3§() : void
      {
         var _loc2_:§-!5§ = null;
         §;?§ = -§`]§;
         this.§]!!§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+J§.length)
         {
            _loc2_ = this.§+J§[_loc1_];
            _loc2_.§^3§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§-!5§ = null;
         §;?§ += param1;
         if(§;?§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§<A§;
         var _loc3_:int = this.§1Z§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§+J§[_loc4_]).update(param1);
            this.§]!B§(_loc5_);
            _loc4_++;
         }
         this.§8!A§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §]!B§(param1:§-!5§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§4w§)
            {
               ++this.§]!!§;
               if(this.§]!!§ < this.§+J§.length)
               {
                  this.§+J§[this.§]!!§].play();
               }
            }
         }
      }
      
      private function §8!A§() : void
      {
         if(this.isCompleted)
         {
            if(!§=! §)
            {
               this.§^3§();
               this.play();
            }
            else if(§@P§ != null)
            {
               try
               {
                  §@P§();
                  §@P§ = null;
               }
               catch(e:Error)
               {
                  §@P§ = null;
                  if(!§2n§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
