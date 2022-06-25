package §1i§
{
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §2!H§.§5"§;
   import §7i§.Texture;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §9%§:Object;
      
      private static var §;5§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §9%§ = {};
         }
         do
         {
            §;5§ = new Vector.<Texture>();
         }
         while(_loc2_);
         
      }
      
      public function ParticleManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §3!1§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §9%§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §3!k§(param1:String, param2:TextureManager) : §5"§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §9s§(param1);
         if(_loc7_ || param1)
         {
            §§push(!_loc3_);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§goto(addr36);
                  }
               }
               §§push(true);
               if(_loc7_ || param2)
               {
                  addr46:
                  §§push(Boolean(§§pop()));
               }
               var _loc4_:* = §§pop();
               if(!(_loc6_ && param1))
               {
                  if(_loc3_.config.disableMipMapping.length() == 1)
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§push(parseFloat(_loc3_.config.disableMipMapping) == 0);
                        if(_loc7_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        _loc4_ = §§pop();
                     }
                  }
               }
               var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
               if(_loc7_)
               {
                  if(§;5§.indexOf(_loc5_) < 0)
                  {
                     if(!_loc6_)
                     {
                        addr116:
                        §;5§.push(_loc5_);
                     }
                  }
                  return new §5"§(_loc3_.config,_loc5_);
               }
               §§goto(addr116);
            }
            §§goto(addr46);
         }
         addr36:
         return null;
      }
      
      private static function §9s§(param1:String) : ParticleResource
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
         if(!(_loc4_ && _loc3_))
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
                     if(_loc5_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              addr73:
                              _loc2_ = §§pop();
                              if(!_loc4_)
                              {
                                 _loc3_ = §9%§[_loc2_] as ParticleResource;
                                 addr89:
                                 if(!(_loc4_ && param1))
                                 {
                                    if(!_loc3_)
                                    {
                                       addr118:
                                       _loc3_ = §9%§[param1] as ParticleResource;
                                    }
                                    return _loc3_;
                                 }
                                 §§goto(addr118);
                              }
                           }
                           else
                           {
                              addr88:
                              _loc2_ = §§pop();
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr88);
                     }
                     else
                     {
                        addr86:
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr88);
                     §§push(§§pop());
                  }
                  §§goto(addr73);
               }
               §§goto(addr89);
            }
            else
            {
               §§push(_loc2_);
               if(!(_loc4_ && ParticleManager))
               {
                  §§goto(addr86);
                  §§push("_cpu");
               }
            }
            §§goto(addr88);
         }
         §§goto(addr89);
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
