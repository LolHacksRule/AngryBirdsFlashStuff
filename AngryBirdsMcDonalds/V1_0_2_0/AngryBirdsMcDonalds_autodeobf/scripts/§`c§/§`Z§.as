package §`c§
{
   import §=<§.§1+§;
   import flash.external.ExternalInterface;
   
   public class §`Z§
   {
      
      public static var §;>§:Boolean = true;
      
      private static var §&`§:Object = {};
       
      
      public function §`Z§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§&`§[param1])
            {
               §&`§[param1] = new §'9§(param1);
            }
            (§&`§[param1] as §'9§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §2S§(param1:String, param2:Function) : void
      {
         if(§&`§[param1])
         {
            (§&`§[param1] as §'9§).§2S§(param2);
         }
      }
      
      public static function §?D§(param1:String, ... rest) : *
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
         §1+§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §;>§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §1+§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
