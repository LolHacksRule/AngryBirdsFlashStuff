package §<$§
{
   import §!!9§.Texture;
   import §+&§.§"F§;
   import §,6§.§!o§;
   import §@4§.§,!]§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §;X§:Object = {};
      
      private static var §;c§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §2d§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §;X§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §"m§(param1:String, param2:§!o§) : §"F§
      {
         var _loc3_:ParticleResource = §?!6§(param1);
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
         if(§;c§.indexOf(_loc5_) < 0)
         {
            §;c§.push(_loc5_);
         }
         return new §"F§(_loc3_.config,_loc5_);
      }
      
      private static function §?!6§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§,!]§.§,?§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §;X§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §;X§[param1] as ParticleResource;
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
