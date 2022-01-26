package §_-rz§
{
   import §_-ex§.§_-mR§;
   import flash.external.ExternalInterface;
   
   public class §_-KN§
   {
      
      public static var §_-la§:Boolean = true;
      
      private static var §_-0-§:Array = new Array();
       
      
      public function §_-KN§()
      {
         super();
      }
      
      public static function §_-ez§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-lY§ = null;
         if(ExternalInterface.available && §_-la§)
         {
            if(§_-0-§ == null)
            {
               §_-0-§ = new Array();
            }
            _loc3_ = new §_-lY§(param1);
            _loc3_.addCallback(param2);
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc3_:§_-lY§ = null;
         if(§_-0-§ != null && §_-la§)
         {
            for each(_loc3_ in §_-0-§)
            {
               if(_loc3_.§_-PI§ == param1)
               {
                  _loc3_.addCallback(param2);
                  return;
               }
            }
         }
      }
      
      public static function §_-Th§(param1:String, ... rest) : *
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
         §_-mR§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §_-la§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §_-mR§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
