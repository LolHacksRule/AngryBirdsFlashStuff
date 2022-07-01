package §1![§
{
   import §,L§.§^4§;
   import §,j§.§'u§;
   import §2!&§.§;"%§;
   import §4[§.§2P§;
   import com.angrybirds.utils.§30§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#E§
   {
      
      public static const §3b§:String = "serializationJSON";
      
      public static const §0§:String = "serializationURLParameters";
      
      public static const §^!+§:String = "09sb85etmnspa89j3mx7han3689ngp9a";
      
      public static const §@]§:String = "3v9a8crja089ph7st8oh7apr9cm8ja43";
      
      private static const §,H§:String = "|";
      
      private static const §8w§:int = 500;
       
      
      private var §]o§:URLLoader;
      
      private var §^!u§:§30§;
      
      private var §1!S§:Boolean = false;
      
      public function §#E§(param1:Object, param2:String, param3:§30§, param4:String)
      {
         super();
         this.§]o§ = new §;"%§();
         this.§^!u§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§]o§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §3b§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §'u§.encode(param1);
               break;
            case §0§:
               _loc5_.data = this.§6!P§(param1);
         }
         this.§]o§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§]o§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?!§);
         this.§]o§.addEventListener(IOErrorEvent.IO_ERROR,this.§'![§);
         _loc5_.url = param2;
         this.§1!S§ = false;
         this.§]o§.load(_loc5_);
      }
      
      public static function §6!K§(param1:Object) : String
      {
         return §^4§.§<f§([param1.levelId,param1.score,§2P§.§8!e§.id,§^!+§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §0"$§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §^!+§;
         return §^4§.§<f§(_loc2_);
      }
      
      public static function §`"2§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §@]§;
         _loc3_ = §^4§.§<f§(param1 + §,H§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §^4§.§<f§(_loc3_ + §,H§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §;2§(param1:Object) : String
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
         _loc2_.push(param1.stars + "");
         _loc2_.push(§^!+§);
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
            if(_loc10_ <= §8w§)
            {
               _loc9_ = §^4§.§<f§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§8w§ < _loc2_.length)
         {
            _loc9_ = §^4§.§<f§(_loc8_ + _loc9_);
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
      
      public function get §<"#§() : Boolean
      {
         return this.§1!S§;
      }
      
      private function §-6§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§^!u§.onComplete(param1);
         this.§1!S§ = true;
         this.removeEventListeners();
      }
      
      private function §?!§(param1:HTTPStatusEvent) : void
      {
         this.§^!u§.§?!§(param1);
      }
      
      private function §'![§(param1:IOErrorEvent) : void
      {
         this.§^!u§.§'![§(param1);
         this.removeEventListeners();
      }
      
      public function get §9"-§() : URLLoader
      {
         return this.§]o§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§]o§)
         {
            this.§]o§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?!§);
            this.§]o§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§]o§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'![§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§]o§)
         {
            this.§]o§.close();
            this.§]o§ = null;
         }
         if(this.§^!u§)
         {
            this.§^!u§ = null;
         }
      }
      
      private function §6!P§(param1:Object) : URLVariables
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
