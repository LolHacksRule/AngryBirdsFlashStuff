package §]5§
{
   public class §[[§ extends § j§ implements §-!B§
   {
       
      
      private var § R§:Vector.<§-!B§>;
      
      private var §>!B§:Boolean = true;
      
      private var §0!@§:int = 0;
      
      public function §[[§(param1:Array, param2:Boolean)
      {
         var _loc3_:§-!B§ = null;
         this.§ R§ = new Vector.<§-!B§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§ R§.push(_loc3_);
         }
         this.§>!B§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§-!B§ = null;
         for each(_loc1_ in this.§ R§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §=n§() : int
      {
         if(this.§>!B§)
         {
            return this.§ R§.length;
         }
         if(this.§ R§.length > 0)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §1D§() : int
      {
         if(this.§>!B§)
         {
            return 0;
         }
         return this.§0!@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-!B§ = null;
         while(this.§ R§.length > 0)
         {
            _loc1_ = this.§ R§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§-!B§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§ R§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §4?§() : void
      {
         var _loc1_:§-!B§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§ R§)
            {
               _loc1_.§4?§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc2_:§-!B§ = null;
         var _loc1_:int = this.§=n§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ R§[_loc1_];
            _loc2_.pause();
            _loc1_--;
         }
      }
      
      public function play() : void
      {
         var _loc2_:§-!B§ = null;
         var _loc1_:int = this.§=n§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ R§[_loc1_];
            _loc2_.play();
            _loc1_--;
         }
      }
      
      public function §;6§() : void
      {
         var _loc2_:§-!B§ = null;
         §`!,§ = -§1O§;
         this.§0!@§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ R§.length)
         {
            _loc2_ = this.§ R§[_loc1_];
            _loc2_.§;6§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§-!B§ = null;
         §`!,§ += param1;
         if(§`!,§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§=n§;
         var _loc3_:int = this.§1D§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§ R§[_loc4_]).update(param1);
            this.§4!F§(_loc5_);
            _loc4_++;
         }
         this.§ !9§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §4!F§(param1:§-!B§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§>!B§)
            {
               ++this.§0!@§;
               if(this.§0!@§ < this.§ R§.length)
               {
                  this.§ R§[this.§0!@§].play();
               }
            }
         }
      }
      
      private function § !9§() : void
      {
         if(this.isCompleted)
         {
            if(!§;!B§)
            {
               this.§;6§();
               this.play();
            }
            else if(§7f§ != null)
            {
               try
               {
                  §7f§();
                  §7f§ = null;
               }
               catch(e:Error)
               {
                  §7f§ = null;
                  if(!§2m§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
