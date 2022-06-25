package §0S§
{
   import §&H§.b2Vec2;
   import §1!B§.§<m§;
   
   public class §^s§
   {
      
      public static var §>!%§:Array;
       
      
      public function §^s§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §78§(param1:XMLList) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(!(_loc13_ && param1))
         {
            §>!%§ = new Array();
         }
         for each(_loc2_ in param1.Shape)
         {
            if(!_loc13_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               if(_loc12_ || _loc3_)
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
            §§goto(addr101);
         }
      }
      
      public static function §`!F§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            §>!%§[§>!%§.length] = new §6R§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §8!6§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§6R§;
         (_loc5_ = new §6R§(param1,param2,-1,-1,param4)).§6!O§(param3);
         if(!_loc6_)
         {
            _loc5_.§+!k§();
            do
            {
               §>!%§[§>!%§.length] = _loc5_;
            }
            while(!(_loc7_ || param1));
            
         }
      }
      
      public static function §]!2§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§6R§;
         (_loc5_ = new §6R§(param1,param2,param3,param3)).§6!O§(param4);
         if(!_loc6_)
         {
            §>!%§[§>!%§.length] = _loc5_;
         }
      }
      
      public static function §%!>§(param1:String) : §6R§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §>!%§.length)
            {
               if(!(_loc3_ && param1))
               {
                  if(_loc3_)
                  {
                     addr81:
                     _loc2_++;
                     continue;
                  }
                  if(!(_loc4_ || _loc2_))
                  {
                     break;
                  }
                  §§push(§<m§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(_loc4_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(!(_loc3_ && _loc3_))
               {
                  return null;
               }
               continue;
            }
            if((§>!%§[_loc2_] as §6R§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr81);
         }
         return §6R§(§>!%§[_loc2_]);
      }
   }
}
