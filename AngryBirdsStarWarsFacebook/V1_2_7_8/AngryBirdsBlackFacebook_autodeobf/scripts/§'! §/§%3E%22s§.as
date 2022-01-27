package §'! §
{
   public class §>"s§ extends § "#§ implements §2";§
   {
       
      
      private var §>#1§:Vector.<§2";§>;
      
      private var §3#&§:Boolean = true;
      
      private var §3]§:int = 0;
      
      public function §>"s§(param1:Array, param2:Boolean)
      {
         var _loc3_:§2";§ = null;
         this.§>#1§ = new Vector.<§2";§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§>#1§.push(_loc3_);
         }
         this.§3#&§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§2";§ = null;
         for each(_loc1_ in this.§>#1§)
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
         var _loc1_:§2";§ = null;
         for each(_loc1_ in this.§>#1§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §4"U§() : int
      {
         if(this.§3#&§)
         {
            return this.§>#1§.length;
         }
         if(this.§>#1§.length > this.§3]§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §1!6§() : int
      {
         if(this.§3#&§)
         {
            return 0;
         }
         return this.§3]§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§2";§ = null;
         while(this.§>#1§.length > 0)
         {
            _loc1_ = this.§>#1§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§2";§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§>#1§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §7!"§() : void
      {
         var _loc1_:§2";§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§>#1§)
            {
               _loc1_.§7!"§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§2";§ = null;
         super.pause();
         for each(_loc1_ in this.§>#1§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§2";§ = null;
         super.play();
         for each(_loc1_ in this.§>#1§)
         {
            _loc1_.play();
         }
      }
      
      public function §8!y§() : void
      {
         var _loc2_:§2";§ = null;
         §;5§ = -§]"y§;
         this.§3]§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>#1§.length)
         {
            _loc2_ = this.§>#1§[_loc1_];
            _loc2_.§8!y§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§2";§ = null;
         if(!§%!A§(param1))
         {
            return;
         }
         var _loc2_:int = this.§4"U§;
         var _loc3_:int = this.§1!6§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§>#1§[_loc4_]).update(param1);
            this.§ "$§(_loc5_);
            _loc4_++;
         }
         this.§1O§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function § "$§(param1:§2";§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§3#&§)
            {
               ++this.§3]§;
               if(this.§3]§ < this.§>#1§.length)
               {
                  this.§>#1§[this.§3]§].play();
               }
            }
         }
      }
      
      private function §1O§() : void
      {
         if(this.isCompleted)
         {
            if(!§=!w§)
            {
               this.§8!y§();
               this.play();
            }
            else if(§6-§ != null)
            {
               try
               {
                  §6-§();
                  §6-§ = null;
               }
               catch(e:Error)
               {
                  §6-§ = null;
                  if(!§4"!§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
