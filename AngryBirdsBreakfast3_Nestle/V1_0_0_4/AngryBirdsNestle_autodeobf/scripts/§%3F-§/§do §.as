package §?-§
{
   import §"I§.§=!U§;
   import flash.external.ExternalInterface;
   
   public class §do §
   {
      
      public static var §"!#§:Boolean = true;
      
      private static var § !-§:Object = {};
       
      
      public function §do §()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§ !-§[param1])
            {
               § !-§[param1] = new §6!V§(param1);
            }
            (§ !-§[param1] as §6!V§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §5J§(param1:String, param2:Function) : void
      {
         var _loc3_:§6!V§ = § !-§[param1] as §6!V§;
         if(_loc3_)
         {
            _loc3_.§5J§(param2);
            if(_loc3_.§9!P§ == 0)
            {
               _loc3_.dispose();
               delete § !-§[param1];
            }
         }
      }
      
      public static function §>"-§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         §=!U§.log("ExternalInterface call: " + call + "(" + params.join(", ") + ");");
         if(ExternalInterface.available && §"!#§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §=!U§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
