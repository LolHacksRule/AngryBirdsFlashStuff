package §2=§
{
   public class SimpleTweenContainer extends §=N§ implements §4x§
   {
       
      
      private var §`G§:Vector.<§4x§>;
      
      private var §,7§:Boolean = true;
      
      private var §92§:int = 0;
      
      public function SimpleTweenContainer(param1:Array, param2:Boolean)
      {
         var _loc3_:§4x§ = null;
         this.§`G§ = new Vector.<§4x§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§`G§.push(_loc3_);
         }
         this.§,7§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§4x§ = null;
         for each(_loc1_ in this.§`G§)
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
         var _loc1_:§4x§ = null;
         for each(_loc1_ in this.§`G§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §0l§() : int
      {
         if(this.§,7§)
         {
            return this.§`G§.length;
         }
         if(this.§`G§.length > this.§92§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §'!@§() : int
      {
         if(this.§,7§)
         {
            return 0;
         }
         return this.§92§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4x§ = null;
         while(this.§`G§.length > 0)
         {
            _loc1_ = this.§`G§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§4x§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§`G§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §,'§() : void
      {
         var _loc1_:§4x§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§`G§)
            {
               _loc1_.§,'§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§4x§ = null;
         for each(_loc1_ in this.§`G§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§4x§ = null;
         for each(_loc1_ in this.§`G§)
         {
            _loc1_.play();
         }
      }
      
      public function §#j§() : void
      {
         var _loc2_:§4x§ = null;
         §2+§ = -§'r§;
         this.§92§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`G§.length)
         {
            _loc2_ = this.§`G§[_loc1_];
            _loc2_.§#j§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§4x§ = null;
         §2+§ += param1;
         if(§2+§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§0l§;
         var _loc3_:int = this.§'!@§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            _loc5_ = this.§`G§[_loc4_];
            _loc5_.update(param1);
            this.§];§(_loc5_);
            _loc4_++;
         }
         this.§1!D§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §];§(param1:§4x§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§,7§)
            {
               ++this.§92§;
               if(this.§92§ < this.§`G§.length)
               {
                  this.§`G§[this.§92§].play();
               }
            }
         }
      }
      
      private function §1!D§() : void
      {
         if(this.isCompleted)
         {
            if(!§""§)
            {
               this.§#j§();
               this.play();
            }
            else if(§>!@§ != null)
            {
               try
               {
                  §>!@§();
                  §>!@§ = null;
               }
               catch(e:Error)
               {
                  §>!@§ = null;
                  if(!§+j§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
