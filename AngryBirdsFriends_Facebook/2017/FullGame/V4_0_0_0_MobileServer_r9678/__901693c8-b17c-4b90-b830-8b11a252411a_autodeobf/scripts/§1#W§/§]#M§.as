package §1#W§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §]#M§ extends EventDispatcher
   {
       
      
      private var §%s§:Dictionary;
      
      public function §]#M§()
      {
         super();
         this.§%s§ = new Dictionary();
      }
      
      public function §^9§(param1:String, param2:§="D§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§%s§[param1])
         {
            return false;
         }
         var _loc6_:§1#s§;
         (_loc6_ = new §1#s§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§8#@§);
         this.§%s§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §!y§(param1:String, param2:§="D§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§%s§[param1])
         {
            return false;
         }
         var _loc5_:§1#s§;
         (_loc5_ = new §1#s§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§8#@§);
         this.§%s§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §"H§(param1:String, param2:§="D§, param3:Number = 1, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§%s§[param1])
         {
            return false;
         }
         var _loc6_:§1#s§;
         (_loc6_ = new §1#s§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§8#@§);
         this.§%s§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §@B§(param1:String) : Boolean
      {
         var _loc2_:§1#s§ = null;
         if(this.§%s§[param1])
         {
            _loc2_ = this.§%s§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §"S§(param1:String) : Boolean
      {
         var _loc2_:§1#s§ = null;
         if(this.§%s§[param1])
         {
            _loc2_ = this.§%s§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §0#c§(param1:String) : Boolean
      {
         var _loc2_:§1#s§ = null;
         if(this.§%s§[param1])
         {
            _loc2_ = this.§%s§[param1];
            _loc2_.dispose();
            delete this.§%s§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §["g§(param1:String) : Boolean
      {
         if(this.§%s§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§%s§)
         {
            this.§0#c§(_loc1_);
         }
      }
      
      private function §8#@§(param1:Event) : void
      {
         var _loc2_:§1#s§ = param1.currentTarget as §1#s§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§8#@§);
         _loc2_.dispose();
         delete this.§%s§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
