package §[n§
{
   import §0P§.§!!l§;
   import §1!v§.§8>§;
   import §[_§.§2!B§;
   import §^i§.Texture;
   import flash.display.BitmapData;
   
   public class §`c§
   {
      
      private static var §,-§:Object = {};
      
      private static var §0!T§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §`c§()
      {
         super();
      }
      
      public static function §@!T§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §,-§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §8! §(param1:String, param2:§2!B§) : §8>§
      {
         var _loc3_:ParticleResource = § !k§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§[!$§(_loc3_.bitmapData,_loc4_);
         if(§0!T§.indexOf(_loc5_) < 0)
         {
            §0!T§.push(_loc5_);
         }
         return new §8>§(_loc3_.config,_loc5_);
      }
      
      private static function § !k§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§!!l§.§`!8§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §,-§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §,-§[param1] as ParticleResource;
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
