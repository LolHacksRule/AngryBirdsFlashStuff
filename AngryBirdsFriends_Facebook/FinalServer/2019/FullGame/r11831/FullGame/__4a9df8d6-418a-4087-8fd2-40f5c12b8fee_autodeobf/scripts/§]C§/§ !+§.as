package §]C§
{
   import §1#v§.§;!Y§;
   import flash.external.ExternalInterface;
   
   public class § !+§
   {
      
      public static var §9$C§:Boolean = true;
      
      private static var §<_§:Object = {};
       
      
      public function § !+§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§<_§[param1])
            {
               §<_§[param1] = new §<!X§(param1);
            }
            (§<_§[param1] as §<!X§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §?!§(param1:String, param2:Function) : void
      {
         var _loc3_:§<!X§ = §<_§[param1] as §<!X§;
         if(_loc3_)
         {
            _loc3_.§?!§(param2);
            if(_loc3_.§[!J§ == 0)
            {
               _loc3_.dispose();
               delete §<_§[param1];
            }
         }
      }
      
      public static function §>$%§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §;!Y§.log(logStr);
         if(ExternalInterface.available && §9$C§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §;!Y§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
