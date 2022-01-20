package §%e§
{
   import §'+§.§1u§;
   import flash.external.ExternalInterface;
   
   public class §`!3§
   {
       
      
      public var §'!1§:String = "";
      
      private var §@#§:Array = null;
      
      public function §`!3§(param1:String)
      {
         super();
         this.§'!1§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§'!1§,this.§&!K§);
         }
      }
      
      public function §&!K§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§'!1§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §1u§.log(_loc2_);
         if(this.§@#§ != null)
         {
            for each(_loc4_ in this.§@#§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§@#§ == null)
         {
            this.§@#§ = new Array();
         }
         this.§@#§.push(param1);
      }
      
      public function §"!a§(param1:Function) : void
      {
         if(this.§@#§ && this.§@#§.indexOf(param1) != -1)
         {
            this.§@#§.splice(this.§@#§.indexOf(param1),1);
         }
      }
   }
}
