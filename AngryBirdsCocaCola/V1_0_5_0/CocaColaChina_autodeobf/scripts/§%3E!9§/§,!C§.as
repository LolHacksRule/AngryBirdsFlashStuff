package §>!9§
{
   import §+N§.§``§;
   import §2!G§.§1i§;
   import §9]§.§9J§;
   import §@'§.Texture;
   import flash.display.BitmapData;
   
   public class §,!C§
   {
      
      private static var §!!C§:Object = {};
      
      private static var §;$§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §,!C§()
      {
         super();
      }
      
      public static function §else §(param1:String, param2:XML, param3:BitmapData) : void
      {
         §!!C§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §,o§(param1:String, param2:§``§) : §1i§
      {
         var _loc3_:ParticleResource = §6!1§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§&!`§(_loc3_.bitmapData,_loc4_);
         if(§;$§.indexOf(_loc5_) < 0)
         {
            §;$§.push(_loc5_);
         }
         return new §1i§(_loc3_.config,_loc5_);
      }
      
      private static function §6!1§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§9J§.§=n§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §!!C§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §!!C§[param1] as ParticleResource;
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
