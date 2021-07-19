package §3"#§
{
   public class §9"E§ extends §@U§
   {
      
      public static const §3!8§:String = "stream_error";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §3!8§ = "stream_error";
         }
      }
      
      public var error:String;
      
      public var errorID:int;
      
      public function §9"E§(param1:String, param2:String = "", param3:int = 0, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super(param1,"","",param4,param5);
            while(true)
            {
               this.error = param2;
               loop1:
               while(!(_loc7_ && this))
               {
                  while(true)
                  {
                     this.errorID = param3;
                     if(_loc6_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
   }
}
