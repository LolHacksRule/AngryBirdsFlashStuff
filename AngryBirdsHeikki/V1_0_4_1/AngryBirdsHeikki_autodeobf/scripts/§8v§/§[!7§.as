package §8v§
{
   import §"!<§.Texture;
   import §%O§.§ !§;
   import §?!5§.§2d§;
   import §^!7§.§%W§;
   import flash.display.BitmapData;
   
   public class §[!7§
   {
      
      private static var §[7§:Object = {};
      
      private static var §#!I§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §[!7§()
      {
         super();
      }
      
      public static function §]=§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §[7§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function include(param1:String, param2:§ !§) : §%W§
      {
         var _loc3_:ParticleResource = §``§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§=A§(_loc3_.bitmapData,_loc4_);
         if(§#!I§.indexOf(_loc5_) < 0)
         {
            §#!I§.push(_loc5_);
         }
         return new §%W§(_loc3_.config,_loc5_);
      }
      
      private static function §``§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§2d§.§#<§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §[7§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §[7§[param1] as ParticleResource;
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
