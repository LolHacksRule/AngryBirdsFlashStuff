package §;o§
{
   import §0!-§.Texture;
   import §<!<§.§ M§;
   import §=U§.§3p§;
   import §@!X§.§7j§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var § 0§:Object = {};
      
      private static var §!!<§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §^!t§(param1:String, param2:XML, param3:BitmapData) : void
      {
         § 0§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §2!>§(param1:String, param2:§3p§) : § M§
      {
         var _loc3_:ParticleResource = §%o§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§%!^§(_loc3_.bitmapData,_loc4_);
         if(§!!<§.indexOf(_loc5_) < 0)
         {
            §!!<§.push(_loc5_);
         }
         return new § M§(_loc3_.config,_loc5_);
      }
      
      private static function §%o§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§7j§.§?!X§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = § 0§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = § 0§[param1] as ParticleResource;
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
