package §&"'§
{
   public class §`q§ extends §1!X§ implements §@5§
   {
       
      
      private var static:Vector.<§@5§>;
      
      private var §'!c§:Boolean = true;
      
      private var §2!w§:int = 0;
      
      public function §`q§(param1:Array, param2:Boolean)
      {
         var _loc3_:§@5§ = null;
         this.static = new Vector.<§@5§>();
         super();
         for each(_loc3_ in param1)
         {
            this.static.push(_loc3_);
         }
         this.§'!c§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§@5§ = null;
         for each(_loc1_ in this.static)
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
         var _loc1_:§@5§ = null;
         for each(_loc1_ in this.static)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §6"3§() : int
      {
         if(this.§'!c§)
         {
            return this.static.length;
         }
         if(this.static.length > this.§2!w§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §>"-§() : int
      {
         if(this.§'!c§)
         {
            return 0;
         }
         return this.§2!w§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@5§ = null;
         while(this.static.length > 0)
         {
            _loc1_ = this.static.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§@5§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.static)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §9g§() : void
      {
         var _loc1_:§@5§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.static)
            {
               _loc1_.§9g§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§@5§ = null;
         for each(_loc1_ in this.static)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§@5§ = null;
         for each(_loc1_ in this.static)
         {
            _loc1_.play();
         }
      }
      
      public function §'!w§() : void
      {
         var _loc2_:§@5§ = null;
         §7A§ = -§0!<§;
         this.§2!w§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.static.length)
         {
            _loc2_ = this.static[_loc1_];
            _loc2_.§'!w§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§@5§ = null;
         §7A§ += param1;
         if(§7A§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§6"3§;
         var _loc3_:int = this.§>"-§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.static[_loc4_]).update(param1);
            this.§3v§(_loc5_);
            _loc4_++;
         }
         this.§1!m§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3v§(param1:§@5§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§'!c§)
            {
               ++this.§2!w§;
               if(this.§2!w§ < this.static.length)
               {
                  this.static[this.§2!w§].play();
               }
            }
         }
      }
      
      private function §1!m§() : void
      {
         if(this.isCompleted)
         {
            if(!§4!Y§)
            {
               this.§'!w§();
               this.play();
            }
            else if(§&6§ != null)
            {
               try
               {
                  §&6§();
                  §&6§ = null;
               }
               catch(e:Error)
               {
                  §&6§ = null;
                  if(!§<!y§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
