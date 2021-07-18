package §1#M§
{
   import §&#H§.§3#J§;
   import §&v§.Texture;
   import §7!F§.§7§;
   import §^#>§.§-#D§;
   import flash.display.BitmapData;
   
   public class §'!]§
   {
      
      private static var §+#1§:Object = {};
      
      private static var §2#[§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §'!]§()
      {
         super();
      }
      
      public static function §6"1§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §+#1§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §#"§(param1:String, param2:§7#5§) : §-#D§
      {
         var _loc3_:ParticleResource = §""P§(param1);
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
         if(§2#[§.indexOf(_loc5_) < 0)
         {
            §2#[§.push(_loc5_);
         }
         return new §-#D§(_loc3_.config,_loc5_);
      }
      
      private static function §""P§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§3#J§.§3!s§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §+#1§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §+#1§[param1] as ParticleResource;
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
