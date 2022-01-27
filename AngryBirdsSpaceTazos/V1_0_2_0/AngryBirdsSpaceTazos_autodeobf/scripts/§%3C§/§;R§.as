package §<§
{
   public class §;R§ extends §1"&§ implements §=D§
   {
       
      
      private var §#!#§:Vector.<§=D§>;
      
      private var §&"H§:Boolean = true;
      
      private var § !t§:int = 0;
      
      public function §;R§(param1:Array, param2:Boolean)
      {
         var _loc3_:§=D§ = null;
         this.§#!#§ = new Vector.<§=D§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§#!#§.push(_loc3_);
         }
         this.§&"H§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§=D§ = null;
         for each(_loc1_ in this.§#!#§)
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
         var _loc1_:§=D§ = null;
         for each(_loc1_ in this.§#!#§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §4?§() : int
      {
         if(this.§&"H§)
         {
            return this.§#!#§.length;
         }
         if(this.§#!#§.length > this.§ !t§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §?!&§() : int
      {
         if(this.§&"H§)
         {
            return 0;
         }
         return this.§ !t§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§=D§ = null;
         while(this.§#!#§.length > 0)
         {
            _loc1_ = this.§#!#§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§=D§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§#!#§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §?!v§() : void
      {
         var _loc1_:§=D§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§#!#§)
            {
               _loc1_.§?!v§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§=D§ = null;
         super.pause();
         for each(_loc1_ in this.§#!#§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§=D§ = null;
         super.play();
         for each(_loc1_ in this.§#!#§)
         {
            _loc1_.play();
         }
      }
      
      public function §6!t§() : void
      {
         var _loc2_:§=D§ = null;
         §"!e§ = -§@"9§;
         this.§ !t§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!#§.length)
         {
            _loc2_ = this.§#!#§[_loc1_];
            _loc2_.§6!t§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§=D§ = null;
         if(!§-I§(param1))
         {
            return;
         }
         var _loc2_:int = this.§4?§;
         var _loc3_:int = this.§?!&§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§#!#§[_loc4_]).update(param1);
            this.§9!K§(_loc5_);
            _loc4_++;
         }
         this.§5p§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §9!K§(param1:§=D§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§&"H§)
            {
               ++this.§ !t§;
               if(this.§ !t§ < this.§#!#§.length)
               {
                  this.§#!#§[this.§ !t§].play();
               }
            }
         }
      }
      
      private function §5p§() : void
      {
         if(this.isCompleted)
         {
            if(!§2!E§)
            {
               this.§6!t§();
               this.play();
            }
            else if(§5A§ != null)
            {
               try
               {
                  §5A§();
                  §5A§ = null;
               }
               catch(e:Error)
               {
                  §5A§ = null;
                  if(!§]"D§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
