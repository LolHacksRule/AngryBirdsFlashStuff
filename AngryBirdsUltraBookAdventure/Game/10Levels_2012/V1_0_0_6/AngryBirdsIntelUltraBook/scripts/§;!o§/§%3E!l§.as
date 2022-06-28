package §;!o§
{
   import §"x§.§-8§;
   import flash.external.ExternalInterface;
   
   public class §>!l§
   {
      
      public static var §@!3§:Boolean = true;
      
      private static var §`q§:Object = {};
       
      
      public function §>!l§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§`q§[param1])
            {
               §`q§[param1] = new §9l§(param1);
            }
            (§`q§[param1] as §9l§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §&!0§(param1:String, param2:Function) : void
      {
         if(§`q§[param1])
         {
            (§`q§[param1] as §9l§).§&!0§(param2);
         }
      }
      
      public static function § a§(param1:String, ... rest) : *
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
         §-8§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §@!3§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §-8§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
