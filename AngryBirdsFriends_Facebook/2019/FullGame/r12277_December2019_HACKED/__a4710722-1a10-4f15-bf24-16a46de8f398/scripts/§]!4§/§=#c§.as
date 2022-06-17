package §]!4§
{
   import §#"3§.§4!h§;
   import flash.external.ExternalInterface;
   
   public class §=#c§
   {
      
      public static var §3#m§:Boolean = true;
      
      private static var §8!J§:Object = {};
       
      
      public function §=#c§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§8!J§[param1])
            {
               §8!J§[param1] = new §%D§(param1);
            }
            (§8!J§[param1] as §%D§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §`$ §(param1:String, param2:Function) : void
      {
         var _loc3_:§%D§ = §8!J§[param1] as §%D§;
         if(_loc3_)
         {
            _loc3_.§`$ §(param2);
            if(_loc3_.§%#X§ == 0)
            {
               _loc3_.dispose();
               delete §8!J§[param1];
            }
         }
      }
      
      public static function §<!t§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §4!h§.log(logStr);
         if(ExternalInterface.available && §3#m§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §4!h§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
