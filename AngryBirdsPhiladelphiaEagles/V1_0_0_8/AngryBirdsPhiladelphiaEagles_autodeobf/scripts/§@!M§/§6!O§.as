package §@!M§
{
   public class §6!O§ extends §#^§ implements §"!C§
   {
       
      
      private var §!b§:Vector.<§"!C§>;
      
      private var §,! §:Boolean = true;
      
      private var §!^§:int = 0;
      
      public function §6!O§(param1:Array, param2:Boolean)
      {
         var _loc3_:§"!C§ = null;
         this.§!b§ = new Vector.<§"!C§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§!b§.push(_loc3_);
         }
         this.§,! § = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§"!C§ = null;
         for each(_loc1_ in this.§!b§)
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
         var _loc1_:§"!C§ = null;
         for each(_loc1_ in this.§!b§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §%!?§() : int
      {
         if(this.§,! §)
         {
            return this.§!b§.length;
         }
         if(this.§!b§.length > this.§!^§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get § d§() : int
      {
         if(this.§,! §)
         {
            return 0;
         }
         return this.§!^§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"!C§ = null;
         while(this.§!b§.length > 0)
         {
            _loc1_ = this.§!b§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§"!C§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§!b§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §?0§() : void
      {
         var _loc1_:§"!C§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§!b§)
            {
               _loc1_.§?0§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§"!C§ = null;
         for each(_loc1_ in this.§!b§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§"!C§ = null;
         for each(_loc1_ in this.§!b§)
         {
            _loc1_.play();
         }
      }
      
      public function §%u§() : void
      {
         var _loc2_:§"!C§ = null;
         §`!3§ = -§=!#§;
         this.§!^§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!b§.length)
         {
            _loc2_ = this.§!b§[_loc1_];
            _loc2_.§%u§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§"!C§ = null;
         §`!3§ += param1;
         if(§`!3§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§%!?§;
         var _loc3_:int = this.§ d§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§!b§[_loc4_]).update(param1);
            this.§!7§(_loc5_);
            _loc4_++;
         }
         this.§8@§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §!7§(param1:§"!C§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§,! §)
            {
               ++this.§!^§;
               if(this.§!^§ < this.§!b§.length)
               {
                  this.§!b§[this.§!^§].play();
               }
            }
         }
      }
      
      private function §8@§() : void
      {
         if(this.isCompleted)
         {
            if(!§&b§)
            {
               this.§%u§();
               this.play();
            }
            else if(§&!L§ != null)
            {
               try
               {
                  §&!L§();
                  §&!L§ = null;
               }
               catch(e:Error)
               {
                  §&!L§ = null;
                  if(!§^4§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
