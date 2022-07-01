package §8x§
{
   import §0!$§.§#!-§;
   import flash.external.ExternalInterface;
   
   public class §]"-§
   {
      
      public static var §-!W§:Boolean = true;
      
      private static var §?! §:Object = {};
       
      
      public function §]"-§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§?! §[param1])
            {
               §?! §[param1] = new §&!w§(param1);
            }
            (§?! §[param1] as §&!w§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §@!A§(param1:String, param2:Function) : void
      {
         var _loc3_:§&!w§ = §?! §[param1] as §&!w§;
         if(_loc3_)
         {
            _loc3_.§@!A§(param2);
            if(_loc3_.§!U§ == 0)
            {
               _loc3_.dispose();
               delete §?! §[param1];
            }
         }
      }
      
      public static function §6V§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         §#!-§.log("ExternalInterface call: " + call + "(" + params.join(", ") + ");");
         if(ExternalInterface.available && §-!W§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §#!-§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
