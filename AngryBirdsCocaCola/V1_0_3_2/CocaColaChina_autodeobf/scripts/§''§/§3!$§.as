package §''§
{
   import §#!a§.Texture;
   import §+R§.§0O§;
   import §5!?§.§%0§;
   import §8r§.§@V§;
   import flash.display.BitmapData;
   
   public class §3!$§
   {
      
      private static var §"2§:Object = {};
      
      private static var §8!9§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §3!$§()
      {
         super();
      }
      
      public static function §-"§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §"2§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §1t§(param1:String, param2:§@V§) : §%0§
      {
         var _loc3_:ParticleResource = §5X§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§^c§(_loc3_.bitmapData,_loc4_);
         if(§8!9§.indexOf(_loc5_) < 0)
         {
            §8!9§.push(_loc5_);
         }
         return new §%0§(_loc3_.config,_loc5_);
      }
      
      private static function §5X§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§0O§.§3Z§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §"2§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §"2§[param1] as ParticleResource;
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
