package §=3§
{
   public class §9&§ extends §->§ implements § !h§
   {
       
      
      private var §,!&§:Vector.<§ !h§>;
      
      private var §6A§:Boolean = true;
      
      private var §5c§:int = 0;
      
      public function §9&§(param1:Array, param2:Boolean)
      {
         var _loc3_:§ !h§ = null;
         this.§,!&§ = new Vector.<§ !h§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§,!&§.push(_loc3_);
         }
         this.§6A§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§ !h§ = null;
         for each(_loc1_ in this.§,!&§)
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
         var _loc1_:§ !h§ = null;
         for each(_loc1_ in this.§,!&§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §#q§() : int
      {
         if(this.§6A§)
         {
            return this.§,!&§.length;
         }
         if(this.§,!&§.length > this.§5c§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §?S§() : int
      {
         if(this.§6A§)
         {
            return 0;
         }
         return this.§5c§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§ !h§ = null;
         while(this.§,!&§.length > 0)
         {
            _loc1_ = this.§,!&§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§ !h§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,!&§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §5$§() : void
      {
         var _loc1_:§ !h§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,!&§)
            {
               _loc1_.§5$§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§ !h§ = null;
         super.pause();
         for each(_loc1_ in this.§,!&§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§ !h§ = null;
         super.play();
         for each(_loc1_ in this.§,!&§)
         {
            _loc1_.play();
         }
      }
      
      public function §#"+§() : void
      {
         var _loc2_:§ !h§ = null;
         §[!l§ = -§>!x§;
         this.§5c§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!&§.length)
         {
            _loc2_ = this.§,!&§[_loc1_];
            _loc2_.§#"+§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§ !h§ = null;
         if(!§8!z§(param1))
         {
            return;
         }
         var _loc2_:int = this.§#q§;
         var _loc3_:int = this.§?S§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§,!&§[_loc4_]).update(param1);
            this.§3!V§(_loc5_);
            _loc4_++;
         }
         this.§=A§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3!V§(param1:§ !h§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§6A§)
            {
               ++this.§5c§;
               if(this.§5c§ < this.§,!&§.length)
               {
                  this.§,!&§[this.§5c§].play();
               }
            }
         }
      }
      
      private function §=A§() : void
      {
         if(this.isCompleted)
         {
            if(!§"!6§)
            {
               this.§#"+§();
               this.play();
            }
            else if(§ !o§ != null)
            {
               try
               {
                  § !o§();
                  § !o§ = null;
               }
               catch(e:Error)
               {
                  § !o§ = null;
                  if(!§ !+§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
