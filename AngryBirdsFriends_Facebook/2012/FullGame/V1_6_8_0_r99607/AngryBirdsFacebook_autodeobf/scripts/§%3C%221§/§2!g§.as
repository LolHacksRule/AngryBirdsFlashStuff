package §<"1§
{
   import §0!?§.§'!$§;
   import flash.external.ExternalInterface;
   
   public class §2!g§
   {
       
      
      public var §+!Q§:String = "";
      
      private var §+o§:Array = null;
      
      public function §2!g§(param1:String)
      {
         super();
         this.§+!Q§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§+!Q§,this.§4""§);
         }
      }
      
      public function §4""§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§+!Q§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §'!$§.log(_loc2_);
         if(this.§+o§ != null)
         {
            for each(_loc4_ in this.§+o§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§+o§ == null)
         {
            this.§+o§ = new Array();
         }
         this.§+o§.push(param1);
      }
      
      public function §-!N§(param1:Function) : void
      {
         if(this.§+o§ && this.§+o§.indexOf(param1) != -1)
         {
            this.§+o§.splice(this.§+o§.indexOf(param1),1);
         }
      }
   }
}
