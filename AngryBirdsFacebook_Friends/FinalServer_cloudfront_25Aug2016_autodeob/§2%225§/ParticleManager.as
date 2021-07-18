package §2"5§
{
   import §1&§.Texture;
   import §52§.§9!n§;
   import §@"§.§&!=§;
   import §^a§.Starling;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §2!P§:Object = {};
      
      private static var §="u§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §1!-§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §2!P§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §?!f§(param1:String, param2:§&!=§) : §9!n§
      {
         var _loc3_:ParticleResource = §!-§(param1);
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
         if(§="u§.indexOf(_loc5_) < 0)
         {
            §="u§.push(_loc5_);
         }
         return new §9!n§(_loc3_.config,_loc5_);
      }
      
      private static function §!-§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!Starling.§ #4§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §2!P§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §2!P§[param1] as ParticleResource;
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
