package §2E§
{
   public class §;!]§ extends §8!B§ implements §2l§
   {
       
      
      private var §,!=§:Vector.<§2l§>;
      
      private var §6"G§:Boolean = true;
      
      private var §8!"§:int = 0;
      
      public function §;!]§(param1:Array, param2:Boolean)
      {
         var _loc3_:§2l§ = null;
         this.§,!=§ = new Vector.<§2l§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§,!=§.push(_loc3_);
         }
         this.§6"G§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§2l§ = null;
         for each(_loc1_ in this.§,!=§)
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
         var _loc1_:§2l§ = null;
         for each(_loc1_ in this.§,!=§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §7L§() : int
      {
         if(this.§6"G§)
         {
            return this.§,!=§.length;
         }
         if(this.§,!=§.length > this.§8!"§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get § "F§() : int
      {
         if(this.§6"G§)
         {
            return 0;
         }
         return this.§8!"§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2l§ = null;
         while(this.§,!=§.length > 0)
         {
            _loc1_ = this.§,!=§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§2l§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,!=§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §7V§() : void
      {
         var _loc1_:§2l§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,!=§)
            {
               _loc1_.§7V§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§2l§ = null;
         for each(_loc1_ in this.§,!=§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§2l§ = null;
         for each(_loc1_ in this.§,!=§)
         {
            _loc1_.play();
         }
      }
      
      public function §>!_§() : void
      {
         var _loc2_:§2l§ = null;
         §=!S§ = -§;`§;
         this.§8!"§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!=§.length)
         {
            _loc2_ = this.§,!=§[_loc1_];
            _loc2_.§>!_§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§2l§ = null;
         §=!S§ += param1;
         if(§=!S§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§7L§;
         var _loc3_:int = this.§ "F§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§,!=§[_loc4_]).update(param1);
            this.§6"1§(_loc5_);
            _loc4_++;
         }
         this.§4!1§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §6"1§(param1:§2l§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§6"G§)
            {
               ++this.§8!"§;
               if(this.§8!"§ < this.§,!=§.length)
               {
                  this.§,!=§[this.§8!"§].play();
               }
            }
         }
      }
      
      private function §4!1§() : void
      {
         if(this.isCompleted)
         {
            if(!§1f§)
            {
               this.§>!_§();
               this.play();
            }
            else if(§6!_§ != null)
            {
               try
               {
                  §6!_§();
                  §6!_§ = null;
               }
               catch(e:Error)
               {
                  §6!_§ = null;
                  if(!§@!9§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
