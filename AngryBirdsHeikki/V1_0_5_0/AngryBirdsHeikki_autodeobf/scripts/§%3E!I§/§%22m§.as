package §>!I§
{
   import §1!K§.§>!<§;
   import flash.external.ExternalInterface;
   
   public class §"m§
   {
       
      
      public var §`"§:String = "";
      
      private var §%!Y§:Array = null;
      
      public function §"m§(param1:String)
      {
         super();
         this.§`"§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§`"§,this.§4!O§);
         }
      }
      
      public function §4!O§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§`"§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §>!<§.log(_loc2_);
         if(this.§%!Y§ != null)
         {
            for each(_loc4_ in this.§%!Y§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§%!Y§ == null)
         {
            this.§%!Y§ = new Array();
         }
         this.§%!Y§.push(param1);
      }
      
      public function §=C§(param1:Function) : void
      {
         if(this.§%!Y§ && this.§%!Y§.indexOf(param1) != -1)
         {
            this.§%!Y§.splice(this.§%!Y§.indexOf(param1),1);
         }
      }
   }
}
