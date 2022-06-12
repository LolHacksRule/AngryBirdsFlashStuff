package § I§
{
   public class §^g§
   {
       
      
      public function §^g§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §3E§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || param3)
         {
            §§push(param1);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(!_loc6_)
               {
                  addr45:
                  §§push(param4);
                  if(_loc5_)
                  {
                     §§goto(addr48);
                  }
               }
               §§goto(addr57);
            }
            addr48:
            §§push(§§pop() / §§pop());
            if(_loc5_ || §^g§)
            {
               addr57:
               return §§pop() + param2;
            }
         }
         §§goto(addr45);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!(_loc6_ && §^g§))
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc6_ && param3))
               {
                  §§push(param4);
                  if(_loc5_ || §^g§)
                  {
                     §§goto(addr73);
                  }
               }
               §§goto(addr73);
            }
            §§push(§§pop() + §§pop());
         }
         addr73:
         §§push(§§pop() / §§pop());
         if(!(_loc6_ && param2))
         {
            return param2;
         }
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && §^g§))
               {
                  §§push(param4);
                  if(!_loc5_)
                  {
                     §§goto(addr54);
                  }
                  addr54:
                  §§push(§§pop() / §§pop());
                  if(!(_loc5_ && param3))
                  {
                     addr52:
                     §§push(param2);
                  }
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr52);
            }
         }
         §§goto(addr54);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_ || param3)
            {
               §§push(§§pop() * §§pop());
               if(_loc6_ || param2)
               {
                  §§push(param4);
                  if(_loc6_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc5_)
                     {
                        addr53:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr53);
               }
               return §§pop();
            }
         }
         §§goto(addr53);
      }
   }
}
