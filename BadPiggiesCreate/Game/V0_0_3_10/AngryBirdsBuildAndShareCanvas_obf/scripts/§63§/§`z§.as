package §63§
{
   import §%t§.§-!5§;
   import §4!S§.Texture;
   import §4!s§.§10§;
   import §5!5§.§^e§;
   import flash.display.BitmapData;
   
   public class §`z§
   {
      
      private static var §3!k§:Object = {};
      
      private static var §^!z§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §`z§()
      {
         super();
      }
      
      public static function §8I§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §3!k§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §>o§(param1:String, param2:§-!5§) : §10§
      {
         var _loc3_:ParticleResource = §1H§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§extends§(_loc3_.bitmapData,_loc4_);
         if(§^!z§.indexOf(_loc5_) < 0)
         {
            §^!z§.push(_loc5_);
         }
         return new §10§(_loc3_.config,_loc5_);
      }
      
      private static function §1H§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§^e§.§^"!§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §3!k§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §3!k§[param1] as ParticleResource;
         }
         return _loc3_;
      }
   }
}

import flash.display.BitmapData;

class ParticleResource
{
    
   
   public var config:XML;
   
   public var bitmapData:BitmapData;
   
   function ParticleResource(param1:XML, param2:BitmapData)
   {
      super();
      this.config = param1;
      this.bitmapData = param2;
   }
}
