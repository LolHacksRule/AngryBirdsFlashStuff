package §8m§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §6§ extends EventDispatcher
   {
       
      
      private var §&!x§:Dictionary;
      
      public function §6§()
      {
         super();
         this.§&!x§ = new Dictionary();
      }
      
      public function §="F§(param1:String, param2:§7!>§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§&!x§[param1])
         {
            return false;
         }
         var _loc6_:§4!q§;
         (_loc6_ = new §4!q§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§8!8§);
         this.§&!x§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §4§(param1:String, param2:§7!>§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§&!x§[param1])
         {
            return false;
         }
         var _loc5_:§4!q§;
         (_loc5_ = new §4!q§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§8!8§);
         this.§&!x§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §@!p§(param1:String, param2:§7!>§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§&!x§[param1])
         {
            return false;
         }
         var _loc5_:§4!q§;
         (_loc5_ = new §4!q§(param1,param2,1,param3,param4)).addEventListener(Event.COMPLETE,this.§8!8§);
         this.§&!x§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §]Z§(param1:String) : Boolean
      {
         var _loc2_:§4!q§ = null;
         if(this.§&!x§[param1])
         {
            _loc2_ = this.§&!x§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §;A§(param1:String) : Boolean
      {
         var _loc2_:§4!q§ = null;
         if(this.§&!x§[param1])
         {
            _loc2_ = this.§&!x§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §7I§(param1:String) : Boolean
      {
         var _loc2_:§4!q§ = null;
         if(this.§&!x§[param1])
         {
            _loc2_ = this.§&!x§[param1];
            _loc2_.dispose();
            delete this.§&!x§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §"5§(param1:String) : Boolean
      {
         if(this.§&!x§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§&!x§)
         {
            this.§7I§(_loc1_);
         }
      }
      
      private function §8!8§(param1:Event) : void
      {
         var _loc2_:§4!q§ = param1.currentTarget as §4!q§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§8!8§);
         _loc2_.dispose();
         delete this.§&!x§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
