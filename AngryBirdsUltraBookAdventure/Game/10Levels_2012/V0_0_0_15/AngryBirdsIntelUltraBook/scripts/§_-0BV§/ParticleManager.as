package §_-0BV§
{
   import §_-0Ea§.§_-AY§;
   import §_-8d§.§_-0FF§;
   import §_-TG§.§_-Cb§;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §_-nI§:Object;
      
      private static var §_-Ww§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-nI§ = {};
         }
         do
         {
            §_-Ww§ = new Vector.<Texture>();
         }
         while(_loc2_);
         
      }
      
      public function ParticleManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §_-01T§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §_-nI§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §_-0D0§(param1:String, param2:§_-0FF§) : §_-Cb§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §_-kQ§(param1);
         if(!_loc6_)
         {
            if(!_loc3_)
            {
               if(_loc7_)
               {
                  return null;
               }
            }
         }
         var _loc4_:* = true;
         if(!_loc6_)
         {
            if(_loc3_.config.disableMipMapping.length() == 1)
            {
               if(!_loc6_)
               {
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
               }
            }
         }
         var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
         if(!_loc6_)
         {
            if(§_-Ww§.indexOf(_loc5_) < 0)
            {
               if(!(_loc6_ && ParticleManager))
               {
                  addr91:
                  §_-Ww§.push(_loc5_);
               }
            }
            return new §_-Cb§(_loc3_.config,_loc5_);
         }
         §§goto(addr91);
      }
      
      private static function §_-kQ§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            if(!§_-AY§.§_-H3§)
            {
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push("_gpu");
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc4_ && _loc2_))
                        {
                           _loc2_ = §§pop();
                           if(!_loc4_)
                           {
                              addr89:
                              _loc3_ = §_-nI§[_loc2_] as ParticleResource;
                              if(!_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr100:
                                    _loc3_ = §_-nI§[param1] as ParticleResource;
                                 }
                                 return _loc3_;
                              }
                              §§goto(addr100);
                              addr84:
                           }
                        }
                        §§goto(addr89);
                     }
                     else
                     {
                        addr87:
                        §§push(§§pop() + §§pop());
                     }
                     _loc2_ = §§pop();
                     §§goto(addr89);
                  }
                  else
                  {
                     addr86:
                     §§push("_cpu");
                  }
                  §§goto(addr87);
               }
               §§goto(addr89);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr86);
         }
         §§goto(addr84);
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
