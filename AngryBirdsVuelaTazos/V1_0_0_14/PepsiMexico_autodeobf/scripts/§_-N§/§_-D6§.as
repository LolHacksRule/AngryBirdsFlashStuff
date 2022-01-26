package §_-N§
{
   import §_-Eo§.§_-R4§;
   import flash.external.ExternalInterface;
   
   public class §_-D6§
   {
      
      public static var §_-HW§:Boolean = true;
      
      private static var §_-mx§:Array = new Array();
       
      
      public function §_-D6§()
      {
         super();
      }
      
      public static function §_-ka§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-PL§ = null;
         if(ExternalInterface.available && §_-HW§)
         {
            if(§_-mx§ == null)
            {
               §_-mx§ = new Array();
            }
            _loc3_ = new §_-PL§(param1);
            _loc3_.addCallback(param2);
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc3_:§_-PL§ = null;
         if(§_-mx§ != null && §_-HW§)
         {
            for each(_loc3_ in §_-mx§)
            {
               if(_loc3_.§_-ig§ == param1)
               {
                  _loc3_.addCallback(param2);
                  return;
               }
            }
         }
      }
      
      public static function §_-J5§(param1:String, ... rest) : *
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
         §_-R4§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §_-HW§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §_-R4§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
