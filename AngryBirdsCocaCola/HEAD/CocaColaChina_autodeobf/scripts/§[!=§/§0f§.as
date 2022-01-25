package §[!=§
{
   public class §0f§ extends §%!!§ implements §&!D§
   {
       
      
      private var §,3§:Vector.<§&!D§>;
      
      private var §--§:Boolean = true;
      
      private var §;!-§:int = 0;
      
      public function §0f§(param1:Array, param2:Boolean)
      {
         var _loc3_:§&!D§ = null;
         this.§,3§ = new Vector.<§&!D§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§,3§.push(_loc3_);
         }
         this.§--§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§&!D§ = null;
         for each(_loc1_ in this.§,3§)
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
         var _loc1_:§&!D§ = null;
         for each(_loc1_ in this.§,3§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §5!L§() : int
      {
         if(this.§--§)
         {
            return this.§,3§.length;
         }
         if(this.§,3§.length > this.§;!-§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §&!J§() : int
      {
         if(this.§--§)
         {
            return 0;
         }
         return this.§;!-§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&!D§ = null;
         while(this.§,3§.length > 0)
         {
            _loc1_ = this.§,3§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§&!D§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,3§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function § !8§() : void
      {
         var _loc1_:§&!D§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,3§)
            {
               _loc1_.§ !8§();
            }
         }
      }
      
      public function §]w§() : void
      {
         var _loc1_:§&!D§ = null;
         for each(_loc1_ in this.§,3§)
         {
            _loc1_.§]w§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§&!D§ = null;
         for each(_loc1_ in this.§,3§)
         {
            _loc1_.play();
         }
      }
      
      public function §+c§() : void
      {
         var _loc2_:§&!D§ = null;
         §7!G§ = -§++§;
         this.§;!-§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,3§.length)
         {
            _loc2_ = this.§,3§[_loc1_];
            _loc2_.§+c§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§&!D§ = null;
         §7!G§ += param1;
         if(§7!G§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§5!L§;
         var _loc3_:int = this.§&!J§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§,3§[_loc4_]).update(param1);
            this.§`W§(_loc5_);
            _loc4_++;
         }
         this.§-!V§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §`W§(param1:§&!D§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§--§)
            {
               ++this.§;!-§;
               if(this.§;!-§ < this.§,3§.length)
               {
                  this.§,3§[this.§;!-§].play();
               }
            }
         }
      }
      
      private function §-!V§() : void
      {
         if(this.isCompleted)
         {
            if(!§'!R§)
            {
               this.§+c§();
               this.play();
            }
            else if(§&!R§ != null)
            {
               try
               {
                  §&!R§();
                  §&!R§ = null;
               }
               catch(e:Error)
               {
                  §&!R§ = null;
                  if(!§`!X§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
