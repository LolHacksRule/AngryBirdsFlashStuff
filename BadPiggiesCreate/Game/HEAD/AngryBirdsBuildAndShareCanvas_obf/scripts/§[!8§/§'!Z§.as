package §[!8§
{
   import §6]§.§,"0§;
   import flash.external.ExternalInterface;
   
   public class §'!Z§
   {
       
      
      public var §="$§:String = "";
      
      private var §2C§:Array = null;
      
      public function §'!Z§(param1:String)
      {
         super();
         this.§="$§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§="$§,this.§&"§);
         }
      }
      
      public function §&"§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§="$§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §,"0§.log(_loc2_);
         if(this.§2C§ != null)
         {
            for each(_loc4_ in this.§2C§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§2C§ == null)
         {
            this.§2C§ = new Array();
         }
         this.§2C§.push(param1);
      }
      
      public function §#"%§(param1:Function) : void
      {
         if(this.§2C§ && this.§2C§.indexOf(param1) != -1)
         {
            this.§2C§.splice(this.§2C§.indexOf(param1),1);
         }
      }
   }
}
