package §%!U§
{
   import §'!P§.§9"Q§;
   import flash.net.URLRequest;
   
   public class §#!S§ extends §9"Q§
   {
       
      
      public function §#!S§(param1:String)
      {
         super(param1);
      }
      
      public function §1r§(param1:String, param2:Boolean, param3:Function, param4:Function = null) : void
      {
         §["x§("/startlevel/" + param1 + (!!param2 ? "/true" : ""),param3,new §=H§(),param4);
      }
      
      public function saveLevelProgress(param1:URLRequest, param2:Function, param3:Function = null) : void
      {
         §["x§(null,param2,new §="H§(),param3,param1);
      }
   }
}
