package §2!5§
{
   import § !J§.§3!Z§;
   import §%%§.§3P§;
   import §&7§.Texture;
   import §9`§.§#U§;
   import flash.display.BitmapData;
   
   public class §"O§
   {
      
      private static var §!O§:Object = {};
      
      private static var §4!K§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §"O§()
      {
         super();
      }
      
      public static function §^2§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §!O§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §-C§(param1:String, param2:§#U§) : §3!Z§
      {
         var _loc3_:ParticleResource = §-W§(param1);
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
         if(§4!K§.indexOf(_loc5_) < 0)
         {
            §4!K§.push(_loc5_);
         }
         return new §3!Z§(_loc3_.config,_loc5_);
      }
      
      private static function §-W§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§3P§.§+!J§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §!O§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §!O§[param1] as ParticleResource;
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
