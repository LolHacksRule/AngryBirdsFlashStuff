package §<l§
{
   import §""<§.§#N§;
   import flash.external.ExternalInterface;
   
   public class §#r§
   {
      
      public static var §6"7§:Boolean = true;
      
      private static var §&j§:Object = {};
       
      
      public function §#r§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§&j§[param1])
            {
               §&j§[param1] = new §1?§(param1);
            }
            (§&j§[param1] as §1?§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §-8§(param1:String, param2:Function) : void
      {
         if(§&j§[param1])
         {
            (§&j§[param1] as §1?§).§-8§(param2);
         }
      }
      
      public static function §#!2§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         §#N§.log("ExternalInterface call: " + call + "(" + params.join(", ") + ");");
         if(ExternalInterface.available && §6"7§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §#N§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
