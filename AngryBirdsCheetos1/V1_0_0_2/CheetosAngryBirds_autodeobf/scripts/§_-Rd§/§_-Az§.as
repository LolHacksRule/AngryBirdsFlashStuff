package §_-Rd§
{
   import §_-Kz§.§_-jm§;
   import §_-Ye§.§_-cP§;
   import §_-my§.§_-V0§;
   import §_-yp§.Texture;
   import flash.display.BitmapData;
   
   public class §_-Az§
   {
      
      private static var §_-v9§:Object = {};
      
      private static var §_-sV§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §_-Az§()
      {
         super();
      }
      
      public static function §_-oY§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §_-v9§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §_-I8§(param1:String, param2:§_-V0§) : §_-jm§
      {
         var _loc3_:ParticleResource = §_-88§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§_-Z4§(_loc3_.bitmapData,_loc4_);
         if(§_-sV§.indexOf(_loc5_) < 0)
         {
            §_-sV§.push(_loc5_);
         }
         return new §_-jm§(_loc3_.config,_loc5_);
      }
      
      private static function §_-88§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§_-cP§.§_-PM§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §_-v9§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §_-v9§[param1] as ParticleResource;
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
