package §8T§
{
   import §'!G§.§1C§;
   import flash.external.ExternalInterface;
   
   public class §#z§
   {
       
      
      public var § !G§:String = "";
      
      private var §'_§:Array = null;
      
      public function §#z§(param1:String)
      {
         super();
         this.§ !G§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§ !G§,this.§!F§);
         }
      }
      
      public function §!F§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§ !G§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §1C§.log(_loc2_);
         if(this.§'_§ != null)
         {
            for each(_loc4_ in this.§'_§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§'_§ == null)
         {
            this.§'_§ = new Array();
         }
         this.§'_§.push(param1);
      }
      
      public function §'!F§(param1:Function) : void
      {
         if(this.§'_§ && this.§'_§.indexOf(param1) != -1)
         {
            this.§'_§.splice(this.§'_§.indexOf(param1),1);
         }
      }
   }
}
