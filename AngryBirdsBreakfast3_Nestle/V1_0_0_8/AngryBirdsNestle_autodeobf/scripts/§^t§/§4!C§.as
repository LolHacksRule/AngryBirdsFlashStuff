package §^t§
{
   import §;4§.§]!%§;
   import flash.external.ExternalInterface;
   
   public class §4!C§
   {
      
      public static var §9L§:Boolean = true;
      
      private static var §4"3§:Object = {};
       
      
      public function §4!C§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§4"3§[param1])
            {
               §4"3§[param1] = new §17§(param1);
            }
            (§4"3§[param1] as §17§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §!M§(param1:String, param2:Function) : void
      {
         var _loc3_:§17§ = §4"3§[param1] as §17§;
         if(_loc3_)
         {
            _loc3_.§!M§(param2);
            if(_loc3_.§5!s§ == 0)
            {
               _loc3_.dispose();
               delete §4"3§[param1];
            }
         }
      }
      
      public static function §6'§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §]!%§.log(logStr);
         if(ExternalInterface.available && §9L§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §]!%§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
