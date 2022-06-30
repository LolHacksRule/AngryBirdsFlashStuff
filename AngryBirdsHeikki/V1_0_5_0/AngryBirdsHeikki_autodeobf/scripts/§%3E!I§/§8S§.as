package §>!I§
{
   import §1!K§.§>!<§;
   import flash.external.ExternalInterface;
   
   public class §8S§
   {
      
      public static var §-!%§:Boolean = true;
      
      private static var § ^§:Object = {};
       
      
      public function §8S§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§ ^§[param1])
            {
               § ^§[param1] = new §"m§(param1);
            }
            (§ ^§[param1] as §"m§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §=C§(param1:String, param2:Function) : void
      {
         if(§ ^§[param1])
         {
            (§ ^§[param1] as §"m§).§=C§(param2);
         }
      }
      
      public static function §<p§(param1:String, ... rest) : *
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
         §>!<§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §-!%§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §>!<§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
