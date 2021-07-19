package §#!V§
{
   public class §5!,§ extends §[1§ implements §>!3§
   {
       
      
      private var §5s§:Vector.<§>!3§>;
      
      private var §3!'§:Boolean = true;
      
      private var §1!5§:int = 0;
      
      public function §5!,§(param1:Array, param2:Boolean)
      {
         var _loc3_:§>!3§ = null;
         this.§5s§ = new Vector.<§>!3§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§5s§.push(_loc3_);
         }
         this.§3!'§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§>!3§ = null;
         for each(_loc1_ in this.§5s§)
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
         var _loc1_:§>!3§ = null;
         for each(_loc1_ in this.§5s§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §9!I§() : int
      {
         if(this.§3!'§)
         {
            return this.§5s§.length;
         }
         if(this.§5s§.length > this.§1!5§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §;y§() : int
      {
         if(this.§3!'§)
         {
            return 0;
         }
         return this.§1!5§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>!3§ = null;
         while(this.§5s§.length > 0)
         {
            _loc1_ = this.§5s§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§>!3§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§5s§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §!S§() : void
      {
         var _loc1_:§>!3§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§5s§)
            {
               _loc1_.§!S§();
            }
         }
      }
      
      public function §3J§() : void
      {
         var _loc1_:§>!3§ = null;
         for each(_loc1_ in this.§5s§)
         {
            _loc1_.§3J§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§>!3§ = null;
         for each(_loc1_ in this.§5s§)
         {
            _loc1_.play();
         }
      }
      
      public function § !R§() : void
      {
         var _loc2_:§>!3§ = null;
         §3-§ = -§2K§;
         this.§1!5§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5s§.length)
         {
            _loc2_ = this.§5s§[_loc1_];
            _loc2_.§ !R§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§>!3§ = null;
         §3-§ += param1;
         if(§3-§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§9!I§;
         var _loc3_:int = this.§;y§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§5s§[_loc4_]).update(param1);
            this.§`A§(_loc5_);
            _loc4_++;
         }
         this.§0=§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §`A§(param1:§>!3§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§3!'§)
            {
               ++this.§1!5§;
               if(this.§1!5§ < this.§5s§.length)
               {
                  this.§5s§[this.§1!5§].play();
               }
            }
         }
      }
      
      private function §0=§() : void
      {
         if(this.isCompleted)
         {
            if(!§;m§)
            {
               this.§ !R§();
               this.play();
            }
            else if(§='§ != null)
            {
               try
               {
                  §='§();
                  §='§ = null;
               }
               catch(e:Error)
               {
                  §='§ = null;
                  if(!§^b§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
