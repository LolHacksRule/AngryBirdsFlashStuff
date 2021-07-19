package §4!i§
{
   public class §0!2§
   {
       
      
      public var category:String = "";
      
      public var action:String = "";
      
      public var §8E§:String = "";
      
      public var value:int = 0;
      
      public function §0!2§(param1:String, param2:String, param3:String, param4:int)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.category = param1;
               loop1:
               while(true)
               {
                  this.action = param2;
                  while(true)
                  {
                     this.§8E§ = param3;
                     loop3:
                     while(!(_loc6_ && param2))
                     {
                        continue loop1;
                        while(true)
                        {
                           this.value = param4;
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
   }
}
