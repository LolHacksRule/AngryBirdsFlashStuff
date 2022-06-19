package §_-Is§
{
   import §_-r6§.§_-Oy§;
   import flash.external.ExternalInterface;
   
   public class §_-3Q§
   {
      
      public static var §_-kZ§:Boolean = true;
      
      private static var §_-ro§:Object = {};
       
      
      public function §_-3Q§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§_-ro§[param1])
            {
               §_-ro§[param1] = new §_-kn§(param1);
            }
            (§_-ro§[param1] as §_-kn§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §_-Mf§(param1:String, param2:Function) : void
      {
         if(§_-ro§[param1])
         {
            (§_-ro§[param1] as §_-kn§).§_-Mf§(param2);
         }
      }
      
      public static function §_-st§(param1:String, ... rest) : *
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
         §_-Oy§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §_-kZ§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §_-Oy§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
