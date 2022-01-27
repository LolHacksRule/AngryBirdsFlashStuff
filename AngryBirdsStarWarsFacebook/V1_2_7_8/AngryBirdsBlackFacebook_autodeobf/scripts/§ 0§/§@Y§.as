package § 0§
{
   import §0"I§.§5!s§;
   import flash.external.ExternalInterface;
   
   public class §@Y§
   {
      
      public static var §["Z§:Boolean = true;
      
      private static var §#"'§:Object = {};
       
      
      public function §@Y§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§#"'§[param1])
            {
               §#"'§[param1] = new §+!n§(param1);
            }
            (§#"'§[param1] as §+!n§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §0"<§(param1:String, param2:Function) : void
      {
         var _loc3_:§+!n§ = §#"'§[param1] as §+!n§;
         if(_loc3_)
         {
            _loc3_.§0"<§(param2);
            if(_loc3_.§+x§ == 0)
            {
               _loc3_.dispose();
               delete §#"'§[param1];
            }
         }
      }
      
      public static function §7"H§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §5!s§.log(logStr);
         if(ExternalInterface.available && §["Z§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §5!s§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
