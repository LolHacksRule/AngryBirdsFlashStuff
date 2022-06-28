package §_-0BV§
{
   import §_-0Ea§.§_-AY§;
   import §_-8d§.§_-0FF§;
   import §_-TG§.§_-Cb§;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §_-nI§:Object = {};
      
      private static var §_-Ww§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §_-01T§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §_-nI§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §_-0D0§(param1:String, param2:§_-0FF§) : §_-Cb§
      {
         var _loc3_:ParticleResource = §_-kQ§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
         if(§_-Ww§.indexOf(_loc5_) < 0)
         {
            §_-Ww§.push(_loc5_);
         }
         return new §_-Cb§(_loc3_.config,_loc5_);
      }
      
      private static function §_-kQ§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§_-AY§.§_-H3§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §_-nI§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §_-nI§[param1] as ParticleResource;
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
