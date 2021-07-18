package §;g§
{
   public class §"^§ extends §]w§ implements §<!9§
   {
       
      
      private var §6!Y§:Vector.<§<!9§>;
      
      private var §%9§:Boolean = true;
      
      private var §0_§:int = 0;
      
      public function §"^§(param1:Array, param2:Boolean)
      {
         var _loc3_:§<!9§ = null;
         this.§6!Y§ = new Vector.<§<!9§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§6!Y§.push(_loc3_);
         }
         this.§%9§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§<!9§ = null;
         for each(_loc1_ in this.§6!Y§)
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
         var _loc1_:§<!9§ = null;
         for each(_loc1_ in this.§6!Y§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §@!B§() : int
      {
         if(this.§%9§)
         {
            return this.§6!Y§.length;
         }
         if(this.§6!Y§.length > this.§0_§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §9!s§() : int
      {
         if(this.§%9§)
         {
            return 0;
         }
         return this.§0_§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§<!9§ = null;
         while(this.§6!Y§.length > 0)
         {
            _loc1_ = this.§6!Y§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§<!9§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§6!Y§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §?"+§() : void
      {
         var _loc1_:§<!9§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§6!Y§)
            {
               _loc1_.§?"+§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§<!9§ = null;
         super.pause();
         for each(_loc1_ in this.§6!Y§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§<!9§ = null;
         super.play();
         for each(_loc1_ in this.§6!Y§)
         {
            _loc1_.play();
         }
      }
      
      public function §=E§() : void
      {
         var _loc2_:§<!9§ = null;
         §>!?§ = -§<!n§;
         this.§0_§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!Y§.length)
         {
            _loc2_ = this.§6!Y§[_loc1_];
            _loc2_.§=E§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§<!9§ = null;
         if(!§^!m§(param1))
         {
            return;
         }
         var _loc2_:int = this.§@!B§;
         var _loc3_:int = this.§9!s§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§6!Y§[_loc4_]).update(param1);
            this.§+X§(_loc5_);
            _loc4_++;
         }
         this.§=!c§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §+X§(param1:§<!9§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§%9§)
            {
               ++this.§0_§;
               if(this.§0_§ < this.§6!Y§.length)
               {
                  this.§6!Y§[this.§0_§].play();
               }
            }
         }
      }
      
      private function §=!c§() : void
      {
         if(this.isCompleted)
         {
            if(!§7!>§)
            {
               this.§=E§();
               this.play();
            }
            else if(§;!h§ != null)
            {
               try
               {
                  §;!h§();
                  §;!h§ = null;
               }
               catch(e:Error)
               {
                  §;!h§ = null;
                  if(!§#M§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
