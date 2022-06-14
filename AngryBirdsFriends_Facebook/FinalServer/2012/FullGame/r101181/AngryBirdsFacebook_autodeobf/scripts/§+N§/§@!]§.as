package §+N§
{
   import §6o§.§+!k§;
   import flash.external.ExternalInterface;
   
   public class §@!]§
   {
      
      public static var §;"%§:Boolean = true;
      
      private static var §%H§:Object = {};
       
      
      public function §@!]§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§%H§[param1])
            {
               §%H§[param1] = new §4"+§(param1);
            }
            (§%H§[param1] as §4"+§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §[">§(param1:String, param2:Function) : void
      {
         if(§%H§[param1])
         {
            (§%H§[param1] as §4"+§).§[">§(param2);
         }
      }
      
      public static function §9"'§(param1:String, ... rest) : *
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
         §+!k§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §;"%§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §+!k§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
