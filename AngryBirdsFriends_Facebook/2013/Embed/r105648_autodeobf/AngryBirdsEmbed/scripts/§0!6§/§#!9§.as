package §0!6§
{
   import §?!8§.§2>§;
   import flash.external.ExternalInterface;
   
   public class §#!9§
   {
      
      public static var §?R§:Boolean = true;
      
      private static var §&z§:Object = {};
       
      
      public function §#!9§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§&z§[param1])
            {
               §&z§[param1] = new §;o§(param1);
            }
            (§&z§[param1] as §;o§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §8G§(param1:String, param2:Function) : void
      {
         if(§&z§[param1])
         {
            (§&z§[param1] as §;o§).§8G§(param2);
         }
      }
      
      public static function §-! §(param1:String, ... rest) : *
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
         §2>§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §?R§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §2>§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
