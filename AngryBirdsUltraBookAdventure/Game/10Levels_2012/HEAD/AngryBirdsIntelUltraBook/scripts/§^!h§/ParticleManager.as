package §^!h§
{
   import §"$§.Starling;
   import §'_§.Texture;
   import §8!?§.TextureManager;
   import §?A§.§![§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §8W§:Object;
      
      private static var §<V§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8W§ = {};
         }
         do
         {
            §<V§ = new Vector.<Texture>();
         }
         while(!_loc2_);
         
      }
      
      public function ParticleManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §'!B§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §8W§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §>O§(param1:String, param2:TextureManager) : §![§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = § S§(param1);
         if(_loc6_)
         {
            §§push(!_loc3_);
            if(!(_loc7_ && param1))
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     return null;
                  }
                  addr37:
                  §§push(true);
                  if(!(_loc7_ && param1))
                  {
                     §§push(Boolean(§§pop()));
                  }
               }
               §§goto(addr37);
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(!_loc7_)
                  {
                     §§push(parseFloat(_loc3_.config.disableMipMapping) == 0);
                     if(_loc6_ || param2)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc4_ = §§pop();
                  }
               }
            }
            var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
            if(!(_loc7_ && param2))
            {
               if(§<V§.indexOf(_loc5_) < 0)
               {
                  if(_loc6_ || ParticleManager)
                  {
                     §<V§.push(_loc5_);
                  }
               }
            }
            return new §![§(_loc3_.config,_loc5_);
         }
         §§goto(addr37);
      }
      
      private static function § S§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            §§push(Starling.isSoftware);
            if(_loc5_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push("_gpu");
                     if(!_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop());
                           if(!(_loc4_ && param1))
                           {
                              _loc2_ = §§pop();
                              if(_loc5_ || _loc3_)
                              {
                                 addr76:
                              }
                           }
                           else
                           {
                              addr83:
                              _loc2_ = §§pop();
                           }
                           _loc3_ = §8W§[_loc2_] as ParticleResource;
                           if(_loc5_ || ParticleManager)
                           {
                              if(!_loc3_)
                              {
                                 addr113:
                                 _loc3_ = §8W§[param1] as ParticleResource;
                              }
                              return _loc3_;
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr83);
                     }
                     else
                     {
                        addr81:
                        §§push(§§pop() + §§pop());
                     }
                     §§push(§§pop());
                  }
               }
               §§goto(addr76);
            }
            else
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§goto(addr81);
                  §§push("_cpu");
               }
            }
            §§goto(addr83);
         }
         §§goto(addr76);
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
