package §]C§
{
   import §1#v§.§;!Y§;
   import flash.external.ExternalInterface;
   
   public class §<!X§
   {
       
      
      public var §0#n§:String = "";
      
      private var §0"y§:Array = null;
      
      public function §<!X§(param1:String)
      {
         super();
         this.§0#n§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§0#n§,this.§"#p§);
         }
      }
      
      public function §"#p§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§0#n§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §;!Y§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§0"y§ != null)
         {
            for each(_loc5_ in this.§0"y§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§0"y§ == null)
         {
            this.§0"y§ = new Array();
         }
         if(this.§0"y§.indexOf(param1) == -1)
         {
            this.§0"y§.push(param1);
         }
      }
      
      public function §?!§(param1:Function) : void
      {
         if(this.§0"y§ && this.§0"y§.indexOf(param1) != -1)
         {
            this.§0"y§.splice(this.§0"y§.indexOf(param1),1);
         }
      }
      
      public function get §[!J§() : int
      {
         if(!this.§0"y§)
         {
            return 0;
         }
         return this.§0"y§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§0#n§,null);
      }
   }
}
