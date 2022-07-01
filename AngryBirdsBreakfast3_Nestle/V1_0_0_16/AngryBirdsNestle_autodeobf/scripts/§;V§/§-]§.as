package §;V§
{
   import §24§.;
   import flash.external.ExternalInterface;
   
   public class §-]§
   {
       
      
      public var §with§:String = "";
      
      private var §`"6§:Array = null;
      
      public function §-]§(param1:String)
      {
         super();
         this.§with§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§with§,this.§-S§);
         }
      }
      
      public function §-S§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§with§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §#7§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§`"6§ != null)
         {
            for each(_loc5_ in this.§`"6§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§`"6§ == null)
         {
            this.§`"6§ = new Array();
         }
         if(this.§`"6§.indexOf(param1) == -1)
         {
            this.§`"6§.push(param1);
         }
      }
      
      public function §[u§(param1:Function) : void
      {
         if(this.§`"6§ && this.§`"6§.indexOf(param1) != -1)
         {
            this.§`"6§.splice(this.§`"6§.indexOf(param1),1);
         }
      }
      
      public function get §%!D§() : int
      {
         if(!this.§`"6§)
         {
            return 0;
         }
         return this.§`"6§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§with§,null);
      }
   }
}
