package §8§
{
   import §0! §.Texture;
   import §6A§.§9Q§;
   import §9K§.§5!H§;
   import §=!0§.§>I§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §`B§:Object;
      
      private static var §;!!§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §`B§ = {};
            if(_loc1_ || _loc2_)
            {
               §;!!§ = new Vector.<Texture>();
            }
         }
      }
      
      public function ParticleManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §0O§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §`B§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §@!0§(param1:String, param2:§5!H§) : §9Q§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §+!K§(param1);
         if(!_loc6_)
         {
            if(!_loc3_)
            {
               if(_loc7_ || _loc3_)
               {
                  §§goto(addr33);
               }
            }
            var _loc4_:* = true;
            if(!(_loc6_ && param1))
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(!_loc6_)
                  {
                     _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                     addr62:
                  }
               }
               var _loc5_:Texture = param2.§<o§(_loc3_.bitmapData,_loc4_);
               if(_loc7_)
               {
                  if(§;!!§.indexOf(_loc5_) < 0)
                  {
                     if(_loc7_)
                     {
                        §;!!§.push(_loc5_);
                     }
                  }
               }
               return new §9Q§(_loc3_.config,_loc5_);
            }
            §§goto(addr62);
         }
         addr33:
         return null;
      }
      
      private static function §+!K§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(!§>I§.§0P§)
            {
               if(!_loc5_)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push("_gpu");
                     if(!_loc5_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(_loc4_)
                           {
                              addr68:
                           }
                        }
                        else
                        {
                           addr72:
                           _loc2_ = §§pop();
                        }
                        _loc3_ = §`B§[_loc2_] as ParticleResource;
                        if(!_loc5_)
                        {
                           if(!_loc3_)
                           {
                              addr84:
                              _loc3_ = §`B§[param1] as ParticleResource;
                           }
                           return _loc3_;
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        addr71:
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr72);
                  }
                  else
                  {
                     addr70:
                     §§push("_cpu");
                  }
                  §§goto(addr71);
               }
               §§goto(addr68);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr70);
         }
         §§goto(addr68);
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
