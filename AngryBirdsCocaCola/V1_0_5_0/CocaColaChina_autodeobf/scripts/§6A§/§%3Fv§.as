package §6a§
{
   public class §?v§ extends §^>§ implements §&6§
   {
       
      
      private var §+"§:Vector.<§&6§>;
      
      private var §>g§:Boolean = true;
      
      private var §<_§:int = 0;
      
      public function §?v§(param1:Array, param2:Boolean)
      {
         var _loc3_:§&6§ = null;
         this.§+"§ = new Vector.<§&6§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§+"§.push(_loc3_);
         }
         this.§>g§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§&6§ = null;
         for each(_loc1_ in this.§+"§)
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
         var _loc1_:§&6§ = null;
         for each(_loc1_ in this.§+"§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §^e§() : int
      {
         if(this.§>g§)
         {
            return this.§+"§.length;
         }
         if(this.§+"§.length > this.§<_§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §0u§() : int
      {
         if(this.§>g§)
         {
            return 0;
         }
         return this.§<_§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&6§ = null;
         while(this.§+"§.length > 0)
         {
            _loc1_ = this.§+"§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§&6§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+"§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §&?§() : void
      {
         var _loc1_:§&6§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+"§)
            {
               _loc1_.§&?§();
            }
         }
      }
      
      public function §]T§() : void
      {
         var _loc1_:§&6§ = null;
         for each(_loc1_ in this.§+"§)
         {
            _loc1_.§]T§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§&6§ = null;
         for each(_loc1_ in this.§+"§)
         {
            _loc1_.play();
         }
      }
      
      public function §"!b§() : void
      {
         var _loc2_:§&6§ = null;
         §&!a§ = -§9E§;
         this.§<_§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+"§.length)
         {
            _loc2_ = this.§+"§[_loc1_];
            _loc2_.§"!b§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§&6§ = null;
         §&!a§ += param1;
         if(§&!a§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§^e§;
         var _loc3_:int = this.§0u§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§+"§[_loc4_]).update(param1);
            this.§#!J§(_loc5_);
            _loc4_++;
         }
         this.§6!C§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §#!J§(param1:§&6§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§>g§)
            {
               ++this.§<_§;
               if(this.§<_§ < this.§+"§.length)
               {
                  this.§+"§[this.§<_§].play();
               }
            }
         }
      }
      
      private function §6!C§() : void
      {
         if(this.isCompleted)
         {
            if(!§"w§)
            {
               this.§"!b§();
               this.play();
            }
            else if(§=!9§ != null)
            {
               try
               {
                  §=!9§();
                  §=!9§ = null;
               }
               catch(e:Error)
               {
                  §=!9§ = null;
                  if(!§6!#§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
