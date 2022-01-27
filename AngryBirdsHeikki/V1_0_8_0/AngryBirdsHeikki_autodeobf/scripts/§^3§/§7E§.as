package §^3§
{
   import § !3§.§!X§;
   import flash.external.ExternalInterface;
   
   public class §7E§
   {
       
      
      public var §-4§:String = "";
      
      private var §3&§:Array = null;
      
      public function §7E§(param1:String)
      {
         super();
         this.§-4§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§-4§,this.§!!E§);
         }
      }
      
      public function §!!E§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§-4§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §!X§.log(_loc2_);
         if(this.§3&§ != null)
         {
            for each(_loc4_ in this.§3&§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§3&§ == null)
         {
            this.§3&§ = new Array();
         }
         this.§3&§.push(param1);
      }
      
      public function §5!"§(param1:Function) : void
      {
         if(this.§3&§ && this.§3&§.indexOf(param1) != -1)
         {
            this.§3&§.splice(this.§3&§.indexOf(param1),1);
         }
      }
   }
}
