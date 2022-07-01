package §#'§
{
   import §0I§.§]@§;
   import §6!4§.§<!D§;
   import §6_§.§,!>§;
   import §7"+§.Texture;
   import flash.display.BitmapData;
   
   public class §3!D§
   {
      
      private static var §%!O§:Object = {};
      
      private static var §10§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §3!D§()
      {
         super();
      }
      
      public static function §^!b§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §%!O§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §14§(param1:String, param2:§,!>§) : §]@§
      {
         var _loc3_:ParticleResource = §3!j§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§ ![§(_loc3_.bitmapData,_loc4_);
         if(§10§.indexOf(_loc5_) < 0)
         {
            §10§.push(_loc5_);
         }
         return new §]@§(_loc3_.config,_loc5_);
      }
      
      private static function §3!j§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§<!D§.§,"§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §%!O§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §%!O§[param1] as ParticleResource;
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
