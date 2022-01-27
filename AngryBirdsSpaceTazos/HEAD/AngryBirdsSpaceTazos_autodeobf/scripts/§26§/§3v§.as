package §26§
{
   import §`!w§.§^!$§;
   import flash.external.ExternalInterface;
   
   public class §3v§
   {
      
      public static var §#!v§:Boolean = true;
      
      private static var §;%§:Object = {};
       
      
      public function §3v§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§;%§[param1])
            {
               §;%§[param1] = new §&!v§(param1);
            }
            (§;%§[param1] as §&!v§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §8"3§(param1:String, param2:Function) : void
      {
         if(§;%§[param1])
         {
            (§;%§[param1] as §&!v§).§8"3§(param2);
         }
      }
      
      public static function §0!Z§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         §^!$§.log("ExternalInterface call: " + call + "(" + params.join(", ") + ");");
         if(ExternalInterface.available && §#!v§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §^!$§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
