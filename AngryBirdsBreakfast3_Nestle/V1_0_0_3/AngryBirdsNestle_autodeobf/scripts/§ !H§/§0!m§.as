package § !H§
{
   import §=!7§.§1!7§;
   import flash.external.ExternalInterface;
   
   public class §0!m§
   {
      
      public static var §@! §:Boolean = true;
      
      private static var §'!+§:Object = {};
       
      
      public function §0!m§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§'!+§[param1])
            {
               §'!+§[param1] = new §!o§(param1);
            }
            (§'!+§[param1] as §!o§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §4n§(param1:String, param2:Function) : void
      {
         var _loc3_:§!o§ = §'!+§[param1] as §!o§;
         if(_loc3_)
         {
            _loc3_.§4n§(param2);
            if(_loc3_.§#K§ == 0)
            {
               _loc3_.dispose();
               delete §'!+§[param1];
            }
         }
      }
      
      public static function §<Q§(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
         §1!7§.log("ExternalInterface call: " + call + "(" + params.join(", ") + ");");
         if(ExternalInterface.available && §@! §)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §1!7§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
