package §`"D§
{
   import §9$;§.Texture;
   import §?"e§.Starling;
   import §@0§.§6"9§;
   import §`"8§.§34§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §@"G§:Object = {};
      
      private static var §5#?§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §<c§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §@"G§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §"#b§(param1:String, param2:§34§) : §6"9§
      {
         var _loc3_:ParticleResource = §^!b§(param1);
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
         if(§5#?§.indexOf(_loc5_) < 0)
         {
            §5#?§.push(_loc5_);
         }
         return new §6"9§(_loc3_.config,_loc5_);
      }
      
      private static function §^!b§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!Starling.§`"J§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §@"G§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §@"G§[param1] as ParticleResource;
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
