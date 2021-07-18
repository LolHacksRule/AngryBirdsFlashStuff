package §9p§
{
   import §;#Q§.§[§;
   import flash.net.URLRequest;
   
   public class §!#`§ extends §[#2§
   {
       
      
      public function §!#`§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super(param1);
         }
      }
      
      public function §>!4§(param1:String, param2:Boolean, param3:Function, param4:Function = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(§§findproperty(§5#'§));
            §§push("/startlevel/" + param1);
            if(_loc6_ || param2)
            {
               if(param2)
               {
                  §§goto(addr60);
               }
               else
               {
                  §§push("");
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr60);
         }
         addr60:
         if(_loc6_)
         {
            §§push("/true");
         }
         §§pop().§5#'§(§§pop(),param3,new §=<§(),param4);
      }
      
      public function saveLevelProgress(param1:URLRequest, param2:Function, param3:Function = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §5#'§(null,param2,new §#"T§(),param3,param1);
         }
      }
   }
}
