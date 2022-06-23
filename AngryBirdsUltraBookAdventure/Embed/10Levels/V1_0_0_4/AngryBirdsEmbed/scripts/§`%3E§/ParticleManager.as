package §`>§
{
   import §#!;§.§;T§;
   import §'k§.§ >§;
   import §5!@§.Texture;
   import §?b§.§,S§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §]8§:Object;
      
      private static var §48§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]8§ = {};
            if(!(_loc2_ && _loc1_))
            {
               addr28:
               §48§ = new Vector.<Texture>();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function ParticleManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §2?§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || ParticleManager)
         {
            §]8§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §try §(param1:String, param2:§ >§) : §,S§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §?!0§(param1);
         if(!(_loc7_ && _loc3_))
         {
            if(!_loc3_)
            {
               if(!_loc7_)
               {
                  return null;
               }
            }
         }
         var _loc4_:* = true;
         if(_loc6_ || _loc3_)
         {
            if(_loc3_.config.disableMipMapping.length() == 1)
            {
               if(!_loc7_)
               {
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
               }
            }
         }
         var _loc5_:Texture = param2.§3B§(_loc3_.bitmapData,_loc4_);
         if(_loc6_)
         {
            if(§48§.indexOf(_loc5_) < 0)
            {
               if(_loc6_ || _loc3_)
               {
                  §48§.push(_loc5_);
               }
            }
         }
         return new §,S§(_loc3_.config,_loc5_);
      }
      
      private static function §?!0§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc5_ && ParticleManager))
         {
            if(!§;T§.§>!,§)
            {
               if(_loc4_ || param1)
               {
                  §§push(_loc2_);
                  if(_loc4_ || param1)
                  {
                     §§push("_gpu");
                     if(_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_ || _loc2_)
                        {
                           _loc2_ = §§pop();
                           if(_loc4_)
                           {
                              addr93:
                              _loc3_ = §]8§[_loc2_] as ParticleResource;
                              if(_loc4_ || param1)
                              {
                                 if(!_loc3_)
                                 {
                                    addr109:
                                    _loc3_ = §]8§[param1] as ParticleResource;
                                 }
                                 return _loc3_;
                              }
                              §§goto(addr109);
                           }
                        }
                        §§goto(addr93);
                     }
                     else
                     {
                        addr91:
                        §§push(§§pop() + §§pop());
                     }
                     _loc2_ = §§pop();
                     §§goto(addr93);
                  }
                  else
                  {
                     addr90:
                     §§push("_cpu");
                  }
                  §§goto(addr91);
               }
               §§goto(addr93);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr90);
         }
         §§goto(addr93);
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
