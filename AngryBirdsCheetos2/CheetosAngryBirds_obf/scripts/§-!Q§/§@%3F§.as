package §-!Q§
{
   public class §@?§ extends §-=§
   {
      
      public static const §'!0§:String = "stream_error";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'!0§ = "stream_error";
         }
      }
      
      public var error:String;
      
      public var errorID:int;
      
      public function §@?§(param1:String, param2:String = "", param3:int = 0, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,"","",param4,param5);
         }
         while(true)
         {
            this.error = param2;
            while(!(_loc6_ && this))
            {
               this.errorID = param3;
               if(_loc7_)
               {
                  return;
               }
            }
         }
      }
   }
}
