package §,"v§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §+!U§ extends EventDispatcher
   {
       
      
      private var §;1§:Dictionary;
      
      public function §+!U§()
      {
         super();
         this.§;1§ = new Dictionary();
      }
      
      public function §;#,§(param1:String, param2:§^!2§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§;1§[param1])
         {
            return false;
         }
         var _loc6_:§continue§;
         (_loc6_ = new §continue§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§>"m§);
         this.§;1§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §+"R§(param1:String, param2:§^!2§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§;1§[param1])
         {
            return false;
         }
         var _loc5_:§continue§;
         (_loc5_ = new §continue§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§>"m§);
         this.§;1§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §=Z§(param1:String, param2:§^!2§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§;1§[param1])
         {
            return false;
         }
         var _loc5_:§continue§;
         (_loc5_ = new §continue§(param1,param2,1,param3,param4)).addEventListener(Event.COMPLETE,this.§>"m§);
         this.§;1§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §%d§(param1:String) : Boolean
      {
         var _loc2_:§continue§ = null;
         if(this.§;1§[param1])
         {
            _loc2_ = this.§;1§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §5!x§(param1:String) : Boolean
      {
         var _loc2_:§continue§ = null;
         if(this.§;1§[param1])
         {
            _loc2_ = this.§;1§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §'Y§(param1:String) : Boolean
      {
         var _loc2_:§continue§ = null;
         if(this.§;1§[param1])
         {
            _loc2_ = this.§;1§[param1];
            _loc2_.dispose();
            delete this.§;1§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §;"n§(param1:String) : Boolean
      {
         if(this.§;1§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§;1§)
         {
            this.§'Y§(_loc1_);
         }
      }
      
      private function §>"m§(param1:Event) : void
      {
         var _loc2_:§continue§ = param1.currentTarget as §continue§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§>"m§);
         _loc2_.dispose();
         delete this.§;1§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
