package §9!U§
{
   public class §^""§ extends §]"D§ implements §^"3§
   {
       
      
      private var §%§:Vector.<§^"3§>;
      
      private var §2"F§:Boolean = true;
      
      private var §%!T§:int = 0;
      
      public function §^""§(param1:Array, param2:Boolean)
      {
         var _loc3_:§^"3§ = null;
         this.§%§ = new Vector.<§^"3§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§%§.push(_loc3_);
         }
         this.§2"F§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§^"3§ = null;
         for each(_loc1_ in this.§%§)
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
         var _loc1_:§^"3§ = null;
         for each(_loc1_ in this.§%§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §-$§() : int
      {
         if(this.§2"F§)
         {
            return this.§%§.length;
         }
         if(this.§%§.length > this.§%!T§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §<V§() : int
      {
         if(this.§2"F§)
         {
            return 0;
         }
         return this.§%!T§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§^"3§ = null;
         while(this.§%§.length > 0)
         {
            _loc1_ = this.§%§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§^"3§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§%§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §`w§() : void
      {
         var _loc1_:§^"3§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§%§)
            {
               _loc1_.§`w§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§^"3§ = null;
         super.pause();
         for each(_loc1_ in this.§%§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§^"3§ = null;
         super.play();
         for each(_loc1_ in this.§%§)
         {
            _loc1_.play();
         }
      }
      
      public function §9#§() : void
      {
         var _loc2_:§^"3§ = null;
         §#"D§ = -§""3§;
         this.§%!T§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%§.length)
         {
            _loc2_ = this.§%§[_loc1_];
            _loc2_.§9#§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§^"3§ = null;
         if(!§5!h§(param1))
         {
            return;
         }
         var _loc2_:int = this.§-$§;
         var _loc3_:int = this.§<V§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§%§[_loc4_]).update(param1);
            this.§#1§(_loc5_);
            _loc4_++;
         }
         this.§]!_§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §#1§(param1:§^"3§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§2"F§)
            {
               ++this.§%!T§;
               if(this.§%!T§ < this.§%§.length)
               {
                  this.§%§[this.§%!T§].play();
               }
            }
         }
      }
      
      private function §]!_§() : void
      {
         if(this.isCompleted)
         {
            if(!§ !M§)
            {
               this.§9#§();
               this.play();
            }
            else if(§ "1§ != null)
            {
               try
               {
                  § "1§();
                  § "1§ = null;
               }
               catch(e:Error)
               {
                  § "1§ = null;
                  if(!§%"A§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
