package §8§
{
   import §0! §.Texture;
   import §6A§.§9Q§;
   import §9K§.§5!H§;
   import §=!0§.§>I§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §`B§:Object = {};
      
      private static var §;!!§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §0O§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §`B§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §@!0§(param1:String, param2:§5!H§) : §9Q§
      {
         var _loc3_:ParticleResource = §+!K§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§<o§(_loc3_.bitmapData,_loc4_);
         if(§;!!§.indexOf(_loc5_) < 0)
         {
            §;!!§.push(_loc5_);
         }
         return new §9Q§(_loc3_.config,_loc5_);
      }
      
      private static function §+!K§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§>I§.§0P§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §`B§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §`B§[param1] as ParticleResource;
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
