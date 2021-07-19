package §]";§
{
   import §6]§.§,"0§;
   import §<!a§.b2Vec2;
   
   public class §`!o§
   {
      
      public static var §<;§:Array;
       
      
      public function §`!o§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §2"0§(param1:XMLList) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(!_loc13_)
         {
            §<;§ = new Array();
         }
         for each(_loc2_ in param1.Shape)
         {
            if(!(_loc13_ && §`!o§))
            {
               §§push(_loc2_.@shape == "CIRCLE");
               if(_loc12_ || §`!o§)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        continue;
                     }
                  }
               }
               §§goto(addr152);
            }
            §§goto(addr319);
         }
      }
      
      public static function §+!=§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §<;§[§<;§.length] = new §1Y§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §2W§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§1Y§;
         (_loc5_ = new §1Y§(param1,param2,-1,-1,param4)).§<-§(param3);
         if(!_loc6_)
         {
            _loc5_.§1!W§();
         }
         do
         {
            §<;§[§<;§.length] = _loc5_;
         }
         while(!(_loc7_ || param1));
         
      }
      
      public static function §0#§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§1Y§;
         (_loc5_ = new §1Y§(param1,param2,param3,param3)).§<-§(param4);
         if(_loc6_)
         {
            §<;§[§<;§.length] = _loc5_;
         }
      }
      
      public static function §0! §(param1:String) : §1Y§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §<;§.length)
            {
               if(_loc4_)
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  §,"0§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            else if((§<;§[_loc2_] as §1Y§).mName.toLowerCase() == param1.toLowerCase())
            {
               §§goto(addr79);
            }
            _loc2_++;
         }
         if(!_loc3_)
         {
            return null;
         }
         addr79:
         return §1Y§(§<;§[_loc2_]);
      }
   }
}
