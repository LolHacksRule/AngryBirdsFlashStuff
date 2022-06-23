package §'%§
{
   import §3G§.§ +§;
   import §5`§.§?y§;
   import §7!=§.Texture;
   import §catch§.§4@§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §7!E§:Object;
      
      private static var §5n§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §7!E§ = {};
            if(!_loc1_)
            {
               §5n§ = new Vector.<Texture>();
            }
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
      
      public static function §`7§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §7!E§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §1!>§(param1:String, param2:§?y§) : § +§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §!a§(param1);
         if(_loc6_ || param2)
         {
            if(!_loc3_)
            {
               if(_loc6_ || param2)
               {
                  return null;
               }
            }
         }
         var _loc4_:* = true;
         if(_loc6_)
         {
            if(_loc3_.config.disableMipMapping.length() == 1)
            {
               if(!(_loc7_ && param2))
               {
                  addr66:
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
               }
            }
            var _loc5_:Texture = param2.§-§(_loc3_.bitmapData,_loc4_);
            if(!(_loc7_ && param1))
            {
               if(§5n§.indexOf(_loc5_) < 0)
               {
                  if(!(_loc7_ && param1))
                  {
                     addr110:
                     §5n§.push(_loc5_);
                  }
               }
               return new § +§(_loc3_.config,_loc5_);
            }
            §§goto(addr110);
         }
         §§goto(addr66);
      }
      
      private static function §!a§(param1:String) : ParticleResource
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
            if(!§4@§.§?!A§)
            {
               if(_loc5_ || param1)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push("_gpu");
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc4_ && _loc2_))
                        {
                           _loc2_ = §§pop();
                           if(!_loc4_)
                           {
                              addr89:
                              _loc3_ = §7!E§[_loc2_] as ParticleResource;
                              if(!(_loc4_ && ParticleManager))
                              {
                                 if(!_loc3_)
                                 {
                                    addr105:
                                    _loc3_ = §7!E§[param1] as ParticleResource;
                                 }
                                 return _loc3_;
                              }
                              §§goto(addr105);
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
