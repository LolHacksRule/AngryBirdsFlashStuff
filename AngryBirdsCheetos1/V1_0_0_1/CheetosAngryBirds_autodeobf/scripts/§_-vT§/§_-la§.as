package §_-vT§
{
   import §_-2r§.§_-xP§;
   import §_-5p§.§_-Kf§;
   import §_-Dk§.Texture;
   import §_-vB§.§_-Kk§;
   import flash.display.BitmapData;
   
   public class §_-la§
   {
      
      private static var §_-RY§:Object = {};
      
      private static var §_-00A§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §_-la§()
      {
         super();
      }
      
      public static function §_-vh§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §_-RY§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §_-ex§(param1:String, param2:§_-Kf§) : §_-xP§
      {
         var _loc3_:ParticleResource = §_-P7§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§_-0p§(_loc3_.bitmapData,_loc4_);
         if(§_-00A§.indexOf(_loc5_) < 0)
         {
            §_-00A§.push(_loc5_);
         }
         return new §_-xP§(_loc3_.config,_loc5_);
      }
      
      private static function §_-P7§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§_-Kk§.§_-GU§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §_-RY§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §_-RY§[param1] as ParticleResource;
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
