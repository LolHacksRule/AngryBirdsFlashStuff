package §4!A§
{
   public class §]!;§ extends §3!"§ implements §0Y§
   {
       
      
      private var §[!8§:Vector.<§0Y§>;
      
      private var §?!X§:Boolean = true;
      
      private var §8t§:int = 0;
      
      public function §]!;§(param1:Array, param2:Boolean)
      {
         var _loc3_:§0Y§ = null;
         this.§[!8§ = new Vector.<§0Y§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§[!8§.push(_loc3_);
         }
         this.§?!X§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§0Y§ = null;
         for each(_loc1_ in this.§[!8§)
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
         var _loc1_:§0Y§ = null;
         for each(_loc1_ in this.§[!8§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §0y§() : int
      {
         if(this.§?!X§)
         {
            return this.§[!8§.length;
         }
         if(this.§[!8§.length > this.§8t§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §"%§() : int
      {
         if(this.§?!X§)
         {
            return 0;
         }
         return this.§8t§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0Y§ = null;
         while(this.§[!8§.length > 0)
         {
            _loc1_ = this.§[!8§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§0Y§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§[!8§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §'!§() : void
      {
         var _loc1_:§0Y§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§[!8§)
            {
               _loc1_.§'!§();
            }
         }
      }
      
      public function §[,§() : void
      {
         var _loc1_:§0Y§ = null;
         for each(_loc1_ in this.§[!8§)
         {
            _loc1_.§[,§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§0Y§ = null;
         for each(_loc1_ in this.§[!8§)
         {
            _loc1_.play();
         }
      }
      
      public function §>;§() : void
      {
         var _loc2_:§0Y§ = null;
         §@!M§ = -§?x§;
         this.§8t§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!8§.length)
         {
            _loc2_ = this.§[!8§[_loc1_];
            _loc2_.§>;§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§0Y§ = null;
         §@!M§ += param1;
         if(§@!M§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§0y§;
         var _loc3_:int = this.§"%§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§[!8§[_loc4_]).update(param1);
            this.§>!+§(_loc5_);
            _loc4_++;
         }
         this.§1!-§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §>!+§(param1:§0Y§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§?!X§)
            {
               ++this.§8t§;
               if(this.§8t§ < this.§[!8§.length)
               {
                  this.§[!8§[this.§8t§].play();
               }
            }
         }
      }
      
      private function §1!-§() : void
      {
         if(this.isCompleted)
         {
            if(!§@!H§)
            {
               this.§>;§();
               this.play();
            }
            else if(§]2§ != null)
            {
               try
               {
                  §]2§();
                  §]2§ = null;
               }
               catch(e:Error)
               {
                  §]2§ = null;
                  if(!§=!%§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
