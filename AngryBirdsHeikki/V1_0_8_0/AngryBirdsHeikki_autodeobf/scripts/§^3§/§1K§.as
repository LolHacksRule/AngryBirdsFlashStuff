package §^3§
{
   import § !3§.§!X§;
   import flash.external.ExternalInterface;
   
   public class §1K§
   {
      
      public static var §,!+§:Boolean = true;
      
      private static var §+!Z§:Object = {};
       
      
      public function §1K§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§+!Z§[param1])
            {
               §+!Z§[param1] = new §7E§(param1);
            }
            (§+!Z§[param1] as §7E§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §5!"§(param1:String, param2:Function) : void
      {
         if(§+!Z§[param1])
         {
            (§+!Z§[param1] as §7E§).§5!"§(param2);
         }
      }
      
      public static function §%f§(param1:String, ... rest) : *
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
         §!X§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §,!+§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §!X§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
