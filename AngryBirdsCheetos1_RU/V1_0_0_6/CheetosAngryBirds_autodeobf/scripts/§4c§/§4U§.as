package §4c§
{
   import §"k§.§02§;
   import §-!§.§-§;
   import §8!`§.§`o§;
   import §]p§.Texture;
   import flash.display.BitmapData;
   
   public class §4U§
   {
      
      private static var §0Y§:Object = {};
      
      private static var §4!X§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §4U§()
      {
         super();
      }
      
      public static function §^!D§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §0Y§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §>C§(param1:String, param2:§02§) : §`o§
      {
         var _loc3_:ParticleResource = §`!Z§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§2!;§(_loc3_.bitmapData,_loc4_);
         if(§4!X§.indexOf(_loc5_) < 0)
         {
            §4!X§.push(_loc5_);
         }
         return new §`o§(_loc3_.config,_loc5_);
      }
      
      private static function §`!Z§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§-§.§?7§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §0Y§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §0Y§[param1] as ParticleResource;
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
