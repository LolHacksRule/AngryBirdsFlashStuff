package §[!b§
{
   public class §]!H§ extends §-!4§
   {
      
      public static const §&!o§:String = "stream_error";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&!o§ = "stream_error";
         }
      }
      
      public var error:String;
      
      public var errorID:int;
      
      public function §]!H§(param1:String, param2:String = "", param3:int = 0, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,"","",param4,param5);
            while(true)
            {
               this.error = param2;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.errorID = param3;
            if(_loc7_ || param1)
            {
               if(!(_loc6_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
