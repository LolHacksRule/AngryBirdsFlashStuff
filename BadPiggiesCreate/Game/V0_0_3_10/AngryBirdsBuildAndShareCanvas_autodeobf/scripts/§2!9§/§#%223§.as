package §2!9§
{
   import §9!G§.§]!e§;
   import flash.external.ExternalInterface;
   
   public class §#"3§
   {
      
      public static var §'"4§:Boolean = true;
      
      private static var §3!v§:Object = {};
       
      
      public function §#"3§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§3!v§[param1])
            {
               §3!v§[param1] = new §[-§(param1);
            }
            (§3!v§[param1] as §[-§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §&n§(param1:String, param2:Function) : void
      {
         if(§3!v§[param1])
         {
            (§3!v§[param1] as §[-§).§&n§(param2);
         }
      }
      
      public static function performCall(param1:String, ... rest) : *
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
         §]!e§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §'"4§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §]!e§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
