package §6"G§
{
   public class §[#-§ extends §?!4§ implements § #B§
   {
       
      
      private var §9!o§:Vector.<§ #B§>;
      
      private var §^j§:Boolean = true;
      
      private var §3%§:int = 0;
      
      public function §[#-§(param1:Array, param2:Boolean)
      {
         var _loc3_:§ #B§ = null;
         this.§9!o§ = new Vector.<§ #B§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§9!o§.push(_loc3_);
         }
         this.§^j§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§ #B§ = null;
         for each(_loc1_ in this.§9!o§)
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
         var _loc1_:§ #B§ = null;
         for each(_loc1_ in this.§9!o§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §2# §() : int
      {
         if(this.§^j§)
         {
            return this.§9!o§.length;
         }
         if(this.§9!o§.length > this.§3%§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §%!5§() : int
      {
         if(this.§^j§)
         {
            return 0;
         }
         return this.§3%§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§ #B§ = null;
         while(this.§9!o§.length > 0)
         {
            _loc1_ = this.§9!o§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§ #B§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9!o§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §^"P§() : void
      {
         var _loc1_:§ #B§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9!o§)
            {
               _loc1_.§^"P§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§ #B§ = null;
         super.pause();
         for each(_loc1_ in this.§9!o§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§ #B§ = null;
         super.play();
         for each(_loc1_ in this.§9!o§)
         {
            _loc1_.play();
         }
      }
      
      public function §=#O§() : void
      {
         var _loc2_:§ #B§ = null;
         §@o§ = -§"!l§;
         this.§3%§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!o§.length)
         {
            _loc2_ = this.§9!o§[_loc1_];
            _loc2_.§=#O§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§ #B§ = null;
         if(!§"c§(param1))
         {
            return;
         }
         var _loc2_:int = this.§2# §;
         var _loc3_:int = this.§%!5§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§9!o§[_loc4_]).update(param1);
            this.§&!-§(_loc5_);
            _loc4_++;
         }
         this.§+#'§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §&!-§(param1:§ #B§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§^j§)
            {
               ++this.§3%§;
               if(this.§3%§ < this.§9!o§.length)
               {
                  this.§9!o§[this.§3%§].play();
               }
            }
         }
      }
      
      private function §+#'§() : void
      {
         if(this.isCompleted)
         {
            if(!§'#_§)
            {
               this.§=#O§();
               this.play();
            }
            else if(§;!S§ != null)
            {
               try
               {
                  §;!S§();
                  §;!S§ = null;
               }
               catch(e:Error)
               {
                  §;!S§ = null;
                  if(!§4"q§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
