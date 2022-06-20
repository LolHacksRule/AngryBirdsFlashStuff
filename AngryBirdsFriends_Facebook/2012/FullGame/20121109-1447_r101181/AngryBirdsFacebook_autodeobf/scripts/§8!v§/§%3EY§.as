package §8!v§
{
   public class §>Y§ extends §'!6§ implements §+!W§
   {
       
      
      private var §77§:Vector.<§+!W§>;
      
      private var §&!5§:Boolean = true;
      
      private var §&!i§:int = 0;
      
      public function §>Y§(param1:Array, param2:Boolean)
      {
         var _loc3_:§+!W§ = null;
         this.§77§ = new Vector.<§+!W§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§77§.push(_loc3_);
         }
         this.§&!5§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§+!W§ = null;
         for each(_loc1_ in this.§77§)
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
         var _loc1_:§+!W§ = null;
         for each(_loc1_ in this.§77§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §3!I§() : int
      {
         if(this.§&!5§)
         {
            return this.§77§.length;
         }
         if(this.§77§.length > this.§&!i§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §>#§() : int
      {
         if(this.§&!5§)
         {
            return 0;
         }
         return this.§&!i§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+!W§ = null;
         while(this.§77§.length > 0)
         {
            _loc1_ = this.§77§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§+!W§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§77§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §?"3§() : void
      {
         var _loc1_:§+!W§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§77§)
            {
               _loc1_.§?"3§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§+!W§ = null;
         for each(_loc1_ in this.§77§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§+!W§ = null;
         for each(_loc1_ in this.§77§)
         {
            _loc1_.play();
         }
      }
      
      public function § set§() : void
      {
         var _loc2_:§+!W§ = null;
         §?!x§ = -§0!t§;
         this.§&!i§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§77§.length)
         {
            _loc2_ = this.§77§[_loc1_];
            _loc2_.§ set§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§+!W§ = null;
         §?!x§ += param1;
         if(§?!x§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§3!I§;
         var _loc3_:int = this.§>#§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§77§[_loc4_]).update(param1);
            this.§="0§(_loc5_);
            _loc4_++;
         }
         this.§^!k§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §="0§(param1:§+!W§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§&!5§)
            {
               ++this.§&!i§;
               if(this.§&!i§ < this.§77§.length)
               {
                  this.§77§[this.§&!i§].play();
               }
            }
         }
      }
      
      private function §^!k§() : void
      {
         if(this.isCompleted)
         {
            if(!§%"?§)
            {
               this.§ set§();
               this.play();
            }
            else if(§>!8§ != null)
            {
               try
               {
                  §>!8§();
                  §>!8§ = null;
               }
               catch(e:Error)
               {
                  §>!8§ = null;
                  if(!§3"!§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
