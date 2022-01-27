package §?!O§
{
   public class SimpleTweenContainer extends §!i§ implements §9N§
   {
       
      
      private var §;J§:Vector.<§9N§>;
      
      private var §6[§:Boolean = true;
      
      private var §3&§:int = 0;
      
      public function SimpleTweenContainer(param1:Array, param2:Boolean)
      {
         var _loc3_:§9N§ = null;
         this.§;J§ = new Vector.<§9N§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§;J§.push(_loc3_);
         }
         this.§6[§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§9N§ = null;
         for each(_loc1_ in this.§;J§)
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
         var _loc1_:§9N§ = null;
         for each(_loc1_ in this.§;J§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §1!U§() : int
      {
         if(this.§6[§)
         {
            return this.§;J§.length;
         }
         if(this.§;J§.length > this.§3&§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §7Q§() : int
      {
         if(this.§6[§)
         {
            return 0;
         }
         return this.§3&§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9N§ = null;
         while(this.§;J§.length > 0)
         {
            _loc1_ = this.§;J§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§9N§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§;J§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §"f§() : void
      {
         var _loc1_:§9N§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§;J§)
            {
               _loc1_.§"f§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§9N§ = null;
         for each(_loc1_ in this.§;J§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§9N§ = null;
         for each(_loc1_ in this.§;J§)
         {
            _loc1_.play();
         }
      }
      
      public function § !=§() : void
      {
         var _loc2_:§9N§ = null;
         §28§ = -§^!5§;
         this.§3&§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;J§.length)
         {
            _loc2_ = this.§;J§[_loc1_];
            _loc2_.§ !=§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§9N§ = null;
         §28§ += param1;
         if(§28§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§1!U§;
         var _loc3_:int = this.§7Q§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            _loc5_ = this.§;J§[_loc4_];
            _loc5_.update(param1);
            this.§0'§(_loc5_);
            _loc4_++;
         }
         this.§;G§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §0'§(param1:§9N§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§6[§)
            {
               ++this.§3&§;
               if(this.§3&§ < this.§;J§.length)
               {
                  this.§;J§[this.§3&§].play();
               }
            }
         }
      }
      
      private function §;G§() : void
      {
         if(this.isCompleted)
         {
            if(!§!!J§)
            {
               this.§ !=§();
               this.play();
            }
            else if(§3!K§ != null)
            {
               try
               {
                  §3!K§();
                  §3!K§ = null;
               }
               catch(e:Error)
               {
                  §3!K§ = null;
                  if(!§?4§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
