package §=!g§
{
   import §>^§.§!6§;
   import flash.external.ExternalInterface;
   
   public class §20§
   {
       
      
      public var §9$§:String = "";
      
      private var §'h§:Array = null;
      
      public function §20§(param1:String)
      {
         super();
         this.§9$§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§9$§,this.§-!@§);
         }
      }
      
      public function §-!@§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§9$§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §!6§.log(_loc2_);
         if(this.§'h§ != null)
         {
            for each(_loc4_ in this.§'h§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§'h§ == null)
         {
            this.§'h§ = new Array();
         }
         this.§'h§.push(param1);
      }
      
      public function §,2§(param1:Function) : void
      {
         if(this.§'h§ && this.§'h§.indexOf(param1) != -1)
         {
            this.§'h§.splice(this.§'h§.indexOf(param1),1);
         }
      }
   }
}
