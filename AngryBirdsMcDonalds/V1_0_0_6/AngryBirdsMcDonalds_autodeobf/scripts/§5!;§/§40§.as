package §5!;§
{
   import §8<§.§<!7§;
   import flash.external.ExternalInterface;
   
   public class §40§
   {
      
      public static var §&w§:Boolean = true;
      
      private static var §;!^§:Object = {};
       
      
      public function §40§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§;!^§[param1])
            {
               §;!^§[param1] = new §-!1§(param1);
            }
            (§;!^§[param1] as §-!1§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §;!m§(param1:String, param2:Function) : void
      {
         if(§;!^§[param1])
         {
            (§;!^§[param1] as §-!1§).§;!m§(param2);
         }
      }
      
      public static function §&'§(param1:String, ... rest) : *
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
         §<!7§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §&w§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §<!7§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
