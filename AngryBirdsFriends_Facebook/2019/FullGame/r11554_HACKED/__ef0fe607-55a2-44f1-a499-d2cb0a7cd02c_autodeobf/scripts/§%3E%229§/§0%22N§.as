package §>"9§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §0"N§ extends EventDispatcher
   {
       
      
      private var §%"D§:Dictionary;
      
      public function §0"N§()
      {
         super();
         this.§%"D§ = new Dictionary();
      }
      
      public function §+!8§(param1:String, param2:§1"T§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§%"D§[param1])
         {
            return false;
         }
         var _loc6_:§5"<§;
         (_loc6_ = new §5"<§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§6#>§);
         this.§%"D§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §>"R§(param1:String, param2:§1"T§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§%"D§[param1])
         {
            return false;
         }
         var _loc5_:§5"<§;
         (_loc5_ = new §5"<§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§6#>§);
         this.§%"D§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §>!9§(param1:String, param2:§1"T§, param3:Number = 1, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§%"D§[param1])
         {
            return false;
         }
         var _loc6_:§5"<§;
         (_loc6_ = new §5"<§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§6#>§);
         this.§%"D§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §%<§(param1:String) : Boolean
      {
         var _loc2_:§5"<§ = null;
         if(this.§%"D§[param1])
         {
            _loc2_ = this.§%"D§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §!"g§(param1:String) : Boolean
      {
         var _loc2_:§5"<§ = null;
         if(this.§%"D§[param1])
         {
            _loc2_ = this.§%"D§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §'!1§(param1:String) : Boolean
      {
         var _loc2_:§5"<§ = null;
         if(this.§%"D§[param1])
         {
            _loc2_ = this.§%"D§[param1];
            _loc2_.dispose();
            delete this.§%"D§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §[2§(param1:String) : Boolean
      {
         if(this.§%"D§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§%"D§)
         {
            this.§'!1§(_loc1_);
         }
      }
      
      private function §6#>§(param1:Event) : void
      {
         var _loc2_:§5"<§ = param1.currentTarget as §5"<§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§6#>§);
         _loc2_.dispose();
         delete this.§%"D§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
