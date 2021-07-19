package §4G§
{
   public class §3z§
   {
       
      
      public var width:int;
      
      public var height:int;
      
      public var id:int;
      
      public function §3z§(param1:int, param2:int, param3:int)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
            while(true)
            {
               this.width = param1;
               loop1:
               while(!_loc4_)
               {
                  this.height = param2;
                  while(true)
                  {
                     this.id = param3;
                     if(_loc5_)
                     {
                        if(_loc5_ || param3)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
   }
}
