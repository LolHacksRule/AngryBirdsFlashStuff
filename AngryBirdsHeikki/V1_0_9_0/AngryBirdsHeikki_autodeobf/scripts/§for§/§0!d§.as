package §for§
{
   import §0i§.§]_§;
   import flash.external.ExternalInterface;
   
   public class §0!d§
   {
      
      public static var §8X§:Boolean = true;
      
      private static var §>!E§:Object = {};
       
      
      public function §0!d§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§>!E§[param1])
            {
               §>!E§[param1] = new §%F§(param1);
            }
            (§>!E§[param1] as §%F§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §0!e§(param1:String, param2:Function) : void
      {
         if(§>!E§[param1])
         {
            (§>!E§[param1] as §%F§).§0!e§(param2);
         }
      }
      
      public static function §%z§(param1:String, ... rest) : *
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
         §]_§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §8X§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §]_§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
