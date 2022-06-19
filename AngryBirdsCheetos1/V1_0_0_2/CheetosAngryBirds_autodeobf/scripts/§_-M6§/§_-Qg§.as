package §_-M6§
{
   import §_-aA§.§_-I0§;
   import flash.external.ExternalInterface;
   
   public class §_-Qg§
   {
      
      public static var §_-Sf§:Boolean = true;
      
      private static var §_-Hv§:Object = {};
       
      
      public function §_-Qg§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§_-Hv§[param1])
            {
               §_-Hv§[param1] = new §_-zy§(param1);
            }
            (§_-Hv§[param1] as §_-zy§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §_-p2§(param1:String, param2:Function) : void
      {
         if(§_-Hv§[param1])
         {
            (§_-Hv§[param1] as §_-zy§).§_-p2§(param2);
         }
      }
      
      public static function §_-No§(param1:String, ... rest) : *
      {
         var obj:Object = null;
         var call:String = param1;
         var params:Array = rest;
         var debugStr:String = call + "(";
         for each(obj in params)
         {
            if(obj)
            {
               debugStr += obj.toString() + ", ";
            }
            else
            {
               debugStr += "null" + ", ";
            }
         }
         debugStr += ");";
         §_-I0§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §_-Sf§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §_-I0§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
