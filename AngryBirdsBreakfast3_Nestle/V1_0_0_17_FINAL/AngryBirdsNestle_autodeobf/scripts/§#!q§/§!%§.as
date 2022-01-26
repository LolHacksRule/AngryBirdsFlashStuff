package §#!q§
{
   import §!!!§.§6!l§;
   import §2`§.§%!!§;
   import §=!4§.Texture;
   import §@V§.§1"-§;
   import flash.display.BitmapData;
   
   public class §!%§
   {
      
      private static var §<!d§:Object = {};
      
      private static var §,!h§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §!%§()
      {
         super();
      }
      
      public static function §2!q§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §<!d§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §!y§(param1:String, param2:§%!!§) : §1"-§
      {
         var _loc3_:ParticleResource = §3!!§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§@!;§(_loc3_.bitmapData,_loc4_);
         if(§,!h§.indexOf(_loc5_) < 0)
         {
            §,!h§.push(_loc5_);
         }
         return new §1"-§(_loc3_.config,_loc5_);
      }
      
      private static function §3!!§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§6!l§.§`k§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §<!d§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §<!d§[param1] as ParticleResource;
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
