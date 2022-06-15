package §#$?§
{
   import §6"p§.§^"t§;
   import flash.external.ExternalInterface;
   
   public class §9"X§
   {
       
      
      public var §?"b§:String = "";
      
      private var §3#C§:Array = null;
      
      public function §9"X§(param1:String)
      {
         super();
         this.§?"b§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§?"b§,this.§<#0§);
         }
      }
      
      public function §<#0§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§?"b§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §^"t§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§3#C§ != null)
         {
            for each(_loc5_ in this.§3#C§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§3#C§ == null)
         {
            this.§3#C§ = new Array();
         }
         if(this.§3#C§.indexOf(param1) == -1)
         {
            this.§3#C§.push(param1);
         }
      }
      
      public function §&#&§(param1:Function) : void
      {
         if(this.§3#C§ && this.§3#C§.indexOf(param1) != -1)
         {
            this.§3#C§.splice(this.§3#C§.indexOf(param1),1);
         }
      }
      
      public function get §[A§() : int
      {
         if(!this.§3#C§)
         {
            return 0;
         }
         return this.§3#C§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§?"b§,null);
      }
   }
}
