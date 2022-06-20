package §<"p§
{
   import §+#W§.§"! §;
   import §+#W§.§6!!§;
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
   
   public class §'!6§
   {
      
      protected static const §]L§:String = "https://graph.facebook.com/";
      
      private static const §;"L§:String = "[USER_ID]/photos";
       
      
      private var §[">§:Function;
      
      private var §7E§:Function;
      
      private var §[#`§:ByteArray;
      
      public function §'!6§(param1:ByteArray, param2:String, param3:String, param4:String, param5:Function, param6:Function, param7:Object = null)
      {
         super();
         this.§[">§ = param5;
         this.§7E§ = param6;
         Security.loadPolicyFile(this.getGraphURL() + "/crossdomain.xml");
         Security.allowDomain(this.getGraphURL());
         var _loc8_:String = (_loc8_ = this.getGraphURL() + §;"L§ + "?access_token=" + param3).replace("[USER_ID]",param4);
         §?!T§.log("Uploading image; URL:" + _loc8_);
         param1 = this.§'8§(param1,param2,param7);
         var _loc9_:URLRequest;
         (_loc9_ = new URLRequest(_loc8_)).method = URLRequestMethod.POST;
         _loc9_.contentType = "multipart/form-data; boundary=" + this.§^#R§();
         _loc9_.data = param1;
         var _loc10_:URLLoader;
         (_loc10_ = new URLLoader()).dataFormat = URLLoaderDataFormat.BINARY;
         _loc10_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc10_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc10_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc10_.load(_loc9_);
      }
      
      public static function §9"Z§(param1:DisplayObject, param2:int, param3:int, param4:Number, param5:String, param6:String, param7:Function, param8:Function = null) : void
      {
         var _loc9_:BitmapData;
         (_loc9_ = new BitmapData(param2,param3)).draw(param1,new Matrix());
         var _loc10_:§"! §;
         var _loc11_:ByteArray = (_loc10_ = new §"! §(param4)).encode(_loc9_);
         new §'!6§(_loc11_,"image1.jpg",param5,param6,param7,param8);
      }
      
      public static function §9"t§(param1:BitmapData, param2:String, param3:String, param4:Function, param5:Function = null) : void
      {
         var _loc6_:BitmapData = param1;
         var _loc7_:ByteArray = §6!!§.encode(_loc6_);
         new §'!6§(_loc7_,"image1.png",param2,param3,param4,param5);
      }
      
      public function §^#R§() : String
      {
         return "AaB03y";
      }
      
      private function §="?§(param1:ByteArray, param2:String, param3:String) : ByteArray
      {
         param1.writeBytes(this.§[#`§,0,this.§[#`§.length);
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
      
      public function §'8§(param1:ByteArray, param2:String, param3:Object = null) : ByteArray
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc4_:Number = 0;
         var _loc5_:* = "Content-Disposition: form-data; name=\"Filename\"";
         var _loc6_:ByteArray;
         (_loc6_ = new ByteArray()).endian = Endian.BIG_ENDIAN;
         var _loc7_:String = this.§^#R§();
         this.§[#`§ = new ByteArray();
         this.§[#`§.writeShort(11565);
         _loc4_ = 0;
         while(_loc4_ < _loc7_.length)
         {
            this.§[#`§.writeByte(_loc7_.charCodeAt(_loc4_));
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
            _loc6_ = this.§="?§(_loc6_,_loc9_,param3[_loc8_]);
         }
         _loc6_.writeBytes(this.§[#`§,0,this.§[#`§.length);
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
         _loc6_.writeBytes(this.§[#`§,0,this.§[#`§.length);
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
         _loc6_.writeBytes(this.§[#`§,0,this.§[#`§.length);
         _loc6_.writeShort(11565);
         return _loc6_;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data.toString() as String);
         this.§[">§(_loc2_.id);
      }
      
      public function onError(param1:Event) : void
      {
         §?!T§.log("Error!! " + param1.toString());
         §?!T§.log("Data?" + param1.target.data.toString());
         if(this.§7E§ != null)
         {
            this.§7E§();
         }
      }
      
      protected function getGraphURL() : String
      {
         return §]L§;
      }
   }
}
