package §5"Q§
{
   import §9"`§.§-"H§;
   import flash.external.ExternalInterface;
   
   public class §4!;§
   {
       
      
      public var §9"J§:String = "";
      
      private var §1=§:Array = null;
      
      public function §4!;§(param1:String)
      {
         super();
         this.§9"J§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§9"J§,this.§<"^§);
         }
      }
      
      public function §<"^§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§9"J§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §-"H§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§1=§ != null)
         {
            for each(_loc5_ in this.§1=§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§1=§ == null)
         {
            this.§1=§ = new Array();
         }
         if(this.§1=§.indexOf(param1) == -1)
         {
            this.§1=§.push(param1);
         }
      }
      
      public function §@"-§(param1:Function) : void
      {
         if(this.§1=§ && this.§1=§.indexOf(param1) != -1)
         {
            this.§1=§.splice(this.§1=§.indexOf(param1),1);
         }
      }
      
      public function get §1!3§() : int
      {
         if(!this.§1=§)
         {
            return 0;
         }
         return this.§1=§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§9"J§,null);
      }
   }
}
