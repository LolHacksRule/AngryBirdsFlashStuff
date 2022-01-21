package §3l§
{
   public class §8!=§ extends §1^§ implements §+!h§
   {
       
      
      private var §9!=§:Vector.<§+!h§>;
      
      private var §&S§:Boolean = true;
      
      private var §96§:int = 0;
      
      public function §8!=§(param1:Array, param2:Boolean)
      {
         var _loc3_:§+!h§ = null;
         this.§9!=§ = new Vector.<§+!h§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§9!=§.push(_loc3_);
         }
         this.§&S§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§+!h§ = null;
         for each(_loc1_ in this.§9!=§)
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
         var _loc1_:§+!h§ = null;
         for each(_loc1_ in this.§9!=§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §3d§() : int
      {
         if(this.§&S§)
         {
            return this.§9!=§.length;
         }
         if(this.§9!=§.length > this.§96§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get § o§() : int
      {
         if(this.§&S§)
         {
            return 0;
         }
         return this.§96§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+!h§ = null;
         while(this.§9!=§.length > 0)
         {
            _loc1_ = this.§9!=§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§+!h§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9!=§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §'Q§() : void
      {
         var _loc1_:§+!h§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9!=§)
            {
               _loc1_.§'Q§();
            }
         }
      }
      
      public function §5j§() : void
      {
         var _loc1_:§+!h§ = null;
         for each(_loc1_ in this.§9!=§)
         {
            _loc1_.§5j§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§+!h§ = null;
         for each(_loc1_ in this.§9!=§)
         {
            _loc1_.play();
         }
      }
      
      public function §,!`§() : void
      {
         var _loc2_:§+!h§ = null;
         §=!<§ = -§8!;§;
         this.§96§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!=§.length)
         {
            _loc2_ = this.§9!=§[_loc1_];
            _loc2_.§,!`§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§+!h§ = null;
         §=!<§ += param1;
         if(§=!<§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§3d§;
         var _loc3_:int = this.§ o§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§9!=§[_loc4_]).update(param1);
            this.§@k§(_loc5_);
            _loc4_++;
         }
         this.§^+§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §@k§(param1:§+!h§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§&S§)
            {
               ++this.§96§;
               if(this.§96§ < this.§9!=§.length)
               {
                  this.§9!=§[this.§96§].play();
               }
            }
         }
      }
      
      private function §^+§() : void
      {
         if(this.isCompleted)
         {
            if(!§"A§)
            {
               this.§,!`§();
               this.play();
            }
            else if(§3!a§ != null)
            {
               try
               {
                  §3!a§();
                  §3!a§ = null;
               }
               catch(e:Error)
               {
                  §3!a§ = null;
                  if(!§!!c§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
