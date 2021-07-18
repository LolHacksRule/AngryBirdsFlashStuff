package §^!0§
{
   public class §?W§ extends §^0§
   {
      
      public static const §>m§:String = "stream_error";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §>m§ = "stream_error";
         }
      }
      
      public var error:String;
      
      public var errorID:int;
      
      public function §?W§(param1:String, param2:String = "", param3:int = 0, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            super(param1,"","",param4,param5);
         }
         do
         {
            this.error = param2;
            do
            {
               this.errorID = param3;
            }
            while(_loc7_ && this);
            
         }
         while(_loc7_ && param3);
         
      }
   }
}
