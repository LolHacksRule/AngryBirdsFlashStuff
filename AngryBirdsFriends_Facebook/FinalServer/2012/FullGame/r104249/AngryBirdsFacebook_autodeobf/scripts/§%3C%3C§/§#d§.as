package §<<§
{
   import §[x§.§%3§;
   import flash.external.ExternalInterface;
   
   public class §#d§
   {
       
      
      public var §,!l§:String = "";
      
      private var §2!J§:Array = null;
      
      public function §#d§(param1:String)
      {
         super();
         this.§,!l§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§,!l§,this.§,I§);
         }
      }
      
      public function §,I§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§,!l§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §%3§.log(_loc2_);
         if(this.§2!J§ != null)
         {
            for each(_loc4_ in this.§2!J§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§2!J§ == null)
         {
            this.§2!J§ = new Array();
         }
         this.§2!J§.push(param1);
      }
      
      public function §>7§(param1:Function) : void
      {
         if(this.§2!J§ && this.§2!J§.indexOf(param1) != -1)
         {
            this.§2!J§.splice(this.§2!J§.indexOf(param1),1);
         }
      }
   }
}
