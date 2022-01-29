package §%!x§
{
   import §]!6§.§6Y§;
   import flash.external.ExternalInterface;
   
   public class §^!K§
   {
      
      public static var §7$8§:Boolean = true;
      
      private static var § "h§:Object = {};
       
      
      public function §^!K§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§ "h§[param1])
            {
               § "h§[param1] = new §6g§(param1);
            }
            (§ "h§[param1] as §6g§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §,"i§(param1:String, param2:Function) : void
      {
         var _loc3_:§6g§ = § "h§[param1] as §6g§;
         if(_loc3_)
         {
            _loc3_.§,"i§(param2);
            if(_loc3_.§1#V§ == 0)
            {
               _loc3_.dispose();
               delete § "h§[param1];
            }
         }
      }
      
      public static function §+"D§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §6Y§.log(logStr);
         if(ExternalInterface.available && §7$8§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §6Y§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
