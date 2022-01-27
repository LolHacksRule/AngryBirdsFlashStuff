package §4!Z§
{
   import §6!C§.§6E§;
   import flash.external.ExternalInterface;
   
   public class §^!Y§
   {
       
      
      public var §`"6§:String = "";
      
      private var §<![§:Array = null;
      
      public function §^!Y§(param1:String)
      {
         super();
         this.§`"6§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§`"6§,this.§ o§);
         }
      }
      
      public function § o§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§`"6§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §6E§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§<![§ != null)
         {
            for each(_loc5_ in this.§<![§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§<![§ == null)
         {
            this.§<![§ = new Array();
         }
         this.§<![§.push(param1);
      }
      
      public function §,!g§(param1:Function) : void
      {
         if(this.§<![§ && this.§<![§.indexOf(param1) != -1)
         {
            this.§<![§.splice(this.§<![§.indexOf(param1),1);
         }
      }
   }
}
