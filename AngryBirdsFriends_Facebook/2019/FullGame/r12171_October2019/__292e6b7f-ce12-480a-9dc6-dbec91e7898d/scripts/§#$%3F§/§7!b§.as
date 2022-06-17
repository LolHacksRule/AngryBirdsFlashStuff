package §#$?§
{
   import §6"p§.§^"t§;
   import flash.external.ExternalInterface;
   
   public class §7!b§
   {
      
      public static var §,$"§:Boolean = true;
      
      private static var §2"5§:Object = {};
       
      
      public function §7!b§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§2"5§[param1])
            {
               §2"5§[param1] = new §9"X§(param1);
            }
            (§2"5§[param1] as §9"X§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §&#&§(param1:String, param2:Function) : void
      {
         var _loc3_:§9"X§ = §2"5§[param1] as §9"X§;
         if(_loc3_)
         {
            _loc3_.§&#&§(param2);
            if(_loc3_.§[A§ == 0)
            {
               _loc3_.dispose();
               delete §2"5§[param1];
            }
         }
      }
      
      public static function §7@§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §^"t§.log(logStr);
         if(ExternalInterface.available && §,$"§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §^"t§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
