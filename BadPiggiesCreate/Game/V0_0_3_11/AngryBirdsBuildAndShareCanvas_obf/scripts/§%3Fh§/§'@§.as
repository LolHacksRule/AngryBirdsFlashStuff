package §?h§
{
   public class §'@§ extends § !r§ implements §?!M§
   {
       
      
      private var § !C§:Vector.<§?!M§>;
      
      private var §+?§:Boolean = true;
      
      private var §2n§:int = 0;
      
      public function §'@§(param1:Array, param2:Boolean)
      {
         var _loc3_:§?!M§ = null;
         this.§ !C§ = new Vector.<§?!M§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§ !C§.push(_loc3_);
         }
         this.§+?§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§?!M§ = null;
         for each(_loc1_ in this.§ !C§)
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
         var _loc1_:§?!M§ = null;
         for each(_loc1_ in this.§ !C§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §%",§() : int
      {
         if(this.§+?§)
         {
            return this.§ !C§.length;
         }
         if(this.§ !C§.length > this.§2n§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §2!q§() : int
      {
         if(this.§+?§)
         {
            return 0;
         }
         return this.§2n§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?!M§ = null;
         while(this.§ !C§.length > 0)
         {
            _loc1_ = this.§ !C§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§?!M§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§ !C§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §,!O§() : void
      {
         var _loc1_:§?!M§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§ !C§)
            {
               _loc1_.§,!O§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§?!M§ = null;
         for each(_loc1_ in this.§ !C§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§?!M§ = null;
         for each(_loc1_ in this.§ !C§)
         {
            _loc1_.play();
         }
      }
      
      public function §!"%§() : void
      {
         var _loc2_:§?!M§ = null;
         §]!p§ = -§%[§;
         this.§2n§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ !C§.length)
         {
            _loc2_ = this.§ !C§[_loc1_];
            _loc2_.§!"%§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§?!M§ = null;
         §]!p§ += param1;
         if(§]!p§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§%",§;
         var _loc3_:int = this.§2!q§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§ !C§[_loc4_]).update(param1);
            this.§^!r§(_loc5_);
            _loc4_++;
         }
         this.§!!H§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §^!r§(param1:§?!M§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§+?§)
            {
               ++this.§2n§;
               if(this.§2n§ < this.§ !C§.length)
               {
                  this.§ !C§[this.§2n§].play();
               }
            }
         }
      }
      
      private function §!!H§() : void
      {
         if(this.isCompleted)
         {
            if(!§"w§)
            {
               this.§!"%§();
               this.play();
            }
            else if(§^!M§ != null)
            {
               try
               {
                  §^!M§();
                  §^!M§ = null;
               }
               catch(e:Error)
               {
                  §^!M§ = null;
                  if(!§7"4§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
