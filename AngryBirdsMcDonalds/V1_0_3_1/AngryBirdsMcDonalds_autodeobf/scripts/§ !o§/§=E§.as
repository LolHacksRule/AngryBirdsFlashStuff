package § !o§
{
   import § !%§.§7!>§;
   import § %§.§`M§;
   import §&Y§.Texture;
   import §3!@§.§0t§;
   import flash.display.BitmapData;
   
   public class §=E§
   {
      
      private static var §3!S§:Object = {};
      
      private static var §>!R§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §=E§()
      {
         super();
      }
      
      public static function §0!§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §3!S§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §=k§(param1:String, param2:§7!>§) : §0t§
      {
         var _loc3_:ParticleResource = §`!W§(param1);
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
         if(§>!R§.indexOf(_loc5_) < 0)
         {
            §>!R§.push(_loc5_);
         }
         return new §0t§(_loc3_.config,_loc5_);
      }
      
      private static function §`!W§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§`M§.§#z§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §3!S§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §3!S§[param1] as ParticleResource;
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
