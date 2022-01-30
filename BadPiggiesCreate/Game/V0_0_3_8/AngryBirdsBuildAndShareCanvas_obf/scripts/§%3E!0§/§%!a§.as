package §>!0§
{
   import § !V§.§7!P§;
   import §%h§.§4N§;
   import §0!F§.§^d§;
   import §3!U§.Texture;
   import flash.display.BitmapData;
   
   public class §%!a§
   {
      
      private static var §!!Z§:Object = {};
      
      private static var §4i§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §%!a§()
      {
         super();
      }
      
      public static function §?!d§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §!!Z§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §?E§(param1:String, param2:§7!P§) : §4N§
      {
         var _loc3_:ParticleResource = §]v§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§>!,§(_loc3_.bitmapData,_loc4_);
         if(§4i§.indexOf(_loc5_) < 0)
         {
            §4i§.push(_loc5_);
         }
         return new §4N§(_loc3_.config,_loc5_);
      }
      
      private static function §]v§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§^d§.§4!8§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §!!Z§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §!!Z§[param1] as ParticleResource;
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
