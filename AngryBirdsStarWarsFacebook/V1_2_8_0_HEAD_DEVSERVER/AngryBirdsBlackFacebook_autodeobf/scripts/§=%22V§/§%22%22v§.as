package §="V§
{
   import §5t§.Log;
   import flash.external.ExternalInterface;
   
   public class §""v§
   {
      
      public static var §!"J§:Boolean = true;
      
      private static var §3!3§:Object = {};
       
      
      public function §""v§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§3!3§[param1])
            {
               §3!3§[param1] = new §"!U§(param1);
            }
            (§3!3§[param1] as §"!U§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §&z§(param1:String, param2:Function) : void
      {
         var _loc3_:§"!U§ = §3!3§[param1] as §"!U§;
         if(_loc3_)
         {
            _loc3_.§&z§(param2);
            if(_loc3_.§]>§ == 0)
            {
               _loc3_.dispose();
               delete §3!3§[param1];
            }
         }
      }
      
      public static function §&R§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         Log.log(logStr);
         if(ExternalInterface.available && §!"J§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               Log.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
