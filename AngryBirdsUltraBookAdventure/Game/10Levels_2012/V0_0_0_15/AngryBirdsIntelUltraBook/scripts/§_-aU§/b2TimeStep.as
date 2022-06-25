package §_-aU§
{
   public class b2TimeStep
   {
       
      
      public var §_-pn§:Number;
      
      public var §_-00-§:Number;
      
      public var §_-b8§:Number;
      
      public var §_-lE§:int;
      
      public var §_-u5§:int;
      
      public var §_-0F7§:Boolean;
      
      public function b2TimeStep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function Set(param1:b2TimeStep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-pn§ = param1.§_-pn§;
         }
         loop0:
         do
         {
            this.§_-00-§ = param1.§_-00-§;
            while(true)
            {
               this.§_-u5§ = param1.§_-u5§;
               while(!(_loc2_ && _loc3_))
               {
                  this.§_-lE§ = param1.§_-lE§;
                  while(!_loc2_)
                  {
                     this.§_-0F7§ = param1.§_-0F7§;
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(_loc2_ && this);
         
      }
   }
}
