package §3"7§
{
   import §'6§.§"]§;
   import §0!R§.Texture;
   import §6!D§.§0Y§;
   import §9"!§.§7!k§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §=!d§:Object;
      
      private static var §6!A§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=!d§ = {};
            do
            {
               §6!A§ = new Vector.<Texture>();
            }
            while(_loc2_);
            
         }
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
      
      public static function §`+§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §=!d§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §=D§(param1:String, param2:§0Y§) : §7!k§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §^E§(param1);
         if(_loc6_ || ParticleManager)
         {
            if(!_loc3_)
            {
               if(_loc6_)
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
               if(!(_loc7_ && param1))
               {
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                  addr61:
               }
            }
            var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
            if(_loc6_)
            {
               if(§6!A§.indexOf(_loc5_) < 0)
               {
                  if(_loc6_)
                  {
                     §6!A§.push(_loc5_);
                  }
               }
            }
            return new §7!k§(_loc3_.config,_loc5_);
         }
         §§goto(addr61);
      }
      
      private static function §^E§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(!§"]§.§4"!§)
            {
               if(!_loc5_)
               {
                  addr31:
                  §§push(_loc2_);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push("_gpu");
                     if(_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(!(_loc5_ && param1))
                           {
                              addr78:
                              _loc3_ = §=!d§[_loc2_] as ParticleResource;
                              if(_loc4_ || _loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr94:
                                    _loc3_ = §=!d§[param1] as ParticleResource;
                                 }
                                 return _loc3_;
                              }
                              §§goto(addr94);
                           }
                        }
                        §§goto(addr78);
                     }
                     else
                     {
                        addr76:
                        §§push(§§pop() + §§pop());
                     }
                     _loc2_ = §§pop();
                     §§goto(addr78);
                  }
                  else
                  {
                     addr75:
                     §§push("_cpu");
                  }
                  §§goto(addr76);
               }
               §§goto(addr78);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr75);
         }
         §§goto(addr31);
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
