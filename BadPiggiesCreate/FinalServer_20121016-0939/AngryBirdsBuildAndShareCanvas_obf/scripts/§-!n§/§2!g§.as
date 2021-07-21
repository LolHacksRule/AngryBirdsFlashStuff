package §-!n§
{
   public class §2!g§ extends §+![§
   {
      
      public static const §1W§:String = "stream_error";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1W§ = "stream_error";
         }
      }
      
      public var error:String;
      
      public var errorID:int;
      
      public function §2!g§(param1:String, param2:String = "", param3:int = 0, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            super(param1,"","",param4,param5);
            while(true)
            {
               this.error = param2;
               while(_loc6_ || this)
               {
                  this.errorID = param3;
                  if(_loc7_ && param3)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
   }
}
