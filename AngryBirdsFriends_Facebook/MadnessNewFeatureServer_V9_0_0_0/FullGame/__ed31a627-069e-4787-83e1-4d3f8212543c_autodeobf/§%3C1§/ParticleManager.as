package §<1§
{
   import §"#z§.Texture;
   import §'!j§.Starling;
   import §'G§.§3$§;
   import §>2§.§+!t§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §@!M§:Object = {};
      
      private static var §+"B§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §9"O§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §@!M§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §#$#§(param1:String, param2:§3$§) : §+!t§
      {
         var _loc3_:ParticleResource = §3!<§(param1);
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
         if(§+"B§.indexOf(_loc5_) < 0)
         {
            §+"B§.push(_loc5_);
         }
         return new §+!t§(_loc3_.config,_loc5_);
      }
      
      private static function §3!<§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!Starling.§&"f§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §@!M§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §@!M§[param1] as ParticleResource;
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
