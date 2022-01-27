package §,z§
{
   import § 0§.Texture;
   import § d§.§;p§;
   import §1y§.§&!B§;
   import §3!§.§-e§;
   import flash.display.BitmapData;
   
   public class §0R§
   {
      
      private static var §<!Z§:Object = {};
      
      private static var §3!c§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §0R§()
      {
         super();
      }
      
      public static function §6v§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §<!Z§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §!!6§(param1:String, param2:§-e§) : §;p§
      {
         var _loc3_:ParticleResource = §>!P§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§-Z§(_loc3_.bitmapData,_loc4_);
         if(§3!c§.indexOf(_loc5_) < 0)
         {
            §3!c§.push(_loc5_);
         }
         return new §;p§(_loc3_.config,_loc5_);
      }
      
      private static function §>!P§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§&!B§.§&!F§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §<!Z§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §<!Z§[param1] as ParticleResource;
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
