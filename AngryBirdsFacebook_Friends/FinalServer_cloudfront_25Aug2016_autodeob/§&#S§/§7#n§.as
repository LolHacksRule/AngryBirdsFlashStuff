package §&#S§
{
   public class §7#n§ extends §^!0§ implements §^#[§
   {
       
      
      private var §"=§:Vector.<§^#[§>;
      
      private var §9#k§:Boolean = true;
      
      private var §3!U§:int = 0;
      
      public function §7#n§(param1:Array, param2:Boolean)
      {
         var _loc3_:§^#[§ = null;
         this.§"=§ = new Vector.<§^#[§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§"=§.push(_loc3_);
         }
         this.§9#k§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§^#[§ = null;
         for each(_loc1_ in this.§"=§)
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
         var _loc1_:§^#[§ = null;
         for each(_loc1_ in this.§"=§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §]>§() : int
      {
         if(this.§9#k§)
         {
            return this.§"=§.length;
         }
         if(this.§"=§.length > this.§3!U§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §]!u§() : int
      {
         if(this.§9#k§)
         {
            return 0;
         }
         return this.§3!U§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§^#[§ = null;
         while(this.§"=§.length > 0)
         {
            _loc1_ = this.§"=§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§^#[§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§"=§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §?#$§() : void
      {
         var _loc1_:§^#[§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§"=§)
            {
               _loc1_.§?#$§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§^#[§ = null;
         super.pause();
         for each(_loc1_ in this.§"=§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§^#[§ = null;
         super.play();
         for each(_loc1_ in this.§"=§)
         {
            _loc1_.play();
         }
      }
      
      public function §%"F§() : void
      {
         var _loc2_:§^#[§ = null;
         §&"Q§ = -§0"=§;
         this.§3!U§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"=§.length)
         {
            _loc2_ = this.§"=§[_loc1_];
            _loc2_.§%"F§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§^#[§ = null;
         if(!§0"z§(param1))
         {
            return;
         }
         var _loc2_:int = this.§]>§;
         var _loc3_:int = this.§]!u§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§"=§[_loc4_]).update(param1);
            this.§<!i§(_loc5_);
            _loc4_++;
         }
         this.§0"Q§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §<!i§(param1:§^#[§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§9#k§)
            {
               ++this.§3!U§;
               if(this.§3!U§ < this.§"=§.length)
               {
                  this.§"=§[this.§3!U§].play();
               }
            }
         }
      }
      
      private function §0"Q§() : void
      {
         if(this.isCompleted)
         {
            if(!§ !o§)
            {
               this.§%"F§();
               this.play();
            }
            else if(§;#§ != null)
            {
               try
               {
                  §;#§();
                  §;#§ = null;
               }
               catch(e:Error)
               {
                  §;#§ = null;
                  if(!§`"v§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
