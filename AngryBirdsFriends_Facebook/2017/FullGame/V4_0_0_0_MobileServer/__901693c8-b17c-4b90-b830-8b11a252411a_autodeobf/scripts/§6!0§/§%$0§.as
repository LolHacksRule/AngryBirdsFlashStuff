package §6!0§
{
   import §<"p§.§?!T§;
   import flash.external.ExternalInterface;
   
   public class §%$0§
   {
       
      
      public var §@$1§:String = "";
      
      private var §8i§:Array = null;
      
      public function §%$0§(param1:String)
      {
         super();
         this.§@$1§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§@$1§,this.§##K§);
         }
      }
      
      public function §##K§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§@$1§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §?!T§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§8i§ != null)
         {
            for each(_loc5_ in this.§8i§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§8i§ == null)
         {
            this.§8i§ = new Array();
         }
         if(this.§8i§.indexOf(param1) == -1)
         {
            this.§8i§.push(param1);
         }
      }
      
      public function §+#R§(param1:Function) : void
      {
         if(this.§8i§ && this.§8i§.indexOf(param1) != -1)
         {
            this.§8i§.splice(this.§8i§.indexOf(param1),1);
         }
      }
      
      public function get §&#m§() : int
      {
         if(!this.§8i§)
         {
            return 0;
         }
         return this.§8i§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§@$1§,null);
      }
   }
}
