package §1"M§
{
   import §3"$§.§&"0§;
   import §5!q§.§0C§;
   import §9!!§.§=!S§;
   import §<"L§.Texture;
   import flash.display.BitmapData;
   
   public class §;!q§
   {
      
      private static var §="+§:Object = {};
      
      private static var §`!C§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §;!q§()
      {
         super();
      }
      
      public static function §4!^§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §="+§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §3!7§(param1:String, param2:§&"0§) : §0C§
      {
         var _loc3_:ParticleResource = §0!F§(param1);
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
         if(§`!C§.indexOf(_loc5_) < 0)
         {
            §`!C§.push(_loc5_);
         }
         return new §0C§(_loc3_.config,_loc5_);
      }
      
      private static function §0!F§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§=!S§.§&!n§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §="+§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §="+§[param1] as ParticleResource;
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
