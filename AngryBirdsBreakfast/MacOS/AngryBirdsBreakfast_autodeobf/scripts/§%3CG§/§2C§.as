package §<G§
{
   import each.§!!'§;
   import flash.external.ExternalInterface;
   
   public class §2C§
   {
      
      public static var §1B§:Boolean = true;
      
      private static var §2K§:Object = {};
       
      
      public function §2C§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§2K§[param1])
            {
               §2K§[param1] = new §3!4§(param1);
            }
            (§2K§[param1] as §3!4§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §;!A§(param1:String, param2:Function) : void
      {
         var _loc3_:§3!4§ = §2K§[param1] as §3!4§;
         if(_loc3_)
         {
            _loc3_.§;!A§(param2);
            if(_loc3_.§3!W§ == 0)
            {
               _loc3_.dispose();
               delete §2K§[param1];
            }
         }
      }
      
      public static function §^!A§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §!!'§.log(logStr);
         if(ExternalInterface.available && §1B§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §!!'§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
