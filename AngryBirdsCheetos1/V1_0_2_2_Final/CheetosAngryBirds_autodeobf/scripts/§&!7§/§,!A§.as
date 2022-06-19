package §&!7§
{
   import § !G§.§ #§;
   import flash.external.ExternalInterface;
   
   public class §,!A§
   {
      
      public static var §#!R§:Boolean = true;
      
      private static var §@!M§:Object = {};
       
      
      public function §,!A§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§@!M§[param1])
            {
               §@!M§[param1] = new §9L§(param1);
            }
            (§@!M§[param1] as §9L§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §]Q§(param1:String, param2:Function) : void
      {
         if(§@!M§[param1])
         {
            (§@!M§[param1] as §9L§).§]Q§(param2);
         }
      }
      
      public static function §9!M§(param1:String, ... rest) : *
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
         § #§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §#!R§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               § #§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
