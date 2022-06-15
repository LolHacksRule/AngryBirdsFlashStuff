package §8#K§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §>$@§ extends EventDispatcher
   {
       
      
      private var §&"[§:Dictionary;
      
      public function §>$@§()
      {
         super();
         this.§&"[§ = new Dictionary();
      }
      
      public function §?$§(param1:String, param2:§-!o§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§&"[§[param1])
         {
            return false;
         }
         var _loc6_:§2+§;
         (_loc6_ = new §2+§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§`"?§);
         this.§&"[§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §^#v§(param1:String, param2:§-!o§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§&"[§[param1])
         {
            return false;
         }
         var _loc5_:§2+§;
         (_loc5_ = new §2+§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§`"?§);
         this.§&"[§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §]!T§(param1:String, param2:§-!o§, param3:Number = 1, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§&"[§[param1])
         {
            return false;
         }
         var _loc6_:§2+§;
         (_loc6_ = new §2+§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§`"?§);
         this.§&"[§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function § !S§(param1:String) : Boolean
      {
         var _loc2_:§2+§ = null;
         if(this.§&"[§[param1])
         {
            _loc2_ = this.§&"[§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §""G§(param1:String) : Boolean
      {
         var _loc2_:§2+§ = null;
         if(this.§&"[§[param1])
         {
            _loc2_ = this.§&"[§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §^I§(param1:String) : Boolean
      {
         var _loc2_:§2+§ = null;
         if(this.§&"[§[param1])
         {
            _loc2_ = this.§&"[§[param1];
            _loc2_.dispose();
            delete this.§&"[§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §^4§(param1:String) : Boolean
      {
         if(this.§&"[§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§&"[§)
         {
            this.§^I§(_loc1_);
         }
      }
      
      private function §`"?§(param1:Event) : void
      {
         var _loc2_:§2+§ = param1.currentTarget as §2+§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§`"?§);
         _loc2_.dispose();
         delete this.§&"[§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
