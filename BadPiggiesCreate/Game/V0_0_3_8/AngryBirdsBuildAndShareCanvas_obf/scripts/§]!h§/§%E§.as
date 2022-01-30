package §]!h§
{
   import §4u§.§<!L§;
   import flash.external.ExternalInterface;
   
   public class §%E§
   {
      
      public static var §[!U§:Boolean = true;
      
      private static var §,e§:Object = {};
       
      
      public function §%E§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§,e§[param1])
            {
               §,e§[param1] = new §[!l§(param1);
            }
            (§,e§[param1] as §[!l§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §3!z§(param1:String, param2:Function) : void
      {
         if(§,e§[param1])
         {
            (§,e§[param1] as §[!l§).§3!z§(param2);
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
         §<!L§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §[!U§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §<!L§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
