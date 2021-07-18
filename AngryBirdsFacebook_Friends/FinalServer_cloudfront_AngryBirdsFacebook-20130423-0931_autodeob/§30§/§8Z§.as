package §30§
{
   import §+!c§.§;!=§;
   import flash.external.ExternalInterface;
   
   public class §8Z§
   {
       
      
      public var §66§:String = "";
      
      private var §&!T§:Array = null;
      
      public function §8Z§(param1:String)
      {
         super();
         this.§66§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§66§,this.§<"X§);
         }
      }
      
      public function §<"X§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§66§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §;!=§.log(_loc2_);
         if(this.§&!T§ != null)
         {
            for each(_loc4_ in this.§&!T§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§&!T§ == null)
         {
            this.§&!T§ = new Array();
         }
         this.§&!T§.push(param1);
      }
      
      public function §"!6§(param1:Function) : void
      {
         if(this.§&!T§ && this.§&!T§.indexOf(param1) != -1)
         {
            this.§&!T§.splice(this.§&!T§.indexOf(param1),1);
         }
      }
   }
}
