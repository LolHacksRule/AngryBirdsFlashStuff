package §import§
{
   import §7!P§.§-3§;
   import flash.external.ExternalInterface;
   
   public class §&^§
   {
      
      public static var §!!b§:Boolean = true;
      
      private static var §6Q§:Object = {};
       
      
      public function §&^§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§6Q§[param1])
            {
               §6Q§[param1] = new §]! §(param1);
            }
            (§6Q§[param1] as §]! §).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §#c§(param1:String, param2:Function) : void
      {
         if(§6Q§[param1])
         {
            (§6Q§[param1] as §]! §).§#c§(param2);
         }
      }
      
      public static function §4'§(param1:String, ... rest) : *
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
         §-3§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §!!b§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §-3§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
