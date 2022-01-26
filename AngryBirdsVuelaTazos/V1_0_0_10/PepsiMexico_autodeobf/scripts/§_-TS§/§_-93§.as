package §_-TS§
{
   import §_-ot§.§_-o6§;
   import flash.external.ExternalInterface;
   
   public class §_-93§
   {
      
      public static var §_-FQ§:Boolean = true;
      
      private static var §_-bc§:Array = new Array();
       
      
      public function §_-93§()
      {
         super();
      }
      
      public static function §_-SR§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-F9§ = null;
         if(ExternalInterface.available && §_-FQ§)
         {
            if(§_-bc§ == null)
            {
               §_-bc§ = new Array();
            }
            _loc3_ = new §_-F9§(param1);
            _loc3_.addCallback(param2);
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc3_:§_-F9§ = null;
         if(§_-bc§ != null && §_-FQ§)
         {
            for each(_loc3_ in §_-bc§)
            {
               if(_loc3_.§_-j5§ == param1)
               {
                  _loc3_.addCallback(param2);
                  return;
               }
            }
         }
      }
      
      public static function §_-Dt§(param1:String, ... rest) : *
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
         §_-o6§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §_-FQ§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §_-o6§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
