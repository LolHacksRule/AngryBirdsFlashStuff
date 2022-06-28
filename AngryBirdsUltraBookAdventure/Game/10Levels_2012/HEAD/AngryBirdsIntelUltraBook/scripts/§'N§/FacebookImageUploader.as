package §'N§
{
   import §`R§.JPGEncoder;
   import §`R§.PNGEncoder;
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
   
   public class FacebookImageUploader
   {
      
      private static const §1j§:String = "https://graph.facebook.com/";
      
      private static const §&!h§:String = "[USER_ID]/photos";
       
      
      private var §?Y§:Function;
      
      private var §5!U§:Function;
      
      public function FacebookImageUploader(param1:ByteArray, param2:String, param3:String, param4:String, param5:Function, param6:Function)
      {
         super();
         this.§?Y§ = param5;
         this.§5!U§ = param6;
         Security.loadPolicyFile(§1j§ + "/crossdomain.xml");
         Security.allowDomain(§1j§);
         var _loc7_:String = §1j§ + §&!h§ + "?access_token=" + param3;
         _loc7_ = _loc7_.replace("[USER_ID]",param4);
         Log.log("Uploading image; URL:" + _loc7_);
         param1 = this.§;N§(param1,param2);
         var _loc8_:URLRequest = new URLRequest(_loc7_);
         _loc8_.method = URLRequestMethod.POST;
         _loc8_.contentType = "multipart/form-data; boundary=" + this.§+1§();
         _loc8_.data = param1;
         var _loc9_:URLLoader = new URLLoader();
         _loc9_.dataFormat = URLLoaderDataFormat.BINARY;
         _loc9_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc9_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc9_.load(_loc8_);
      }
      
      public static function §4p§(param1:DisplayObject, param2:int, param3:int, param4:Number, param5:String, param6:String, param7:Function, param8:Function = null) : void
      {
         var _loc9_:BitmapData = new BitmapData(param2,param3);
         _loc9_.draw(param1,new Matrix());
         var _loc10_:JPGEncoder = new JPGEncoder(param4);
         var _loc11_:ByteArray = _loc10_.encode(_loc9_);
         new FacebookImageUploader(_loc11_,"image1.jpg",param5,param6,param7,param8);
      }
      
      public static function §0q§(param1:BitmapData, param2:String, param3:String, param4:Function, param5:Function = null) : void
      {
         var _loc6_:BitmapData = param1;
         var _loc7_:ByteArray = PNGEncoder.encode(_loc6_);
         new FacebookImageUploader(_loc7_,"image1.png",param2,param3,param4,param5);
      }
      
      public function §+1§() : String
      {
         return "AaB03y";
      }
      
      public function §;N§(param1:ByteArray, param2:String) : ByteArray
      {
         var _loc3_:Number = 0;
         var _loc4_:ByteArray = new ByteArray();
         _loc4_.endian = Endian.BIG_ENDIAN;
         var _loc5_:String = this.§+1§();
         var _loc6_:ByteArray = new ByteArray();
         _loc6_.writeShort(11565);
         _loc3_ = 0;
         while(_loc3_ < _loc5_.length)
         {
            _loc6_.writeByte(_loc5_.charCodeAt(_loc3_));
            _loc3_++;
         }
         _loc4_.writeBytes(_loc6_,0,_loc6_.length);
         _loc4_.writeShort(3338);
         var _loc7_:String = "Content-Disposition: form-data; name=\"Filename\"";
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
         this.§?Y§(_loc2_.id);
      }
      
      public function onError(param1:Event) : void
      {
         Log.log("Error!! " + param1.toString());
         Log.log("Data?" + param1.target.data.toString());
         if(this.§5!U§ != null)
         {
            this.§5!U§();
         }
      }
   }
}
