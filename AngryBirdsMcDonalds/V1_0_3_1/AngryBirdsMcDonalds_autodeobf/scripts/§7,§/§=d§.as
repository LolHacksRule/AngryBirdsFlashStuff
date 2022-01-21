package §7,§
{
   import §5K§.§[C§;
   import flash.external.ExternalInterface;
   
   public class §=d§
   {
      
      public static var §]j§:Boolean = true;
      
      private static var §>!1§:Object = {};
       
      
      public function §=d§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§>!1§[param1])
            {
               §>!1§[param1] = new §]V§(param1);
            }
            (§>!1§[param1] as §]V§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §2!p§(param1:String, param2:Function) : void
      {
         if(§>!1§[param1])
         {
            (§>!1§[param1] as §]V§).§2!p§(param2);
         }
      }
      
      public static function §2!l§(param1:String, ... rest) : *
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
         §[C§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §]j§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §[C§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
