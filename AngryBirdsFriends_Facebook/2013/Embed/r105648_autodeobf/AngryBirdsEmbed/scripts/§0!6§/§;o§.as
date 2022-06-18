package §0!6§
{
   import §?!8§.§2>§;
   import flash.external.ExternalInterface;
   
   public class §;o§
   {
       
      
      public var §40§:String = "";
      
      private var §!L§:Array = null;
      
      public function §;o§(param1:String)
      {
         super();
         this.§40§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§40§,this.§7m§);
         }
      }
      
      public function §7m§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§40§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §2>§.log(_loc2_);
         if(this.§!L§ != null)
         {
            for each(_loc4_ in this.§!L§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§!L§ == null)
         {
            this.§!L§ = new Array();
         }
         this.§!L§.push(param1);
      }
      
      public function §8G§(param1:Function) : void
      {
         if(this.§!L§ && this.§!L§.indexOf(param1) != -1)
         {
            this.§!L§.splice(this.§!L§.indexOf(param1),1);
         }
      }
   }
}
