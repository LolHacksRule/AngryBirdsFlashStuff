package §>! §
{
   import §,!7§.TextureManager;
   import §6!J§.Texture;
   import §7!>§.Starling;
   import §]!@§.§`!N§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §<w§:Object = {};
      
      private static var §7w§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §<!b§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §<w§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §@a§(param1:String, param2:TextureManager) : §`!N§
      {
         var _loc3_:ParticleResource = §8]§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:Boolean = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
         if(§7w§.indexOf(_loc5_) < 0)
         {
            §7w§.push(_loc5_);
         }
         return new §`!N§(_loc3_.config,_loc5_);
      }
      
      private static function §8]§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:String = param1;
         if(!Starling.isSoftware)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §<w§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §<w§[param1] as ParticleResource;
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
