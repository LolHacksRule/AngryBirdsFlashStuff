package §=u§
{
   public class §3S§ extends § ">§ implements § "1§
   {
       
      
      private var §+!j§:Vector.<§ "1§>;
      
      private var §^"8§:Boolean = true;
      
      private var §]!%§:int = 0;
      
      public function §3S§(param1:Array, param2:Boolean)
      {
         var _loc3_:§ "1§ = null;
         this.§+!j§ = new Vector.<§ "1§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§+!j§.push(_loc3_);
         }
         this.§^"8§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§ "1§ = null;
         for each(_loc1_ in this.§+!j§)
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
         var _loc1_:§ "1§ = null;
         for each(_loc1_ in this.§+!j§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §#!1§() : int
      {
         if(this.§^"8§)
         {
            return this.§+!j§.length;
         }
         if(this.§+!j§.length > this.§]!%§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §5!Y§() : int
      {
         if(this.§^"8§)
         {
            return 0;
         }
         return this.§]!%§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§ "1§ = null;
         while(this.§+!j§.length > 0)
         {
            _loc1_ = this.§+!j§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§ "1§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+!j§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §+e§() : void
      {
         var _loc1_:§ "1§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+!j§)
            {
               _loc1_.§+e§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§ "1§ = null;
         super.pause();
         for each(_loc1_ in this.§+!j§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§ "1§ = null;
         super.play();
         for each(_loc1_ in this.§+!j§)
         {
            _loc1_.play();
         }
      }
      
      public function §[§() : void
      {
         var _loc2_:§ "1§ = null;
         § "?§ = -§1"'§;
         this.§]!%§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!j§.length)
         {
            _loc2_ = this.§+!j§[_loc1_];
            _loc2_.§[§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§ "1§ = null;
         if(!§7z§(param1))
         {
            return;
         }
         var _loc2_:int = this.§#!1§;
         var _loc3_:int = this.§5!Y§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§+!j§[_loc4_]).update(param1);
            this.§54§(_loc5_);
            _loc4_++;
         }
         this.§@"<§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §54§(param1:§ "1§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§^"8§)
            {
               ++this.§]!%§;
               if(this.§]!%§ < this.§+!j§.length)
               {
                  this.§+!j§[this.§]!%§].play();
               }
            }
         }
      }
      
      private function §@"<§() : void
      {
         if(this.isCompleted)
         {
            if(!§["-§)
            {
               this.§[§();
               this.play();
            }
            else if(§6!s§ != null)
            {
               try
               {
                  §6!s§();
                  §6!s§ = null;
               }
               catch(e:Error)
               {
                  §6!s§ = null;
                  if(!§1"G§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
