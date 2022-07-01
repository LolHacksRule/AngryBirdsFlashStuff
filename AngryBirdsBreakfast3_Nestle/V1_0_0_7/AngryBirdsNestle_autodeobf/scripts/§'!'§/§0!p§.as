package §'!'§
{
   import § !Q§.§"D§;
   import flash.external.ExternalInterface;
   
   public class §0!p§
   {
      
      public static var §43§:Boolean = true;
      
      private static var §'V§:Object = {};
       
      
      public function §0!p§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§'V§[param1])
            {
               §'V§[param1] = new §`!N§(param1);
            }
            (§'V§[param1] as §`!N§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §0x§(param1:String, param2:Function) : void
      {
         var _loc3_:§`!N§ = §'V§[param1] as §`!N§;
         if(_loc3_)
         {
            _loc3_.§0x§(param2);
            if(_loc3_.§^!E§ == 0)
            {
               _loc3_.dispose();
               delete §'V§[param1];
            }
         }
      }
      
      public static function §`_§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         §"D§.log("ExternalInterface call: " + call + "(" + params.join(", ") + ");");
         if(ExternalInterface.available && §43§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §"D§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
