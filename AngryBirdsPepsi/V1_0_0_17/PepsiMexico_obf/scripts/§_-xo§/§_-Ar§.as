package §_-xo§
{
   public class §_-Ar§ extends §_-E-§
   {
       
      
      protected var §_-Zc§:§_-Lk§;
      
      public function §_-Ar§(param1:§_-Lk§, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1.§_-Pj§,param2);
            if(_loc3_)
            {
               this.§_-Zc§ = param1;
               if(_loc3_)
               {
                  addr41:
                  §_-7A§ = param1.duration;
               }
               return;
            }
         }
         §§goto(addr41);
      }
      
      override public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§_-k7§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr39:
                  super.stop();
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr46);
               }
               this.§_-Zc§.fireStop();
            }
            addr46:
            return;
         }
         §§goto(addr39);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-Zc§.update(param1);
         }
      }
      
      override public function firePlay() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.firePlay();
            if(_loc2_)
            {
               addr20:
               this.§_-Zc§.firePlay();
            }
            return;
         }
         §§goto(addr20);
      }
      
      override public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!§_-k7§)
            {
               if(!_loc2_)
               {
                  this.§_-Zc§.firePlay();
                  if(!_loc2_)
                  {
                     addr43:
                     super.play();
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function get §_-Y1§() : §_-Lk§
      {
         return this.§_-Zc§;
      }
      
      override public function fireStop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.fireStop();
            if(!_loc1_)
            {
               this.§_-Zc§.fireStop();
            }
         }
      }
   }
}
