package §8u§
{
   public class §2!A§
   {
       
      
      private var §-!Z§:String;
      
      private var §&!X§:String;
      
      public function §2!A§(param1:String, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§-!Z§ = param1;
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            this.§&!X§ = param2;
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get avatarString() : String
      {
         return this.§-!Z§;
      }
      
      public function get id() : String
      {
         return this.§&!X§;
      }
   }
}
