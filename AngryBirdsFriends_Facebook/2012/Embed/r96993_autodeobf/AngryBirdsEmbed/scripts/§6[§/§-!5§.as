package §6[§
{
   public class §-!5§ extends §&=§ implements §5!1§
   {
       
      
      private var §0!E§:Vector.<§5!1§>;
      
      private var § k§:Boolean = true;
      
      private var §9q§:int = 0;
      
      public function §-!5§(param1:Array, param2:Boolean)
      {
         var _loc3_:§5!1§ = null;
         this.§0!E§ = new Vector.<§5!1§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§0!E§.push(_loc3_);
         }
         this.§ k§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§5!1§ = null;
         for each(_loc1_ in this.§0!E§)
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
         var _loc1_:§5!1§ = null;
         for each(_loc1_ in this.§0!E§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §`F§() : int
      {
         if(this.§ k§)
         {
            return this.§0!E§.length;
         }
         if(this.§0!E§.length > this.§9q§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §`z§() : int
      {
         if(this.§ k§)
         {
            return 0;
         }
         return this.§9q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§5!1§ = null;
         while(this.§0!E§.length > 0)
         {
            _loc1_ = this.§0!E§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§5!1§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§0!E§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §6z§() : void
      {
         var _loc1_:§5!1§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§0!E§)
            {
               _loc1_.§6z§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§5!1§ = null;
         for each(_loc1_ in this.§0!E§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§5!1§ = null;
         for each(_loc1_ in this.§0!E§)
         {
            _loc1_.play();
         }
      }
      
      public function §[y§() : void
      {
         var _loc2_:§5!1§ = null;
         §8]§ = -§?,§;
         this.§9q§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!E§.length)
         {
            _loc2_ = this.§0!E§[_loc1_];
            _loc2_.§[y§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§5!1§ = null;
         §8]§ += param1;
         if(§8]§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§`F§;
         var _loc3_:int = this.§`z§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§0!E§[_loc4_]).update(param1);
            this.§'L§(_loc5_);
            _loc4_++;
         }
         this.§;_§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §'L§(param1:§5!1§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§ k§)
            {
               ++this.§9q§;
               if(this.§9q§ < this.§0!E§.length)
               {
                  this.§0!E§[this.§9q§].play();
               }
            }
         }
      }
      
      private function §;_§() : void
      {
         if(this.isCompleted)
         {
            if(!§ a§)
            {
               this.§[y§();
               this.play();
            }
            else if(§[@§ != null)
            {
               try
               {
                  §[@§();
                  §[@§ = null;
               }
               catch(e:Error)
               {
                  §[@§ = null;
                  if(!§<! §)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
