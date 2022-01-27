package §<l§
{
   import §""<§.§#N§;
   import flash.external.ExternalInterface;
   
   public class §1?§
   {
       
      
      public var §^!"§:String = "";
      
      private var §?!"§:Array = null;
      
      public function §1?§(param1:String)
      {
         super();
         this.§^!"§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§^!"§,this.§9"6§);
         }
      }
      
      public function §9"6§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§^!"§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §#N§.log(_loc3_);
         var _loc2_:* = undefined;
         if(this.§?!"§ != null)
         {
            for each(_loc5_ in this.§?!"§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§?!"§ == null)
         {
            this.§?!"§ = new Array();
         }
         this.§?!"§.push(param1);
      }
      
      public function §-8§(param1:Function) : void
      {
         if(this.§?!"§ && this.§?!"§.indexOf(param1) != -1)
         {
            this.§?!"§.splice(this.§?!"§.indexOf(param1),1);
         }
      }
   }
}
