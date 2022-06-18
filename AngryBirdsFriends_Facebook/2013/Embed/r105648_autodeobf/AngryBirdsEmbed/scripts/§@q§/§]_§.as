package §@q§
{
   public class §]_§ extends §!!K§ implements §1b§
   {
       
      
      private var §;4§:Vector.<§1b§>;
      
      private var §?8§:Boolean = true;
      
      private var §+!9§:int = 0;
      
      public function §]_§(param1:Array, param2:Boolean)
      {
         var _loc3_:§1b§ = null;
         this.§;4§ = new Vector.<§1b§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§;4§.push(_loc3_);
         }
         this.§?8§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§1b§ = null;
         for each(_loc1_ in this.§;4§)
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
         var _loc1_:§1b§ = null;
         for each(_loc1_ in this.§;4§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §1T§() : int
      {
         if(this.§?8§)
         {
            return this.§;4§.length;
         }
         if(this.§;4§.length > this.§+!9§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §<!4§() : int
      {
         if(this.§?8§)
         {
            return 0;
         }
         return this.§+!9§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§1b§ = null;
         while(this.§;4§.length > 0)
         {
            _loc1_ = this.§;4§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§1b§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§;4§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §3!"§() : void
      {
         var _loc1_:§1b§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§;4§)
            {
               _loc1_.§3!"§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§1b§ = null;
         for each(_loc1_ in this.§;4§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§1b§ = null;
         for each(_loc1_ in this.§;4§)
         {
            _loc1_.play();
         }
      }
      
      public function §3a§() : void
      {
         var _loc2_:§1b§ = null;
         § in§ = -§3!5§;
         this.§+!9§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;4§.length)
         {
            _loc2_ = this.§;4§[_loc1_];
            _loc2_.§3a§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§1b§ = null;
         § in§ += param1;
         if(§ in§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§1T§;
         var _loc3_:int = this.§<!4§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§;4§[_loc4_]).update(param1);
            this.§0c§(_loc5_);
            _loc4_++;
         }
         this.§9'§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §0c§(param1:§1b§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§?8§)
            {
               ++this.§+!9§;
               if(this.§+!9§ < this.§;4§.length)
               {
                  this.§;4§[this.§+!9§].play();
               }
            }
         }
      }
      
      private function §9'§() : void
      {
         if(this.isCompleted)
         {
            if(!§&2§)
            {
               this.§3a§();
               this.play();
            }
            else if(§>u§ != null)
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
      }
   }
}
