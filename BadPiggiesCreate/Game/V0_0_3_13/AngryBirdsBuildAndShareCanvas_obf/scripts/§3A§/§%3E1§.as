package §3A§
{
   import §&W§.§7L§;
   import flash.external.ExternalInterface;
   
   public class §>1§
   {
      
      public static var §,b§:Boolean = true;
      
      private static var §59§:Object = {};
       
      
      public function §>1§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§59§[param1])
            {
               §59§[param1] = new §5!x§(param1);
            }
            (§59§[param1] as §5!x§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §@§(param1:String, param2:Function) : void
      {
         if(§59§[param1])
         {
            (§59§[param1] as §5!x§).§@§(param2);
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
         §7L§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §,b§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §7L§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
