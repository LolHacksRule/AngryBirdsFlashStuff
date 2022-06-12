package §]!h§
{
   import §4u§.§<!L§;
   import flash.external.ExternalInterface;
   
   public class §[!l§
   {
       
      
      public var § m§:String = "";
      
      private var §@D§:Array = null;
      
      public function §[!l§(param1:String)
      {
         super();
         this.§ m§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§ m§,this.§%]§);
         }
      }
      
      public function §%]§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§ m§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §<!L§.log(_loc2_);
         if(this.§@D§ != null)
         {
            for each(_loc4_ in this.§@D§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§@D§ == null)
         {
            this.§@D§ = new Array();
         }
         this.§@D§.push(param1);
      }
      
      public function §3!z§(param1:Function) : void
      {
         if(this.§@D§ && this.§@D§.indexOf(param1) != -1)
         {
            this.§@D§.splice(this.§@D§.indexOf(param1),1);
         }
      }
   }
}
