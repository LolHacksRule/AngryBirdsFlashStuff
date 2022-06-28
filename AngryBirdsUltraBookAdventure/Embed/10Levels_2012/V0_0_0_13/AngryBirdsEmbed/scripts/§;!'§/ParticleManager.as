package §;!'§
{
   import §%x§.§^F§;
   import §&p§.§'_§;
   import §-!0§.§'!3§;
   import each.Texture;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §&U§:Object = {};
      
      private static var §"t§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §%X§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §&U§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §2]§(param1:String, param2:§'!3§) : §^F§
      {
         var _loc3_:ParticleResource = §9O§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§ b§(_loc3_.bitmapData,_loc4_);
         if(§"t§.indexOf(_loc5_) < 0)
         {
            §"t§.push(_loc5_);
         }
         return new §^F§(_loc3_.config,_loc5_);
      }
      
      private static function §9O§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§'_§.§;'§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §&U§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §&U§[param1] as ParticleResource;
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
