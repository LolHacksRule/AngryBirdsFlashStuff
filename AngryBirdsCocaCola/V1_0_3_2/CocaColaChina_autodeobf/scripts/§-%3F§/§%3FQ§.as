package §-?§
{
   import §6!Q§.§7!7§;
   import flash.external.ExternalInterface;
   
   public class §?Q§
   {
      
      public static var §]!§:Boolean = true;
      
      private static var §<d§:Object = {};
       
      
      public function §?Q§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§<d§[param1])
            {
               §<d§[param1] = new §"c§(param1);
            }
            (§<d§[param1] as §"c§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §0C§(param1:String, param2:Function) : void
      {
         if(§<d§[param1])
         {
            (§<d§[param1] as §"c§).§0C§(param2);
         }
      }
      
      public static function §'Y§(param1:String, ... rest) : *
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
         §7!7§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §]!§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §7!7§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
