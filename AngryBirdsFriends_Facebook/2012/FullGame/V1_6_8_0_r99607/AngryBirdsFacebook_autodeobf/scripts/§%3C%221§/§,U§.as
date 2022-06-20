package §<"1§
{
   import §0!?§.§'!$§;
   import flash.external.ExternalInterface;
   
   public class §,U§
   {
      
      public static var §-!d§:Boolean = true;
      
      private static var §54§:Object = {};
       
      
      public function §,U§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§54§[param1])
            {
               §54§[param1] = new §2!g§(param1);
            }
            (§54§[param1] as §2!g§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §-!N§(param1:String, param2:Function) : void
      {
         if(§54§[param1])
         {
            (§54§[param1] as §2!g§).§-!N§(param2);
         }
      }
      
      public static function §53§(param1:String, ... rest) : *
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
         §'!$§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §-!d§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §'!$§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
