package §[!'§
{
   import § F§.§3!&§;
   import §+!S§.Texture;
   import §2l§.§]O§;
   import §4A§.§!!C§;
   import flash.display.BitmapData;
   
   public class §6!'§
   {
      
      private static var §5!M§:Object = {};
      
      private static var §%y§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §6!'§()
      {
         super();
      }
      
      public static function §[q§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §5!M§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §#!^§(param1:String, param2:§]O§) : §!!C§
      {
         var _loc3_:ParticleResource = §<!M§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§5!S§(_loc3_.bitmapData,_loc4_);
         if(§%y§.indexOf(_loc5_) < 0)
         {
            §%y§.push(_loc5_);
         }
         return new §!!C§(_loc3_.config,_loc5_);
      }
      
      private static function §<!M§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§3!&§.§@$§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §5!M§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §5!M§[param1] as ParticleResource;
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
