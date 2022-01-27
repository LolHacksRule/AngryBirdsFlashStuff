package §5"Q§
{
   import §9"`§.§-"H§;
   import flash.external.ExternalInterface;
   
   public class §5"s§
   {
      
      public static var §5"A§:Boolean = true;
      
      private static var § !d§:Object = {};
       
      
      public function §5"s§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§ !d§[param1])
            {
               § !d§[param1] = new §4!;§(param1);
            }
            (§ !d§[param1] as §4!;§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §@"-§(param1:String, param2:Function) : void
      {
         var _loc3_:§4!;§ = § !d§[param1] as §4!;§;
         if(_loc3_)
         {
            _loc3_.§@"-§(param2);
            if(_loc3_.§1!3§ == 0)
            {
               _loc3_.dispose();
               delete § !d§[param1];
            }
         }
      }
      
      public static function §<!8§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §-"H§.log(logStr);
         if(ExternalInterface.available && §5"A§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §-"H§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
