package §,!#§
{
   import §'N§.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceHandler
   {
      
      public static var §1!<§:Boolean = true;
      
      private static var §<!@§:Object = {};
       
      
      public function ExternalInterfaceHandler()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§<!@§[param1])
            {
               §<!@§[param1] = new ExternalInterfaceMethod(param1);
            }
            (§<!@§[param1] as ExternalInterfaceMethod).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §<!<§(param1:String, param2:Function) : void
      {
         if(§<!@§[param1])
         {
            (§<!@§[param1] as ExternalInterfaceMethod).§<!<§(param2);
         }
      }
      
      public static function §!!@§(param1:String, ... rest) : *
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
         if(ExternalInterface.available && §1!<§)
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
