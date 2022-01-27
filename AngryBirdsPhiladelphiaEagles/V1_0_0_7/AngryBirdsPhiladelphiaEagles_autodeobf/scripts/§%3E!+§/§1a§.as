package §>!+§
{
   import §!6§.§3!5§;
   import flash.external.ExternalInterface;
   
   public class §1a§
   {
       
      
      public var §0a§:String = "";
      
      private var §%%§:Array = null;
      
      public function §1a§(param1:String)
      {
         super();
         this.§0a§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§0a§,this.§,P§);
         }
      }
      
      public function §,P§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§0a§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §3!5§.log(_loc2_);
         if(this.§%%§ != null)
         {
            for each(_loc4_ in this.§%%§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§%%§ == null)
         {
            this.§%%§ = new Array();
         }
         this.§%%§.push(param1);
      }
      
      public function §3_§(param1:Function) : void
      {
         if(this.§%%§ && this.§%%§.indexOf(param1) != -1)
         {
            this.§%%§.splice(this.§%%§.indexOf(param1),1);
         }
      }
   }
}
