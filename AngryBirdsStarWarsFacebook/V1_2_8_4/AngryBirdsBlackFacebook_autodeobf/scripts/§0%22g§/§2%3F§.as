package §0"g§
{
   public class §2?§ extends §6[§ implements §8"f§
   {
       
      
      private var §!a§:Vector.<§8"f§>;
      
      private var §'"$§:Boolean = true;
      
      private var §1B§:int = 0;
      
      public function §2?§(param1:Array, param2:Boolean)
      {
         var _loc3_:§8"f§ = null;
         this.§!a§ = new Vector.<§8"f§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§!a§.push(_loc3_);
         }
         this.§'"$§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§8"f§ = null;
         for each(_loc1_ in this.§!a§)
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
         var _loc1_:§8"f§ = null;
         for each(_loc1_ in this.§!a§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §5"5§() : int
      {
         if(this.§'"$§)
         {
            return this.§!a§.length;
         }
         if(this.§!a§.length > this.§1B§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §;!k§() : int
      {
         if(this.§'"$§)
         {
            return 0;
         }
         return this.§1B§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§8"f§ = null;
         while(this.§!a§.length > 0)
         {
            _loc1_ = this.§!a§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§8"f§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§!a§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §=!L§() : void
      {
         var _loc1_:§8"f§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§!a§)
            {
               _loc1_.§=!L§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§8"f§ = null;
         super.pause();
         for each(_loc1_ in this.§!a§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§8"f§ = null;
         super.play();
         for each(_loc1_ in this.§!a§)
         {
            _loc1_.play();
         }
      }
      
      public function §,f§() : void
      {
         var _loc2_:§8"f§ = null;
         §7#4§ = -§1!4§;
         this.§1B§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!a§.length)
         {
            _loc2_ = this.§!a§[_loc1_];
            _loc2_.§,f§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§8"f§ = null;
         if(!§9!;§(param1))
         {
            return;
         }
         var _loc2_:int = this.§5"5§;
         var _loc3_:int = this.§;!k§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§!a§[_loc4_]).update(param1);
            this.§45§(_loc5_);
            _loc4_++;
         }
         this.§>!8§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §45§(param1:§8"f§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§'"$§)
            {
               ++this.§1B§;
               if(this.§1B§ < this.§!a§.length)
               {
                  this.§!a§[this.§1B§].play();
               }
            }
         }
      }
      
      private function §>!8§() : void
      {
         if(this.isCompleted)
         {
            if(!§`!d§)
            {
               this.§,f§();
               this.play();
            }
            else if(§^@§ != null)
            {
               try
               {
                  §^@§();
                  §^@§ = null;
               }
               catch(e:Error)
               {
                  §^@§ = null;
                  if(!§@!>§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
