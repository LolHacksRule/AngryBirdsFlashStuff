package §^!h§
{
   import §"$§.Starling;
   import §'_§.Texture;
   import §8!?§.TextureManager;
   import §?A§.§![§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §8W§:Object = {};
      
      private static var §<V§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §'!B§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §8W§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §>O§(param1:String, param2:TextureManager) : §![§
      {
         var _loc3_:ParticleResource = § S§(param1);
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
         if(§<V§.indexOf(_loc5_) < 0)
         {
            §<V§.push(_loc5_);
         }
         return new §![§(_loc3_.config,_loc5_);
      }
      
      private static function § S§(param1:String) : ParticleResource
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
         _loc3_ = §8W§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §8W§[param1] as ParticleResource;
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
