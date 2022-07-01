package §=V§
{
   import § !r§.§`![§;
   import flash.external.ExternalInterface;
   
   public class §,m§
   {
      
      public static var §0!$§:Boolean = true;
      
      private static var §7!A§:Object = {};
       
      
      public function §,m§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§7!A§[param1])
            {
               §7!A§[param1] = new §-!9§(param1);
            }
            (§7!A§[param1] as §-!9§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function § s§(param1:String, param2:Function) : void
      {
         if(§7!A§[param1])
         {
            (§7!A§[param1] as §-!9§).§ s§(param2);
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
         §`![§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §0!$§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §`![§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
