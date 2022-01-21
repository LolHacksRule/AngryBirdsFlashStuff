package §"f§
{
   public class §?V§ extends §9i§ implements §7!e§
   {
       
      
      private var §&!9§:Vector.<§7!e§>;
      
      private var §"R§:Boolean = true;
      
      private var §7W§:int = 0;
      
      public function §?V§(param1:Array, param2:Boolean)
      {
         var _loc3_:§7!e§ = null;
         this.§&!9§ = new Vector.<§7!e§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§&!9§.push(_loc3_);
         }
         this.§"R§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§7!e§ = null;
         for each(_loc1_ in this.§&!9§)
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
         var _loc1_:§7!e§ = null;
         for each(_loc1_ in this.§&!9§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §>! §() : int
      {
         if(this.§"R§)
         {
            return this.§&!9§.length;
         }
         if(this.§&!9§.length > this.§7W§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §![§() : int
      {
         if(this.§"R§)
         {
            return 0;
         }
         return this.§7W§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7!e§ = null;
         while(this.§&!9§.length > 0)
         {
            _loc1_ = this.§&!9§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§7!e§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§&!9§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §%e§() : void
      {
         var _loc1_:§7!e§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§&!9§)
            {
               _loc1_.§%e§();
            }
         }
      }
      
      public function §2!§() : void
      {
         var _loc1_:§7!e§ = null;
         for each(_loc1_ in this.§&!9§)
         {
            _loc1_.§2!§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§7!e§ = null;
         for each(_loc1_ in this.§&!9§)
         {
            _loc1_.play();
         }
      }
      
      public function §;!`§() : void
      {
         var _loc2_:§7!e§ = null;
         §>!b§ = -§?d§;
         this.§7W§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!9§.length)
         {
            _loc2_ = this.§&!9§[_loc1_];
            _loc2_.§;!`§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§7!e§ = null;
         §>!b§ += param1;
         if(§>!b§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§>! §;
         var _loc3_:int = this.§![§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§&!9§[_loc4_]).update(param1);
            this.§6!0§(_loc5_);
            _loc4_++;
         }
         this.§-n§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §6!0§(param1:§7!e§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§"R§)
            {
               ++this.§7W§;
               if(this.§7W§ < this.§&!9§.length)
               {
                  this.§&!9§[this.§7W§].play();
               }
            }
         }
      }
      
      private function §-n§() : void
      {
         if(this.isCompleted)
         {
            if(!§5!J§)
            {
               this.§;!`§();
               this.play();
            }
            else if(§]!K§ != null)
            {
               try
               {
                  §]!K§();
                  §]!K§ = null;
               }
               catch(e:Error)
               {
                  §]!K§ = null;
                  if(!§`z§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
