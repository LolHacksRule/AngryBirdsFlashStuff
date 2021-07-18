package §1#M§
{
   import §&#H§.§3#J§;
   import §&v§.Texture;
   import §7!F§.§7§;
   import §^#>§.§-#D§;
   import flash.display.BitmapData;
   
   public class §'!]§
   {
      
      private static var §+#1§:Object;
      
      private static var §2#[§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §'!]§)
         {
            §+#1§ = {};
            do
            {
               §2#[§ = new Vector.<Texture>();
            }
            while(_loc1_);
            
         }
      }
      
      public function §'!]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §6"1§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §'!]§))
         {
            §+#1§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §#"§(param1:String, param2:§7#5§) : §-#D§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §""P§(param1);
         if(!(_loc6_ && _loc3_))
         {
            if(!_loc3_)
            {
               if(_loc7_ || _loc3_)
               {
                  return null;
               }
            }
         }
         var _loc4_:* = true;
         if(!(_loc6_ && param2))
         {
            if(_loc3_.config.disableMipMapping.length() == 1)
            {
               if(_loc7_ || _loc3_)
               {
                  addr72:
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
               }
            }
            var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
            if(_loc7_)
            {
               if(§2#[§.indexOf(_loc5_) < 0)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §2#[§.push(_loc5_);
                  }
               }
            }
            return new §-#D§(_loc3_.config,_loc5_);
         }
         §§goto(addr72);
      }
      
      private static function §""P§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(_loc5_ || §'!]§)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            if(!§3#J§.§3!s§)
            {
               if(_loc5_ || _loc3_)
               {
                  §§push(_loc2_);
                  if(_loc5_ || §'!]§)
                  {
                     §§push(§§pop() + "_gpu");
                     if(_loc5_)
                     {
                        _loc2_ = §§pop();
                        if(_loc5_)
                        {
                           addr77:
                           _loc3_ = §+#1§[_loc2_] as ParticleResource;
                           if(_loc5_ || param1)
                           {
                              if(!_loc3_)
                              {
                                 addr103:
                                 _loc3_ = §+#1§[param1] as ParticleResource;
                              }
                              return _loc3_;
                           }
                           §§goto(addr103);
                           addr72:
                        }
                     }
                     §§goto(addr77);
                  }
                  else
                  {
                     addr74:
                     §§push(§§pop() + "_cpu");
                  }
                  _loc2_ = §§pop();
               }
               §§goto(addr77);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr74);
         }
         §§goto(addr72);
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
