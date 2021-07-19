package §0!E§
{
   public class §!a§
   {
       
      
      public var category:String = "";
      
      public var action:String = "";
      
      public var §#a§:String = "";
      
      public var value:int = 0;
      
      public function §!a§(param1:String, param2:String, param3:String, param4:int)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.category = param1;
               while(true)
               {
                  this.action = param2;
                  continue loop0;
                  addr67:
                  while(_loc6_ || param2)
                  {
                     this.value = param4;
                     if(!(_loc5_ && param1))
                     {
                        if(_loc6_)
                        {
                           return;
                           addr52:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§#a§ = param3;
            §§goto(addr67);
         }
         §§goto(addr52);
      }
   }
}
