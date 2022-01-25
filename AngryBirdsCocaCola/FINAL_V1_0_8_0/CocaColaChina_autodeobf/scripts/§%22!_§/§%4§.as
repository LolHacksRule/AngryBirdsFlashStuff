package §"!_§
{
   import §^=§.§8!6§;
   import flash.external.ExternalInterface;
   
   public class §%4§
   {
      
      public static var §=v§:Boolean = true;
      
      private static var §,!T§:Object = {};
       
      
      public function §%4§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§,!T§[param1])
            {
               §,!T§[param1] = new §<!Q§(param1);
            }
            (§,!T§[param1] as §<!Q§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §1§(param1:String, param2:Function) : void
      {
         if(§,!T§[param1])
         {
            (§,!T§[param1] as §<!Q§).§1§(param2);
         }
      }
      
      public static function §5!3§(param1:String, ... rest) : *
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
         §8!6§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §=v§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §8!6§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
