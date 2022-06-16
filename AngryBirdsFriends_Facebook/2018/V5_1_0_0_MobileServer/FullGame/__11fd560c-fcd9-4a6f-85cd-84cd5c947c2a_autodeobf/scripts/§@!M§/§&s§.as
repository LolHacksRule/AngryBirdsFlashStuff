package §@!M§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §&s§ extends EventDispatcher
   {
       
      
      private var §1!<§:Dictionary;
      
      public function §&s§()
      {
         super();
         this.§1!<§ = new Dictionary();
      }
      
      public function § #?§(param1:String, param2:§^#p§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§1!<§[param1])
         {
            return false;
         }
         var _loc6_:§?#1§;
         (_loc6_ = new §?#1§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§1!n§);
         this.§1!<§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §+z§(param1:String, param2:§^#p§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§1!<§[param1])
         {
            return false;
         }
         var _loc5_:§?#1§;
         (_loc5_ = new §?#1§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§1!n§);
         this.§1!<§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §56§(param1:String, param2:§^#p§, param3:Number = 1, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§1!<§[param1])
         {
            return false;
         }
         var _loc6_:§?#1§;
         (_loc6_ = new §?#1§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§1!n§);
         this.§1!<§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §38§(param1:String) : Boolean
      {
         var _loc2_:§?#1§ = null;
         if(this.§1!<§[param1])
         {
            _loc2_ = this.§1!<§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §]#1§(param1:String) : Boolean
      {
         var _loc2_:§?#1§ = null;
         if(this.§1!<§[param1])
         {
            _loc2_ = this.§1!<§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §>#x§(param1:String) : Boolean
      {
         var _loc2_:§?#1§ = null;
         if(this.§1!<§[param1])
         {
            _loc2_ = this.§1!<§[param1];
            _loc2_.dispose();
            delete this.§1!<§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §="Q§(param1:String) : Boolean
      {
         if(this.§1!<§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§1!<§)
         {
            this.§>#x§(_loc1_);
         }
      }
      
      private function §1!n§(param1:Event) : void
      {
         var _loc2_:§?#1§ = param1.currentTarget as §?#1§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§1!n§);
         _loc2_.dispose();
         delete this.§1!<§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
