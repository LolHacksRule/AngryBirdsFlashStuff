package §_-g2§
{
   import §_-RG§.§_-HT§;
   import flash.external.ExternalInterface;
   
   public class §_-DR§
   {
      
      public static var §_-Ov§:Boolean = true;
      
      private static var §_-Xp§:Array = new Array();
       
      
      public function §_-DR§()
      {
         super();
      }
      
      public static function §_-LO§(param1:String, param2:Function) : void
      {
         var _loc3_:§_-Ub§ = null;
         if(ExternalInterface.available && §_-Ov§)
         {
            if(§_-Xp§ == null)
            {
               §_-Xp§ = new Array();
            }
            _loc3_ = new §_-Ub§(param1);
            _loc3_.addCallback(param2);
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc3_:§_-Ub§ = null;
         if(§_-Xp§ != null && §_-Ov§)
         {
            for each(_loc3_ in §_-Xp§)
            {
               if(_loc3_.§_-aS§ == param1)
               {
                  _loc3_.addCallback(param2);
                  return;
               }
            }
         }
      }
      
      public static function §_-Df§(param1:String, ... rest) : *
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
         §_-HT§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §_-Ov§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §_-HT§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
