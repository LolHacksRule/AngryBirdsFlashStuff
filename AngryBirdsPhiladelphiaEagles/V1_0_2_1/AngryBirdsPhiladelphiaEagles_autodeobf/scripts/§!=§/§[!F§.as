package §!=§
{
   import §@V§.§`!5§;
   import flash.external.ExternalInterface;
   
   public class §[!F§
   {
      
      public static var §>m§:Boolean = true;
      
      private static var §2"§:Object = {};
       
      
      public function §[!F§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§2"§[param1])
            {
               §2"§[param1] = new §+!K§(param1);
            }
            (§2"§[param1] as §+!K§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §6t§(param1:String, param2:Function) : void
      {
         if(§2"§[param1])
         {
            (§2"§[param1] as §+!K§).§6t§(param2);
         }
      }
      
      public static function §;!&§(param1:String, ... rest) : *
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
         §`!5§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §>m§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §`!5§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
