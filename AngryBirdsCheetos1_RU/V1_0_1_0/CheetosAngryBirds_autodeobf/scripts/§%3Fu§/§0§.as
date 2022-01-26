package §?u§
{
   import §%t§.§@!%§;
   import flash.external.ExternalInterface;
   
   public class §0§
   {
       
      
      public var §#!O§:String = "";
      
      private var §7!7§:Array = null;
      
      public function §0§(param1:String)
      {
         super();
         this.§#!O§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§#!O§,this.§?0§);
         }
      }
      
      public function §?0§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§#!O§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §@!%§.log(_loc2_);
         if(this.§7!7§ != null)
         {
            for each(_loc4_ in this.§7!7§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§7!7§ == null)
         {
            this.§7!7§ = new Array();
         }
         this.§7!7§.push(param1);
      }
      
      public function §&&§(param1:Function) : void
      {
         if(this.§7!7§ && this.§7!7§.indexOf(param1) != -1)
         {
            this.§7!7§.splice(this.§7!7§.indexOf(param1),1);
         }
      }
   }
}
