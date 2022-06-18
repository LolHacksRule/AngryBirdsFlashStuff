package §6!S§
{
   public class §<K§ extends §;!<§ implements §1a§
   {
       
      
      private var §^!@§:Vector.<§1a§>;
      
      private var §[>§:Boolean = true;
      
      private var §6!E§:int = 0;
      
      public function §<K§(param1:Array, param2:Boolean)
      {
         var _loc3_:§1a§ = null;
         this.§^!@§ = new Vector.<§1a§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§^!@§.push(_loc3_);
         }
         this.§[>§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§1a§ = null;
         for each(_loc1_ in this.§^!@§)
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
         var _loc1_:§1a§ = null;
         for each(_loc1_ in this.§^!@§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §?!9§() : int
      {
         if(this.§[>§)
         {
            return this.§^!@§.length;
         }
         if(this.§^!@§.length > this.§6!E§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §'!U§() : int
      {
         if(this.§[>§)
         {
            return 0;
         }
         return this.§6!E§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§1a§ = null;
         while(this.§^!@§.length > 0)
         {
            _loc1_ = this.§^!@§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§1a§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§^!@§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §5!!§() : void
      {
         var _loc1_:§1a§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§^!@§)
            {
               _loc1_.§5!!§();
            }
         }
      }
      
      public function §9!§() : void
      {
         var _loc1_:§1a§ = null;
         for each(_loc1_ in this.§^!@§)
         {
            _loc1_.§9!§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§1a§ = null;
         for each(_loc1_ in this.§^!@§)
         {
            _loc1_.play();
         }
      }
      
      public function §'!=§() : void
      {
         var _loc2_:§1a§ = null;
         §4!§ = -§"!S§;
         this.§6!E§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^!@§.length)
         {
            _loc2_ = this.§^!@§[_loc1_];
            _loc2_.§'!=§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§1a§ = null;
         §4!§ += param1;
         if(§4!§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§?!9§;
         var _loc3_:int = this.§'!U§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§^!@§[_loc4_]).update(param1);
            this.§=!b§(_loc5_);
            _loc4_++;
         }
         this.§2!1§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §=!b§(param1:§1a§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§[>§)
            {
               ++this.§6!E§;
               if(this.§6!E§ < this.§^!@§.length)
               {
                  this.§^!@§[this.§6!E§].play();
               }
            }
         }
      }
      
      private function §2!1§() : void
      {
         if(this.isCompleted)
         {
            if(!§'!2§)
            {
               this.§'!=§();
               this.play();
            }
            else if(§]b§ != null)
            {
               try
               {
                  §]b§();
                  §]b§ = null;
               }
               catch(e:Error)
               {
                  §]b§ = null;
                  if(!§^!=§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
