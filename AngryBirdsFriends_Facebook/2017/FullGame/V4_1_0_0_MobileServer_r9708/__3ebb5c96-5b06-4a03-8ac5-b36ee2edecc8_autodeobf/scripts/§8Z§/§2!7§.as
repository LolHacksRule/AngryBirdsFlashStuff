package §8Z§
{
   public class §2!7§ extends §]"_§ implements §`!s§
   {
       
      
      private var §<""§:Vector.<§`!s§>;
      
      private var §"M§:Boolean = true;
      
      private var §!Q§:int = 0;
      
      public function §2!7§(param1:Array, param2:Boolean)
      {
         var _loc3_:§`!s§ = null;
         this.§<""§ = new Vector.<§`!s§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§<""§.push(_loc3_);
         }
         this.§"M§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§`!s§ = null;
         for each(_loc1_ in this.§<""§)
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
         var _loc1_:§`!s§ = null;
         for each(_loc1_ in this.§<""§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §8#"§() : int
      {
         if(this.§"M§)
         {
            return this.§<""§.length;
         }
         if(this.§<""§.length > this.§!Q§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §!#>§() : int
      {
         if(this.§"M§)
         {
            return 0;
         }
         return this.§!Q§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§`!s§ = null;
         while(this.§<""§.length > 0)
         {
            _loc1_ = this.§<""§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§`!s§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§<""§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §=`§() : void
      {
         var _loc1_:§`!s§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§<""§)
            {
               _loc1_.§=`§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§`!s§ = null;
         super.pause();
         for each(_loc1_ in this.§<""§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§`!s§ = null;
         super.play();
         for each(_loc1_ in this.§<""§)
         {
            _loc1_.play();
         }
      }
      
      public function §&"<§() : void
      {
         var _loc2_:§`!s§ = null;
         §7"D§ = -§%f§;
         this.§!Q§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<""§.length)
         {
            _loc2_ = this.§<""§[_loc1_];
            _loc2_.§&"<§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§`!s§ = null;
         if(!§ 5§(param1))
         {
            return;
         }
         var _loc2_:int = this.§8#"§;
         var _loc3_:int = this.§!#>§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§<""§[_loc4_]).update(param1);
            this.§%!p§(_loc5_);
            _loc4_++;
         }
         this.§+$3§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §%!p§(param1:§`!s§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§"M§)
            {
               ++this.§!Q§;
               if(this.§!Q§ < this.§<""§.length)
               {
                  this.§<""§[this.§!Q§].play();
               }
            }
         }
      }
      
      private function §+$3§() : void
      {
         if(this.isCompleted)
         {
            if(!§-#q§)
            {
               this.§&"<§();
               this.play();
            }
            else if(§<$4§ != null)
            {
               try
               {
                  §<$4§();
                  §<$4§ = null;
               }
               catch(e:Error)
               {
                  §<$4§ = null;
                  if(!§?!N§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
