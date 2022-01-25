package §6!!§
{
   import §8!$§.§?p§;
   import flash.external.ExternalInterface;
   
   public class § !§
   {
       
      
      public var §[L§:String = "";
      
      private var §!B§:Array = null;
      
      public function § !§(param1:String)
      {
         super();
         this.§[L§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§[L§,this.§>!m§);
         }
      }
      
      public function §>!m§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§[L§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §?p§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§!B§ != null)
         {
            for each(_loc5_ in this.§!B§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§!B§ == null)
         {
            this.§!B§ = new Array();
         }
         if(this.§!B§.indexOf(param1) == -1)
         {
            this.§!B§.push(param1);
         }
      }
      
      public function §`!?§(param1:Function) : void
      {
         if(this.§!B§ && this.§!B§.indexOf(param1) != -1)
         {
            this.§!B§.splice(this.§!B§.indexOf(param1),1);
         }
      }
      
      public function get §9&§() : int
      {
         if(!this.§!B§)
         {
            return 0;
         }
         return this.§!B§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§[L§,null);
      }
   }
}
