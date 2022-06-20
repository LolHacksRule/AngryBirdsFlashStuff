package §'!>§
{
   import §+"6§.§5!H§;
   import §3,§.§!"4§;
   import §<L§.Texture;
   import §?"<§.§<"!§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §=b§:Object = {};
      
      private static var §?M§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §@!A§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §=b§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §6#§(param1:String, param2:§<"!§) : §!"4§
      {
         var _loc3_:ParticleResource = §1"§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
         if(§?M§.indexOf(_loc5_) < 0)
         {
            §?M§.push(_loc5_);
         }
         return new §!"4§(_loc3_.config,_loc5_);
      }
      
      private static function §1"§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§5!H§.§#!l§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §=b§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §=b§[param1] as ParticleResource;
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
