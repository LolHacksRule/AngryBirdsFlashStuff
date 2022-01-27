package §^R§
{
   import §"1§.§3'§;
   import flash.external.ExternalInterface;
   
   public class §6!-§
   {
      
      public static var §"q§:Boolean = true;
      
      private static var §>^§:Object = {};
       
      
      public function §6!-§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§>^§[param1])
            {
               §>^§[param1] = new §^!!§(param1);
            }
            (§>^§[param1] as §^!!§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §<I§(param1:String, param2:Function) : void
      {
         if(§>^§[param1])
         {
            (§>^§[param1] as §^!!§).§<I§(param2);
         }
      }
      
      public static function §'!P§(param1:String, ... rest) : *
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
         §3'§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §"q§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §3'§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
