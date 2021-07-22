package §+x§
{
   import §#S§.§?!?§;
   import §+!F§.§1!D§;
   import §0!2§.§+"4§;
   import §?7§.Texture;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §?<§:Object = {};
      
      private static var §?!x§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §`"E§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §?<§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §#!8§(param1:String, param2:§?!?§) : §+"4§
      {
         var _loc3_:ParticleResource = §;!u§(param1);
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
         if(§?!x§.indexOf(_loc5_) < 0)
         {
            §?!x§.push(_loc5_);
         }
         return new §+"4§(_loc3_.config,_loc5_);
      }
      
      private static function §;!u§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§1!D§.§9"I§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §?<§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §?<§[param1] as ParticleResource;
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
