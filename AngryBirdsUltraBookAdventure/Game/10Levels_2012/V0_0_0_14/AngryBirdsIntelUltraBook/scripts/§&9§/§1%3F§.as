package §&9§
{
   import §6z§.§[g§;
   import flash.external.ExternalInterface;
   
   public class §1?§
   {
      
      public static var §<w§:Boolean = true;
      
      private static var §+W§:Object = {};
       
      
      public function §1?§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§+W§[param1])
            {
               §+W§[param1] = new §]?§(param1);
            }
            (§+W§[param1] as §]?§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §^!D§(param1:String, param2:Function) : void
      {
         if(§+W§[param1])
         {
            (§+W§[param1] as §]?§).§^!D§(param2);
         }
      }
      
      public static function §>!X§(param1:String, ... rest) : *
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
         §[g§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §<w§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §[g§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
