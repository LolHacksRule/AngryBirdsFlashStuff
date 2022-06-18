package §!x§
{
   import §-p§.§&2§;
   import flash.external.ExternalInterface;
   
   public class §!&§
   {
      
      public static var §=f§:Boolean = true;
      
      private static var §4F§:Object = {};
       
      
      public function §!&§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§4F§[param1])
            {
               §4F§[param1] = new § W§(param1);
            }
            (§4F§[param1] as § W§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §13§(param1:String, param2:Function) : void
      {
         if(§4F§[param1])
         {
            (§4F§[param1] as § W§).§13§(param2);
         }
      }
      
      public static function §5>§(param1:String, ... rest) : *
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
         §&2§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §=f§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §&2§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
