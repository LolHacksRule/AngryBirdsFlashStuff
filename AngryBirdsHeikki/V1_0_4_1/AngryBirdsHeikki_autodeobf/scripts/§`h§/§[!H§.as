package §`h§
{
   import §%!$§.§[Z§;
   import flash.external.ExternalInterface;
   
   public class §[!H§
   {
      
      public static var §",§:Boolean = true;
      
      private static var §`[§:Object = {};
       
      
      public function §[!H§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§`[§[param1])
            {
               §`[§[param1] = new §for §(param1);
            }
            (§`[§[param1] as §for §).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §1<§(param1:String, param2:Function) : void
      {
         if(§`[§[param1])
         {
            (§`[§[param1] as §for §).§1<§(param2);
         }
      }
      
      public static function §'! §(param1:String, ... rest) : *
      {
         var obj:Object = null;
         var call:String = param1;
         var params:Array = rest;
         var debugStr:String = call + "(";
         for each(obj in params)
         {
            if(obj != null)
            {
               debugStr += obj.toString() + ", ";
            }
            else
            {
               debugStr += "null" + ", ";
            }
         }
         debugStr += ");";
         §[Z§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §",§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §[Z§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
