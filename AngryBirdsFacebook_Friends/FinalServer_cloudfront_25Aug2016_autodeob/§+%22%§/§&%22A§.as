package §+"%§
{
   import §!x§.§4"d§;
   import flash.external.ExternalInterface;
   
   public class §&"A§
   {
       
      
      public var §@#Q§:String = "";
      
      private var §1"2§:Array = null;
      
      public function §&"A§(param1:String)
      {
         super();
         this.§@#Q§ = param1;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.§@#Q§,this.§2""§);
         }
      }
      
      public function §2""§(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         _loc3_ = "call through externalInterface! " + this.§@#Q§ + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         §4"d§.log(_loc3_);
         var _loc2_:* = null;
         if(this.§1"2§ != null)
         {
            var _loc6_:int = 0;
            var _loc7_:* = this.§1"2§;
            while(§§hasnext(_loc7_,_loc6_))
            {
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§1"2§ == null)
         {
            this.§1"2§ = new Array();
         }
         if(this.§1"2§.indexOf(param1) == -1)
         {
            this.§1"2§.push(param1);
         }
      }
      
      public function §5!3§(param1:Function) : void
      {
         if(this.§1"2§ && this.§1"2§.indexOf(param1) != -1)
         {
            this.§1"2§.splice(this.§1"2§.indexOf(param1),1);
         }
      }
      
      public function get §'#7§() : int
      {
         if(!this.§1"2§)
         {
            return 0;
         }
         return this.§1"2§.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.§@#Q§,null);
      }
   }
}
