package §'!K§
{
   import §#!`§.Texture;
   import §'!S§.§,!%§;
   import §3E§.§<!O§;
   import §`!B§.§=m§;
   import flash.display.BitmapData;
   
   public class §+! §
   {
      
      private static var §]d§:Object = {};
      
      private static var § m§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §+! §()
      {
         super();
      }
      
      public static function §`!E§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §]d§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §0!4§(param1:String, param2:§=m§) : §<!O§
      {
         var _loc3_:ParticleResource = §4&§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§+t§(_loc3_.bitmapData,_loc4_);
         if(§ m§.indexOf(_loc5_) < 0)
         {
            § m§.push(_loc5_);
         }
         return new §<!O§(_loc3_.config,_loc5_);
      }
      
      private static function §4&§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§,!%§.§96§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §]d§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §]d§[param1] as ParticleResource;
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
