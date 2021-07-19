package §#r§
{
   import §"U§.§[Q§;
   import §]!-§.§`o§;
   import flash.display.MovieClip;
   
   public class §&4§ extends §[Q§
   {
       
      
      public function §&4§(param1:XML, param2:§[Q§, param3:§`o§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop() - super.x);
            if(!(_loc5_ && param1))
            {
               addr29:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= super.§`!O§.length)
               {
                  if(_loc4_)
                  {
                     super.x = param1;
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
                  loop1:
                  while(_loc5_ && this)
                  {
                     while(true)
                     {
                        _loc3_++;
                        continue loop1;
                     }
                  }
                  continue;
               }
               super.§`!O§[_loc3_].x += _loc2_;
               §§goto(addr96);
            }
            return;
         }
         §§goto(addr29);
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() - super.y);
            if(!(_loc4_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= super.§`!O§.length)
            {
               if(!_loc4_)
               {
                  super.y = param1;
               }
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
               if(_loc5_)
               {
                  break;
               }
            }
            else
            {
               super.§`!O§[_loc3_].y += _loc2_;
            }
            _loc3_++;
         }
      }
   }
}
