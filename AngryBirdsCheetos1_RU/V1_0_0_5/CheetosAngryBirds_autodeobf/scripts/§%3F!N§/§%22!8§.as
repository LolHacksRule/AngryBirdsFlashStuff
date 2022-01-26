package §?!N§
{
   import §!4§.§=!Z§;
   import flash.external.ExternalInterface;
   
   public class §"!8§
   {
       
      
      public var §#E§:String = "";
      
      private var §3m§:Array = null;
      
      public function §"!8§(param1:String)
      {
         super();
         this.§#E§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§#E§,this.§#Z§);
         }
      }
      
      public function §#Z§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§#E§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §=!Z§.log(_loc2_);
         if(this.§3m§ != null)
         {
            for each(_loc4_ in this.§3m§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§3m§ == null)
         {
            this.§3m§ = new Array();
         }
         this.§3m§.push(param1);
      }
      
      public function §true§(param1:Function) : void
      {
         if(this.§3m§ && this.§3m§.indexOf(param1) != -1)
         {
            this.§3m§.splice(this.§3m§.indexOf(param1),1);
         }
      }
   }
}
