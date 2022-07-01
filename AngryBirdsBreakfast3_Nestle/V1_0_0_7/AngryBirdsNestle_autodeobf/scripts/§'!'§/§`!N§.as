package §'!'§
{
   import § !Q§.§"D§;
   import flash.external.ExternalInterface;
   
   public class §`!N§
   {
       
      
      public var §2=§:String = "";
      
      private var §0"4§:Array = null;
      
      public function §`!N§(param1:String)
      {
         super();
         this.§2=§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§2=§,this.§?h§);
         }
      }
      
      public function §?h§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§2=§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §"D§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§0"4§ != null)
         {
            for each(_loc5_ in this.§0"4§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§0"4§ == null)
         {
            this.§0"4§ = new Array();
         }
         if(this.§0"4§.indexOf(param1) == -1)
         {
            this.§0"4§.push(param1);
         }
      }
      
      public function §0x§(param1:Function) : void
      {
         if(this.§0"4§ && this.§0"4§.indexOf(param1) != -1)
         {
            this.§0"4§.splice(this.§0"4§.indexOf(param1),1);
         }
      }
      
      public function get §^!E§() : int
      {
         if(!this.§0"4§)
         {
            return 0;
         }
         return this.§0"4§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§2=§,null);
      }
   }
}
