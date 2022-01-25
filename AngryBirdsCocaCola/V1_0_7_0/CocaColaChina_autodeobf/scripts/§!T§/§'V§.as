package §!T§
{
   import §?@§.§"]§;
   import flash.external.ExternalInterface;
   
   public class §'V§
   {
      
      public static var §4%§:Boolean = true;
      
      private static var §true §:Object = {};
       
      
      public function §'V§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§true §[param1])
            {
               §true §[param1] = new §5X§(param1);
            }
            (§true §[param1] as §5X§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function § !5§(param1:String, param2:Function) : void
      {
         if(§true §[param1])
         {
            (§true §[param1] as §5X§).§ !5§(param2);
         }
      }
      
      public static function §@!c§(param1:String, ... rest) : *
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
         §"]§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §4%§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §"]§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
