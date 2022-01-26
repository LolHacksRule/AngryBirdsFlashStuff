package §!!>§
{
   import §'m§.§^S§;
   import flash.external.ExternalInterface;
   
   public class §=-§
   {
      
      public static var §<A§:Boolean = true;
      
      private static var §3!1§:Object = {};
       
      
      public function §=-§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§3!1§[param1])
            {
               §3!1§[param1] = new §5g§(param1);
            }
            (§3!1§[param1] as §5g§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §@,§(param1:String, param2:Function) : void
      {
         if(§3!1§[param1])
         {
            (§3!1§[param1] as §5g§).§@,§(param2);
         }
      }
      
      public static function §@1§(param1:String, ... rest) : *
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
         §^S§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §<A§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §^S§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
