package §0i§
{
   import §'!B§.§8T§;
   import §3"#§.§45§;
   import §9!v§.§6a§;
   import §9"@§.Texture;
   import flash.display.BitmapData;
   
   public class §""F§
   {
      
      private static var §?"E§:Object = {};
      
      private static var §9!T§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §""F§()
      {
         super();
      }
      
      public static function §3!>§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §?"E§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §[!R§(param1:String, param2:§6a§) : §45§
      {
         var _loc3_:ParticleResource = §%;§(param1);
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
         if(§9!T§.indexOf(_loc5_) < 0)
         {
            §9!T§.push(_loc5_);
         }
         return new §45§(_loc3_.config,_loc5_);
      }
      
      private static function §%;§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§8T§.§`!q§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §?"E§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §?"E§[param1] as ParticleResource;
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
