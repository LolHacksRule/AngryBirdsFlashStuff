package §7#j§
{
   import §9#K§.§=#f§;
   import flash.external.ExternalInterface;
   
   public class §@"F§
   {
      
      public static var §`!e§:Boolean = true;
      
      private static var §2#E§:Object = {};
       
      
      public function §@"F§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§2#E§[param1])
            {
               §2#E§[param1] = new §[!Q§(param1);
            }
            (§2#E§[param1] as §[!Q§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §=F§(param1:String, param2:Function) : void
      {
         var _loc3_:§[!Q§ = §2#E§[param1] as §[!Q§;
         if(_loc3_)
         {
            _loc3_.§=F§(param2);
            if(_loc3_.§'g§ == 0)
            {
               _loc3_.dispose();
               delete §2#E§[param1];
            }
         }
      }
      
      public static function §^$#§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §=#f§.log(logStr);
         if(ExternalInterface.available && §`!e§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §=#f§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
