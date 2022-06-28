package §<!G§
{
   public class SimpleTweenContainer extends §'=§ implements §;K§
   {
       
      
      private var §@!=§:Vector.<§;K§>;
      
      private var §+!8§:Boolean = true;
      
      private var §>5§:int = 0;
      
      public function SimpleTweenContainer(param1:Array, param2:Boolean)
      {
         var _loc3_:§;K§ = null;
         this.§@!=§ = new Vector.<§;K§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§@!=§.push(_loc3_);
         }
         this.§+!8§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§;K§ = null;
         for each(_loc1_ in this.§@!=§)
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
         var _loc1_:§;K§ = null;
         for each(_loc1_ in this.§@!=§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §1!I§() : int
      {
         if(this.§+!8§)
         {
            return this.§@!=§.length;
         }
         if(this.§@!=§.length > this.§>5§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §]!D§() : int
      {
         if(this.§+!8§)
         {
            return 0;
         }
         return this.§>5§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;K§ = null;
         while(this.§@!=§.length > 0)
         {
            _loc1_ = this.§@!=§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§;K§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§@!=§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §]8§() : void
      {
         var _loc1_:§;K§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§@!=§)
            {
               _loc1_.§]8§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§;K§ = null;
         for each(_loc1_ in this.§@!=§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§;K§ = null;
         for each(_loc1_ in this.§@!=§)
         {
            _loc1_.play();
         }
      }
      
      public function §!f§() : void
      {
         var _loc2_:§;K§ = null;
         §>2§ = -§=8§;
         this.§>5§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!=§.length)
         {
            _loc2_ = this.§@!=§[_loc1_];
            _loc2_.§!f§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§;K§ = null;
         §>2§ += param1;
         if(§>2§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§1!I§;
         var _loc3_:int = this.§]!D§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            _loc5_ = this.§@!=§[_loc4_];
            _loc5_.update(param1);
            this.§99§(_loc5_);
            _loc4_++;
         }
         this.§"!e§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §99§(param1:§;K§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§+!8§)
            {
               ++this.§>5§;
               if(this.§>5§ < this.§@!=§.length)
               {
                  this.§@!=§[this.§>5§].play();
               }
            }
         }
      }
      
      private function §"!e§() : void
      {
         if(this.isCompleted)
         {
            if(!§2N§)
            {
               this.§!f§();
               this.play();
            }
            else if(§1!1§ != null)
            {
               try
               {
                  §1!1§();
                  §1!1§ = null;
               }
               catch(e:Error)
               {
                  §1!1§ = null;
                  if(!§9i§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
