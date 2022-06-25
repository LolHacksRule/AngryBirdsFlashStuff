package §=!A§
{
   import §2m§.§<!?§;
   import §40§.§9e§;
   import §=`§.§6!I§;
   import §?]§.Texture;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §;!l§:Object;
      
      private static var §`!L§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || ParticleManager)
         {
            §;!l§ = {};
         }
         do
         {
            §`!L§ = new Vector.<Texture>();
         }
         while(!_loc1_);
         
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
      
      public static function §&!+§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §;!l§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §0!z§(param1:String, param2:§6!I§) : §9e§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §=!-§(param1);
         if(_loc6_)
         {
            if(!_loc3_)
            {
               if(!(_loc7_ && param1))
               {
                  return null;
               }
            }
         }
         var _loc4_:* = true;
         if(!_loc7_)
         {
            if(_loc3_.config.disableMipMapping.length() == 1)
            {
               if(!_loc7_)
               {
                  addr56:
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
               }
            }
            var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
            if(_loc6_ || param1)
            {
               if(§`!L§.indexOf(_loc5_) < 0)
               {
                  if(_loc6_ || ParticleManager)
                  {
                     addr100:
                     §`!L§.push(_loc5_);
                  }
               }
               return new §9e§(_loc3_.config,_loc5_);
            }
            §§goto(addr100);
         }
         §§goto(addr56);
      }
      
      private static function §=!-§(param1:String) : ParticleResource
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
            if(!§<!?§.§@!_§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push("_gpu");
                     if(_loc5_ || ParticleManager)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc4_ && ParticleManager))
                        {
                           _loc2_ = §§pop();
                           if(!_loc4_)
                           {
                              addr79:
                           }
                        }
                        else
                        {
                           addr83:
                           _loc2_ = §§pop();
                        }
                        _loc3_ = §;!l§[_loc2_] as ParticleResource;
                        if(_loc5_)
                        {
                           if(!_loc3_)
                           {
                              addr95:
                              _loc3_ = §;!l§[param1] as ParticleResource;
                           }
                           return _loc3_;
                        }
                        §§goto(addr95);
                     }
                     else
                     {
                        addr82:
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr83);
                  }
                  else
                  {
                     addr81:
                     §§push("_cpu");
                  }
                  §§goto(addr82);
               }
               §§goto(addr79);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr81);
         }
         §§goto(addr79);
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
