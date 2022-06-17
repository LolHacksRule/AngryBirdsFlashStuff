package §6o§
{
   import §2h§.§1!^§;
   import §2h§.§2u§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §9!O§
   {
      
      private static const §1!I§:String = "https://graph.facebook.com/";
      
      private static const §#!d§:String = "[USER_ID]/photos";
       
      
      private var §^!T§:Function;
      
      private var § !o§:Function;
      
      public function §9!O§(param1:ByteArray, param2:String, param3:String, param4:String, param5:Function, param6:Function)
      {
         super();
         this.§^!T§ = param5;
         this.§ !o§ = param6;
         Security.loadPolicyFile(§1!I§ + "/crossdomain.xml");
         Security.allowDomain(§1!I§);
         var _loc7_:String = (_loc7_ = §1!I§ + §#!d§ + "?access_token=" + param3).replace("[USER_ID]",param4);
         §+!k§.log("Uploading image; URL:" + _loc7_);
         param1 = this.§#?§(param1,param2);
         var _loc8_:URLRequest;
         (_loc8_ = new URLRequest(_loc7_)).method = URLRequestMethod.POST;
         _loc8_.contentType = "multipart/form-data; boundary=" + this.§>K§();
         _loc8_.data = param1;
         var _loc9_:URLLoader;
         (_loc9_ = new URLLoader()).dataFormat = URLLoaderDataFormat.BINARY;
         _loc9_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc9_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc9_.load(_loc8_);
      }
      
      public static function §5"E§(param1:DisplayObject, param2:int, param3:int, param4:Number, param5:String, param6:String, param7:Function, param8:Function = null) : void
      {
         var _loc9_:BitmapData;
         (_loc9_ = new BitmapData(param2,param3)).draw(param1,new Matrix());
         var _loc10_:§1!^§;
         var _loc11_:ByteArray = (_loc10_ = new §1!^§(param4)).encode(_loc9_);
         new §9!O§(_loc11_,"image1.jpg",param5,param6,param7,param8);
      }
      
      public static function §[!S§(param1:BitmapData, param2:String, param3:String, param4:Function, param5:Function = null) : void
      {
         var _loc6_:BitmapData = param1;
         var _loc7_:ByteArray = §2u§.encode(_loc6_);
         new §9!O§(_loc7_,"image1.png",param2,param3,param4,param5);
      }
      
      public function §>K§() : String
      {
         return "AaB03y";
      }
      
      public function §#?§(param1:ByteArray, param2:String) : ByteArray
      {
         var _loc3_:Number = 0;
         var _loc4_:ByteArray;
         (_loc4_ = new ByteArray()).endian = Endian.BIG_ENDIAN;
         var _loc5_:String = this.§>K§();
         var _loc6_:ByteArray;
         (_loc6_ = new ByteArray()).writeShort(11565);
         _loc3_ = 0;
         while(_loc3_ < _loc5_.length)
         {
            _loc6_.writeByte(_loc5_.charCodeAt(_loc3_));
            _loc3_++;
         }
         _loc4_.writeBytes(_loc6_,0,_loc6_.length);
         _loc4_.writeShort(3338);
         var _loc7_:* = "Content-Disposition: form-data; name=\"Filename\"";
         _loc3_ = 0;
         while(_loc3_ < _loc7_.length)
         {
            _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
            _loc3_++;
         }
         _loc4_.writeShort(3338);
         _loc4_.writeShort(3338);
         _loc7_ = param2;
         _loc3_ = 0;
         while(_loc3_ < _loc7_.length)
         {
            _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
            _loc3_++;
         }
         _loc4_.writeShort(3338);
         _loc4_.writeBytes(_loc6_,0,_loc6_.length);
         _loc4_.writeShort(3338);
         _loc7_ = "Content-Disposition: form-data; name=\"Filedata\"; filename=\"" + param2 + "\"";
         _loc3_ = 0;
         while(_loc3_ < _loc7_.length)
         {
            _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
            _loc3_++;
         }
         _loc4_.writeShort(3338);
         _loc7_ = "Content-Type: application/octet-stream";
         _loc3_ = 0;
         while(_loc3_ < _loc7_.length)
         {
            _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
            _loc3_++;
         }
         _loc4_.writeShort(3338);
         _loc4_.writeShort(3338);
         _loc4_.writeBytes(param1,0,param1.length);
         _loc4_.writeShort(3338);
         _loc4_.writeShort(3338);
         _loc4_.writeBytes(_loc6_,0,_loc6_.length);
         _loc4_.writeShort(3338);
         _loc7_ = "Content-Disposition: form-data; name=\"Upload\"";
         _loc3_ = 0;
         while(_loc3_ < _loc7_.length)
         {
            _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
            _loc3_++;
         }
         _loc4_.writeShort(3338);
         _loc4_.writeShort(3338);
         _loc7_ = "Submit Query";
         _loc3_ = 0;
         while(_loc3_ < _loc7_.length)
         {
            _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
            _loc3_++;
         }
         _loc4_.writeShort(3338);
         _loc4_.writeBytes(_loc6_,0,_loc6_.length);
         _loc4_.writeShort(11565);
         return _loc4_;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data.toString() as String);
         this.§^!T§(_loc2_.id);
      }
      
      public function onError(param1:Event) : void
      {
         §+!k§.log("Error!! " + param1.toString());
         §+!k§.log("Data?" + param1.target.data.toString());
         if(this.§ !o§ != null)
         {
            this.§ !o§();
         }
      }
   }
}
