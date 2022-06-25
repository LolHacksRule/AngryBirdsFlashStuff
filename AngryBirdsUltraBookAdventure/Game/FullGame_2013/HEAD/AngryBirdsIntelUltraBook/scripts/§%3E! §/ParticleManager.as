package §>! §
{
   import §,!7§.TextureManager;
   import §6!J§.Texture;
   import §7!>§.Starling;
   import §]!@§.§`!N§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §<w§:Object;
      
      private static var §7w§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<w§ = {};
            do
            {
               §7w§ = new Vector.<Texture>();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function ParticleManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §<!b§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §<w§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §@a§(param1:String, param2:TextureManager) : §`!N§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §8]§(param1);
         if(!_loc6_)
         {
            §§push(!_loc3_);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     return null;
                  }
                  addr33:
                  §§push(true);
                  if(!_loc6_)
                  {
                     §§push(Boolean(§§pop()));
                  }
               }
               §§goto(addr33);
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(_loc7_)
                  {
                     §§push(parseFloat(_loc3_.config.disableMipMapping) == 0);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     _loc4_ = §§pop();
                  }
               }
            }
            var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
            if(!_loc6_)
            {
               if(§7w§.indexOf(_loc5_) < 0)
               {
                  if(!(_loc6_ && ParticleManager))
                  {
                     addr106:
                     §7w§.push(_loc5_);
                  }
               }
               return new §`!N§(_loc3_.config,_loc5_);
            }
            §§goto(addr106);
         }
         §§goto(addr33);
      }
      
      private static function §8]§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(Starling.isSoftware);
            if(!(_loc5_ && param1))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc4_ || ParticleManager)
               {
                  §§push(_loc2_);
                  if(_loc4_ || _loc3_)
                  {
                     §§push("_gpu");
                     if(!_loc5_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop());
                           if(!(_loc5_ && _loc2_))
                           {
                              _loc2_ = §§pop();
                              if(!_loc5_)
                              {
                                 addr103:
                                 _loc3_ = §<w§[_loc2_] as ParticleResource;
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr117:
                                       _loc3_ = §<w§[param1] as ParticleResource;
                                    }
                                    return _loc3_;
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr103);
                           }
                           else
                           {
                              addr100:
                              §§push(§§pop() + "_cpu");
                           }
                           §§goto(addr103);
                        }
                        addr102:
                        _loc2_ = §§pop();
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr100);
               }
               §§goto(addr103);
            }
            else
            {
               §§push(_loc2_);
               if(!_loc5_)
               {
                  §§goto(addr100);
               }
            }
            §§goto(addr102);
         }
         §§goto(addr103);
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
