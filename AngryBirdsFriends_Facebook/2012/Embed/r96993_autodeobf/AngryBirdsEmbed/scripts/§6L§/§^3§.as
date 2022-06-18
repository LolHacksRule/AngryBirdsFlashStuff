package §6L§
{
   import §3v§.§1a§;
   import flash.external.ExternalInterface;
   
   public class §^3§
   {
      
      public static var §7h§:Boolean = true;
      
      private static var §]n§:Object = {};
       
      
      public function §^3§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§]n§[param1])
            {
               §]n§[param1] = new §-?§(param1);
            }
            (§]n§[param1] as §-?§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §-v§(param1:String, param2:Function) : void
      {
         if(§]n§[param1])
         {
            (§]n§[param1] as §-?§).§-v§(param2);
         }
      }
      
      public static function §%Z§(param1:String, ... rest) : *
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
         §1a§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §7h§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §1a§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
