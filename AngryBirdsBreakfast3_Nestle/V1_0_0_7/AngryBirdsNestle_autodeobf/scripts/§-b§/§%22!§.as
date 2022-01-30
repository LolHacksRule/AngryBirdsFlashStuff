package §-b§
{
   public class §"!§ extends §8!_§ implements § !e§
   {
       
      
      private var §3!!§:Vector.<§ !e§>;
      
      private var §?!5§:Boolean = true;
      
      private var §1!k§:int = 0;
      
      public function §"!§(param1:Array, param2:Boolean)
      {
         var _loc3_:§ !e§ = null;
         this.§3!!§ = new Vector.<§ !e§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§3!!§.push(_loc3_);
         }
         this.§?!5§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§ !e§ = null;
         for each(_loc1_ in this.§3!!§)
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
         var _loc1_:§ !e§ = null;
         for each(_loc1_ in this.§3!!§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §4?§() : int
      {
         if(this.§?!5§)
         {
            return this.§3!!§.length;
         }
         if(this.§3!!§.length > this.§1!k§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §6-§() : int
      {
         if(this.§?!5§)
         {
            return 0;
         }
         return this.§1!k§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§ !e§ = null;
         while(this.§3!!§.length > 0)
         {
            _loc1_ = this.§3!!§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§ !e§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§3!!§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §8!E§() : void
      {
         var _loc1_:§ !e§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§3!!§)
            {
               _loc1_.§8!E§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§ !e§ = null;
         super.pause();
         for each(_loc1_ in this.§3!!§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§ !e§ = null;
         super.play();
         for each(_loc1_ in this.§3!!§)
         {
            _loc1_.play();
         }
      }
      
      public function §@E§() : void
      {
         var _loc2_:§ !e§ = null;
         static = -§1!%§;
         this.§1!k§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!!§.length)
         {
            _loc2_ = this.§3!!§[_loc1_];
            _loc2_.§@E§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§ !e§ = null;
         if(!§!!K§(param1))
         {
            return;
         }
         var _loc2_:int = this.§4?§;
         var _loc3_:int = this.§6-§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§3!!§[_loc4_]).update(param1);
            this.§^!K§(_loc5_);
            _loc4_++;
         }
         this.§3!3§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §^!K§(param1:§ !e§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§?!5§)
            {
               ++this.§1!k§;
               if(this.§1!k§ < this.§3!!§.length)
               {
                  this.§3!!§[this.§1!k§].play();
               }
            }
         }
      }
      
      private function §3!3§() : void
      {
         if(this.isCompleted)
         {
            if(!§^t§)
            {
               this.§@E§();
               this.play();
            }
            else if(§6l§ != null)
            {
               try
               {
                  §6l§();
                  §6l§ = null;
               }
               catch(e:Error)
               {
                  §6l§ = null;
                  if(!§;p§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
