package §"6§
{
   import §@!;§.§!!=§;
   import flash.external.ExternalInterface;
   
   public class §!9§
   {
      
      public static var §4!7§:Boolean = true;
      
      private static var §^q§:Object = {};
       
      
      public function §!9§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§^q§[param1])
            {
               §^q§[param1] = new §"!%§(param1);
            }
            (§^q§[param1] as §"!%§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function § H§(param1:String, param2:Function) : void
      {
         if(§^q§[param1])
         {
            (§^q§[param1] as §"!%§).§ H§(param2);
         }
      }
      
      public static function §=G§(param1:String, ... rest) : *
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
         §!!=§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §4!7§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §!!=§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
