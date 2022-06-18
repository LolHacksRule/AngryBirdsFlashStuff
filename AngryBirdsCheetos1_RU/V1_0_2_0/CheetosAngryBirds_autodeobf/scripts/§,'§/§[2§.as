package §,'§
{
   import §=g§.§@!L§;
   import flash.external.ExternalInterface;
   
   public class §[2§
   {
      
      public static var §">§:Boolean = true;
      
      private static var §;t§:Object = {};
       
      
      public function §[2§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§;t§[param1])
            {
               §;t§[param1] = new §%5§(param1);
            }
            (§;t§[param1] as §%5§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §6m§(param1:String, param2:Function) : void
      {
         if(§;t§[param1])
         {
            (§;t§[param1] as §%5§).§6m§(param2);
         }
      }
      
      public static function §^J§(param1:String, ... rest) : *
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
         §@!L§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §">§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §@!L§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
