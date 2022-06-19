package §1k§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class § !!§ extends EventDispatcher
   {
       
      
      private var §=!z§:Dictionary;
      
      public function § !!§()
      {
         super();
         this.§=!z§ = new Dictionary();
      }
      
      public function §]!M§(param1:String, param2:§'"9§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§=!z§[param1])
         {
            return false;
         }
         var _loc6_:§7!c§;
         (_loc6_ = new §7!c§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§8D§);
         this.§=!z§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §2!F§(param1:String, param2:§'"9§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§=!z§[param1])
         {
            return false;
         }
         var _loc5_:§7!c§;
         (_loc5_ = new §7!c§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§8D§);
         this.§=!z§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §1x§(param1:String, param2:§'"9§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§=!z§[param1])
         {
            return false;
         }
         var _loc5_:§7!c§;
         (_loc5_ = new §7!c§(param1,param2,1,param3,param4)).addEventListener(Event.COMPLETE,this.§8D§);
         this.§=!z§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §3F§(param1:String) : Boolean
      {
         var _loc2_:§7!c§ = null;
         if(this.§=!z§[param1])
         {
            _loc2_ = this.§=!z§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §+![§(param1:String) : Boolean
      {
         var _loc2_:§7!c§ = null;
         if(this.§=!z§[param1])
         {
            _loc2_ = this.§=!z§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §!k§(param1:String) : Boolean
      {
         var _loc2_:§7!c§ = null;
         if(this.§=!z§[param1])
         {
            _loc2_ = this.§=!z§[param1];
            _loc2_.dispose();
            delete this.§=!z§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §#W§(param1:String) : Boolean
      {
         if(this.§=!z§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§=!z§)
         {
            this.§!k§(_loc1_);
         }
      }
      
      private function §8D§(param1:Event) : void
      {
         var _loc2_:§7!c§ = param1.currentTarget as §7!c§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§8D§);
         _loc2_.dispose();
         delete this.§=!z§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
