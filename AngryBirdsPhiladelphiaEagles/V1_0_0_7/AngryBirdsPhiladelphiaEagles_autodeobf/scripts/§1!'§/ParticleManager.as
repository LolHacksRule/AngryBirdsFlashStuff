package §1!'§
{
   import §"`§.Texture;
   import §+f§.§4!8§;
   import §,!F§.§!e§;
   import §>w§.;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §@@§:Object = {};
      
      private static var §4F§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §=?§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §@@§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §4W§(param1:String, param2:§4!8§) : §!e§
      {
         var _loc3_:ParticleResource = §;!7§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§5l§(_loc3_.bitmapData,_loc4_);
         if(§4F§.indexOf(_loc5_) < 0)
         {
            §4F§.push(_loc5_);
         }
         return new §!e§(_loc3_.config,_loc5_);
      }
      
      private static function §;!7§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§#0§.§3!<§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §@@§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §@@§[param1] as ParticleResource;
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
