package §5C§
{
   import §%b§.§+Y§;
   import §-A§.Texture;
   import §@!§.§?! §;
   import §]_§.§!F§;
   import flash.display.BitmapData;
   
   public class §%!Q§
   {
      
      private static var §?n§:Object = {};
      
      private static var §;L§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §%!Q§()
      {
         super();
      }
      
      public static function §%S§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §?n§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §!!7§(param1:String, param2:§?! §) : §+Y§
      {
         var _loc3_:ParticleResource = §91§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§9!1§(_loc3_.bitmapData,_loc4_);
         if(§;L§.indexOf(_loc5_) < 0)
         {
            §;L§.push(_loc5_);
         }
         return new §+Y§(_loc3_.config,_loc5_);
      }
      
      private static function §91§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§!F§.§3h§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §?n§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §?n§[param1] as ParticleResource;
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
