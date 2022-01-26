package §5C§
{
   import §"o§.§!C§;
   import §%?§.Texture;
   import §&V§.§,w§;
   import §@!%§.§+8§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var § #§:Object = {};
      
      private static var §^Z§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §+,§(param1:String, param2:XML, param3:BitmapData) : void
      {
         § #§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §-`§(param1:String, param2:§,w§) : §!C§
      {
         var _loc3_:ParticleResource = §-S§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§[[§(_loc3_.bitmapData,_loc4_);
         if(§^Z§.indexOf(_loc5_) < 0)
         {
            §^Z§.push(_loc5_);
         }
         return new §!C§(_loc3_.config,_loc5_);
      }
      
      private static function §-S§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§+8§.§-]§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = § #§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = § #§[param1] as ParticleResource;
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
