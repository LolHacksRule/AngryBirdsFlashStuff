package §>!+§
{
   import §!6§.§3!5§;
   import flash.external.ExternalInterface;
   
   public class §@G§
   {
      
      public static var §!A§:Boolean = true;
      
      private static var §-!4§:Object = {};
       
      
      public function §@G§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§-!4§[param1])
            {
               §-!4§[param1] = new §1a§(param1);
            }
            (§-!4§[param1] as §1a§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §3_§(param1:String, param2:Function) : void
      {
         if(§-!4§[param1])
         {
            (§-!4§[param1] as §1a§).§3_§(param2);
         }
      }
      
      public static function §6C§(param1:String, ... rest) : *
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
         §3!5§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §!A§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §3!5§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
