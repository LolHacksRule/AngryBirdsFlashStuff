package §%q§
{
   public class §!y§ extends §%!C§ implements §;i§
   {
       
      
      private var §+2§:Vector.<§;i§>;
      
      private var §-!6§:Boolean = true;
      
      private var §]=§:int = 0;
      
      public function §!y§(param1:Array, param2:Boolean)
      {
         var _loc3_:§;i§ = null;
         this.§+2§ = new Vector.<§;i§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§+2§.push(_loc3_);
         }
         this.§-!6§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§;i§ = null;
         for each(_loc1_ in this.§+2§)
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
         var _loc1_:§;i§ = null;
         for each(_loc1_ in this.§+2§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §7E§() : int
      {
         if(this.§-!6§)
         {
            return this.§+2§.length;
         }
         if(this.§+2§.length > this.§]=§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §<F§() : int
      {
         if(this.§-!6§)
         {
            return 0;
         }
         return this.§]=§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;i§ = null;
         while(this.§+2§.length > 0)
         {
            _loc1_ = this.§+2§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§;i§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+2§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §[!F§() : void
      {
         var _loc1_:§;i§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+2§)
            {
               _loc1_.§[!F§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§;i§ = null;
         for each(_loc1_ in this.§+2§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§;i§ = null;
         for each(_loc1_ in this.§+2§)
         {
            _loc1_.play();
         }
      }
      
      public function §3!B§() : void
      {
         var _loc2_:§;i§ = null;
         §%A§ = -§[D§;
         this.§]=§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+2§.length)
         {
            _loc2_ = this.§+2§[_loc1_];
            _loc2_.§3!B§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§;i§ = null;
         §%A§ += param1;
         if(§%A§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§7E§;
         var _loc3_:int = this.§<F§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§+2§[_loc4_]).update(param1);
            this.§88§(_loc5_);
            _loc4_++;
         }
         this.§2!$§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §88§(param1:§;i§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§-!6§)
            {
               ++this.§]=§;
               if(this.§]=§ < this.§+2§.length)
               {
                  this.§+2§[this.§]=§].play();
               }
            }
         }
      }
      
      private function §2!$§() : void
      {
         if(this.isCompleted)
         {
            if(!§&q§)
            {
               this.§3!B§();
               this.play();
            }
            else if(§&S§ != null)
            {
               try
               {
                  §&S§();
                  §&S§ = null;
               }
               catch(e:Error)
               {
                  §&S§ = null;
                  if(!§-R§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
