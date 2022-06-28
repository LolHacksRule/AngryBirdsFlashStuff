package §6!p§
{
   import §!!K§.§else§;
   import §2_§.§5=§;
   import §4>§.Texture;
   import §^!Y§.§'R§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §case§:Object = {};
      
      private static var §1!4§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §?I§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §case§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §%h§(param1:String, param2:§'R§) : §5=§
      {
         var _loc3_:ParticleResource = §%y§(param1);
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
         if(§1!4§.indexOf(_loc5_) < 0)
         {
            §1!4§.push(_loc5_);
         }
         return new §5=§(_loc3_.config,_loc5_);
      }
      
      private static function §%y§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§else§.§@g§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §case§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §case§[param1] as ParticleResource;
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
