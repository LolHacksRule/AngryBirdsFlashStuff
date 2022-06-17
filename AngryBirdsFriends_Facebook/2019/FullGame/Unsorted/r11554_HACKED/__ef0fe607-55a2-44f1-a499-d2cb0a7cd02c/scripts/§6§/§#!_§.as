package §6§#7
{
   public class §#!_§ extends §5p§ implements §6$'§
   {
       
      
      private var §7#a§:Vector.<§6$'§>;
      
      private var §4W§:Boolean = true;
      
      private var §;#U§:int = 0;
      
      public function §#!_§(param1:Array, param2:Boolean)
      {
         var _loc3_:§6$'§ = null;
         this.§7#a§ = new Vector.<§6$'§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§7#a§.push(_loc3_);
         }
         this.§4W§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§6$'§ = null;
         for each(_loc1_ in this.§7#a§)
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
         var _loc1_:§6$'§ = null;
         for each(_loc1_ in this.§7#a§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §6#c§() : int
      {
         if(this.§4W§)
         {
            return this.§7#a§.length;
         }
         if(this.§7#a§.length > this.§;#U§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §]"k§() : int
      {
         if(this.§4W§)
         {
            return 0;
         }
         return this.§;#U§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§6$'§ = null;
         while(this.§7#a§.length > 0)
         {
            _loc1_ = this.§7#a§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§6$'§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§7#a§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §6X§() : void
      {
         var _loc1_:§6$'§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§7#a§)
            {
               _loc1_.§6X§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§6$'§ = null;
         super.pause();
         for each(_loc1_ in this.§7#a§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§6$'§ = null;
         super.play();
         for each(_loc1_ in this.§7#a§)
         {
            _loc1_.play();
         }
      }
      
      public function §@#g§() : void
      {
         var _loc2_:§6$'§ = null;
         §?"6§ = -§=#H§;
         this.§;#U§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7#a§.length)
         {
            _loc2_ = this.§7#a§[_loc1_];
            _loc2_.§@#g§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§6$'§ = null;
         if(!§5#^§(param1))
         {
            return;
         }
         var _loc2_:int = this.§6#c§;
         var _loc3_:int = this.§]"k§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§7#a§[_loc4_]).update(param1);
            this.§-"t§(_loc5_);
            _loc4_++;
         }
         this.§7#L§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §-"t§(param1:§6$'§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§4W§)
            {
               ++this.§;#U§;
               if(this.§;#U§ < this.§7#a§.length)
               {
                  this.§7#a§[this.§;#U§].play();
               }
            }
         }
      }
      
      private function §7#L§() : void
      {
         if(this.isCompleted)
         {
            if(!§%"2§)
            {
               this.§@#g§();
               this.play();
            }
            else if(§2$@§ != null)
            {
               try
               {
                  §2$@§();
                  §2$@§ = null;
               }
               catch(e:Error)
               {
                  §2$@§ = null;
                  if(!§+!5§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
