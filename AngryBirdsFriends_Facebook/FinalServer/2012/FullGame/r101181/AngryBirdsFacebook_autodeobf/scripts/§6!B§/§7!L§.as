package §6!B§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §7!L§ extends EventDispatcher
   {
       
      
      private var §^!S§:Dictionary;
      
      public function §7!L§()
      {
         super();
         this.§^!S§ = new Dictionary();
      }
      
      public function §#W§(param1:String, param2:§,!p§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§^!S§[param1])
         {
            return false;
         }
         var _loc6_:§&Q§;
         (_loc6_ = new §&Q§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§4"6§);
         this.§^!S§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §8W§(param1:String, param2:§,!p§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§^!S§[param1])
         {
            return false;
         }
         var _loc5_:§&Q§;
         (_loc5_ = new §&Q§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§4"6§);
         this.§^!S§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §2!9§(param1:String, param2:§,!p§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§^!S§[param1])
         {
            return false;
         }
         var _loc5_:§&Q§;
         (_loc5_ = new §&Q§(param1,param2,1,param3,param4)).addEventListener(Event.COMPLETE,this.§4"6§);
         this.§^!S§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §8!&§(param1:String) : Boolean
      {
         var _loc2_:§&Q§ = null;
         if(this.§^!S§[param1])
         {
            _loc2_ = this.§^!S§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §?"4§(param1:String) : Boolean
      {
         var _loc2_:§&Q§ = null;
         if(this.§^!S§[param1])
         {
            _loc2_ = this.§^!S§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §]!n§(param1:String) : Boolean
      {
         var _loc2_:§&Q§ = null;
         if(this.§^!S§[param1])
         {
            _loc2_ = this.§^!S§[param1];
            _loc2_.dispose();
            delete this.§^!S§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §;"@§(param1:String) : Boolean
      {
         if(this.§^!S§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§^!S§)
         {
            this.§]!n§(_loc1_);
         }
      }
      
      private function §4"6§(param1:Event) : void
      {
         var _loc2_:§&Q§ = param1.currentTarget as §&Q§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§4"6§);
         _loc2_.dispose();
         delete this.§^!S§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
