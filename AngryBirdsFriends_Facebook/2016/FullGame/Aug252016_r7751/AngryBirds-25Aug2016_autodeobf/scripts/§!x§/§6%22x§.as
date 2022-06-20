package §!x§
{
   import §"!T§.§""^§;
   import §"!T§.§1#b§;
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
   
   public class §6"x§
   {
      
      protected static const §-v§:String = "https://graph.facebook.com/";
      
      private static const §2U§:String = "[USER_ID]/photos";
       
      
      private var §6!1§:Function;
      
      private var §',§:Function;
      
      private var §9#R§:ByteArray;
      
      public function §6"x§(param1:ByteArray, param2:String, param3:String, param4:String, param5:Function, param6:Function, param7:Object = null)
      {
         super();
         this.§6!1§ = param5;
         this.§',§ = param6;
         Security.loadPolicyFile(this.getGraphURL() + "/crossdomain.xml");
         Security.allowDomain(this.getGraphURL());
         var _loc8_:String = (_loc8_ = this.getGraphURL() + §2U§ + "?access_token=" + param3).replace("[USER_ID]",param4);
         §4"d§.log("Uploading image; URL:" + _loc8_);
         param1 = this.§["9§(param1,param2,param7);
         var _loc9_:URLRequest;
         (_loc9_ = new URLRequest(_loc8_)).method = URLRequestMethod.POST;
         _loc9_.contentType = "multipart/form-data; boundary=" + this.§3!S§();
         _loc9_.data = param1;
         var _loc10_:URLLoader;
         (_loc10_ = new URLLoader()).dataFormat = URLLoaderDataFormat.BINARY;
         _loc10_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc10_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc10_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc10_.load(_loc9_);
      }
      
      public static function §-#[§(param1:DisplayObject, param2:int, param3:int, param4:Number, param5:String, param6:String, param7:Function, param8:Function = null) : void
      {
         var _loc9_:BitmapData;
         (_loc9_ = new BitmapData(param2,param3)).draw(param1,new Matrix());
         var _loc11_:ByteArray = new §1#b§(param4).encode(_loc9_);
         new §6"x§(_loc11_,"image1.jpg",param5,param6,param7,param8);
      }
      
      public static function §]!R§(param1:BitmapData, param2:String, param3:String, param4:Function, param5:Function = null) : void
      {
         var _loc6_:BitmapData = param1;
         var _loc7_:ByteArray = §""^§.encode(_loc6_);
         new §6"x§(_loc7_,"image1.png",param2,param3,param4,param5);
      }
      
      public function §3!S§() : String
      {
         return "AaB03y";
      }
      
      private function §5"-§(param1:ByteArray, param2:String, param3:String) : ByteArray
      {
         param1.writeBytes(this.§9#R§,0,this.§9#R§.length);
         param1.writeShort(3338);
         var _loc4_:int = 0;
         while(_loc4_ < param2.length)
         {
            param1.writeByte(param2.charCodeAt(_loc4_));
            _loc4_++;
         }
         param1.writeShort(3338);
         param1.writeShort(3338);
         param1.writeUTFBytes(param3);
         param1.writeShort(3338);
         return param1;
      }
      
      public function §["9§(param1:ByteArray, param2:String, param3:Object = null) : ByteArray
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc4_:Number = 0;
         var _loc5_:* = "Content-Disposition: form-data; name=\"Filename\"";
         var _loc6_:ByteArray;
         (_loc6_ = new ByteArray()).endian = Endian.BIG_ENDIAN;
         var _loc7_:String = this.§3!S§();
         this.§9#R§ = new ByteArray();
         this.§9#R§.writeShort(11565);
         _loc4_ = 0;
         while(_loc4_ < _loc7_.length)
         {
            this.§9#R§.writeByte(_loc7_.charCodeAt(_loc4_));
            _loc4_++;
         }
         if(param3 == null)
         {
            param3 = new Object();
         }
         param3.Filename = param2;
         for(_loc8_ in param3)
         {
            _loc9_ = "Content-Disposition: form-data; name=\"" + _loc8_ + "\"";
            _loc6_ = this.§5"-§(_loc6_,_loc9_,param3[_loc8_]);
         }
         _loc6_.writeBytes(this.§9#R§,0,this.§9#R§.length);
         _loc6_.writeShort(3338);
         _loc5_ = "Content-Disposition: form-data; name=\"Filedata\"; filename=\"" + param2 + "\"";
         _loc4_ = 0;
         while(_loc4_ < _loc5_.length)
         {
            _loc6_.writeByte(_loc5_.charCodeAt(_loc4_));
            _loc4_++;
         }
         _loc6_.writeShort(3338);
         _loc5_ = "Content-Type: application/octet-stream";
         _loc4_ = 0;
         while(_loc4_ < _loc5_.length)
         {
            _loc6_.writeByte(_loc5_.charCodeAt(_loc4_));
            _loc4_++;
         }
         _loc6_.writeShort(3338);
         _loc6_.writeShort(3338);
         _loc6_.writeBytes(param1,0,param1.length);
         _loc6_.writeShort(3338);
         _loc6_.writeShort(3338);
         _loc6_.writeBytes(this.§9#R§,0,this.§9#R§.length);
         _loc6_.writeShort(3338);
         _loc5_ = "Content-Disposition: form-data; name=\"Upload\"";
         _loc4_ = 0;
         while(_loc4_ < _loc5_.length)
         {
            _loc6_.writeByte(_loc5_.charCodeAt(_loc4_));
            _loc4_++;
         }
         _loc6_.writeShort(3338);
         _loc6_.writeShort(3338);
         _loc5_ = "Submit Query";
         _loc4_ = 0;
         while(_loc4_ < _loc5_.length)
         {
            _loc6_.writeByte(_loc5_.charCodeAt(_loc4_));
            _loc4_++;
         }
         _loc6_.writeShort(3338);
         _loc6_.writeBytes(this.§9#R§,0,this.§9#R§.length);
         _loc6_.writeShort(11565);
         return _loc6_;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data.toString() as String);
         this.§6!1§(_loc2_.id);
      }
      
      public function onError(param1:Event) : void
      {
         §4"d§.log("Error!! " + param1.toString());
         §4"d§.log("Data?" + param1.target.data.toString());
         if(this.§',§ != null)
         {
            this.§',§();
         }
      }
      
      protected function getGraphURL() : String
      {
         return §-v§;
      }
   }
}
