package §@!L§
{
   import §3!O§.§5q§;
   import flash.external.ExternalInterface;
   
   public class §%K§
   {
      
      public static var §=,§:Boolean = true;
      
      private static var §[y§:Object = {};
       
      
      public function §%K§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§[y§[param1])
            {
               §[y§[param1] = new §`I§(param1);
            }
            (§[y§[param1] as §`I§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §>c§(param1:String, param2:Function) : void
      {
         if(§[y§[param1])
         {
            (§[y§[param1] as §`I§).§>c§(param2);
         }
      }
      
      public static function §6!K§(param1:String, ... rest) : *
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
         §5q§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §=,§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §5q§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
