package §#;§
{
   import §2x§.§'!@§;
   import flash.external.ExternalInterface;
   
   public class §`!D§
   {
      
      public static var §]!<§:Boolean = true;
      
      private static var §=F§:Object = {};
       
      
      public function §`!D§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§=F§[param1])
            {
               §=F§[param1] = new §!O§(param1);
            }
            (§=F§[param1] as §!O§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §3E§(param1:String, param2:Function) : void
      {
         if(§=F§[param1])
         {
            (§=F§[param1] as §!O§).§3E§(param2);
         }
      }
      
      public static function §&j§(param1:String, ... rest) : *
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
         §'!@§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §]!<§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §'!@§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
