package §%4§
{
   import §@!;§.§&F§;
   import flash.external.ExternalInterface;
   
   public class §]8§
   {
      
      public static var §=!0§:Boolean = true;
      
      private static var §8r§:Object = {};
       
      
      public function §]8§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§8r§[param1])
            {
               §8r§[param1] = new §?B§(param1);
            }
            (§8r§[param1] as §?B§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §0!'§(param1:String, param2:Function) : void
      {
         if(§8r§[param1])
         {
            (§8r§[param1] as §?B§).§0!'§(param2);
         }
      }
      
      public static function performCall(param1:String, ... rest) : *
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
         §&F§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §=!0§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §&F§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
