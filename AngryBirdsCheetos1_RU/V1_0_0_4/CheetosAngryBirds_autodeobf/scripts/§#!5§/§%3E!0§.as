package §#!5§
{
   import §^!&§.§;C§;
   import flash.external.ExternalInterface;
   
   public class §>!0§
   {
      
      public static var §!!Y§:Boolean = true;
      
      private static var §@0§:Object = {};
       
      
      public function §>!0§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§@0§[param1])
            {
               §@0§[param1] = new §2!P§(param1);
            }
            (§@0§[param1] as §2!P§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §9!6§(param1:String, param2:Function) : void
      {
         if(§@0§[param1])
         {
            (§@0§[param1] as §2!P§).§9!6§(param2);
         }
      }
      
      public static function §7!I§(param1:String, ... rest) : *
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
         §;C§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §!!Y§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §;C§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
