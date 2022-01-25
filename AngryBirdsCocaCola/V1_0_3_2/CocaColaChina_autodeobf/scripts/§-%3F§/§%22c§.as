package §-?§
{
   import §6!Q§.§7!7§;
   import flash.external.ExternalInterface;
   
   public class §"c§
   {
       
      
      public var §+!!§:String = "";
      
      private var §2q§:Array = null;
      
      public function §"c§(param1:String)
      {
         super();
         this.§+!!§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§+!!§,this.§`b§);
         }
      }
      
      public function §`b§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§+!!§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §7!7§.log(_loc2_);
         if(this.§2q§ != null)
         {
            for each(_loc4_ in this.§2q§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§2q§ == null)
         {
            this.§2q§ = new Array();
         }
         this.§2q§.push(param1);
      }
      
      public function §0C§(param1:Function) : void
      {
         if(this.§2q§ && this.§2q§.indexOf(param1) != -1)
         {
            this.§2q§.splice(this.§2q§.indexOf(param1),1);
         }
      }
   }
}
