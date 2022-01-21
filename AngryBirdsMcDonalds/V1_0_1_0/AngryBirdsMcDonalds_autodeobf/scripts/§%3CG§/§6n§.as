package §<G§
{
   import §`!W§.§2v§;
   import flash.external.ExternalInterface;
   
   public class §6n§
   {
      
      public static var §#n§:Boolean = true;
      
      private static var §"o§:Object = {};
       
      
      public function §6n§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§"o§[param1])
            {
               §"o§[param1] = new §-B§(param1);
            }
            (§"o§[param1] as §-B§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §<X§(param1:String, param2:Function) : void
      {
         if(§"o§[param1])
         {
            (§"o§[param1] as §-B§).§<X§(param2);
         }
      }
      
      public static function §+Z§(param1:String, ... rest) : *
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
         §2v§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §#n§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §2v§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
