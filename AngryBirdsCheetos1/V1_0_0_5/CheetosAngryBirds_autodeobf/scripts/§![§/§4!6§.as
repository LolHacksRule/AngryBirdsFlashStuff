package §![§
{
   import §&N§.§@,§;
   import flash.external.ExternalInterface;
   
   public class §4!6§
   {
      
      public static var §,Y§:Boolean = true;
      
      private static var §^!$§:Object = {};
       
      
      public function §4!6§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§^!$§[param1])
            {
               §^!$§[param1] = new §[[§(param1);
            }
            (§^!$§[param1] as §[[§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §@_§(param1:String, param2:Function) : void
      {
         if(§^!$§[param1])
         {
            (§^!$§[param1] as §[[§).§@_§(param2);
         }
      }
      
      public static function §]l§(param1:String, ... rest) : *
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
         §@,§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §,Y§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §@,§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
