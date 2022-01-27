package §26§
{
   import §`!w§.§^!$§;
   import flash.external.ExternalInterface;
   
   public class §&!v§
   {
       
      
      public var §]!X§:String = "";
      
      private var §4@§:Array = null;
      
      public function §&!v§(param1:String)
      {
         super();
         this.§]!X§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§]!X§,this.§'!2§);
         }
      }
      
      public function §'!2§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.§]!X§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §^!$§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§4@§ != null)
         {
            for each(_loc5_ in this.§4@§)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§4@§ == null)
         {
            this.§4@§ = new Array();
         }
         this.§4@§.push(param1);
      }
      
      public function §8"3§(param1:Function) : void
      {
         if(this.§4@§ && this.§4@§.indexOf(param1) != -1)
         {
            this.§4@§.splice(this.§4@§.indexOf(param1),1);
         }
      }
   }
}
