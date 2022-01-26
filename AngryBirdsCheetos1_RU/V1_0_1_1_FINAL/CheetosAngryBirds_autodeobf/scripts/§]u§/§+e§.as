package §]u§
{
   import § N§.§]M§;
   import flash.external.ExternalInterface;
   
   public class §+e§
   {
      
      public static var §0[§:Boolean = true;
      
      private static var §&!W§:Object = {};
       
      
      public function §+e§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§&!W§[param1])
            {
               §&!W§[param1] = new §]!V§(param1);
            }
            (§&!W§[param1] as §]!V§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §]!3§(param1:String, param2:Function) : void
      {
         if(§&!W§[param1])
         {
            (§&!W§[param1] as §]!V§).§]!3§(param2);
         }
      }
      
      public static function §5?§(param1:String, ... rest) : *
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
         §]M§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §0[§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §]M§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
