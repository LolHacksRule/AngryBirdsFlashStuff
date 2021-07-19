package §8]§
{
   import § ! §.§5!x§;
   import §%q§.Texture;
   import §@L§.§30§;
   import §`!a§.§1"&§;
   import flash.display.BitmapData;
   
   public class §7!4§
   {
      
      private static var §]!f§:Object = {};
      
      private static var §`m§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §7!4§()
      {
         super();
      }
      
      public static function §%U§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §]!f§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §5!o§(param1:String, param2:§5!x§) : §30§
      {
         var _loc3_:ParticleResource = §@D§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§%^§(_loc3_.bitmapData,_loc4_);
         if(§`m§.indexOf(_loc5_) < 0)
         {
            §`m§.push(_loc5_);
         }
         return new §30§(_loc3_.config,_loc5_);
      }
      
      private static function §@D§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§1"&§.§'!g§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §]!f§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §]!f§[param1] as ParticleResource;
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
