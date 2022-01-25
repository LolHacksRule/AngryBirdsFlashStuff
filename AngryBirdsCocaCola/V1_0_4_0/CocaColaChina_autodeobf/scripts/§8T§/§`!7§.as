package §8T§
{
   import §'!G§.§1C§;
   import flash.external.ExternalInterface;
   
   public class §`!7§
   {
      
      public static var §?!<§:Boolean = true;
      
      private static var §%!G§:Object = {};
       
      
      public function §`!7§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§%!G§[param1])
            {
               §%!G§[param1] = new §#z§(param1);
            }
            (§%!G§[param1] as §#z§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §'!F§(param1:String, param2:Function) : void
      {
         if(§%!G§[param1])
         {
            (§%!G§[param1] as §#z§).§'!F§(param2);
         }
      }
      
      public static function §-h§(param1:String, ... rest) : *
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
         §1C§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §?!<§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §1C§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
