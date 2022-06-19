package §0!?§
{
   import §1!A§.§0"3§;
   import §1!A§.§6-§;
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
   
   public class §;""§
   {
      
      private static const §5!l§:String = "https://graph.facebook.com/";
      
      private static const §[!N§:String = "[USER_ID]/photos";
       
      
      private var §&!!§:Function;
      
      private var §>!<§:Function;
      
      public function §;""§(param1:ByteArray, param2:String, param3:String, param4:String, param5:Function, param6:Function)
      {
         super();
         this.§&!!§ = param5;
         this.§>!<§ = param6;
         Security.loadPolicyFile(§5!l§ + "/crossdomain.xml");
         Security.allowDomain(§5!l§);
         var _loc7_:String = (_loc7_ = §5!l§ + §[!N§ + "?access_token=" + param3).replace("[USER_ID]",param4);
         §'!$§.log("Uploading image; URL:" + _loc7_);
         param1 = this.§2"$§(param1,param2);
         var _loc8_:URLRequest;
         (_loc8_ = new URLRequest(_loc7_)).method = URLRequestMethod.POST;
         _loc8_.contentType = "multipart/form-data; boundary=" + this.§=y§();
         _loc8_.data = param1;
         var _loc9_:URLLoader;
         (_loc9_ = new URLLoader()).dataFormat = URLLoaderDataFormat.BINARY;
         _loc9_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc9_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc9_.load(_loc8_);
      }
      
      public static function §=!C§(param1:DisplayObject, param2:int, param3:int, param4:Number, param5:String, param6:String, param7:Function, param8:Function = null) : void
      {
         var _loc9_:BitmapData;
         (_loc9_ = new BitmapData(param2,param3)).draw(param1,new Matrix());
         var _loc10_:§6-§;
         var _loc11_:ByteArray = (_loc10_ = new §6-§(param4)).encode(_loc9_);
         new §;""§(_loc11_,"image1.jpg",param5,param6,param7,param8);
      }
      
      public static function §9h§(param1:BitmapData, param2:String, param3:String, param4:Function, param5:Function = null) : void
      {
         var _loc6_:BitmapData = param1;
         var _loc7_:ByteArray = §0"3§.encode(_loc6_);
         new §;""§(_loc7_,"image1.png",param2,param3,param4,param5);
      }
      
      public function §=y§() : String
      {
         return "AaB03y";
      }
      
      public function §2"$§(param1:ByteArray, param2:String) : ByteArray
      {
         var _loc3_:Number = 0;
         var _loc4_:ByteArray;
         (_loc4_ = new ByteArray()).endian = Endian.BIG_ENDIAN;
         var _loc5_:String = this.§=y§();
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
         this.§&!!§(_loc2_.id);
      }
      
      public function onError(param1:Event) : void
      {
         §'!$§.log("Error!! " + param1.toString());
         §'!$§.log("Data?" + param1.target.data.toString());
         if(this.§>!<§ != null)
         {
            this.§>!<§();
         }
      }
   }
}
