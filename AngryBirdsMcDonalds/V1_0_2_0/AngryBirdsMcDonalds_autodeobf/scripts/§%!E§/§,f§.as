package §%!E§
{
   import §",§.Texture;
   import §'a§.§5l§;
   import §4!$§.§<!2§;
   import §5!l§.§ !D§;
   import flash.display.BitmapData;
   
   public class §,f§
   {
      
      private static var §!N§:Object = {};
      
      private static var §^!'§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §,f§()
      {
         super();
      }
      
      public static function §;3§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §!N§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §%Y§(param1:String, param2:§ !D§) : §5l§
      {
         var _loc3_:ParticleResource = §+!i§(param1);
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
         if(§^!'§.indexOf(_loc5_) < 0)
         {
            §^!'§.push(_loc5_);
         }
         return new §5l§(_loc3_.config,_loc5_);
      }
      
      private static function §+!i§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§<!2§.§ !p§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §!N§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §!N§[param1] as ParticleResource;
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
