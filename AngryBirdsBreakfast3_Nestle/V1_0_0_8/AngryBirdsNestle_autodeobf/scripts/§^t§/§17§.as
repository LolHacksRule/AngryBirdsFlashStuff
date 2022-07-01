package §^t§
{
   import §;4§.§]!%§;
   import flash.external.ExternalInterface;
   
   public class §17§
   {
       
      
      public var §+!>§:String = "";
      
      private var §'!z§:Array = null;
      
      public function §17§(param1:String)
      {
         super();
         this.§+!>§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§+!>§,this.§]k§);
         }
      }
      
      public function §]k§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§+!>§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §]!%§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§'!z§ != null)
         {
            for each(_loc5_ in this.§'!z§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§'!z§ == null)
         {
            this.§'!z§ = new Array();
         }
         if(this.§'!z§.indexOf(param1) == -1)
         {
            this.§'!z§.push(param1);
         }
      }
      
      public function §!M§(param1:Function) : void
      {
         if(this.§'!z§ && this.§'!z§.indexOf(param1) != -1)
         {
            this.§'!z§.splice(this.§'!z§.indexOf(param1),1);
         }
      }
      
      public function get §5!s§() : int
      {
         if(!this.§'!z§)
         {
            return 0;
         }
         return this.§'!z§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§+!>§,null);
      }
   }
}
