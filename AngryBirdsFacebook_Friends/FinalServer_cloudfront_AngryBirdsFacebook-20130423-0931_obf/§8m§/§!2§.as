package §8m§
{
   public class §!2§ extends §&!e§
   {
      
      public static const §,3§:String = "stream_error";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §,3§ = "stream_error";
         }
      }
      
      public var error:String;
      
      public var errorID:int;
      
      public function §!2§(param1:String, param2:String = "", param3:int = 0, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,"","",param4,param5);
            while(true)
            {
               this.error = param2;
               while(_loc7_ || param1)
               {
                  this.errorID = param3;
                  if(_loc6_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
   }
}
