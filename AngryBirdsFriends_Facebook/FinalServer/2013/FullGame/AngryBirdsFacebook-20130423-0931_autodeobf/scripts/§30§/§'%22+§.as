package §30§
{
   import §+!c§.§;!=§;
   import flash.external.ExternalInterface;
   
   public class §'"+§
   {
      
      public static var §7!&§:Boolean = true;
      
      private static var §!u§:Object = {};
       
      
      public function §'"+§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§!u§[param1])
            {
               §!u§[param1] = new §8Z§(param1);
            }
            (§!u§[param1] as §8Z§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §"!6§(param1:String, param2:Function) : void
      {
         if(§!u§[param1])
         {
            (§!u§[param1] as §8Z§).§"!6§(param2);
         }
      }
      
      public static function §'!#§(param1:String, ... rest) : *
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
         §;!=§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §7!&§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §;!=§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
