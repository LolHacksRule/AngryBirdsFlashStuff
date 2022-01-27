package §=!g§
{
   import §>^§.§!6§;
   import flash.external.ExternalInterface;
   
   public class §!!@§
   {
      
      public static var §[!>§:Boolean = true;
      
      private static var §2u§:Object = {};
       
      
      public function §!!@§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§2u§[param1])
            {
               §2u§[param1] = new §20§(param1);
            }
            (§2u§[param1] as §20§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §,2§(param1:String, param2:Function) : void
      {
         if(§2u§[param1])
         {
            (§2u§[param1] as §20§).§,2§(param2);
         }
      }
      
      public static function §%Q§(param1:String, ... rest) : *
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
         §!6§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §[!>§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §!6§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
