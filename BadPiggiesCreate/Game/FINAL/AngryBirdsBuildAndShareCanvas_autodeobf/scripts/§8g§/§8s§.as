package §8g§
{
   import §&"5§.§7!P§;
   import §5!V§.§9!C§;
   import §6p§.§?%§;
   import §7R§.Texture;
   import flash.display.BitmapData;
   
   public class §8s§
   {
      
      private static var § !y§:Object = {};
      
      private static var §7!s§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §8s§()
      {
         super();
      }
      
      public static function §;!g§(param1:String, param2:XML, param3:BitmapData) : void
      {
         § !y§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §8B§(param1:String, param2:§7!P§) : §9!C§
      {
         var _loc3_:ParticleResource = §8!N§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§&#§(_loc3_.bitmapData,_loc4_);
         if(§7!s§.indexOf(_loc5_) < 0)
         {
            §7!s§.push(_loc5_);
         }
         return new §9!C§(_loc3_.config,_loc5_);
      }
      
      private static function §8!N§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§?%§.§ !J§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = § !y§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = § !y§[param1] as ParticleResource;
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
