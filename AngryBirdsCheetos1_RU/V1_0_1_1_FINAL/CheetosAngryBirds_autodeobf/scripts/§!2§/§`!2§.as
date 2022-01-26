package §!2§
{
   import §+![§.Texture;
   import §0V§.§-i§;
   import §94§.§&!7§;
   import §`n§.§#H§;
   import flash.display.BitmapData;
   
   public class §`!2§
   {
      
      private static var §?b§:Object = {};
      
      private static var §!!&§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §`!2§()
      {
         super();
      }
      
      public static function §-!S§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §?b§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §,%§(param1:String, param2:§#H§) : §-i§
      {
         var _loc3_:ParticleResource = §"!%§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§^X§(_loc3_.bitmapData,_loc4_);
         if(§!!&§.indexOf(_loc5_) < 0)
         {
            §!!&§.push(_loc5_);
         }
         return new §-i§(_loc3_.config,_loc5_);
      }
      
      private static function §"!%§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§&!7§.§+X§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §?b§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §?b§[param1] as ParticleResource;
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
