package §6!0§
{
   import §<"p§.§?!T§;
   import flash.external.ExternalInterface;
   
   public class § "8§
   {
      
      public static var §4!$§:Boolean = true;
      
      private static var § !l§:Object = {};
       
      
      public function § "8§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§ !l§[param1])
            {
               § !l§[param1] = new §%$0§(param1);
            }
            (§ !l§[param1] as §%$0§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §+#R§(param1:String, param2:Function) : void
      {
         var _loc3_:§%$0§ = § !l§[param1] as §%$0§;
         if(_loc3_)
         {
            _loc3_.§+#R§(param2);
            if(_loc3_.§&#m§ == 0)
            {
               _loc3_.dispose();
               delete § !l§[param1];
            }
         }
      }
      
      public static function § "§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §?!T§.log(logStr);
         if(ExternalInterface.available && §4!$§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §?!T§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
