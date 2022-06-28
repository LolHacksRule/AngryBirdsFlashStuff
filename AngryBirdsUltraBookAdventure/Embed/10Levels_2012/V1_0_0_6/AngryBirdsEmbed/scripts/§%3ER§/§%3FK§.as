package §>R§
{
   import §>K§.§9X§;
   import flash.external.ExternalInterface;
   
   public class §?K§
   {
      
      public static var §#!2§:Boolean = true;
      
      private static var §+3§:Object = {};
       
      
      public function §?K§()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!§+3§[param1])
            {
               §+3§[param1] = new §5§(param1);
            }
            (§+3§[param1] as §5§).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §"!!§(param1:String, param2:Function) : void
      {
         if(§+3§[param1])
         {
            (§+3§[param1] as §5§).§"!!§(param2);
         }
      }
      
      public static function §+v§(param1:String, ... rest) : *
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
         §9X§.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && §#!2§)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               §9X§.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
