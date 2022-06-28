package §2!H§
{
   public class §#m§ extends §!!1§ implements §6X§
   {
       
      
      private var §=W§:Vector.<§6X§>;
      
      private var §#!_§:Boolean = true;
      
      private var §;!%§:int = 0;
      
      public function §#m§(param1:Array, param2:Boolean)
      {
         var _loc3_:§6X§ = null;
         this.§=W§ = new Vector.<§6X§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§=W§.push(_loc3_);
         }
         this.§#!_§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§6X§ = null;
         for each(_loc1_ in this.§=W§)
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
         var _loc1_:§6X§ = null;
         for each(_loc1_ in this.§=W§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §6_§() : int
      {
         if(this.§#!_§)
         {
            return this.§=W§.length;
         }
         if(this.§=W§.length > this.§;!%§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §%!P§() : int
      {
         if(this.§#!_§)
         {
            return 0;
         }
         return this.§;!%§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6X§ = null;
         while(this.§=W§.length > 0)
         {
            _loc1_ = this.§=W§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§6X§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§=W§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §9!l§() : void
      {
         var _loc1_:§6X§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§=W§)
            {
               _loc1_.§9!l§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§6X§ = null;
         for each(_loc1_ in this.§=W§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§6X§ = null;
         for each(_loc1_ in this.§=W§)
         {
            _loc1_.play();
         }
      }
      
      public function §"p§() : void
      {
         var _loc2_:§6X§ = null;
         §[f§ = -§@z§;
         this.§;!%§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=W§.length)
         {
            _loc2_ = this.§=W§[_loc1_];
            _loc2_.§"p§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§6X§ = null;
         §[f§ += param1;
         if(§[f§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§6_§;
         var _loc3_:int = this.§%!P§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§=W§[_loc4_]).update(param1);
            this.§3!i§(_loc5_);
            _loc4_++;
         }
         this.§#!^§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3!i§(param1:§6X§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§#!_§)
            {
               ++this.§;!%§;
               if(this.§;!%§ < this.§=W§.length)
               {
                  this.§=W§[this.§;!%§].play();
               }
            }
         }
      }
      
      private function §#!^§() : void
      {
         if(this.isCompleted)
         {
            if(!§5!J§)
            {
               this.§"p§();
               this.play();
            }
            else if(§3!U§ != null)
            {
               try
               {
                  §3!U§();
                  §3!U§ = null;
               }
               catch(e:Error)
               {
                  §3!U§ = null;
                  if(!§6?§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
