package §+"%§
{
   import §!x§.§4"d§;
   import flash.external.ExternalInterface;
   
   public class §6X§
   {
      
      public static var §""o§:Boolean = true;
      
      private static var §[#o§:Object = {};
       
      
      public function §6X§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§[#o§[param1])
            {
               §[#o§[param1] = new §&"A§(param1);
            }
            (§[#o§[param1] as §&"A§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §5!3§(param1:String, param2:Function) : void
      {
         var _loc3_:§&"A§ = §[#o§[param1] as §&"A§;
         if(_loc3_)
         {
            _loc3_.§5!3§(param2);
            if(_loc3_.§'#7§ == 0)
            {
               _loc3_.dispose();
               delete §[#o§[param1];
            }
         }
      }
      
      public static function §3U§(param1:String, ... rest) : *
      {
         var _loc5_:Boolean = false;
         true;
         var call:String = param1;
         var params:Array = rest;
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         §4"d§.log(logStr);
         if(ExternalInterface.available && §""o§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §§push(§4"d§);
               §§push("ExternalInterface call failed!\nCall was:");
               if(!_loc5_)
               {
                  §§push(§§pop() + call);
                  if(_loc5_ && param1)
                  {
                  }
               }
               §§goto(addr98);
            }
         }
         addr98:
         §§pop().log(§§pop() + e.toString());
      }
   }
}
