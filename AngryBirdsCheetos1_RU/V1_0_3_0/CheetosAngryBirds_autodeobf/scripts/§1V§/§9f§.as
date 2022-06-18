package §1V§
{
   import §+a§.Texture;
   import §9T§.§!!-§;
   import §=0§.§>O§;
   import §>N§.§"u§;
   import flash.display.BitmapData;
   
   public class §9f§
   {
      
      private static var §5!6§:Object = {};
      
      private static var §@B§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §9f§()
      {
         super();
      }
      
      public static function §^?§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §5!6§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §2V§(param1:String, param2:§>O§) : §!!-§
      {
         var _loc3_:ParticleResource = §8m§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§1u§(_loc3_.bitmapData,_loc4_);
         if(§@B§.indexOf(_loc5_) < 0)
         {
            §@B§.push(_loc5_);
         }
         return new §!!-§(_loc3_.config,_loc5_);
      }
      
      private static function §8m§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§"u§.§,z§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §5!6§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §5!6§[param1] as ParticleResource;
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
