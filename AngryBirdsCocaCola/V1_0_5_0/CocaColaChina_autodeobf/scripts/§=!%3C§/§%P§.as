package §=!<§
{
   import §%!c§.§@2§;
   import §+n§.§0l§;
   import §5!]§.§8!7§;
   import §[T§.§@!a§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import §set §.§#X§;
   
   public class §%P§
   {
      
      public static const §]!J§:String = "serializationJSON";
      
      public static const §0!O§:String = "serializationURLParameters";
      
      private static var §'!6§:Array = [81,101,89,100,100,66,100,105,68,90,119,103,84,76,110,88,116,105,80,89,112,51,98,86,117,89,67,53,112,77,54,118];
      
      private static var §^!M§:Array = [97,72,103,113,52,102,101,55,81,53,107,108,98,69,117,83,111,112,77,51];
       
      
      private var §+<§:URLLoader;
      
      private var §&!B§:§0l§;
      
      private var §+&§:Boolean = false;
      
      public function §%P§(param1:Object, param2:String, param3:§0l§, param4:String)
      {
         super();
         this.§+<§ = new §#X§();
         this.§&!B§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§+<§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §]!J§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §@!a§.encode(param1);
               break;
            case §0!O§:
               _loc5_.data = this.§#@§(param1);
         }
         this.§+<§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§+<§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9!%§);
         this.§+<§.addEventListener(IOErrorEvent.IO_ERROR,this.§=p§);
         _loc5_.url = param2;
         this.§+&§ = false;
         this.§+<§.load(_loc5_);
      }
      
      public static function §>l§(param1:Object, param2:Boolean) : String
      {
         if(!param2)
         {
            return §8!7§.§%!$§([param1.levelId,param1.score,§@2§.§]!$§.id,getText(§'!6§)].join("|"));
         }
         return §8!7§.§%!$§([param1.levelId,param1.score,§@2§.§]!$§.id,getText(§'!6§),§@2§.competition,param1.blocks,param1.gamePlay,§6T§.§>c§.§^!b§(),§6T§.§>c§.§4!5§].join("|"));
      }
      
      private static function getText(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public static function §=#§() : String
      {
         return getText(§^!M§);
      }
      
      public function get §6!;§() : Boolean
      {
         return this.§+&§;
      }
      
      private function § !1§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§&!B§.onComplete(param1);
         this.§+&§ = true;
         this.removeEventListeners();
      }
      
      private function §9!%§(param1:HTTPStatusEvent) : void
      {
         this.§&!B§.§9!%§(param1);
      }
      
      private function §=p§(param1:IOErrorEvent) : void
      {
         this.§&!B§.§=p§(param1);
         this.removeEventListeners();
      }
      
      public function get §;u§() : URLLoader
      {
         return this.§+<§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§+<§)
         {
            this.§+<§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9!%§);
            this.§+<§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§+<§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=p§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§+<§)
         {
            this.§+<§.close();
            this.§+<§ = null;
         }
         if(this.§&!B§)
         {
            this.§&!B§ = null;
         }
      }
      
      private function §#@§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
   }
}
