package §_-Iw§
{
   public class b2TimeStep
   {
       
      
      public var §_-h8§:Number;
      
      public var §_-0w§:Number;
      
      public var §break§:Number;
      
      public var §_-yW§:int;
      
      public var §_-Pe§:int;
      
      public var §_-o-§:Boolean;
      
      public function b2TimeStep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function Set(param1:b2TimeStep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-h8§ = param1.§_-h8§;
            if(!_loc2_)
            {
               this.§_-0w§ = param1.§_-0w§;
               if(!_loc2_)
               {
                  this.§_-Pe§ = param1.§_-Pe§;
                  if(!_loc2_)
                  {
                     addr41:
                     this.§_-yW§ = param1.§_-yW§;
                     if(_loc3_ || _loc2_)
                     {
                     }
                     §§goto(addr63);
                  }
                  this.§_-o-§ = param1.§_-o-§;
                  §§goto(addr63);
               }
               addr63:
               return;
            }
         }
         §§goto(addr41);
      }
   }
}
