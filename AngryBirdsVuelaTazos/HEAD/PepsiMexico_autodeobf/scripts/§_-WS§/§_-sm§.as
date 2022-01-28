package §_-WS§
{
   import §_-gM§.§_-yj§;
   import flash.external.ExternalInterface;
   
   public class §_-sm§
   {
      
      public static var §_-hV§:Boolean = true;
      
      private static var §_-RH§:Object = {};
       
      
      public function §_-sm§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         if(!§_-RH§[param1])
         {
            §_-RH§[param1] = new §_-6S§(param1);
         }
         (§_-RH§[param1] as §_-6S§).addCallback(param2);
      }
      
      public static function §_-KC§(param1:String, param2:Function) : void
      {
         if(§_-RH§[param1])
         {
            (§_-RH§[param1] as §_-6S§).§_-KC§(param2);
         }
      }
      
      public static function §_-rT§(param1:String, ... rest) : *
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
         §_-yj§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §_-hV§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §_-yj§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
