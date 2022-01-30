package §6<§
{
   import §"p§.§@8§;
   import flash.external.ExternalInterface;
   
   public class §&`§
   {
      
      public static var §5!I§:Boolean = true;
      
      private static var §-!=§:Object = {};
       
      
      public function §&`§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§-!=§[param1])
            {
               §-!=§[param1] = new § z§(param1);
            }
            (§-!=§[param1] as § z§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §`!6§(param1:String, param2:Function) : void
      {
         if(§-!=§[param1])
         {
            (§-!=§[param1] as § z§).§`!6§(param2);
         }
      }
      
      public static function performCall(param1:String, ... rest) : *
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
         §@8§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §5!I§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §@8§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
