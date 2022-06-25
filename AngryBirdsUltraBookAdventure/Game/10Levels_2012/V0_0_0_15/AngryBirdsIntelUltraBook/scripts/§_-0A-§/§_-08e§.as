package §_-0A-§
{
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   
   public class §_-08e§ extends LevelManager
   {
       
      
      public function §_-08e§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §_-i8§(param1:String) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§_-0C5§ = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         try
         {
            _loc2_ = §_-N9§(param1);
            _loc3_ = param1.split("-");
            if(!(_loc9_ && param1))
            {
               §§push(int(parseInt(_loc3_[1])));
               while(true)
               {
                  _loc4_ = §§pop();
                  §§push(_loc3_[0]);
                  if(!_loc8_)
                  {
                     break;
                  }
                  _loc5_ = §§pop();
                  addr90:
                  if(!(_loc9_ && §_-08e§))
                  {
                     §§goto(addr97);
                  }
               }
               §§goto(addr160);
            }
            while(true)
            {
               §§push(int(_loc2_.pageIndexes.indexOf(_loc5_)));
               do
               {
                  _loc6_ = §§pop();
                  §§push(_loc4_);
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(_loc6_);
                     if(_loc8_ || §_-08e§)
                     {
                        §§push(int(§§pop() + §§pop() * _loc2_.levelsPerPage));
                        if(!_loc8_)
                        {
                           continue;
                        }
                        addr81:
                        §§push(§§pop());
                     }
                     _loc4_ = §§pop();
                     continue;
                  }
                  §§goto(addr81);
               }
               while(!(_loc8_ || _loc2_));
               
               §§goto(addr90);
            }
            addr97:
            return §§pop().toString();
         }
         catch(e:Error)
         {
         }
         addr160:
         return §§pop();
      }
   }
}
