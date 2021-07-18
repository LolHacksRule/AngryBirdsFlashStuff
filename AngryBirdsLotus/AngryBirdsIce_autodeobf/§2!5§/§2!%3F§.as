package §2!5§
{
   public class §2!?§ extends §'n§ implements §=!$§
   {
       
      
      private var §]X§:Vector.<§=!$§>;
      
      private var §2!-§:Boolean = true;
      
      private var §[y§:int = 0;
      
      public function §2!?§(param1:Array, param2:Boolean)
      {
         var _loc3_:§=!$§ = null;
         this.§]X§ = new Vector.<§=!$§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§]X§.push(_loc3_);
         }
         this.§2!-§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§=!$§ = null;
         for each(_loc1_ in this.§]X§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §[!F§() : int
      {
         if(this.§2!-§)
         {
            return this.§]X§.length;
         }
         if(this.§]X§.length > 0)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §,y§() : int
      {
         if(this.§2!-§)
         {
            return 0;
         }
         return this.§[y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!$§ = null;
         while(this.§]X§.length > 0)
         {
            _loc1_ = this.§]X§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§=!$§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§]X§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §5h§() : void
      {
         var _loc1_:§=!$§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§]X§)
            {
               _loc1_.§5h§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc2_:§=!$§ = null;
         var _loc1_:int = this.§[!F§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]X§[_loc1_];
            _loc2_.pause();
            _loc1_--;
         }
      }
      
      public function play() : void
      {
         var _loc2_:§=!$§ = null;
         var _loc1_:int = this.§[!F§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]X§[_loc1_];
            _loc2_.play();
            _loc1_--;
         }
      }
      
      public function §0N§() : void
      {
         var _loc2_:§=!$§ = null;
         § !A§ = -§<!C§;
         this.§[y§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]X§.length)
         {
            _loc2_ = this.§]X§[_loc1_];
            _loc2_.§0N§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var tween:§=!$§ = null;
         var deltaTime:Number = param1;
         § !A§ += deltaTime;
         if(§ !A§ < 0)
         {
            return;
         }
         var activeCount:int = this.§[!F§;
         var startIndex:int = this.§,y§;
         var i:int = startIndex;
         while(i < startIndex + activeCount)
         {
            try
            {
               tween = this.§]X§[i];
               tween.update(deltaTime);
               this.§ J§(tween);
            }
            catch(e:Error)
            {
            }
            i++;
         }
         this.§#8§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function § J§(param1:§=!$§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§2!-§)
            {
               ++this.§[y§;
               if(this.§[y§ < this.§]X§.length)
               {
                  this.§]X§[this.§[y§].play();
               }
            }
         }
      }
      
      private function §#8§() : void
      {
         if(this.isCompleted)
         {
            if(!§@_§)
            {
               this.§0N§();
               this.play();
            }
            else if(§@F§ != null)
            {
               try
               {
                  §@F§();
                  §@F§ = null;
               }
               catch(e:Error)
               {
                  §@F§ = null;
                  if(!§+?§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
