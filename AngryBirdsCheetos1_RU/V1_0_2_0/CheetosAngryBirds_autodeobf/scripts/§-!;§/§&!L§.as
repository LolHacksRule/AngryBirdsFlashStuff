package §-!;§
{
   public class §&!L§ extends §4!?§ implements §'a§
   {
       
      
      private var §+!+§:Vector.<§'a§>;
      
      private var §9!<§:Boolean = true;
      
      private var §%!3§:int = 0;
      
      public function §&!L§(param1:Array, param2:Boolean)
      {
         var _loc3_:§'a§ = null;
         this.§+!+§ = new Vector.<§'a§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§+!+§.push(_loc3_);
         }
         this.§9!<§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§'a§ = null;
         for each(_loc1_ in this.§+!+§)
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
         var _loc1_:§'a§ = null;
         for each(_loc1_ in this.§+!+§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §-!6§() : int
      {
         if(this.§9!<§)
         {
            return this.§+!+§.length;
         }
         if(this.§+!+§.length > this.§%!3§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §@!E§() : int
      {
         if(this.§9!<§)
         {
            return 0;
         }
         return this.§%!3§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'a§ = null;
         while(this.§+!+§.length > 0)
         {
            _loc1_ = this.§+!+§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§'a§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+!+§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §<J§() : void
      {
         var _loc1_:§'a§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+!+§)
            {
               _loc1_.§<J§();
            }
         }
      }
      
      public function §-'§() : void
      {
         var _loc1_:§'a§ = null;
         for each(_loc1_ in this.§+!+§)
         {
            _loc1_.§-'§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§'a§ = null;
         for each(_loc1_ in this.§+!+§)
         {
            _loc1_.play();
         }
      }
      
      public function §`y§() : void
      {
         var _loc2_:§'a§ = null;
         §7!,§ = -§0!]§;
         this.§%!3§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!+§.length)
         {
            _loc2_ = this.§+!+§[_loc1_];
            _loc2_.§`y§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§'a§ = null;
         §7!,§ += param1;
         if(§7!,§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§-!6§;
         var _loc3_:int = this.§@!E§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§+!+§[_loc4_]).update(param1);
            this.§^!K§(_loc5_);
            _loc4_++;
         }
         this.§9!,§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §^!K§(param1:§'a§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§9!<§)
            {
               ++this.§%!3§;
               if(this.§%!3§ < this.§+!+§.length)
               {
                  this.§+!+§[this.§%!3§].play();
               }
            }
         }
      }
      
      private function §9!,§() : void
      {
         if(this.isCompleted)
         {
            if(!§>t§)
            {
               this.§`y§();
               this.play();
            }
            else if(§5^§ != null)
            {
               try
               {
                  §5^§();
                  §5^§ = null;
               }
               catch(e:Error)
               {
                  §5^§ = null;
                  if(!§<P§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
