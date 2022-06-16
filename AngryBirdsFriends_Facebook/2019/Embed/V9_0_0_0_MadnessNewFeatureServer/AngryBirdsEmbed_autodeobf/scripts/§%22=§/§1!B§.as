package §"=§
{
   import §'6§.§?!L§;
   import flash.external.ExternalInterface;
   
   public class §1!B§
   {
      
      public static var §01§:Boolean = true;
      
      private static var §!d§:Object = {};
       
      
      public function §1!B§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§!d§[param1])
            {
               §!d§[param1] = new §#!2§(param1);
            }
            (§!d§[param1] as §#!2§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §[v§(param1:String, param2:Function) : void
      {
         if(§!d§[param1])
         {
            (§!d§[param1] as §#!2§).§[v§(param2);
         }
      }
      
      public static function §#!O§(param1:String, ... rest) : *
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
         §?!L§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §01§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §?!L§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
