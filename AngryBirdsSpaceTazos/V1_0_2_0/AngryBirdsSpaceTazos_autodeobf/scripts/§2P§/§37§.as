package §2P§
{
   import §3!4§.§ ![§;
   import §3"$§.Texture;
   import §8o§.§5"%§;
   import §?!<§.§,!6§;
   import flash.display.BitmapData;
   
   public class §37§
   {
      
      private static var §;e§:Object = {};
      
      private static var §@H§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §37§()
      {
         super();
      }
      
      public static function §@!+§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §;e§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §,u§(param1:String, param2:§5"%§) : §,!6§
      {
         var _loc3_:ParticleResource = §9!a§(param1);
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
         if(§@H§.indexOf(_loc5_) < 0)
         {
            §@H§.push(_loc5_);
         }
         return new §,!6§(_loc3_.config,_loc5_);
      }
      
      private static function §9!a§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§ ![§.§>n§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §;e§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §;e§[param1] as ParticleResource;
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
