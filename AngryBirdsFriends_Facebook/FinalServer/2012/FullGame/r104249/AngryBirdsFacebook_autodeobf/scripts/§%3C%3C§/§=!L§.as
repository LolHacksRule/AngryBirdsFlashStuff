package §<<§
{
   import §[x§.§%3§;
   import flash.external.ExternalInterface;
   
   public class §=!L§
   {
      
      public static var §?"A§:Boolean = true;
      
      private static var §,b§:Object = {};
       
      
      public function §=!L§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§,b§[param1])
            {
               §,b§[param1] = new §#d§(param1);
            }
            (§,b§[param1] as §#d§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §>7§(param1:String, param2:Function) : void
      {
         if(§,b§[param1])
         {
            (§,b§[param1] as §#d§).§>7§(param2);
         }
      }
      
      public static function §+">§(param1:String, ... rest) : *
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
         §%3§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §?"A§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §%3§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
