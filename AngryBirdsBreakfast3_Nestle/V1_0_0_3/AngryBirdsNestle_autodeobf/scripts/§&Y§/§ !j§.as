package §&Y§
{
   import §5!W§.§>P§;
   import §6!?§.§`!O§;
   import §@"1§.§^!"§;
   import §^z§.Texture;
   import flash.display.BitmapData;
   
   public class § !j§
   {
      
      private static var §=d§:Object = {};
      
      private static var §8Z§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function § !j§()
      {
         super();
      }
      
      public static function §'A§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §=d§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §-k§(param1:String, param2:§`!O§) : §^!"§
      {
         var _loc3_:ParticleResource = §6L§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§6!&§(_loc3_.bitmapData,_loc4_);
         if(§8Z§.indexOf(_loc5_) < 0)
         {
            §8Z§.push(_loc5_);
         }
         return new §^!"§(_loc3_.config,_loc5_);
      }
      
      private static function §6L§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§>P§.§case §)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §=d§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §=d§[param1] as ParticleResource;
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
