package §>L§
{
   import §1!B§.§<m§;
   import flash.external.ExternalInterface;
   
   public class §+!i§
   {
      
      public static var §3"!§:Boolean = true;
      
      private static var §=[§:Object = {};
       
      
      public function §+!i§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§=[§[param1])
            {
               §=[§[param1] = new § !2§(param1);
            }
            (§=[§[param1] as § !2§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §=+§(param1:String, param2:Function) : void
      {
         if(§=[§[param1])
         {
            (§=[§[param1] as § !2§).§=+§(param2);
         }
      }
      
      public static function §>!y§(param1:String, ... rest) : *
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
         §<m§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §3"!§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §<m§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
