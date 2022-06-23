package §#X§
{
   public class §^U§ extends §3d§
   {
      
      public static const §^<§:String = "stream_error";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §^<§ = "stream_error";
         }
      }
      
      public var error:String;
      
      public var errorID:int;
      
      public function §^U§(param1:String, param2:String = "", param3:int = 0, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            super(param1,"","",param4,param5);
            if(!_loc6_)
            {
               this.error = param2;
               if(!(_loc6_ && this))
               {
                  this.errorID = param3;
               }
            }
         }
      }
   }
}
