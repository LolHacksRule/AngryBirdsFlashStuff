package §<"8§
{
   import §0N§.§2!@§;
   import flash.external.ExternalInterface;
   
   public class §6!c§
   {
      
      public static var §'!'§:Boolean = true;
      
      private static var §"<§:Object = {};
       
      
      public function §6!c§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§"<§[param1])
            {
               §"<§[param1] = new §"I§(param1);
            }
            (§"<§[param1] as §"I§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §@!`§(param1:String, param2:Function) : void
      {
         if(§"<§[param1])
         {
            (§"<§[param1] as §"I§).§@!`§(param2);
         }
      }
      
      public static function §?!6§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         §2!@§.log("ExternalInterface call: " + call + "(" + params.join(", ") + ");");
         if(ExternalInterface.available && §'!'§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §2!@§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
