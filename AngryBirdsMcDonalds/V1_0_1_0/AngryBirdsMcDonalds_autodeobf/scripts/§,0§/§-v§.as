package §,0§
{
   import §"v§.§5!T§;
   import §&[§.§&!m§;
   import §@!b§.§ !c§;
   import §@j§.Texture;
   import flash.display.BitmapData;
   
   public class §-v§
   {
      
      private static var §+!X§:Object = {};
      
      private static var §>?§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §-v§()
      {
         super();
      }
      
      public static function §#!L§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §+!X§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §'8§(param1:String, param2:§&!m§) : § !c§
      {
         var _loc3_:ParticleResource = §<W§(param1);
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
         if(§>?§.indexOf(_loc5_) < 0)
         {
            §>?§.push(_loc5_);
         }
         return new § !c§(_loc3_.config,_loc5_);
      }
      
      private static function §<W§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§5!T§.§3h§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §+!X§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §+!X§[param1] as ParticleResource;
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
