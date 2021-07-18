package §@B§
{
   import §`K§.§ L§;
   import flash.external.ExternalInterface;
   
   public class §8V§
   {
      
      public static var §=!Q§:Boolean = true;
      
      private static var §4G§:Object = {};
       
      
      public function §8V§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§4G§[param1])
            {
               §4G§[param1] = new §-y§(param1);
            }
            (§4G§[param1] as §-y§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §=&§(param1:String, param2:Function) : void
      {
         if(§4G§[param1])
         {
            (§4G§[param1] as §-y§).§=&§(param2);
         }
      }
      
      public static function §^^§(param1:String, ... rest) : *
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
         § L§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §=!Q§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               § L§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
