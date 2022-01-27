package §9p§
{
   import §;#Q§.§[§;
   import flash.net.URLRequest;
   
   public class §!#`§ extends §[#2§
   {
       
      
      public function §!#`§(param1:String)
      {
         super(param1);
      }
      
      public function §>!4§(param1:String, param2:Boolean, param3:Function, param4:Function = null) : void
      {
         §5#'§("/startlevel/" + param1 + (!!param2 ? "/true" : ""),param3,new §=<§(),param4);
      }
      
      public function saveLevelProgress(param1:URLRequest, param2:Function, param3:Function = null) : void
      {
         §5#'§(null,param2,new §#"T§(),param3,param1);
      }
   }
}
