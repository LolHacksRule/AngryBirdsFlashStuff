package §]p§
{
   import §6g§.§&N§;
   import §6g§.§[!@§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §9!,§ extends EventDispatcher implements §&N§
   {
      
      private static const §"[§:int = 10;
      
      public static var SERVER_DATA_INVALID:String = "SERVER_DATA_INVALID";
      
      public static var SERVER_CALL_COMPLETE:String = "SERVER_CALL_COMPLETE";
      
      private static var §5! §:§9!,§ = null;
       
      
      private var §33§:int = 0;
      
      private var §%r§:int = 0;
      
      private var §1!@§:Boolean = false;
      
      public function §9!,§()
      {
         super();
      }
      
      public static function get §>o§() : §9!,§
      {
         if(§5! § == null)
         {
            §5! § = new §9!,§();
         }
         return §5! §;
      }
      
      public function §>!9§() : void
      {
         this.§1!@§ = true;
         this.§#!<§();
      }
      
      public function §+d§() : int
      {
         return this.§33§;
      }
      
      public function §#!<§() : void
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         var _loc3_:§^s§ = null;
         if(this.§@?§())
         {
            _loc1_ = "levelComplete";
            _loc2_ = {};
            _loc3_ = new §^s§(_loc2_,§!D§.§1P§ + _loc1_,this,§^s§.§<r§);
         }
         else if(this.§1!@§)
         {
            this.§1!@§ = false;
            dispatchEvent(new Event(SERVER_CALL_COMPLETE));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc2_:Object = §[!@§.§'!N§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.f != null && _loc2_.m != null)
         {
            _loc3_ = §^s§.§?0§(_loc2_.f);
            if(_loc3_ == _loc2_.m)
            {
               if((_loc4_ = §^s§.§+d§(_loc2_.f)) != -1)
               {
                  this.§33§ = _loc4_;
                  if(this.§1!@§)
                  {
                     this.§1!@§ = false;
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
      
      public function §9>§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'r§(param1:IOErrorEvent) : void
      {
      }
      
      private function §@?§() : Boolean
      {
         return true;
      }
   }
}
