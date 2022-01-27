package §#!O§
{
   public class §8!<§ extends § !O§ implements §9!o§
   {
       
      
      private var §,&§:Vector.<§9!o§>;
      
      private var §^!P§:Boolean = true;
      
      private var §"!l§:int = 0;
      
      public function §8!<§(param1:Array, param2:Boolean)
      {
         var _loc3_:§9!o§ = null;
         this.§,&§ = new Vector.<§9!o§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§,&§.push(_loc3_);
         }
         this.§^!P§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§9!o§ = null;
         for each(_loc1_ in this.§,&§)
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
         var _loc1_:§9!o§ = null;
         for each(_loc1_ in this.§,&§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §6v§() : int
      {
         if(this.§^!P§)
         {
            return this.§,&§.length;
         }
         if(this.§,&§.length > this.§"!l§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §!";§() : int
      {
         if(this.§^!P§)
         {
            return 0;
         }
         return this.§"!l§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§9!o§ = null;
         while(this.§,&§.length > 0)
         {
            _loc1_ = this.§,&§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§9!o§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,&§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §^e§() : void
      {
         var _loc1_:§9!o§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,&§)
            {
               _loc1_.§^e§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§9!o§ = null;
         super.pause();
         for each(_loc1_ in this.§,&§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§9!o§ = null;
         super.play();
         for each(_loc1_ in this.§,&§)
         {
            _loc1_.play();
         }
      }
      
      public function §`"§() : void
      {
         var _loc2_:§9!o§ = null;
         §%!s§ = -§0S§;
         this.§"!l§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,&§.length)
         {
            _loc2_ = this.§,&§[_loc1_];
            _loc2_.§`"§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§9!o§ = null;
         if(!§=!]§(param1))
         {
            return;
         }
         var _loc2_:int = this.§6v§;
         var _loc3_:int = this.§!";§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§,&§[_loc4_]).update(param1);
            this.§-!5§(_loc5_);
            _loc4_++;
         }
         this.§'1§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §-!5§(param1:§9!o§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§^!P§)
            {
               ++this.§"!l§;
               if(this.§"!l§ < this.§,&§.length)
               {
                  this.§,&§[this.§"!l§].play();
               }
            }
         }
      }
      
      private function §'1§() : void
      {
         if(this.isCompleted)
         {
            if(!§ !w§)
            {
               this.§`"§();
               this.play();
            }
            else if(§9!]§ != null)
            {
               try
               {
                  §9!]§();
                  §9!]§ = null;
               }
               catch(e:Error)
               {
                  §9!]§ = null;
                  if(!§7"§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
