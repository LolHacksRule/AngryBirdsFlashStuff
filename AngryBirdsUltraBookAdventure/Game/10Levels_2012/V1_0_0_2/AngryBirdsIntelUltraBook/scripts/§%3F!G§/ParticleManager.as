package §?!G§
{
   import §,!5§.§6o§;
   import §-w§.§,Q§;
   import §<&§.§^b§;
   import §^!+§.Texture;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §5!f§:Object = {};
      
      private static var § !o§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §>m§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §5!f§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §<x§(param1:String, param2:§,Q§) : §6o§
      {
         var _loc3_:ParticleResource = §@6§(param1);
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
         if(§ !o§.indexOf(_loc5_) < 0)
         {
            § !o§.push(_loc5_);
         }
         return new §6o§(_loc3_.config,_loc5_);
      }
      
      private static function §@6§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§^b§.§7h§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §5!f§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §5!f§[param1] as ParticleResource;
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
