package §_-a§
{
   import §_-0-K§.§_-Tm§;
   import §_-4I§.§_-v8§;
   import §_-KM§.§_-0A§;
   import §_-i9§.Texture;
   import flash.display.BitmapData;
   
   public class §_-hu§
   {
      
      private static var §_-jB§:Object = {};
      
      private static var §_-dP§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §_-hu§()
      {
         super();
      }
      
      public static function §_-0-g§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §_-jB§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §_-KV§(param1:String, param2:§_-v8§) : §_-Tm§
      {
         var _loc3_:ParticleResource = §_-MI§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§_-Cg§(_loc3_.bitmapData,_loc4_);
         if(§_-dP§.indexOf(_loc5_) < 0)
         {
            §_-dP§.push(_loc5_);
         }
         return new §_-Tm§(_loc3_.config,_loc5_);
      }
      
      private static function §_-MI§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§_-0A§.§_-lj§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §_-jB§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §_-jB§[param1] as ParticleResource;
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
