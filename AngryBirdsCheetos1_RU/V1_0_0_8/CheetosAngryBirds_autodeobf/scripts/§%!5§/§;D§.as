package §%!5§
{
   import §'D§.§8e§;
   import flash.external.ExternalInterface;
   
   public class §;D§
   {
      
      public static var §[L§:Boolean = true;
      
      private static var §2'§:Object = {};
       
      
      public function §;D§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§2'§[param1])
            {
               §2'§[param1] = new §'c§(param1);
            }
            (§2'§[param1] as §'c§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §#"§(param1:String, param2:Function) : void
      {
         if(§2'§[param1])
         {
            (§2'§[param1] as §'c§).§#"§(param2);
         }
      }
      
      public static function §;!6§(param1:String, ... rest) : *
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
         §8e§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §[L§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §8e§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
