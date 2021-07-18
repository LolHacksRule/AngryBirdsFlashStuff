package §_-HU§
{
   import §_-2m§.§_-lr§;
   import §_-e3§.§_-54§;
   import §_-e3§.§_-JN§;
   import §_-rQ§.§_-Ou§;
   import flash.utils.Dictionary;
   
   public class §_-yP§
   {
      
      public static var §_-K-§:XML;
      
      public static var §_-xQ§:XML;
      
      public static var §_-yZ§:Dictionary;
      
      public static var §_-tF§:Array;
       
      
      public function §_-yP§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §_-Zd§(param1:Class, param2:Class) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_ || param2)
         {
            §_-K-§ = §_-JN§.§_-Yd§(param1);
            §_-xQ§ = §_-JN§.§_-Yd§(param2);
            §_-Fm§.§ else§(§_-K-§.Item_Materials,§_-K-§.Material_Damage_Multipliers,§_-K-§.Material_Velocity_Multipliers);
            if(_loc6_ || _loc3_)
            {
               addr48:
               §_-9d§.§_-rV§(§_-K-§.Item_Resources_Sounds);
               if(_loc6_ || param1)
               {
                  §_-6K§.§_-vb§(§_-K-§.Item_Shapes);
               }
               §_-lr§.§_-X3§(§_-xQ§.Backgrounds);
               §_-yZ§ = new Dictionary();
            }
            §_-tF§ = new Array();
            for each(_loc3_ in §_-K-§.Items.Item)
            {
               if(_loc6_ || param1)
               {
                  §_-tF§.push(_loc3_.@id);
                  if(_loc7_ && param2)
                  {
                     continue;
                  }
               }
               §_-0m§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost);
            }
            if(_loc6_)
            {
               §_-HW§(§_-K-§.SoundChannels);
            }
            return;
         }
         §§goto(addr48);
      }
      
      public static function §_-0m§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_)
         {
            §_-yZ§[param1.toLowerCase()] = new §_-Pq§(param1,param2,§_-Fm§.§_-6x§(param3),§_-9d§.§_-yN§(param4),§_-6K§.§_-9B§(param5),param6,param7,param8,param9,param10);
         }
      }
      
      public static function §_-nU§(param1:String) : §_-Pq§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-Pq§ = §_-yZ§[param1.toLowerCase()];
         if(!_loc4_)
         {
            if(_loc2_ != null)
            {
               if(!_loc4_)
               {
                  return _loc2_;
               }
            }
            §_-54§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         }
         return null;
      }
      
      public static function §_-7Y§() : Array
      {
         return §_-tF§;
      }
      
      public static function §_-hX§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§_-Pq§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-yZ§)
         {
            if(_loc7_)
            {
               if(_loc3_.§_-nE§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(_loc6_ && param1)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§_-L1§;
         }
         return _loc2_;
      }
      
      public static function §_-Ow§() : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-HW§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Channel)
         {
            if(!_loc6_)
            {
               continue;
            }
            if(_loc2_.attribute("name").length() <= 0)
            {
               if(!_loc5_)
               {
                  §_-54§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                  addr43:
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     §_-54§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
                     if(_loc6_ || _loc3_)
                     {
                        addr69:
                        if(_loc2_.attribute("volume").length() <= 0)
                        {
                           if(_loc6_ || _loc2_)
                           {
                              addr82:
                              §_-54§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
                           }
                        }
                     }
                     §_-Ou§.§_-Rz§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                     continue;
                  }
                  §§goto(addr69);
               }
               §§goto(addr82);
            }
            §§goto(addr43);
         }
      }
      
      public static function §_-ab§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-Pq§ = §_-nU§(param1);
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(_loc4_ || param1)
               {
                  §§push((_loc2_.material as §_-gs§).§_-qb§[§_-gs§.§_-9b§] == §_-gs§.§_-AZ§);
                  if(_loc4_ || §_-yP§)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  §§push(true);
               }
               return §§pop();
            }
         }
         §§goto(addr63);
      }
   }
}
