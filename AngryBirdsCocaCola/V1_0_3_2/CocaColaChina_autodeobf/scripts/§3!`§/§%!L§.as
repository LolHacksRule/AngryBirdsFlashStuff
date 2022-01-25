package §3!`§
{
   public class §%!L§ extends §%r§ implements §-v§
   {
       
      
      private var §>!&§:Vector.<§-v§>;
      
      private var §<a§:Boolean = true;
      
      private var §%!6§:int = 0;
      
      public function §%!L§(param1:Array, param2:Boolean)
      {
         var _loc3_:§-v§ = null;
         this.§>!&§ = new Vector.<§-v§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§>!&§.push(_loc3_);
         }
         this.§<a§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§-v§ = null;
         for each(_loc1_ in this.§>!&§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §8!T§() : int
      {
         if(this.§<a§)
         {
            return this.§>!&§.length;
         }
         if(this.§>!&§.length > this.§%!6§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §@z§() : int
      {
         if(this.§<a§)
         {
            return 0;
         }
         return this.§%!6§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-v§ = null;
         while(this.§>!&§.length > 0)
         {
            _loc1_ = this.§>!&§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§-v§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§>!&§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §=!^§() : void
      {
         var _loc1_:§-v§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§>!&§)
            {
               _loc1_.§=!^§();
            }
         }
      }
      
      public function §0@§() : void
      {
         var _loc1_:§-v§ = null;
         for each(_loc1_ in this.§>!&§)
         {
            _loc1_.§0@§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§-v§ = null;
         for each(_loc1_ in this.§>!&§)
         {
            _loc1_.play();
         }
      }
      
      public function §4!L§() : void
      {
         var _loc2_:§-v§ = null;
         §>!+§ = -§]p§;
         this.§%!6§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!&§.length)
         {
            _loc2_ = this.§>!&§[_loc1_];
            _loc2_.§4!L§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§-v§ = null;
         §>!+§ += param1;
         if(§>!+§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§8!T§;
         var _loc3_:int = this.§@z§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§>!&§[_loc4_]).update(param1);
            this.§,B§(_loc5_);
            _loc4_++;
         }
         this.§<y§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §,B§(param1:§-v§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§<a§)
            {
               ++this.§%!6§;
               if(this.§%!6§ < this.§>!&§.length)
               {
                  this.§>!&§[this.§%!6§].play();
               }
            }
         }
      }
      
      private function §<y§() : void
      {
         if(this.isCompleted)
         {
            if(!§,!<§)
            {
               this.§4!L§();
               this.play();
            }
            else if(§#Q§ != null)
            {
               try
               {
                  §#Q§();
                  §#Q§ = null;
               }
               catch(e:Error)
               {
                  §#Q§ = null;
                  if(!§`!'§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
