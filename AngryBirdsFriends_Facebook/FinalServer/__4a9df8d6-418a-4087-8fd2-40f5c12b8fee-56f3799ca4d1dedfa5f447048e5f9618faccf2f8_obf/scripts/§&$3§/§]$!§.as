package §&$3§
{
   public class §]$!§ extends §&$5§ implements §0#m§
   {
       
      
      private var §1#_§:Vector.<§0#m§>;
      
      private var §##R§:Boolean = true;
      
      private var §`"<§:int = 0;
      
      public function §]$!§(param1:Array, param2:Boolean)
      {
         var _loc3_:§0#m§ = null;
         this.§1#_§ = new Vector.<§0#m§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§1#_§.push(_loc3_);
         }
         this.§##R§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§0#m§ = null;
         for each(_loc1_ in this.§1#_§)
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
         var _loc1_:§0#m§ = null;
         for each(_loc1_ in this.§1#_§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §6$-§() : int
      {
         if(this.§##R§)
         {
            return this.§1#_§.length;
         }
         if(this.§1#_§.length > this.§`"<§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §]#h§() : int
      {
         if(this.§##R§)
         {
            return 0;
         }
         return this.§`"<§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§0#m§ = null;
         while(this.§1#_§.length > 0)
         {
            _loc1_ = this.§1#_§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§0#m§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§1#_§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §%"#§() : void
      {
         var _loc1_:§0#m§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§1#_§)
            {
               _loc1_.§%"#§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§0#m§ = null;
         super.pause();
         for each(_loc1_ in this.§1#_§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§0#m§ = null;
         super.play();
         for each(_loc1_ in this.§1#_§)
         {
            _loc1_.play();
         }
      }
      
      public function §9#D§() : void
      {
         var _loc2_:§0#m§ = null;
         §8"%§ = -§;"5§;
         this.§`"<§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1#_§.length)
         {
            _loc2_ = this.§1#_§[_loc1_];
            _loc2_.§9#D§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§0#m§ = null;
         if(!§+"a§(param1))
         {
            return;
         }
         var _loc2_:int = this.§6$-§;
         var _loc3_:int = this.§]#h§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§1#_§[_loc4_]).update(param1);
            this.§@$5§(_loc5_);
            _loc4_++;
         }
         this.§2R§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §@$5§(param1:§0#m§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§##R§)
            {
               ++this.§`"<§;
               if(this.§`"<§ < this.§1#_§.length)
               {
                  this.§1#_§[this.§`"<§].play();
               }
            }
         }
      }
      
      private function §2R§() : void
      {
         if(this.isCompleted)
         {
            if(!§2"a§)
            {
               this.§9#D§();
               this.play();
            }
            else if(§6"e§ != null)
            {
               try
               {
                  §6"e§();
                  §6"e§ = null;
               }
               catch(e:Error)
               {
                  §6"e§ = null;
                  if(!§`4§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
