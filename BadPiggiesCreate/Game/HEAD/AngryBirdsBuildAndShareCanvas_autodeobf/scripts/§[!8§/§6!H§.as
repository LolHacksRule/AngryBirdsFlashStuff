package §[!8§
{
   import §6]§.§,"0§;
   import flash.external.ExternalInterface;
   
   public class §6!H§
   {
      
      public static var §>!$§:Boolean = true;
      
      private static var §"j§:Object = {};
       
      
      public function §6!H§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§"j§[param1])
            {
               §"j§[param1] = new §'!Z§(param1);
            }
            (§"j§[param1] as §'!Z§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §#"%§(param1:String, param2:Function) : void
      {
         if(§"j§[param1])
         {
            (§"j§[param1] as §'!Z§).§#"%§(param2);
         }
      }
      
      public static function §2!i§(param1:String, ... rest) : *
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
         §,"0§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §>!$§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §,"0§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
