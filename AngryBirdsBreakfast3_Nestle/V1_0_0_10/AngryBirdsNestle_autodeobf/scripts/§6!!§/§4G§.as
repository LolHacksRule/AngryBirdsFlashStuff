package §6!!§
{
   import §8!$§.§?p§;
   import flash.external.ExternalInterface;
   
   public class §4G§
   {
      
      public static var §&!V§:Boolean = true;
      
      private static var §#!§:Object = {};
       
      
      public function §4G§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§#!§[param1])
            {
               §#!§[param1] = new § !§(param1);
            }
            (§#!§[param1] as § !§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §`!?§(param1:String, param2:Function) : void
      {
         var _loc3_:§ !§ = §#!§[param1] as § !§;
         if(_loc3_)
         {
            _loc3_.§`!?§(param2);
            if(_loc3_.§9&§ == 0)
            {
               _loc3_.dispose();
               delete §#!§[param1];
            }
         }
      }
      
      public static function §&!7§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §?p§.log(logStr);
         if(ExternalInterface.available && §&!V§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §?p§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
