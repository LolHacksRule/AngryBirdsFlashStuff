package §3!9§
{
   import §2§.§0!<§;
   import flash.external.ExternalInterface;
   
   public class §2!4§
   {
      
      public static var §<7§:Boolean = true;
      
      private static var §[!E§:Object = {};
       
      
      public function §2!4§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§[!E§[param1])
            {
               §[!E§[param1] = new §6§(param1);
            }
            (§[!E§[param1] as §6§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §class§(param1:String, param2:Function) : void
      {
         if(§[!E§[param1])
         {
            (§[!E§[param1] as §6§).§class§(param2);
         }
      }
      
      public static function §[L§(param1:String, ... rest) : *
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
         §0!<§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §<7§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §0!<§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
