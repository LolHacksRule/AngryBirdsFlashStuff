package §"!_§
{
   import §^=§.§8!6§;
   import flash.external.ExternalInterface;
   
   public class §<!Q§
   {
       
      
      public var §89§:String = "";
      
      private var §^y§:Array = null;
      
      public function §<!Q§(param1:String)
      {
         super();
         this.§89§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§89§,this.§9B§);
         }
      }
      
      public function §9B§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§89§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §8!6§.log(_loc2_);
         if(this.§^y§ != null)
         {
            for each(_loc4_ in this.§^y§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§^y§ == null)
         {
            this.§^y§ = new Array();
         }
         this.§^y§.push(param1);
      }
      
      public function §1§(param1:Function) : void
      {
         if(this.§^y§ && this.§^y§.indexOf(param1) != -1)
         {
            this.§^y§.splice(this.§^y§.indexOf(param1),1);
         }
      }
   }
}
