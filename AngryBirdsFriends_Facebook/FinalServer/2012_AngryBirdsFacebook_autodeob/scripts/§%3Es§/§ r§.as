package §>s§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class § r§ extends EventDispatcher
   {
       
      
      private var §]"4§:Dictionary;
      
      public function § r§()
      {
         super();
         this.§]"4§ = new Dictionary();
      }
      
      public function §["<§(param1:String, param2:§9!u§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§]"4§[param1])
         {
            return false;
         }
         var _loc6_:§9!0§;
         (_loc6_ = new §9!0§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§0"L§);
         this.§]"4§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §0p§(param1:String, param2:§9!u§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§]"4§[param1])
         {
            return false;
         }
         var _loc5_:§9!0§;
         (_loc5_ = new §9!0§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§0"L§);
         this.§]"4§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §^a§(param1:String, param2:§9!u§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§]"4§[param1])
         {
            return false;
         }
         var _loc5_:§9!0§;
         (_loc5_ = new §9!0§(param1,param2,1,param3,param4)).addEventListener(Event.COMPLETE,this.§0"L§);
         this.§]"4§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §2!v§(param1:String) : Boolean
      {
         var _loc2_:§9!0§ = null;
         if(this.§]"4§[param1])
         {
            _loc2_ = this.§]"4§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §&"G§(param1:String) : Boolean
      {
         var _loc2_:§9!0§ = null;
         if(this.§]"4§[param1])
         {
            _loc2_ = this.§]"4§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §``§(param1:String) : Boolean
      {
         var _loc2_:§9!0§ = null;
         if(this.§]"4§[param1])
         {
            _loc2_ = this.§]"4§[param1];
            _loc2_.dispose();
            delete this.§]"4§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §92§(param1:String) : Boolean
      {
         if(this.§]"4§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§]"4§)
         {
            this.§``§(_loc1_);
         }
      }
      
      private function §0"L§(param1:Event) : void
      {
         var _loc2_:§9!0§ = param1.currentTarget as §9!0§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§0"L§);
         _loc2_.dispose();
         delete this.§]"4§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
