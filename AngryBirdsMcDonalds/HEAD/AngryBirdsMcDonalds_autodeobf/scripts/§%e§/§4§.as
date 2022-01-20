package §%e§
{
   import §'+§.§1u§;
   import flash.external.ExternalInterface;
   
   public class §4§
   {
      
      public static var §8!E§:Boolean = true;
      
      private static var §'&§:Object = {};
       
      
      public function §4§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§'&§[param1])
            {
               §'&§[param1] = new §`!3§(param1);
            }
            (§'&§[param1] as §`!3§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §"!a§(param1:String, param2:Function) : void
      {
         if(§'&§[param1])
         {
            (§'&§[param1] as §`!3§).§"!a§(param2);
         }
      }
      
      public static function §>A§(param1:String, ... rest) : *
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
         §1u§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §8!E§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §1u§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
