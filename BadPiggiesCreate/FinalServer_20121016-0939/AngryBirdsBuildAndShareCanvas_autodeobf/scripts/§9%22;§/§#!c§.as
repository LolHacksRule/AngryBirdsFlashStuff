package §9";§
{
   import §=!M§.§9!P§;
   import flash.external.ExternalInterface;
   
   public class §#!c§
   {
      
      public static var §@!_§:Boolean = true;
      
      private static var §=K§:Object = {};
       
      
      public function §#!c§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§=K§[param1])
            {
               §=K§[param1] = new §5!l§(param1);
            }
            (§=K§[param1] as §5!l§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §^D§(param1:String, param2:Function) : void
      {
         if(§=K§[param1])
         {
            (§=K§[param1] as §5!l§).§^D§(param2);
         }
      }
      
      public static function performCall(param1:String, ... rest) : *
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
         §9!P§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §@!_§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §9!P§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
