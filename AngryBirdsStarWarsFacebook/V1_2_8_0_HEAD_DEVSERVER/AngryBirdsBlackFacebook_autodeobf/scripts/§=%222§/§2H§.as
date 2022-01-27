package §="2§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §2H§ extends EventDispatcher
   {
       
      
      private var §&M§:Dictionary;
      
      public function §2H§()
      {
         super();
         this.§&M§ = new Dictionary();
      }
      
      public function §8c§(param1:String, param2:§4!5§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§&M§[param1])
         {
            return false;
         }
         var _loc6_:§'!4§;
         (_loc6_ = new §'!4§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§5$§);
         this.§&M§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §@y§(param1:String, param2:§4!5§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§&M§[param1])
         {
            return false;
         }
         var _loc5_:§'!4§;
         (_loc5_ = new §'!4§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§5$§);
         this.§&M§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §8#6§(param1:String, param2:§4!5§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§&M§[param1])
         {
            return false;
         }
         var _loc5_:§'!4§;
         (_loc5_ = new §'!4§(param1,param2,1,param3,param4)).addEventListener(Event.COMPLETE,this.§5$§);
         this.§&M§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §4!]§(param1:String) : Boolean
      {
         var _loc2_:§'!4§ = null;
         if(this.§&M§[param1])
         {
            _loc2_ = this.§&M§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §`k§(param1:String) : Boolean
      {
         var _loc2_:§'!4§ = null;
         if(this.§&M§[param1])
         {
            _loc2_ = this.§&M§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §@!Z§(param1:String) : Boolean
      {
         var _loc2_:§'!4§ = null;
         if(this.§&M§[param1])
         {
            _loc2_ = this.§&M§[param1];
            _loc2_.dispose();
            delete this.§&M§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §[!n§(param1:String) : Boolean
      {
         if(this.§&M§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§&M§)
         {
            this.§@!Z§(_loc1_);
         }
      }
      
      private function §5$§(param1:Event) : void
      {
         var _loc2_:§'!4§ = param1.currentTarget as §'!4§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§5$§);
         _loc2_.dispose();
         delete this.§&M§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
