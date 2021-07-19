package static
{
   public class §-J§
   {
       
      
      public var content:String;
      
      public var title:String;
      
      public function §-J§(param1:String, param2:String = "")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
         }
         while(true)
         {
            this.content = param2;
            while(_loc4_ || param2)
            {
               this.title = param1;
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.title + "\n");
         if(_loc1_ || _loc2_)
         {
            return §§pop() + this.content;
         }
      }
   }
}
