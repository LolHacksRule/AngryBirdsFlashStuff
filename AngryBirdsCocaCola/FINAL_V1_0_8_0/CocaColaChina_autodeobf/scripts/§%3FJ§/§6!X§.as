package §?J§
{
   import §&F§.§@!E§;
   import §+&§.§?y§;
   import §48§.§4a§;
   import §6!4§.Texture;
   import flash.display.BitmapData;
   
   public class §6!X§
   {
      
      private static var §4!P§:Object = {};
      
      private static var §0q§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §6!X§()
      {
         super();
      }
      
      public static function §]&§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §4!P§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §!!Y§(param1:String, param2:§4a§) : §@!E§
      {
         var _loc3_:ParticleResource = §4!7§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§@p§(_loc3_.bitmapData,_loc4_);
         if(§0q§.indexOf(_loc5_) < 0)
         {
            §0q§.push(_loc5_);
         }
         return new §@!E§(_loc3_.config,_loc5_);
      }
      
      private static function §4!7§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§?y§.§+r§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §4!P§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §4!P§[param1] as ParticleResource;
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
