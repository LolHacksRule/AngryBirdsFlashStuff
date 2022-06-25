package § D§
{
   public class b2TimeStep
   {
       
      
      public var §6c§:Number;
      
      public var §7i§:Number;
      
      public var §&t§:Number;
      
      public var §@!Y§:int;
      
      public var §"!2§:int;
      
      public var §9!G§:Boolean;
      
      public function b2TimeStep()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function Set(param1:b2TimeStep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6c§ = param1.§6c§;
         }
         while(true)
         {
            this.§7i§ = param1.§7i§;
            while(_loc2_ || this)
            {
               this.§"!2§ = param1.§"!2§;
               while(_loc2_)
               {
                  this.§@!Y§ = param1.§@!Y§;
                  do
                  {
                     this.§9!G§ = param1.§9!G§;
                  }
                  while(!_loc2_);
                  
                  if(!_loc3_)
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
