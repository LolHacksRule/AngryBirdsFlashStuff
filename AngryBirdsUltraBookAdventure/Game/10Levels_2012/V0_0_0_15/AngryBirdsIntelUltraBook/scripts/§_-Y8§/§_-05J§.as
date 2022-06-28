package §_-Y8§
{
   import §_-0BH§.§_-FK§;
   import flash.external.ExternalInterface;
   
   public class §_-05J§
   {
      
      public static var §_-XG§:Boolean = true;
      
      private static var §_-aq§:Object = {};
       
      
      public function §_-05J§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§_-aq§[param1])
            {
               §_-aq§[param1] = new §_-qc§(param1);
            }
            (§_-aq§[param1] as §_-qc§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §_-tG§(param1:String, param2:Function) : void
      {
         if(§_-aq§[param1])
         {
            (§_-aq§[param1] as §_-qc§).§_-tG§(param2);
         }
      }
      
      public static function §_-0At§(param1:String, ... rest) : *
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
         §_-FK§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §_-XG§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §_-FK§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
