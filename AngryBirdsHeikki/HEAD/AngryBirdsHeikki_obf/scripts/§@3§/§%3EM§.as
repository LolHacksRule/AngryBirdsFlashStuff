package §@3§
{
   import §&!b§.§ c§;
   import flash.external.ExternalInterface;
   
   public class §>M§
   {
      
      public static var §'!`§:Boolean = true;
      
      private static var §21§:Object = {};
       
      
      public function §>M§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§21§[param1])
            {
               §21§[param1] = new §7W§(param1);
            }
            (§21§[param1] as §7W§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §%!R§(param1:String, param2:Function) : void
      {
         if(§21§[param1])
         {
            (§21§[param1] as §7W§).§%!R§(param2);
         }
      }
      
      public static function §74§(param1:String, ... rest) : *
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
         § c§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §'!`§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               § c§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
