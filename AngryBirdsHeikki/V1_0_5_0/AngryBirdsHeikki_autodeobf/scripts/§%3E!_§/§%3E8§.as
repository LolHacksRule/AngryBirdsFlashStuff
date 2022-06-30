package §>!_§
{
   public class §>8§ extends §;&§ implements §,!D§
   {
       
      
      private var §#@§:Vector.<§,!D§>;
      
      private var §@V§:Boolean = true;
      
      private var §?!Y§:int = 0;
      
      public function §>8§(param1:Array, param2:Boolean)
      {
         var _loc3_:§,!D§ = null;
         this.§#@§ = new Vector.<§,!D§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§#@§.push(_loc3_);
         }
         this.§@V§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§,!D§ = null;
         for each(_loc1_ in this.§#@§)
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
         var _loc1_:§,!D§ = null;
         for each(_loc1_ in this.§#@§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §7!P§() : int
      {
         if(this.§@V§)
         {
            return this.§#@§.length;
         }
         if(this.§#@§.length > this.§?!Y§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get § !,§() : int
      {
         if(this.§@V§)
         {
            return 0;
         }
         return this.§?!Y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,!D§ = null;
         while(this.§#@§.length > 0)
         {
            _loc1_ = this.§#@§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§,!D§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§#@§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §"!N§() : void
      {
         var _loc1_:§,!D§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§#@§)
            {
               _loc1_.§"!N§();
            }
         }
      }
      
      public function §;!Q§() : void
      {
         var _loc1_:§,!D§ = null;
         for each(_loc1_ in this.§#@§)
         {
            _loc1_.§;!Q§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§,!D§ = null;
         for each(_loc1_ in this.§#@§)
         {
            _loc1_.play();
         }
      }
      
      public function §5!%§() : void
      {
         var _loc2_:§,!D§ = null;
         §9E§ = -§]H§;
         this.§?!Y§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#@§.length)
         {
            _loc2_ = this.§#@§[_loc1_];
            _loc2_.§5!%§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§,!D§ = null;
         §9E§ += param1;
         if(§9E§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§7!P§;
         var _loc3_:int = this.§ !,§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§#@§[_loc4_]).update(param1);
            this.§#t§(_loc5_);
            _loc4_++;
         }
         this.§1![§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §#t§(param1:§,!D§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§@V§)
            {
               ++this.§?!Y§;
               if(this.§?!Y§ < this.§#@§.length)
               {
                  this.§#@§[this.§?!Y§].play();
               }
            }
         }
      }
      
      private function §1![§() : void
      {
         if(this.isCompleted)
         {
            if(!§ !1§)
            {
               this.§5!%§();
               this.play();
            }
            else if(§finally§ != null)
            {
               try
               {
                  §finally§();
                  §finally§ = null;
               }
               catch(e:Error)
               {
                  §finally§ = null;
                  if(!§-!H§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
