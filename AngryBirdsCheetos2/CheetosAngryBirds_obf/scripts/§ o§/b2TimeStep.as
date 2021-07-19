package § o§
{
   public class b2TimeStep
   {
       
      
      public var §1_§:Number;
      
      public var §<l§:Number;
      
      public var §,K§:Number;
      
      public var §@-§:int;
      
      public var §-!B§:int;
      
      public var §7!^§:Boolean;
      
      public function b2TimeStep()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
            this.§1_§ = param1.§1_§;
            while(true)
            {
               this.§<l§ = param1.§<l§;
               while(_loc3_ || param1)
               {
                  this.§-!B§ = param1.§-!B§;
                  loop2:
                  while(_loc3_)
                  {
                     this.§@-§ = param1.§@-§;
                     while(true)
                     {
                        this.§7!^§ = param1.§7!^§;
                        if(_loc3_)
                        {
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr54);
      }
   }
}
