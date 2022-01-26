package
{
   import §;8§.§3f§;
   import flash.external.ExternalInterface;
   
   public class §%B§
   {
      
      public static var dynamic:Boolean = true;
      
      private static var §7c§:Object = {};
       
      
      public function §%B§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§7c§[param1])
            {
               §7c§[param1] = new §7[§(param1);
            }
            (§7c§[param1] as §7[§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §2&§(param1:String, param2:Function) : void
      {
         if(§7c§[param1])
         {
            (§7c§[param1] as §7[§).§2&§(param2);
         }
      }
      
      public static function §,!2§(param1:String, ... rest) : *
      {
         var obj:Object = null;
         var call:String = param1;
         var params:Array = rest;
         var debugStr:String = call + "(";
         for each(obj in params)
         {
            if(obj)
            {
               debugStr += obj.toString() + ", ";
            }
            else
            {
               debugStr += "null" + ", ";
            }
         }
         debugStr += ");";
         §3f§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && dynamic)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §3f§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
