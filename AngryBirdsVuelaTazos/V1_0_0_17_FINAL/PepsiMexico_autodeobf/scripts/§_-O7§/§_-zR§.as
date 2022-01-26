package §_-O7§
{
   import §_-e3§.§_-54§;
   import flash.external.ExternalInterface;
   
   public class §_-zR§
   {
      
      public static var §_-lZ§:Boolean = true;
      
      private static var §_-k2§:Array = new Array();
       
      
      public function §_-zR§()
      {
         super();
      }
      
      public static function §_-HF§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-HB§ = null;
         if(ExternalInterface.available && §_-lZ§)
         {
            if(§_-k2§ == null)
            {
               §_-k2§ = new Array();
            }
            _loc3_ = new §_-HB§(param1);
            _loc3_.addCallback(param2);
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc3_:§_-HB§ = null;
         if(§_-k2§ != null && §_-lZ§)
         {
            for each(_loc3_ in §_-k2§)
            {
               if(_loc3_.§_-wA§ == param1)
               {
                  _loc3_.addCallback(param2);
                  return;
               }
            }
         }
      }
      
      public static function §_-6c§(param1:String, ... rest) : *
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
         §_-54§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §_-lZ§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §_-54§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
