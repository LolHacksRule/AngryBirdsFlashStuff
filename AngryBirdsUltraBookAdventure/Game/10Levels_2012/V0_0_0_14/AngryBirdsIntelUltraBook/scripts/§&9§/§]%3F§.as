package §&9§
{
   import §6z§.§[g§;
   import flash.external.ExternalInterface;
   
   public class §]?§
   {
       
      
      public var §@!r§:String = "";
      
      private var §&T§:Array = null;
      
      public function §]?§(param1:String)
      {
         super();
         this.§@!r§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§@!r§,this.§+!M§);
         }
      }
      
      public function §+!M§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§@!r§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §[g§.log(_loc2_);
         if(this.§&T§ != null)
         {
            for each(_loc4_ in this.§&T§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§&T§ == null)
         {
            this.§&T§ = new Array();
         }
         this.§&T§.push(param1);
      }
      
      public function §^!D§(param1:Function) : void
      {
         if(this.§&T§ && this.§&T§.indexOf(param1) != -1)
         {
            this.§&T§.splice(this.§&T§.indexOf(param1),1);
         }
      }
   }
}
