package §]F§
{
   public class §`!E§ extends §!Q§ implements §9!A§
   {
       
      
      private var §#!8§:Vector.<§9!A§>;
      
      private var §=!B§:Boolean = true;
      
      private var §7X§:int = 0;
      
      public function §`!E§(param1:Array, param2:Boolean)
      {
         var _loc3_:§9!A§ = null;
         this.§#!8§ = new Vector.<§9!A§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§#!8§.push(_loc3_);
         }
         this.§=!B§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§9!A§ = null;
         for each(_loc1_ in this.§#!8§)
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
         var _loc1_:§9!A§ = null;
         for each(_loc1_ in this.§#!8§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §-t§() : int
      {
         if(this.§=!B§)
         {
            return this.§#!8§.length;
         }
         if(this.§#!8§.length > this.§7X§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §catch§() : int
      {
         if(this.§=!B§)
         {
            return 0;
         }
         return this.§7X§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!A§ = null;
         while(this.§#!8§.length > 0)
         {
            _loc1_ = this.§#!8§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§9!A§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§#!8§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §&T§() : void
      {
         var _loc1_:§9!A§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§#!8§)
            {
               _loc1_.§&T§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§9!A§ = null;
         for each(_loc1_ in this.§#!8§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§9!A§ = null;
         for each(_loc1_ in this.§#!8§)
         {
            _loc1_.play();
         }
      }
      
      public function §>!$§() : void
      {
         var _loc2_:§9!A§ = null;
         §!!L§ = -§+!e§;
         this.§7X§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!8§.length)
         {
            _loc2_ = this.§#!8§[_loc1_];
            _loc2_.§>!$§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§9!A§ = null;
         §!!L§ += param1;
         if(§!!L§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§-t§;
         var _loc3_:int = this.§catch§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§#!8§[_loc4_]).update(param1);
            this.§`<§(_loc5_);
            _loc4_++;
         }
         this.§3Y§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §`<§(param1:§9!A§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§=!B§)
            {
               ++this.§7X§;
               if(this.§7X§ < this.§#!8§.length)
               {
                  this.§#!8§[this.§7X§].play();
               }
            }
         }
      }
      
      private function §3Y§() : void
      {
         if(this.isCompleted)
         {
            if(!§2!L§)
            {
               this.§>!$§();
               this.play();
            }
            else if(§10§ != null)
            {
               try
               {
                  §10§();
                  §10§ = null;
               }
               catch(e:Error)
               {
                  §10§ = null;
                  if(!§[!c§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
