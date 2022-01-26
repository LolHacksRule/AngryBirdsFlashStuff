package §6!S§
{
   import §7z§.§,H§;
   import §8K§.§>g§;
   import §^n§.Texture;
   import §`M§.§'C§;
   import flash.display.BitmapData;
   
   public class §<!^§
   {
      
      private static var §6!_§:Object = {};
      
      private static var §"y§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §<!^§()
      {
         super();
      }
      
      public static function §=E§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §6!_§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §5!Y§(param1:String, param2:§>g§) : §,H§
      {
         var _loc3_:ParticleResource = § 1§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§@U§(_loc3_.bitmapData,_loc4_);
         if(§"y§.indexOf(_loc5_) < 0)
         {
            §"y§.push(_loc5_);
         }
         return new §,H§(_loc3_.config,_loc5_);
      }
      
      private static function § 1§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§'C§.§+w§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §6!_§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §6!_§[param1] as ParticleResource;
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
