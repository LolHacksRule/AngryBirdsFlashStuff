package §6<§
{
   import §"p§.§@8§;
   import flash.external.ExternalInterface;
   
   public class § z§
   {
       
      
      public var §^v§:String = "";
      
      private var §9!^§:Array = null;
      
      public function § z§(param1:String)
      {
         super();
         this.§^v§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§^v§,this.§%y§);
         }
      }
      
      public function §%y§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§^v§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §@8§.log(_loc2_);
         if(this.§9!^§ != null)
         {
            for each(_loc4_ in this.§9!^§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§9!^§ == null)
         {
            this.§9!^§ = new Array();
         }
         this.§9!^§.push(param1);
      }
      
      public function §`!6§(param1:Function) : void
      {
         if(this.§9!^§ && this.§9!^§.indexOf(param1) != -1)
         {
            this.§9!^§.splice(this.§9!^§.indexOf(param1),1);
         }
      }
   }
}
