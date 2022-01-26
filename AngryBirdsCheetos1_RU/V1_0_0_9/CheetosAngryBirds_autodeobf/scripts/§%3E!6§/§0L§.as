package §>!6§
{
   import §-!6§.§>I§;
   import flash.external.ExternalInterface;
   
   public class §0L§
   {
      
      public static var §4!V§:Boolean = true;
      
      private static var §8L§:Object = {};
       
      
      public function §0L§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§8L§[param1])
            {
               §8L§[param1] = new §<m§(param1);
            }
            (§8L§[param1] as §<m§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §4!E§(param1:String, param2:Function) : void
      {
         if(§8L§[param1])
         {
            (§8L§[param1] as §<m§).§4!E§(param2);
         }
      }
      
      public static function §[!H§(param1:String, ... rest) : *
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
         §>I§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §4!V§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §>I§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
