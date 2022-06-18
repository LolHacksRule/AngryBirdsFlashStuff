package §?!N§
{
   import §!4§.§=!Z§;
   import flash.external.ExternalInterface;
   
   public class §?!"§
   {
      
      public static var §9!"§:Boolean = true;
      
      private static var §`M§:Object = {};
       
      
      public function §?!"§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§`M§[param1])
            {
               §`M§[param1] = new §"!8§(param1);
            }
            (§`M§[param1] as §"!8§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §true§(param1:String, param2:Function) : void
      {
         if(§`M§[param1])
         {
            (§`M§[param1] as §"!8§).§true§(param2);
         }
      }
      
      public static function §7`§(param1:String, ... rest) : *
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
         §=!Z§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §9!"§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §=!Z§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
