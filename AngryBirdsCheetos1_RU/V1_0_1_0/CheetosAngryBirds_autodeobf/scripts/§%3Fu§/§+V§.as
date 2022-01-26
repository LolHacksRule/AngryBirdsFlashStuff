package §?u§
{
   import §%t§.§@!%§;
   import flash.external.ExternalInterface;
   
   public class §+V§
   {
      
      public static var §'!!§:Boolean = true;
      
      private static var §^F§:Object = {};
       
      
      public function §+V§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§^F§[param1])
            {
               §^F§[param1] = new §0§(param1);
            }
            (§^F§[param1] as §0§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §&&§(param1:String, param2:Function) : void
      {
         if(§^F§[param1])
         {
            (§^F§[param1] as §0§).§&&§(param2);
         }
      }
      
      public static function §3!'§(param1:String, ... rest) : *
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
         §@!%§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §'!!§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §@!%§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
