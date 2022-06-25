package §6!p§
{
   import §!!K§.§else§;
   import §2_§.§5=§;
   import §4>§.Texture;
   import §^!Y§.§'R§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §case§:Object;
      
      private static var §1!4§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §case§ = {};
         }
         do
         {
            §1!4§ = new Vector.<Texture>();
         }
         while(_loc1_);
         
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
      
      public static function §?I§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §case§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §%h§(param1:String, param2:§'R§) : §5=§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §%y§(param1);
         if(_loc6_)
         {
            if(!_loc3_)
            {
               if(!(_loc7_ && param1))
               {
                  §§goto(addr32);
               }
            }
            var _loc4_:* = true;
            if(!(_loc7_ && param2))
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(!_loc7_)
                  {
                     _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                  }
               }
            }
            var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
            if(_loc6_ || ParticleManager)
            {
               if(§1!4§.indexOf(_loc5_) < 0)
               {
                  if(_loc6_ || param2)
                  {
                     addr105:
                     §1!4§.push(_loc5_);
                  }
               }
               return new §5=§(_loc3_.config,_loc5_);
            }
            §§goto(addr105);
         }
         addr32:
         return null;
      }
      
      private static function §%y§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(_loc4_ || ParticleManager)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(!§else§.§@g§)
            {
               if(_loc4_ || ParticleManager)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push("_gpu");
                     if(!(_loc5_ && ParticleManager))
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc5_)
                        {
                           _loc2_ = §§pop();
                           if(!(_loc5_ && ParticleManager))
                           {
                              addr73:
                           }
                        }
                        else
                        {
                           addr87:
                           _loc2_ = §§pop();
                        }
                        _loc3_ = §case§[_loc2_] as ParticleResource;
                        if(!(_loc5_ && ParticleManager))
                        {
                           if(!_loc3_)
                           {
                              addr104:
                              _loc3_ = §case§[param1] as ParticleResource;
                           }
                           return _loc3_;
                        }
                        §§goto(addr104);
                     }
                     else
                     {
                        addr86:
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr87);
                  }
                  else
                  {
                     addr85:
                     §§push("_cpu");
                  }
                  §§goto(addr86);
               }
               §§goto(addr73);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr85);
         }
         §§goto(addr73);
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
