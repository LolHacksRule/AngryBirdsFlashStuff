package §8§#7
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §6"Q§ extends EventDispatcher
   {
       
      
      private var §["c§:Dictionary;
      
      public function §6"Q§()
      {
         super();
         this.§["c§ = new Dictionary();
      }
      
      public function §6!j§(param1:String, param2:§@!"§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§["c§[param1])
         {
            return false;
         }
         var _loc6_:§?#O§;
         (_loc6_ = new §?#O§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§7#h§);
         this.§["c§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §>4§(param1:String, param2:§@!"§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§["c§[param1])
         {
            return false;
         }
         var _loc5_:§?#O§;
         (_loc5_ = new §?#O§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§7#h§);
         this.§["c§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §>#U§(param1:String, param2:§@!"§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§["c§[param1])
         {
            return false;
         }
         var _loc5_:§?#O§;
         (_loc5_ = new §?#O§(param1,param2,1,param3,param4)).addEventListener(Event.COMPLETE,this.§7#h§);
         this.§["c§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §`$1§(param1:String) : Boolean
      {
         var _loc2_:§?#O§ = null;
         if(this.§["c§[param1])
         {
            _loc2_ = this.§["c§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §4!L§(param1:String) : Boolean
      {
         var _loc2_:§?#O§ = null;
         if(this.§["c§[param1])
         {
            _loc2_ = this.§["c§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §+!2§(param1:String) : Boolean
      {
         var _loc2_:§?#O§ = null;
         if(this.§["c§[param1])
         {
            _loc2_ = this.§["c§[param1];
            _loc2_.dispose();
            delete this.§["c§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §>#E§(param1:String) : Boolean
      {
         if(this.§["c§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§["c§)
         {
            this.§+!2§(_loc1_);
         }
      }
      
      private function §7#h§(param1:Event) : void
      {
         var _loc2_:§?#O§ = param1.currentTarget as §?#O§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§7#h§);
         _loc2_.dispose();
         delete this.§["c§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
