package §6!N§
{
   import §;X§.§ do§;
   import flash.external.ExternalInterface;
   
   public class §=x§
   {
      
      public static var §6!y§:Boolean = true;
      
      private static var §#!^§:Object = {};
       
      
      public function §=x§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§#!^§[param1])
            {
               §#!^§[param1] = new §%!<§(param1);
            }
            (§#!^§[param1] as §%!<§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §1!X§(param1:String, param2:Function) : void
      {
         if(§#!^§[param1])
         {
            (§#!^§[param1] as §%!<§).§1!X§(param2);
         }
      }
      
      public static function performCall(param1:String, ... rest) : *
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
         § do§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §6!y§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               § do§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
