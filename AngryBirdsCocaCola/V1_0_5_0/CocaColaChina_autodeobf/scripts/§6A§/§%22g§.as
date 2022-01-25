package §6A§
{
   import §<!!§.§-"§;
   import flash.external.ExternalInterface;
   
   public class §"g§
   {
      
      public static var §^`§:Boolean = true;
      
      private static var §1I§:Object = {};
       
      
      public function §"g§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§1I§[param1])
            {
               §1I§[param1] = new §1=§(param1);
            }
            (§1I§[param1] as §1=§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §8![§(param1:String, param2:Function) : void
      {
         if(§1I§[param1])
         {
            (§1I§[param1] as §1=§).§8![§(param2);
         }
      }
      
      public static function §`!@§(param1:String, ... rest) : *
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
         §-"§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §^`§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §-"§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
