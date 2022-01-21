package §,i§
{
   import §%!B§.§=!C§;
   import §+P§.§;!%§;
   import §9!V§.§^w§;
   import §<Z§.§!!W§;
   import §=b§.§,!G§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §7;§
   {
      
      public static const §[%§:String = "serializationJSON";
      
      public static const §>u§:String = "serializationURLParameters";
      
      public static const §&h§:String = "qr83I4oYtK6jfH19s87cn8bm3B2hqh1x";
      
      public static const §!P§:String = "CV23tE28cxLBgZQ2s0LsMq5ZPsl2pzjN";
      
      private static const §%x§:String = "|";
      
      private static const §,X§:int = 500;
       
      
      private var §6!_§:URLLoader;
      
      private var §2!1§:§!!W§;
      
      private var §0!"§:Boolean = false;
      
      public function §7;§(param1:Object, param2:String, param3:§!!W§, param4:String)
      {
         super();
         this.§6!_§ = new §=!C§();
         this.§2!1§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§6!_§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §[%§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §;!%§.encode(param1);
               break;
            case §>u§:
               _loc5_.data = this.§->§(param1);
         }
         this.§6!_§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§6!_§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^c§);
         this.§6!_§.addEventListener(IOErrorEvent.IO_ERROR,this.§8!%§);
         _loc5_.url = param2;
         this.§0!"§ = false;
         this.§6!_§.load(_loc5_);
      }
      
      public static function §7!!§(param1:Object) : String
      {
         return §^w§.§class§([param1.levelId,param1.score,§,!G§.§5i§.id,§&h§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §;x§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §&h§;
         return §^w§.§class§(_loc2_);
      }
      
      public static function §'![§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §!P§;
         _loc3_ = §^w§.§class§(param1 + §%x§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §^w§.§class§(_loc3_ + §%x§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §5! §(param1:Object) : String
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc2_:Array = [];
         _loc2_.push(param1.levelId);
         _loc2_.push(param1.score + "");
         _loc2_.push(§&h§);
         var _loc3_:String = param1.gamePlay;
         var _loc4_:Array = _loc3_.split(":");
         for each(_loc5_ in _loc4_)
         {
            _loc2_.push(_loc5_);
         }
         _loc2_.push(param1.userId);
         _loc7_ = (_loc6_ = param1.blocks).split(",");
         for each(_loc5_ in _loc7_)
         {
            _loc2_.push(_loc5_);
         }
         _loc8_ = "";
         _loc9_ = "";
         _loc10_ = 0;
         while(_loc10_ < _loc2_.length)
         {
            _loc8_ += _loc2_[_loc10_];
            if(_loc10_ < §,X§)
            {
               _loc9_ = §^w§.§class§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§,X§ < _loc2_.length)
         {
            _loc9_ = §^w§.§class§(_loc8_ + _loc9_);
         }
         return _loc9_;
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
      
      public function get §'!B§() : Boolean
      {
         return this.§0!"§;
      }
      
      private function §!^§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§2!1§.onComplete(param1);
         this.§0!"§ = true;
         this.removeEventListeners();
      }
      
      private function §^c§(param1:HTTPStatusEvent) : void
      {
         this.§2!1§.§^c§(param1);
      }
      
      private function §8!%§(param1:IOErrorEvent) : void
      {
         this.§2!1§.§8!%§(param1);
         this.removeEventListeners();
      }
      
      public function get §]!#§() : URLLoader
      {
         return this.§6!_§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§6!_§)
         {
            this.§6!_§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^c§);
            this.§6!_§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§6!_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!%§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§6!_§)
         {
            this.§6!_§.close();
            this.§6!_§ = null;
         }
         if(this.§2!1§)
         {
            this.§2!1§ = null;
         }
      }
      
      private function §->§(param1:Object) : URLVariables
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
