package §16§
{
   import §-A§.§+q§;
   import §-A§.§,G§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §;v§ extends EventDispatcher implements §,G§
   {
      
      private static const §@e§:int = 10;
      
      public static var SERVER_DATA_INVALID:String = "SERVER_DATA_INVALID";
      
      public static var SERVER_CALL_COMPLETE:String = "SERVER_CALL_COMPLETE";
      
      private static var §3D§:§;v§ = null;
       
      
      private var §1!"§:int = 0;
      
      private var §&3§:int = 0;
      
      private var §#q§:Boolean = false;
      
      public function §;v§()
      {
         super();
      }
      
      public static function get §<"§() : §;v§
      {
         if(§3D§ == null)
         {
            §3D§ = new §;v§();
         }
         return §3D§;
      }
      
      public function §+!J§() : void
      {
         this.§#q§ = true;
         this.§]!D§();
      }
      
      public function §%0§() : int
      {
         return this.§1!"§;
      }
      
      public function §]!D§() : void
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         var _loc3_:§#w§ = null;
         if(this.§+Q§())
         {
            _loc1_ = "levelComplete";
            _loc2_ = {};
            _loc3_ = new §#w§(_loc2_,§>!?§.§'@§ + _loc1_,this,§#w§.§=!'§);
         }
         else if(this.§#q§)
         {
            this.§#q§ = false;
            dispatchEvent(new Event(SERVER_CALL_COMPLETE));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §+q§.§4d§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §#w§.§&2§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §#w§.§%0§(_loc2_.f)) != -1)
               {
                  this.§1!"§ = _loc4_;
                  if(this.§#q§)
                  {
                     this.§#q§ = false;
                     dispatchEvent(new Event(SERVER_CALL_COMPLETE));
                  }
               }
               else
               {
                  dispatchEvent(new Event(SERVER_DATA_INVALID));
               }
            }
         }
      }
      
      public function §>4§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §?!3§(param1:IOErrorEvent) : void
      {
      }
      
      private function §+Q§() : Boolean
      {
         return true;
      }
   }
}
