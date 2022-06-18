package §!x§
{
   import §-p§.§&2§;
   import flash.external.ExternalInterface;
   
   public class § W§
   {
       
      
      public var §#S§:String = "";
      
      private var §"s§:Array = null;
      
      public function § W§(param1:String)
      {
         super();
         this.§#S§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§#S§,this.§`[§);
         }
      }
      
      public function §`[§(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.§#S§ + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         §&2§.log(_loc2_);
         if(this.§"s§ != null)
         {
            for each(_loc4_ in this.§"s§)
            {
               _loc4_.apply(null,rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§"s§ == null)
         {
            this.§"s§ = new Array();
         }
         this.§"s§.push(param1);
      }
      
      public function §13§(param1:Function) : void
      {
         if(this.§"s§ && this.§"s§.indexOf(param1) != -1)
         {
            this.§"s§.splice(this.§"s§.indexOf(param1),1);
         }
      }
   }
}
