package §_-QN§
{
   import §_-ZG§.§_-Ne§;
   import flash.external.ExternalInterface;
   
   public class §_-7D§
   {
      
      public static var §_-6§:Boolean = true;
      
      private static var §_-OA§:Array = new Array();
       
      
      public function §_-7D§()
      {
         super();
      }
      
      public static function §_-Ht§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-WU§ = null;
         if(ExternalInterface.available && §_-6§)
         {
            if(§_-OA§ == null)
            {
               §_-OA§ = new Array();
            }
            _loc3_ = new §_-WU§(param1);
            _loc3_.addCallback(param2);
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc3_:§_-WU§ = null;
         if(§_-OA§ != null && §_-6§)
         {
            for each(_loc3_ in §_-OA§)
            {
               if(_loc3_.§_-Ph§ == param1)
               {
                  _loc3_.addCallback(param2);
                  return;
               }
            }
         }
      }
      
      public static function §_-fx§(param1:String, ... rest) : *
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
         §_-Ne§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §_-6§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §_-Ne§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
