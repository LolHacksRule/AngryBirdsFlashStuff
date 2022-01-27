package §5^§
{
   import §-!5§.§5s§;
   import flash.external.ExternalInterface;
   
   public class §3=§
   {
      
      public static var §``§:Boolean = true;
      
      private static var §;Z§:Object = {};
       
      
      public function §3=§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§;Z§[param1])
            {
               §;Z§[param1] = new §-W§(param1);
            }
            (§;Z§[param1] as §-W§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §=[§(param1:String, param2:Function) : void
      {
         if(§;Z§[param1])
         {
            (§;Z§[param1] as §-W§).§=[§(param2);
         }
      }
      
      public static function §-!6§(param1:String, ... rest) : *
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
         §5s§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §``§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §5s§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
