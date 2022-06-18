package §import§
{
   import §7!P§.§-3§;
   import flash.external.ExternalInterface;
   
   public class §]! §
   {
       
      
      public var §'!8§:String = "";
      
      private var §=y§:Array = null;
      
      public function §]! §(param1:String)
      {
         super();
         this.§'!8§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§'!8§,this.§3x§);
         }
      }
      
      public function §3x§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§'!8§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §-3§.log(_loc2_);
         if(this.§=y§ != null)
         {
            for each(_loc4_ in this.§=y§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§=y§ == null)
         {
            this.§=y§ = new Array();
         }
         this.§=y§.push(param1);
      }
      
      public function §#c§(param1:Function) : void
      {
         if(this.§=y§ && this.§=y§.indexOf(param1) != -1)
         {
            this.§=y§.splice(this.§=y§.indexOf(param1),1);
         }
      }
   }
}
