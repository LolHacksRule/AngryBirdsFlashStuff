package §4!6§
{
   import §@,§.§4h§;
   import flash.external.ExternalInterface;
   
   public class §,Y§
   {
      
      public static var §^!$§:Boolean = true;
      
      private static var §]l§:Object = {};
       
      
      public function §,Y§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§]l§[param1])
            {
               §]l§[param1] = new §8`§(param1);
            }
            (§]l§[param1] as §8`§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §!9§(param1:String, param2:Function) : void
      {
         if(§]l§[param1])
         {
            (§]l§[param1] as §8`§).§!9§(param2);
         }
      }
      
      public static function §[[§(param1:String, ... rest) : *
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
         §4h§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §^!$§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §4h§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
