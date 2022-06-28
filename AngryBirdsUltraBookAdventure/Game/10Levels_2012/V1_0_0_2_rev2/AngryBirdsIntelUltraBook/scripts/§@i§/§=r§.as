package §@i§
{
   import §^_§.§!>§;
   import flash.external.ExternalInterface;
   
   public class §=r§
   {
      
      public static var §,h§:Boolean = true;
      
      private static var §;§:Object = {};
       
      
      public function §=r§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§;§[param1])
            {
               §;§[param1] = new §5!D§(param1);
            }
            (§;§[param1] as §5!D§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §<a§(param1:String, param2:Function) : void
      {
         if(§;§[param1])
         {
            (§;§[param1] as §5!D§).§<a§(param2);
         }
      }
      
      public static function §[!3§(param1:String, ... rest) : *
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
         §!>§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §,h§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §!>§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
