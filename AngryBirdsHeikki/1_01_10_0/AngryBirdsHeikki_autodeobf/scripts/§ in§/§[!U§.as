package § in§
{
   import §"!I§.§4Q§;
   import §"^§.§+!'§;
   import §=!<§.§>a§;
   import flash.display.BitmapData;
   
   public class §[!U§
   {
      
      private static var §+G§:Object = {};
      
      private static var §&B§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §[!U§()
      {
         super();
      }
      
      public static function §5Q§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §+G§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §=#§(param1:String, param2:§>a§) : §4Q§
      {
         var _loc3_:ParticleResource = §43§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§=!Z§(_loc3_.bitmapData,_loc4_);
         if(§&B§.indexOf(_loc5_) < 0)
         {
            §&B§.push(_loc5_);
         }
         return new §4Q§(_loc3_.config,_loc5_);
      }
      
      private static function §43§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§+!'§.§"!#§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §+G§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §+G§[param1] as ParticleResource;
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
