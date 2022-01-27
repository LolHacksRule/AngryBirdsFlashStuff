package §`"1§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §`f§ extends EventDispatcher
   {
       
      
      private var §>;§:Dictionary;
      
      public function §`f§()
      {
         super();
         this.§>;§ = new Dictionary();
      }
      
      public function §@!N§(param1:String, param2:§0"M§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§>;§[param1])
         {
            return false;
         }
         var _loc6_:§=!t§;
         (_loc6_ = new §=!t§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§ ">§);
         this.§>;§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §<"q§(param1:String, param2:§0"M§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§>;§[param1])
         {
            return false;
         }
         var _loc5_:§=!t§;
         (_loc5_ = new §=!t§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§ ">§);
         this.§>;§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §5@§(param1:String, param2:§0"M§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§>;§[param1])
         {
            return false;
         }
         var _loc5_:§=!t§;
         (_loc5_ = new §=!t§(param1,param2,1,param3,param4)).addEventListener(Event.COMPLETE,this.§ ">§);
         this.§>;§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §69§(param1:String) : Boolean
      {
         var _loc2_:§=!t§ = null;
         if(this.§>;§[param1])
         {
            _loc2_ = this.§>;§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §0"Q§(param1:String) : Boolean
      {
         var _loc2_:§=!t§ = null;
         if(this.§>;§[param1])
         {
            _loc2_ = this.§>;§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §>!a§(param1:String) : Boolean
      {
         var _loc2_:§=!t§ = null;
         if(this.§>;§[param1])
         {
            _loc2_ = this.§>;§[param1];
            _loc2_.dispose();
            delete this.§>;§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §2"C§(param1:String) : Boolean
      {
         if(this.§>;§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§>;§)
         {
            this.§>!a§(_loc1_);
         }
      }
      
      private function § ">§(param1:Event) : void
      {
         var _loc2_:§=!t§ = param1.currentTarget as §=!t§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§ ">§);
         _loc2_.dispose();
         delete this.§>;§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
