package §4!Z§
{
   import §6!C§.§6E§;
   import flash.external.ExternalInterface;
   
   public class §%^§
   {
      
      public static var §8x§:Boolean = true;
      
      private static var §0e§:Object = {};
       
      
      public function §%^§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§0e§[param1])
            {
               §0e§[param1] = new §^!Y§(param1);
            }
            (§0e§[param1] as §^!Y§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §,!g§(param1:String, param2:Function) : void
      {
         if(§0e§[param1])
         {
            (§0e§[param1] as §^!Y§).§,!g§(param2);
         }
      }
      
      public static function §]"3§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         §6E§.log("ExternalInterface call: " + call + "(" + params.join(", ") + ");");
         if(ExternalInterface.available && §8x§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §6E§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
