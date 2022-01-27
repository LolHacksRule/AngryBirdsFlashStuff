package §8!2§
{
   import §4!-§.§4w§;
   import §4!0§.§3§;
   import §@g§.§4!@§;
   import §[!A§.Texture;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §5!+§:Object = {};
      
      private static var §`g§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function § "§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §5!+§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §9!?§(param1:String, param2:§3§) : §4w§
      {
         var _loc3_:ParticleResource = §7Q§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§5Y§(_loc3_.bitmapData,_loc4_);
         if(§`g§.indexOf(_loc5_) < 0)
         {
            §`g§.push(_loc5_);
         }
         return new §4w§(_loc3_.config,_loc5_);
      }
      
      private static function §7Q§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§4!@§.§@m§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §5!+§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §5!+§[param1] as ParticleResource;
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
