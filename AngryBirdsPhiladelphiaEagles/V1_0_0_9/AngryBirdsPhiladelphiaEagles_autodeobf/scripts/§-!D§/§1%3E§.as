package §-!D§
{
   import §?_§.§6!1§;
   import §?_§.§]D§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §1>§ extends EventDispatcher implements §6!1§
   {
      
      private static const §&!§:int = 10;
      
      public static var SERVER_DATA_INVALID:String = "SERVER_DATA_INVALID";
      
      public static var SERVER_CALL_COMPLETE:String = "SERVER_CALL_COMPLETE";
      
      private static var §+x§:§1>§ = null;
       
      
      private var §]!L§:int = 0;
      
      private var §4J§:int = 0;
      
      private var § A§:Boolean = false;
      
      public function §1>§()
      {
         super();
      }
      
      public static function get §@!&§() : §1>§
      {
         if(§+x§ == null)
         {
            §+x§ = new §1>§();
         }
         return §+x§;
      }
      
      public function §?F§() : void
      {
         this.§ A§ = true;
         this.§^!4§();
      }
      
      public function § I§() : int
      {
         return this.§]!L§;
      }
      
      public function §^!4§() : void
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         var _loc3_:§2@§ = null;
         if(this.§96§())
         {
            _loc1_ = "levelComplete";
            _loc2_ = {};
            _loc3_ = new §2@§(_loc2_,§=!<§.§"R§ + _loc1_,this,§2@§.§<$§);
         }
         else if(this.§ A§)
         {
            this.§ A§ = false;
            dispatchEvent(new Event(SERVER_CALL_COMPLETE));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §]D§.§?!2§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §2@§.§-!7§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §2@§.§ I§(_loc2_.f)) != -1)
               {
                  this.§]!L§ = _loc4_;
                  if(this.§ A§)
                  {
                     this.§ A§ = false;
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
      
      public function §[&§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §6!H§(param1:IOErrorEvent) : void
      {
      }
      
      private function §96§() : Boolean
      {
         return true;
      }
   }
}
