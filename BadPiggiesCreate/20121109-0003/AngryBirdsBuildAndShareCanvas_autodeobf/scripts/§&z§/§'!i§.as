package §&z§
{
   import §%!0§.§;0§;
   import §%!j§.§%K§;
   import §0!%§.Texture;
   import §;"7§.§="<§;
   import flash.display.BitmapData;
   
   public class §'!i§
   {
      
      private static var include:Object = {};
      
      private static var §0!t§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §'!i§()
      {
         super();
      }
      
      public static function § ""§(param1:String, param2:XML, param3:BitmapData) : void
      {
         include[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §#G§(param1:String, param2:§="<§) : §;0§
      {
         var _loc3_:ParticleResource = §<" §(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§%N§(_loc3_.bitmapData,_loc4_);
         if(§0!t§.indexOf(_loc5_) < 0)
         {
            §0!t§.push(_loc5_);
         }
         return new §;0§(_loc3_.config,_loc5_);
      }
      
      private static function §<" §(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§%K§.§%!R§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = include[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = include[param1] as ParticleResource;
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
