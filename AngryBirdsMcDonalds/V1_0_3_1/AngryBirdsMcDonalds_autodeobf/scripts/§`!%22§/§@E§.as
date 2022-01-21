package §`!"§
{
   public class §@E§ extends §"!b§ implements §`!&§
   {
       
      
      private var §+t§:Vector.<§`!&§>;
      
      private var §"o§:Boolean = true;
      
      private var §16§:int = 0;
      
      public function §@E§(param1:Array, param2:Boolean)
      {
         var _loc3_:§`!&§ = null;
         this.§+t§ = new Vector.<§`!&§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§+t§.push(_loc3_);
         }
         this.§"o§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§`!&§ = null;
         for each(_loc1_ in this.§+t§)
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
         var _loc1_:§`!&§ = null;
         for each(_loc1_ in this.§+t§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §]<§() : int
      {
         if(this.§"o§)
         {
            return this.§+t§.length;
         }
         if(this.§+t§.length > this.§16§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §0l§() : int
      {
         if(this.§"o§)
         {
            return 0;
         }
         return this.§16§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`!&§ = null;
         while(this.§+t§.length > 0)
         {
            _loc1_ = this.§+t§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§`!&§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+t§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §'V§() : void
      {
         var _loc1_:§`!&§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+t§)
            {
               _loc1_.§'V§();
            }
         }
      }
      
      public function §2![§() : void
      {
         var _loc1_:§`!&§ = null;
         for each(_loc1_ in this.§+t§)
         {
            _loc1_.§2![§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§`!&§ = null;
         for each(_loc1_ in this.§+t§)
         {
            _loc1_.play();
         }
      }
      
      public function §7!`§() : void
      {
         var _loc2_:§`!&§ = null;
         §6!S§ = -§",§;
         this.§16§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+t§.length)
         {
            _loc2_ = this.§+t§[_loc1_];
            _loc2_.§7!`§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§`!&§ = null;
         §6!S§ += param1;
         if(§6!S§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§]<§;
         var _loc3_:int = this.§0l§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§+t§[_loc4_]).update(param1);
            this.§7!m§(_loc5_);
            _loc4_++;
         }
         this.§%O§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §7!m§(param1:§`!&§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§"o§)
            {
               ++this.§16§;
               if(this.§16§ < this.§+t§.length)
               {
                  this.§+t§[this.§16§].play();
               }
            }
         }
      }
      
      private function §%O§() : void
      {
         if(this.isCompleted)
         {
            if(!§6!j§)
            {
               this.§7!`§();
               this.play();
            }
            else if(§>m§ != null)
            {
               try
               {
                  §>m§();
                  §>m§ = null;
               }
               catch(e:Error)
               {
                  §>m§ = null;
                  if(!§^!6§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
