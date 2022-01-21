package §<P§
{
   import §0i§.§4!%§;
   import flash.external.ExternalInterface;
   
   public class §=d§
   {
      
      public static var §]!M§:Boolean = true;
      
      private static var §'!=§:Object = {};
       
      
      public function §=d§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§'!=§[param1])
            {
               §'!=§[param1] = new §9N§(param1);
            }
            (§'!=§[param1] as §9N§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §!W§(param1:String, param2:Function) : void
      {
         if(§'!=§[param1])
         {
            (§'!=§[param1] as §9N§).§!W§(param2);
         }
      }
      
      public static function §<3§(param1:String, ... rest) : *
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
         §4!%§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §]!M§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §4!%§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
