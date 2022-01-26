package §%!5§
{
   import §'D§.§8e§;
   import flash.external.ExternalInterface;
   
   public class §'c§
   {
       
      
      public var §2S§:String = "";
      
      private var §7$§:Array = null;
      
      public function §'c§(param1:String)
      {
         super();
         this.§2S§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§2S§,this.§]Q§);
         }
      }
      
      public function §]Q§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§2S§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §8e§.log(_loc2_);
         if(this.§7$§ != null)
         {
            for each(_loc4_ in this.§7$§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§7$§ == null)
         {
            this.§7$§ = new Array();
         }
         this.§7$§.push(param1);
      }
      
      public function §#"§(param1:Function) : void
      {
         if(this.§7$§ && this.§7$§.indexOf(param1) != -1)
         {
            this.§7$§.splice(this.§7$§.indexOf(param1),1);
         }
      }
   }
}
