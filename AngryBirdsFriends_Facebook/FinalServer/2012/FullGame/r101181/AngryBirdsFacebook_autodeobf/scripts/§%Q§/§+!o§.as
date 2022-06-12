package §%Q§
{
   import §#]§.b2Vec2;
   import §6o§.§+!k§;
   
   public class §+!o§
   {
      
      public static var §%"-§:Array;
       
      
      public function §+!o§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §;!3§(param1:XMLList) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(_loc12_)
         {
            §%"-§ = new Array();
         }
         for each(_loc2_ in param1.Shape)
         {
            if(_loc12_ || §+!o§)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               if(!(_loc13_ && param1))
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
               §§goto(addr150);
            }
            §§goto(addr74);
         }
      }
      
      public static function §+!m§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            §%"-§[§%"-§.length] = new §@d§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §[J§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§@d§;
         (_loc5_ = new §@d§(param1,param2,-1,-1,param4)).§@Q§(param3);
         if(_loc7_)
         {
            _loc5_.§;!G§();
            do
            {
               §%"-§[§%"-§.length] = _loc5_;
            }
            while(_loc6_ && param1);
            
         }
      }
      
      public static function §;E§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§@d§;
         (_loc5_ = new §@d§(param1,param2,param3,param3)).§@Q§(param4);
         if(_loc6_ || §+!o§)
         {
            §%"-§[§%"-§.length] = _loc5_;
         }
      }
      
      public static function §4"1§(param1:String) : §@d§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §%"-§.length)
            {
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §§push(§+!k§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(!(_loc4_ || §+!o§))
               {
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  return null;
               }
            }
            else if((§%"-§[_loc2_] as §@d§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            _loc2_++;
         }
         return §@d§(§%"-§[_loc2_]);
      }
   }
}
