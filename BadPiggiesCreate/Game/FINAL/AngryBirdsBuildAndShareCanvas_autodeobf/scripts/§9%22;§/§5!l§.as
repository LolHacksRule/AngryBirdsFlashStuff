package §9";§
{
   import §=!M§.§9!P§;
   import flash.external.ExternalInterface;
   
   public class §5!l§
   {
       
      
      public var §&?§:String = "";
      
      private var §]"4§:Array = null;
      
      public function §5!l§(param1:String)
      {
         super();
         this.§&?§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§&?§,this.§2!S§);
         }
      }
      
      public function §2!S§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§&?§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §9!P§.log(_loc2_);
         if(this.§]"4§ != null)
         {
            for each(_loc4_ in this.§]"4§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§]"4§ == null)
         {
            this.§]"4§ = new Array();
         }
         this.§]"4§.push(param1);
      }
      
      public function §^D§(param1:Function) : void
      {
         if(this.§]"4§ && this.§]"4§.indexOf(param1) != -1)
         {
            this.§]"4§.splice(this.§]"4§.indexOf(param1),1);
         }
      }
   }
}
