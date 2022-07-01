package §9!n§
{
   public class §'H§ extends §0e§ implements §;_§
   {
       
      
      private var §=!H§:Vector.<§;_§>;
      
      private var §[H§:Boolean = true;
      
      private var §`!M§:int = 0;
      
      public function §'H§(param1:Array, param2:Boolean)
      {
         var _loc3_:§;_§ = null;
         this.§=!H§ = new Vector.<§;_§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§=!H§.push(_loc3_);
         }
         this.§[H§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§;_§ = null;
         for each(_loc1_ in this.§=!H§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §1!e§() : int
      {
         if(this.§[H§)
         {
            return this.§=!H§.length;
         }
         if(this.§=!H§.length > 0)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §%!1§() : int
      {
         if(this.§[H§)
         {
            return 0;
         }
         return this.§`!M§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;_§ = null;
         while(this.§=!H§.length > 0)
         {
            _loc1_ = this.§=!H§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§;_§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§=!H§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §'!=§() : void
      {
         var _loc1_:§;_§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§=!H§)
            {
               _loc1_.§'!=§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc2_:§;_§ = null;
         var _loc1_:int = this.§1!e§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!H§[_loc1_];
            _loc2_.pause();
            _loc1_--;
         }
      }
      
      public function play() : void
      {
         var _loc2_:§;_§ = null;
         var _loc1_:int = this.§1!e§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!H§[_loc1_];
            _loc2_.play();
            _loc1_--;
         }
      }
      
      public function §^_§() : void
      {
         var _loc2_:§;_§ = null;
         §8!N§ = -§ V§;
         this.§`!M§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=!H§.length)
         {
            _loc2_ = this.§=!H§[_loc1_];
            _loc2_.§^_§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§;_§ = null;
         §8!N§ += param1;
         if(§8!N§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§1!e§;
         var _loc3_:int = this.§%!1§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§=!H§[_loc4_]).update(param1);
            this.§6X§(_loc5_);
            _loc4_++;
         }
         this.§5!4§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §6X§(param1:§;_§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§[H§)
            {
               ++this.§`!M§;
               if(this.§`!M§ < this.§=!H§.length)
               {
                  this.§=!H§[this.§`!M§].play();
               }
            }
         }
      }
      
      private function §5!4§() : void
      {
         if(this.isCompleted)
         {
            if(!§,!]§)
            {
               this.§^_§();
               this.play();
            }
            else if(§2S§ != null)
            {
               try
               {
                  §2S§();
                  §2S§ = null;
               }
               catch(e:Error)
               {
                  §2S§ = null;
                  if(!§4!V§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
