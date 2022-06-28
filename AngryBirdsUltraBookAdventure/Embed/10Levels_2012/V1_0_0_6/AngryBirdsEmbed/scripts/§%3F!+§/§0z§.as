package §?!+§
{
   public class §0z§ extends §1!"§ implements §,!§
   {
       
      
      private var §5w§:Vector.<§,!§>;
      
      private var §>j§:Boolean = true;
      
      private var §4Z§:int = 0;
      
      public function §0z§(param1:Array, param2:Boolean)
      {
         var _loc3_:§,!§ = null;
         this.§5w§ = new Vector.<§,!§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§5w§.push(_loc3_);
         }
         this.§>j§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§,!§ = null;
         for each(_loc1_ in this.§5w§)
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
         var _loc1_:§,!§ = null;
         for each(_loc1_ in this.§5w§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §;D§() : int
      {
         if(this.§>j§)
         {
            return this.§5w§.length;
         }
         if(this.§5w§.length > this.§4Z§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §6!,§() : int
      {
         if(this.§>j§)
         {
            return 0;
         }
         return this.§4Z§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,!§ = null;
         while(this.§5w§.length > 0)
         {
            _loc1_ = this.§5w§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§,!§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§5w§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §'!5§() : void
      {
         var _loc1_:§,!§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§5w§)
            {
               _loc1_.§'!5§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§,!§ = null;
         for each(_loc1_ in this.§5w§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§,!§ = null;
         for each(_loc1_ in this.§5w§)
         {
            _loc1_.play();
         }
      }
      
      public function §!z§() : void
      {
         var _loc2_:§,!§ = null;
         §9!8§ = -§0! §;
         this.§4Z§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5w§.length)
         {
            _loc2_ = this.§5w§[_loc1_];
            _loc2_.§!z§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§,!§ = null;
         §9!8§ += param1;
         if(§9!8§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§;D§;
         var _loc3_:int = this.§6!,§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§5w§[_loc4_]).update(param1);
            this.§7+§(_loc5_);
            _loc4_++;
         }
         this.§^!$§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §7+§(param1:§,!§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§>j§)
            {
               ++this.§4Z§;
               if(this.§4Z§ < this.§5w§.length)
               {
                  this.§5w§[this.§4Z§].play();
               }
            }
         }
      }
      
      private function §^!$§() : void
      {
         if(this.isCompleted)
         {
            if(!§<!8§)
            {
               this.§!z§();
               this.play();
            }
            else if(§"3§ != null)
            {
               try
               {
                  §"3§();
                  §"3§ = null;
               }
               catch(e:Error)
               {
                  §"3§ = null;
                  if(!§[d§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
