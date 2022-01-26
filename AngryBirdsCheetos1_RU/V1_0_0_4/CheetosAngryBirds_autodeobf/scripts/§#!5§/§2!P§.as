package §#!5§
{
   import §^!&§.§;C§;
   import flash.external.ExternalInterface;
   
   public class §2!P§
   {
       
      
      public var §2>§:String = "";
      
      private var §4Z§:Array = null;
      
      public function §2!P§(param1:String)
      {
         super();
         this.§2>§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§2>§,this.§`!=§);
         }
      }
      
      public function §`!=§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§2>§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §;C§.log(_loc2_);
         if(this.§4Z§ != null)
         {
            for each(_loc4_ in this.§4Z§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§4Z§ == null)
         {
            this.§4Z§ = new Array();
         }
         this.§4Z§.push(param1);
      }
      
      public function §9!6§(param1:Function) : void
      {
         if(this.§4Z§ && this.§4Z§.indexOf(param1) != -1)
         {
            this.§4Z§.splice(this.§4Z§.indexOf(param1),1);
         }
      }
   }
}
