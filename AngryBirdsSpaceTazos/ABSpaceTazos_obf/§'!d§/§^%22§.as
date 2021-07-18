package §'!d§
{
   import §'4§.§+"C§;
   import §4&§.§,C§;
   import §5Q§.§^!e§;
   import §`!#§.Texture;
   import flash.display.BitmapData;
   
   public class §^"§
   {
      
      private static var §+n§:Object;
      
      private static var § '§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §+n§ = {};
            do
            {
               § '§ = new Vector.<Texture>();
            }
            while(_loc1_);
            
         }
      }
      
      public function §^"§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §8!J§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §+n§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §3h§(param1:String, param2:§,C§) : §+"C§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §^"2§(param1);
         if(_loc7_ || param1)
         {
            if(!_loc3_)
            {
               if(_loc7_)
               {
                  §§goto(addr33);
               }
            }
            var _loc4_:* = true;
            if(!_loc6_)
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(_loc7_)
                  {
                     _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                  }
               }
            }
            var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
            if(_loc7_)
            {
               if(§ '§.indexOf(_loc5_) < 0)
               {
                  if(_loc7_ || §^"§)
                  {
                     addr96:
                     § '§.push(_loc5_);
                  }
               }
               return new §+"C§(_loc3_.config,_loc5_);
            }
            §§goto(addr96);
         }
         addr33:
         return null;
      }
      
      private static function §^"2§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            if(!§^!e§.§use§)
            {
               if(_loc5_ || §^"§)
               {
                  addr52:
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() + "_gpu");
                     if(!_loc4_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           addr67:
                           _loc3_ = §+n§[_loc2_] as ParticleResource;
                           if(!_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 addr88:
                                 _loc3_ = §+n§[param1] as ParticleResource;
                              }
                              return _loc3_;
                           }
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr67);
                  }
                  else
                  {
                     addr64:
                     §§push(§§pop() + "_cpu");
                  }
                  _loc2_ = §§pop();
               }
               §§goto(addr67);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr64);
         }
         §§goto(addr52);
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
