package §_-Is§
{
   import §_-r6§.§_-Oy§;
   import flash.external.ExternalInterface;
   
   public class §_-kn§
   {
       
      
      public var §_-OL§:String = "";
      
      private var §_-YR§:Array = null;
      
      public function §_-kn§(param1:String)
      {
         super();
         this.§_-OL§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§_-OL§,this.§_-np§);
         }
      }
      
      public function §_-np§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§_-OL§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §_-Oy§.log(_loc2_);
         if(this.§_-YR§ != null)
         {
            for each(_loc4_ in this.§_-YR§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§_-YR§ == null)
         {
            this.§_-YR§ = new Array();
         }
         this.§_-YR§.push(param1);
      }
      
      public function §_-Mf§(param1:Function) : void
      {
         if(this.§_-YR§ && this.§_-YR§.indexOf(param1) != -1)
         {
            this.§_-YR§.splice(this.§_-YR§.indexOf(param1),1);
         }
      }
   }
}
