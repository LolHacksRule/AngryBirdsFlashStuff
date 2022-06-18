package §;S§
{
   import §,Y§.Texture;
   import §-A§.§package§;
   import §2!4§.§5T§;
   import §2!P§.§6=§;
   import flash.display.BitmapData;
   
   public class §>!^§
   {
      
      private static var §8G§:Object = {};
      
      private static var §4!T§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §>!^§()
      {
         super();
      }
      
      public static function §7=§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §8G§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §8!F§(param1:String, param2:§5T§) : §package§
      {
         var _loc3_:ParticleResource = § %§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§8@§(_loc3_.bitmapData,_loc4_);
         if(§4!T§.indexOf(_loc5_) < 0)
         {
            §4!T§.push(_loc5_);
         }
         return new §package§(_loc3_.config,_loc5_);
      }
      
      private static function § %§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§6=§.§9B§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §8G§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §8G§[param1] as ParticleResource;
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
