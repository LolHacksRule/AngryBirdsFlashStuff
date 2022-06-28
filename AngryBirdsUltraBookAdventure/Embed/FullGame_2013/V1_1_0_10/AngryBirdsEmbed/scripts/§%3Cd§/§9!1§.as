package §<d§
{
   import §3a§.§7!+§;
   import flash.external.ExternalInterface;
   
   public class §9!1§
   {
      
      public static var §0m§:Boolean = true;
      
      private static var §`=§:Object = {};
       
      
      public function §9!1§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§`=§[param1])
            {
               §`=§[param1] = new §68§(param1);
            }
            (§`=§[param1] as §68§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §@u§(param1:String, param2:Function) : void
      {
         if(§`=§[param1])
         {
            (§`=§[param1] as §68§).§@u§(param2);
         }
      }
      
      public static function §!!I§(param1:String, ... rest) : *
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
         §7!+§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §0m§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §7!+§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
