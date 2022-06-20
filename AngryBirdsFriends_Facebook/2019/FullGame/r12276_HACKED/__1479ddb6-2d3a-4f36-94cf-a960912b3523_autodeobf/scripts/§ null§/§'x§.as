package § null§
{
   public class §'x§ extends §[!O§ implements §0!N§
   {
       
      
      private var §2#e§:Vector.<§0!N§>;
      
      private var §4# §:Boolean = true;
      
      private var §"!W§:int = 0;
      
      public function §'x§(param1:Array, param2:Boolean)
      {
         var _loc3_:§0!N§ = null;
         this.§2#e§ = new Vector.<§0!N§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§2#e§.push(_loc3_);
         }
         this.§4# § = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§0!N§ = null;
         for each(_loc1_ in this.§2#e§)
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
         var _loc1_:§0!N§ = null;
         for each(_loc1_ in this.§2#e§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §;$;§() : int
      {
         if(this.§4# §)
         {
            return this.§2#e§.length;
         }
         if(this.§2#e§.length > this.§"!W§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §<!D§() : int
      {
         if(this.§4# §)
         {
            return 0;
         }
         return this.§"!W§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§0!N§ = null;
         while(this.§2#e§.length > 0)
         {
            _loc1_ = this.§2#e§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§0!N§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§2#e§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §+!_§() : void
      {
         var _loc1_:§0!N§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§2#e§)
            {
               _loc1_.§+!_§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§0!N§ = null;
         super.pause();
         for each(_loc1_ in this.§2#e§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§0!N§ = null;
         super.play();
         for each(_loc1_ in this.§2#e§)
         {
            _loc1_.play();
         }
      }
      
      public function §="_§() : void
      {
         var _loc2_:§0!N§ = null;
         §]!&§ = -§#"z§;
         this.§"!W§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2#e§.length)
         {
            _loc2_ = this.§2#e§[_loc1_];
            _loc2_.§="_§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§0!N§ = null;
         if(!§`#u§(param1))
         {
            return;
         }
         var _loc2_:int = this.§;$;§;
         var _loc3_:int = this.§<!D§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§2#e§[_loc4_]).update(param1);
            this.§,"$§(_loc5_);
            _loc4_++;
         }
         this.§5-§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §,"$§(param1:§0!N§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§4# §)
            {
               ++this.§"!W§;
               if(this.§"!W§ < this.§2#e§.length)
               {
                  this.§2#e§[this.§"!W§].play();
               }
            }
         }
      }
      
      private function §5-§() : void
      {
         if(this.isCompleted)
         {
            if(!§,!^§)
            {
               this.§="_§();
               this.play();
            }
            else if(§"#L§ != null)
            {
               try
               {
                  §"#L§();
                  §"#L§ = null;
               }
               catch(e:Error)
               {
                  §"#L§ = null;
                  if(!§=$B§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
