package §]!4§
{
   import §#"3§.§4!h§;
   import flash.external.ExternalInterface;
   
   public class §%D§
   {
       
      
      public var §3#w§:String = "";
      
      private var §?!9§:Array = null;
      
      public function §%D§(param1:String)
      {
         super();
         this.§3#w§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§3#w§,this.§^#u§);
         }
      }
      
      public function §^#u§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         _loc3_ = "call through externalInterface! " + this.§3#w§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §4!h§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§?!9§ != null)
         {
            var _loc6_:int = 0;
            var _loc7_:* = this.§?!9§;
            while(§§hasnext(_loc7_,_loc6_))
            {
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§?!9§ == null)
         {
            this.§?!9§ = new Array();
         }
         if(this.§?!9§.indexOf(param1) == -1)
         {
            this.§?!9§.push(param1);
         }
      }
      
      public function §`$ §(param1:Function) : void
      {
         if(this.§?!9§ && this.§?!9§.indexOf(param1) != -1)
         {
            this.§?!9§.splice(this.§?!9§.indexOf(param1),1);
         }
      }
      
      public function get §%#X§() : int
      {
         if(!this.§?!9§)
         {
            return 0;
         }
         return this.§?!9§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§3#w§,null);
      }
   }
}
