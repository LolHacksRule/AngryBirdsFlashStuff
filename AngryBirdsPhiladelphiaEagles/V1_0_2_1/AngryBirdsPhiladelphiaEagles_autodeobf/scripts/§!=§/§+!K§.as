package §!=§
{
   import §@V§.§`!5§;
   import flash.external.ExternalInterface;
   
   public class §+!K§
   {
       
      
      public var §1d§:String = "";
      
      private var §^!C§:Array = null;
      
      public function §+!K§(param1:String)
      {
         super();
         this.§1d§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§1d§,this.§%M§);
         }
      }
      
      public function §%M§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§1d§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §`!5§.log(_loc2_);
         if(this.§^!C§ != null)
         {
            for each(_loc4_ in this.§^!C§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§^!C§ == null)
         {
            this.§^!C§ = new Array();
         }
         this.§^!C§.push(param1);
      }
      
      public function §6t§(param1:Function) : void
      {
         if(this.§^!C§ && this.§^!C§.indexOf(param1) != -1)
         {
            this.§^!C§.splice(this.§^!C§.indexOf(param1),1);
         }
      }
   }
}
