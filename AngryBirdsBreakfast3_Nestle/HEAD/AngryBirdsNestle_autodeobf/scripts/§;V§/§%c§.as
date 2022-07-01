package §;V§
{
   import §24§.;
   import flash.external.ExternalInterface;
   
   public class §%c§
   {
      
      public static var §#9§:Boolean = true;
      
      private static var §4"'§:Object = {};
       
      
      public function §%c§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§4"'§[param1])
            {
               §4"'§[param1] = new §-]§(param1);
            }
            (§4"'§[param1] as §-]§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §[u§(param1:String, param2:Function) : void
      {
         var _loc3_:§-]§ = §4"'§[param1] as §-]§;
         if(_loc3_)
         {
            _loc3_.§[u§(param2);
            if(_loc3_.§%!D§ == 0)
            {
               _loc3_.dispose();
               delete §4"'§[param1];
            }
         }
      }
      
      public static function §6"§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §24§.§#7§.log(logStr);
         if(ExternalInterface.available && §#9§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §24§.§#7§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
