package §_-3N§
{
   import §_-U0§.§_-tF§;
   import flash.external.ExternalInterface;
   
   public class §_-Dp§
   {
      
      public static var §_-OI§:Boolean = true;
      
      private static var §_-V1§:Object = {};
       
      
      public function §_-Dp§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§_-V1§[param1])
            {
               §_-V1§[param1] = new §_-3n§(param1);
            }
            (§_-V1§[param1] as §_-3n§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §_-Zc§(param1:String, param2:Function) : void
      {
         if(§_-V1§[param1])
         {
            (§_-V1§[param1] as §_-3n§).§_-Zc§(param2);
         }
      }
      
      public static function §_-JB§(param1:String, ... rest) : *
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
         §_-tF§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §_-OI§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §_-tF§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
