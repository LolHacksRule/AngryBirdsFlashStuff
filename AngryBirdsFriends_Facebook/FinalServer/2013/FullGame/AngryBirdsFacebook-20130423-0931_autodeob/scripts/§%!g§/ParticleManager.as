package §%!g§
{
   import §"a§.§!"J§;
   import §4!<§.§5"<§;
   import §<5§.Texture;
   import §<T§.§`m§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §!1§:Object = {};
      
      private static var §9!;§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §4!z§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §!1§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §;!y§(param1:String, param2:§`m§) : §5"<§
      {
         var _loc3_:ParticleResource = §`""§(param1);
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
         if(§9!;§.indexOf(_loc5_) < 0)
         {
            §9!;§.push(_loc5_);
         }
         return new §5"<§(_loc3_.config,_loc5_);
      }
      
      private static function §`""§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§!"J§.§!X§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §!1§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §!1§[param1] as ParticleResource;
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
