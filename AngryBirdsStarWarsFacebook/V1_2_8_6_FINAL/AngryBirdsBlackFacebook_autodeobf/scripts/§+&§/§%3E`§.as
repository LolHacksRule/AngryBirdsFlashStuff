package §+&§
{
   import §+d§.§2!g§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §>`§ extends EventDispatcher
   {
      
      public static const CACHING_COMPLETE:String = "CACHING_COMPLETE";
      
      private static var §7o§:§>`§;
       
      
      private var §3"`§:§2!g§;
      
      private var §=d§:int = 0;
      
      private var §^"%§:Boolean = true;
      
      public function §>`§()
      {
         this.§3"`§ = new §2!g§();
         super();
      }
      
      public static function get §!6§() : §>`§
      {
         if(!§7o§)
         {
            §7o§ = new §>`§();
         }
         return §7o§;
      }
      
      public function §3&§(param1:String, param2:String) : §&q§
      {
         var _loc3_:§&q§ = null;
         this.§5!s§(param1,param2);
         if(this.§3"`§[param1 + param2].length > 0)
         {
            _loc3_ = this.§3"`§[param1 + param2].pop();
         }
         else
         {
            _loc3_ = new §&q§(param1,true,param2);
            _loc3_.addEventListener(Event.COMPLETE,this.§&"%§);
         }
         return _loc3_;
      }
      
      public function §&!p§(param1:String, param2:String, param3:§&q§) : void
      {
         this.§5!s§(param1,param2);
         this.§3"`§[param1 + param2].push(param3);
      }
      
      public function §]!v§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§&q§ = null;
         this.§=d§ = param1.length;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.u;
            _loc4_ = §&q§.§8"`§;
            if(!this.§3"`§[_loc3_ + _loc4_])
            {
               this.§3"`§[_loc3_ + _loc4_] = [];
            }
            (_loc5_ = new §&q§(_loc3_,true,_loc4_)).addEventListener(Event.COMPLETE,this.§&"%§);
            this.§3"`§[_loc3_ + _loc4_].push(_loc5_);
         }
      }
      
      private function §&"%§(param1:Event) : void
      {
         --this.§=d§;
         if(this.§=d§ <= 0)
         {
            dispatchEvent(new Event(CACHING_COMPLETE));
         }
      }
      
      private function §5!s§(param1:String, param2:String) : void
      {
         if(!this.§3"`§[param1 + param2])
         {
            this.§3"`§[param1 + param2] = [];
         }
      }
   }
}
