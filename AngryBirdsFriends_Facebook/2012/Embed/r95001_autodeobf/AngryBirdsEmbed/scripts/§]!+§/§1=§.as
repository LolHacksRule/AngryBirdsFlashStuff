package §]!+§
{
   import §9H§.§@M§;
   import flash.external.ExternalInterface;
   
   public class §1=§
   {
      
      public static var §7-§:Boolean = true;
      
      private static var §!9§:Object = {};
       
      
      public function §1=§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§!9§[param1])
            {
               §!9§[param1] = new §5b§(param1);
            }
            (§!9§[param1] as §5b§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §2v§(param1:String, param2:Function) : void
      {
         if(§!9§[param1])
         {
            (§!9§[param1] as §5b§).§2v§(param2);
         }
      }
      
      public static function §4I§(param1:String, ... rest) : *
      {
         var obj:Object = null;
         var call:String = param1;
         var params:Array = rest;
         var debugStr:String = call + "(";
         for each(obj in params)
         {
            if(obj)
            {
               debugStr += obj.toString() + ", ";
            }
            else
            {
               debugStr += "null" + ", ";
            }
         }
         debugStr += ");";
         §@M§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §7-§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §@M§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
