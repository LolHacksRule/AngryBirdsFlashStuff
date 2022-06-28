package §&"§
{
   import §<u§.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceHandler
   {
      
      public static var §^t§:Boolean = true;
      
      private static var §`2§:Object = {};
       
      
      public function ExternalInterfaceHandler()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§`2§[param1])
            {
               §`2§[param1] = new ExternalInterfaceMethod(param1);
            }
            (§`2§[param1] as ExternalInterfaceMethod).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §>!X§(param1:String, param2:Function) : void
      {
         if(§`2§[param1])
         {
            (§`2§[param1] as ExternalInterfaceMethod).§>!X§(param2);
         }
      }
      
      public static function §`F§(param1:String, ... rest) : *
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
         Log.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §^t§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               Log.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
