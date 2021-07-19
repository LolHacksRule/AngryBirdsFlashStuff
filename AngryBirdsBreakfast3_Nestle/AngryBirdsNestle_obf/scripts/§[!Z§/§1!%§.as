package §[!Z§
{
   public class §1!%§ extends §4<§
   {
      
      public static const §2B§:String = "stream_error";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2B§ = "stream_error";
         }
      }
      
      public var error:String;
      
      public var errorID:int;
      
      public function §1!%§(param1:String, param2:String = "", param3:int = 0, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super(param1,"","",param4,param5);
            while(true)
            {
               this.error = param2;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            this.errorID = param3;
            if(!_loc7_)
            {
               if(_loc6_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
