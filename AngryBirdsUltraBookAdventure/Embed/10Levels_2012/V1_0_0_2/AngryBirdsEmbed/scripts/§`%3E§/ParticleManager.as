package §`>§
{
   import §#!;§.§;T§;
   import §'k§.§ >§;
   import §5!@§.Texture;
   import §?b§.§,S§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §]8§:Object = {};
      
      private static var §48§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §2?§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §]8§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §try §(param1:String, param2:§ >§) : §,S§
      {
         var _loc3_:ParticleResource = §?!0§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§3B§(_loc3_.bitmapData,_loc4_);
         if(§48§.indexOf(_loc5_) < 0)
         {
            §48§.push(_loc5_);
         }
         return new §,S§(_loc3_.config,_loc5_);
      }
      
      private static function §?!0§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§;T§.§>!,§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §]8§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §]8§[param1] as ParticleResource;
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
