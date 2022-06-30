package §6s§
{
   import §@R§.§4,§;
   import flash.external.ExternalInterface;
   
   public class §+!Y§
   {
      
      public static var §,s§:Boolean = true;
      
      private static var §4W§:Object = {};
       
      
      public function §+!Y§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§4W§[param1])
            {
               §4W§[param1] = new §8!I§(param1);
            }
            (§4W§[param1] as §8!I§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §-=§(param1:String, param2:Function) : void
      {
         if(§4W§[param1])
         {
            (§4W§[param1] as §8!I§).§-=§(param2);
         }
      }
      
      public static function §]5§(param1:String, ... rest) : *
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
         §4,§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §,s§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §4,§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
