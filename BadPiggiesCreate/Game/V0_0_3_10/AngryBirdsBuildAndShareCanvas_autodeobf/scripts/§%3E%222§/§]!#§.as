package §>"2§
{
   public class §]!#§ extends §55§ implements §%!Y§
   {
       
      
      private var §9! §:Vector.<§%!Y§>;
      
      private var §%!_§:Boolean = true;
      
      private var §4!3§:int = 0;
      
      public function §]!#§(param1:Array, param2:Boolean)
      {
         var _loc3_:§%!Y§ = null;
         this.§9! § = new Vector.<§%!Y§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§9! §.push(_loc3_);
         }
         this.§%!_§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§%!Y§ = null;
         for each(_loc1_ in this.§9! §)
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
         var _loc1_:§%!Y§ = null;
         for each(_loc1_ in this.§9! §)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §[!g§() : int
      {
         if(this.§%!_§)
         {
            return this.§9! §.length;
         }
         if(this.§9! §.length > this.§4!3§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §`!J§() : int
      {
         if(this.§%!_§)
         {
            return 0;
         }
         return this.§4!3§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%!Y§ = null;
         while(this.§9! §.length > 0)
         {
            _loc1_ = this.§9! §.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§%!Y§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9! §)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §!K§() : void
      {
         var _loc1_:§%!Y§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9! §)
            {
               _loc1_.§!K§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§%!Y§ = null;
         for each(_loc1_ in this.§9! §)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§%!Y§ = null;
         for each(_loc1_ in this.§9! §)
         {
            _loc1_.play();
         }
      }
      
      public function §6!-§() : void
      {
         var _loc2_:§%!Y§ = null;
         §;k§ = -§="3§;
         this.§4!3§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9! §.length)
         {
            _loc2_ = this.§9! §[_loc1_];
            _loc2_.§6!-§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§%!Y§ = null;
         §;k§ += param1;
         if(§;k§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§[!g§;
         var _loc3_:int = this.§`!J§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§9! §[_loc4_]).update(param1);
            this.§]"!§(_loc5_);
            _loc4_++;
         }
         this.§>l§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §]"!§(param1:§%!Y§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§%!_§)
            {
               ++this.§4!3§;
               if(this.§4!3§ < this.§9! §.length)
               {
                  this.§9! §[this.§4!3§].play();
               }
            }
         }
      }
      
      private function §>l§() : void
      {
         if(this.isCompleted)
         {
            if(!§,!§)
            {
               this.§6!-§();
               this.play();
            }
            else if(§ "!§ != null)
            {
               try
               {
                  § "!§();
                  § "!§ = null;
               }
               catch(e:Error)
               {
                  § "!§ = null;
                  if(!§!!D§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
