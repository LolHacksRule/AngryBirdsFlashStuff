package §%!g§
{
   import §"a§.§!"J§;
   import §4!<§.§5"<§;
   import §<5§.Texture;
   import §<T§.§`m§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §!1§:Object;
      
      private static var §9!;§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!1§ = {};
            do
            {
               §9!;§ = new Vector.<Texture>();
            }
            while(_loc1_ && _loc2_);
            
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
      
      public static function §4!z§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §!1§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §;!y§(param1:String, param2:§`m§) : §5"<§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §`""§(param1);
         if(!_loc7_)
         {
            if(!_loc3_)
            {
               if(!_loc7_)
               {
                  §§goto(addr27);
               }
            }
            var _loc4_:* = true;
            if(_loc6_ || param2)
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(_loc6_ || _loc3_)
                  {
                     _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                  }
               }
            }
            var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
            if(_loc6_ || ParticleManager)
            {
               if(§9!;§.indexOf(_loc5_) < 0)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     addr105:
                     §9!;§.push(_loc5_);
                  }
               }
               return new §5"<§(_loc3_.config,_loc5_);
            }
            §§goto(addr105);
         }
         addr27:
         return null;
      }
      
      private static function §`""§(param1:String) : ParticleResource
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
         if(!(_loc4_ && _loc3_))
         {
            if(!§!"J§.§!X§)
            {
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc5_ || _loc2_)
                  {
                     §§push("_gpu");
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc5_ || _loc2_)
                        {
                           _loc2_ = §§pop();
                           if(_loc5_ || ParticleManager)
                           {
                              addr94:
                              _loc3_ = §!1§[_loc2_] as ParticleResource;
                              if(!_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr105:
                                    _loc3_ = §!1§[param1] as ParticleResource;
                                 }
                                 return _loc3_;
                              }
                              §§goto(addr105);
                              addr89:
                           }
                        }
                        §§goto(addr94);
                     }
                     else
                     {
                        addr92:
                        §§push(§§pop() + §§pop());
                     }
                     _loc2_ = §§pop();
                     §§goto(addr94);
                  }
                  else
                  {
                     addr91:
                     §§push("_cpu");
                  }
                  §§goto(addr92);
               }
               §§goto(addr94);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr91);
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
