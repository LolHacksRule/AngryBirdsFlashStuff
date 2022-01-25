package §<!M§
{
   import §"![§.Texture;
   import §4A§.§4!2§;
   import §6l§.§79§;
   import §9!Y§.§!q§;
   import flash.display.BitmapData;
   
   public class §'x§
   {
      
      private static var §try§:Object = {};
      
      private static var §4'§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §'x§()
      {
         super();
      }
      
      public static function §^j§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §try§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §?<§(param1:String, param2:§!q§) : §4!2§
      {
         var _loc3_:ParticleResource = §+k§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§+!>§(_loc3_.bitmapData,_loc4_);
         if(§4'§.indexOf(_loc5_) < 0)
         {
            §4'§.push(_loc5_);
         }
         return new §4!2§(_loc3_.config,_loc5_);
      }
      
      private static function §+k§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§79§.§,!>§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §try§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §try§[param1] as ParticleResource;
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
