package §3"V§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §9#u§ extends EventDispatcher
   {
       
      
      private var §8"Y§:Dictionary;
      
      public function §9#u§()
      {
         super();
         this.§8"Y§ = new Dictionary();
      }
      
      public function §'s§(param1:String, param2:§9$8§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§8"Y§[param1])
         {
            return false;
         }
         var _loc6_:§,#S§;
         (_loc6_ = new §,#S§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§;!4§);
         this.§8"Y§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §&$1§(param1:String, param2:§9$8§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§8"Y§[param1])
         {
            return false;
         }
         var _loc5_:§,#S§;
         (_loc5_ = new §,#S§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§;!4§);
         this.§8"Y§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function § !,§(param1:String, param2:§9$8§, param3:Number = 1, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§8"Y§[param1])
         {
            return false;
         }
         var _loc6_:§,#S§;
         (_loc6_ = new §,#S§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§;!4§);
         this.§8"Y§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §3$?§(param1:String) : Boolean
      {
         var _loc2_:§,#S§ = null;
         if(this.§8"Y§[param1])
         {
            _loc2_ = this.§8"Y§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §1"J§(param1:String) : Boolean
      {
         var _loc2_:§,#S§ = null;
         if(this.§8"Y§[param1])
         {
            _loc2_ = this.§8"Y§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §[6§(param1:String) : Boolean
      {
         var _loc2_:§,#S§ = null;
         if(this.§8"Y§[param1])
         {
            _loc2_ = this.§8"Y§[param1];
            _loc2_.dispose();
            delete this.§8"Y§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §5#7§(param1:String) : Boolean
      {
         if(this.§8"Y§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§8"Y§)
         {
            this.§[6§(_loc1_);
         }
      }
      
      private function §;!4§(param1:Event) : void
      {
         var _loc2_:§,#S§ = param1.currentTarget as §,#S§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§;!4§);
         _loc2_.dispose();
         delete this.§8"Y§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
