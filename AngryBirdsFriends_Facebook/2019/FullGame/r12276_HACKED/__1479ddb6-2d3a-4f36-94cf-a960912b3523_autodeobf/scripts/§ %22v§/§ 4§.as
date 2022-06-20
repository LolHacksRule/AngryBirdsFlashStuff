package § "v§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class § 4§ extends EventDispatcher
   {
       
      
      private var §""A§:Dictionary;
      
      public function § 4§()
      {
         super();
         this.§""A§ = new Dictionary();
      }
      
      public function §4$9§(param1:String, param2:§+o§, param3:Number, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§""A§[param1])
         {
            return false;
         }
         var _loc6_:§`#>§;
         (_loc6_ = new §`#>§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§[w§);
         this.§""A§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §3D§(param1:String, param2:§+o§, param3:Number = 1000, param4:Number = 0) : Boolean
      {
         if(this.§""A§[param1])
         {
            return false;
         }
         var _loc5_:§`#>§;
         (_loc5_ = new §`#>§(param1,param2,0,param3,param4)).addEventListener(Event.COMPLETE,this.§[w§);
         this.§""A§[param1] = _loc5_;
         _loc5_.play();
         return true;
      }
      
      public function §4"#§(param1:String, param2:§+o§, param3:Number = 1, param4:Number = 1000, param5:Number = 0) : Boolean
      {
         if(this.§""A§[param1])
         {
            return false;
         }
         var _loc6_:§`#>§;
         (_loc6_ = new §`#>§(param1,param2,param3,param4,param5)).addEventListener(Event.COMPLETE,this.§[w§);
         this.§""A§[param1] = _loc6_;
         _loc6_.play();
         return true;
      }
      
      public function §6A§(param1:String) : Boolean
      {
         var _loc2_:§`#>§ = null;
         if(this.§""A§[param1])
         {
            _loc2_ = this.§""A§[param1];
            _loc2_.pause();
            return true;
         }
         return false;
      }
      
      public function §`$&§(param1:String) : Boolean
      {
         var _loc2_:§`#>§ = null;
         if(this.§""A§[param1])
         {
            _loc2_ = this.§""A§[param1];
            _loc2_.stop();
            return true;
         }
         return false;
      }
      
      public function §1"j§(param1:String) : Boolean
      {
         var _loc2_:§`#>§ = null;
         if(this.§""A§[param1])
         {
            _loc2_ = this.§""A§[param1];
            _loc2_.dispose();
            delete this.§""A§[_loc2_.id];
            return true;
         }
         return false;
      }
      
      public function §?!B§(param1:String) : Boolean
      {
         if(this.§""A§[param1])
         {
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§""A§)
         {
            this.§1"j§(_loc1_);
         }
      }
      
      private function §[w§(param1:Event) : void
      {
         var _loc2_:§`#>§ = param1.currentTarget as §`#>§;
         _loc2_.removeEventListener(Event.COMPLETE,this.§[w§);
         _loc2_.dispose();
         delete this.§""A§[_loc2_.id];
         dispatchEvent(param1);
      }
   }
}
