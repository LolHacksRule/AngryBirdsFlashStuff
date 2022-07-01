package §>!J§
{
   public class §`S§ extends §+!b§ implements § !8§
   {
       
      
      private var §#i§:Vector.<§ !8§>;
      
      private var §3!t§:Boolean = true;
      
      private var §0§:int = 0;
      
      public function §`S§(param1:Array, param2:Boolean)
      {
         var _loc3_:§ !8§ = null;
         this.§#i§ = new Vector.<§ !8§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§#i§.push(_loc3_);
         }
         this.§3!t§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§ !8§ = null;
         for each(_loc1_ in this.§#i§)
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
         var _loc1_:§ !8§ = null;
         for each(_loc1_ in this.§#i§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §7!0§() : int
      {
         if(this.§3!t§)
         {
            return this.§#i§.length;
         }
         if(this.§#i§.length > this.§0§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §>!R§() : int
      {
         if(this.§3!t§)
         {
            return 0;
         }
         return this.§0§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ !8§ = null;
         while(this.§#i§.length > 0)
         {
            _loc1_ = this.§#i§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§ !8§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§#i§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §0%§() : void
      {
         var _loc1_:§ !8§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§#i§)
            {
               _loc1_.§0%§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§ !8§ = null;
         for each(_loc1_ in this.§#i§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§ !8§ = null;
         for each(_loc1_ in this.§#i§)
         {
            _loc1_.play();
         }
      }
      
      public function §7J§() : void
      {
         var _loc2_:§ !8§ = null;
         §7!n§ = -§4!$§;
         this.§0§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#i§.length)
         {
            _loc2_ = this.§#i§[_loc1_];
            _loc2_.§7J§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§ !8§ = null;
         §7!n§ += param1;
         if(§7!n§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§7!0§;
         var _loc3_:int = this.§>!R§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§#i§[_loc4_]).update(param1);
            this.§&!e§(_loc5_);
            _loc4_++;
         }
         this.§-!h§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §&!e§(param1:§ !8§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§3!t§)
            {
               ++this.§0§;
               if(this.§0§ < this.§#i§.length)
               {
                  this.§#i§[this.§0§].play();
               }
            }
         }
      }
      
      private function §-!h§() : void
      {
         if(this.isCompleted)
         {
            if(!§%@§)
            {
               this.§7J§();
               this.play();
            }
            else if(§%!g§ != null)
            {
               try
               {
                  §%!g§();
                  §%!g§ = null;
               }
               catch(e:Error)
               {
                  §%!g§ = null;
                  if(!§@!I§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
