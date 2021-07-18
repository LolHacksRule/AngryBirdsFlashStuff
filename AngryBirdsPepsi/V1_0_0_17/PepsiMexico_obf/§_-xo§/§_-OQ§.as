package §_-xo§
{
   import §_-V7§.§_-gL§;
   import §_-Xz§.§_-Ps§;
   
   public class §_-OQ§ extends §_-E-§ implements §_-WS§
   {
       
      
      protected var §_-A-§:§_-gL§;
      
      public function §_-OQ§(param1:§_-Ps§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super(param1,0);
         }
      }
      
      public function get §_-tz§() : §_-gL§
      {
         return this.§_-A-§;
      }
      
      public function set §_-tz§(param1:§_-gL§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-A-§ = param1;
            if(!_loc3_)
            {
               if(this.§_-A-§ != null)
               {
                  if(_loc2_ || param1)
                  {
                  }
               }
               §§goto(addr50);
            }
            §_-7A§ = this.§_-A-§.duration;
         }
         addr50:
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-OQ§(§_-0A§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-A-§.update(param1);
         }
      }
      
      public function get target() : Object
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-A-§);
            if(!_loc2_)
            {
               return §§pop() != null ? this.§_-A-§.target : null;
            }
         }
         §§goto(addr30);
      }
      
      override protected function copyFrom(param1:§_-E-§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§_-OQ§ = param1 as §_-OQ§;
         if(_loc4_)
         {
            this.§_-A-§ = _loc2_.§_-A-§.clone() as §_-gL§;
         }
      }
   }
}
